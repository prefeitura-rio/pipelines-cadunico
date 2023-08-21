# -*- coding: utf-8 -*-
from prefect import Parameter
from prefect.run_configs import KubernetesRun
from prefect.storage import GCS
from prefect.utilities.edges import unmapped

from pipelines.cadunico.ingest_raw.tasks import (
    append_data_to_storage,
    create_table_if_not_existis,
    get_existing_partitions,
    get_files_to_ingest,
    get_project_id_task,
    ingest_file,
)
from pipelines.constants import constants
from pipelines.custom import CustomFlow as Flow

with Flow(
    name="CadUnico: Ingestão de dados brutos",
) as cadunico__ingest_raw__flow:
    # Parameters
    dataset_id = Parameter("dataset_id", default="protecao_social_cadunico")
    table_id = Parameter("table_id", default="registro_familia")
    dump_mode = Parameter("dump_mode", default="append")
    biglake_table = Parameter("biglake_table", default=True)
    ingested_files_output = Parameter("ingested_files_output", default="/tmp/ingested_files/")
    prefix_raw_area = Parameter("prefix_raw_area", default="raw/cadunico")
    prefix_staging_area = Parameter(
        "prefix_staging_area", default="staging/protecao_social_cadunico/registro_familia"
    )

    # Tasks
    project_id = get_project_id_task()
    existing_partitions = get_existing_partitions(
        prefix=prefix_staging_area, bucket_name=project_id
    )
    files_to_ingest = get_files_to_ingest(
        prefix=prefix_raw_area, partitions=existing_partitions, bucket_name=project_id
    )
    ingested_files = ingest_file.map(
        blob=files_to_ingest, output_directory=unmapped(ingested_files_output)
    )
    
    create_table = create_table_if_not_existis(
            dataset_id= dataset_id,
            table_id= table_id,
            biglake_table= biglake_table,
    )
    create_table.set_upstream(ingested_files)
    
    tb_create = append_data_to_storage(
        data_path=ingested_files_output,
        dataset_id=dataset_id,
        table_id=table_id,
        dump_mode=dump_mode,
        biglake_table=biglake_table,
    )
    tb_create.set_upstream(create_table)

# Storage and run configs
cadunico__ingest_raw__flow.storage = GCS(constants.GCS_FLOWS_BUCKET.value)
cadunico__ingest_raw__flow.run_config = KubernetesRun(image=constants.DOCKER_IMAGE.value)
