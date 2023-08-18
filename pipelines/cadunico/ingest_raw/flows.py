# -*- coding: utf-8 -*-
from prefect import Parameter
from prefect.run_configs import KubernetesRun
from prefect.storage import GCS

from pipelines.cadunico.ingest_raw.tasks import (
    get_existing_partitions,
    get_files_to_ingest,
    get_project_id_task,
    ingest_file,
)
from pipelines.constants import constants
from pipelines.custom import CustomFlow as Flow

# from prefect.utilities.edges import unmapped


with Flow(
    name="CadUnico: Flow de teste",
) as cadunico__ingest_raw__flow:
    # Parameters
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
    ingest_file.map(blob=files_to_ingest, output_directory=ingested_files_output)

# Storage and run configs
cadunico__ingest_raw__flow.storage = GCS(constants.GCS_FLOWS_BUCKET.value)
cadunico__ingest_raw__flow.run_config = KubernetesRun(image=constants.DOCKER_IMAGE.value)
