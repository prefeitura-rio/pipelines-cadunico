# -*- coding: utf-8 -*-
from prefect import Parameter, case
from prefect.run_configs import KubernetesRun
from prefect.storage import GCS
from prefect.tasks.prefect import create_flow_run, wait_for_flow_run
from prefect.utilities.edges import unmapped

from pipelines.cadunico.ingest_raw.tasks import (
    append_data_to_storage,
    create_table_if_not_exists,
    get_existing_partitions,
    get_files_to_ingest,
    get_project_id_task,
    get_tables_to_materialize,
    ingest_file,
)
from pipelines.constants import constants
from pipelines.custom import CustomFlow as Flow
from pipelines.templates.constants import constants as templates_constants
from pipelines.utils.prefect import (
    task_get_current_flow_run_labels,
    task_get_flow_group_id,
)

with Flow(
    name="CadUnico: Ingestão de dados brutos",
) as cadunico__ingest_raw__flow:
    # Parameters
    dataset_id = Parameter("dataset_id", default="protecao_social_cadunico")
    table_id = Parameter("table_id", default="registro_familia")
    dump_mode = Parameter("dump_mode", default="append")
    biglake_table = Parameter("biglake_table", default=True)
    ingested_files_output = Parameter("ingested_files_output", default="/tmp/ingested_files/")
    prefix_raw_area = Parameter(
        "prefix_raw_area", default="raw/protecao_social_cadunico/registro_familia"
    )
    prefix_staging_area = Parameter(
        "prefix_staging_area", default="staging/protecao_social_cadunico/registro_familia"
    )

    materialize_after_dump = Parameter("materialize_after_dump", default=False, required=False)

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

    create_table = create_table_if_not_exists(
        dataset_id=dataset_id,
        table_id=table_id,
        biglake_table=biglake_table,
    )
    create_table.set_upstream(ingested_files)

    append_data_to_gcs = append_data_to_storage(
        data_path=ingested_files_output,
        dataset_id=dataset_id,
        table_id=table_id,
        dump_mode=dump_mode,
        biglake_table=biglake_table,
    )
    append_data_to_gcs.set_upstream(create_table)

    tables_to_materialize_parameters = get_tables_to_materialize(dataset_id=dataset_id)
    tables_to_materialize_parameters.set_upstream(append_data_to_gcs)

    with case(materialize_after_dump, True):
        materialization_flow_id = task_get_flow_group_id(
            flow_name=templates_constants.FLOW_EXECUTE_DBT_MODEL_NAME.value
        )
        materialization_labels = task_get_current_flow_run_labels()
        materialization_flow_runs = create_flow_run.map(
            flow_id=unmapped(materialization_flow_id),
            parameters=tables_to_materialize_parameters,
            labels=unmapped(materialization_labels),
        )

        wait_for_flow_run_ = wait_for_flow_run.map(
            flow_run_id=materialization_flow_runs,
            stream_states=unmapped(True),
            stream_logs=unmapped(True),
            raise_final_state=unmapped(True),
        )

# Storage and run configs for prefect
cadunico__ingest_raw__flow.storage = GCS(constants.GCS_FLOWS_BUCKET.value)
cadunico__ingest_raw__flow.run_config = KubernetesRun(image=constants.DOCKER_IMAGE.value)
