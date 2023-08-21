# -*- coding: utf-8 -*-
from prefect.run_configs import KubernetesRun
from prefect.storage import GCS

from pipelines.constants import constants
from pipelines.custom import CustomFlow as Flow
from pipelines.exemplo.teste.tasks import list_blobs, log_context, run_dbt_model

with Flow(
    name="CadUnico: Flow de teste",
) as exemplo__teste__flow:
    # Tasks
    list_blobs()
    log_ctx = log_context()
    log_ctx.set_upstream(list_blobs)

# Storage and run configs
exemplo__teste__flow.storage = GCS(constants.GCS_FLOWS_BUCKET.value)
exemplo__teste__flow.run_config = KubernetesRun(image=constants.DOCKER_IMAGE.value)


with Flow(
    name="CadUnico: Testando execução do dbt",
) as exemplo__teste__dbt_flow:
    run_dbt_model(dataset_id="example")

# Storage and run configs
exemplo__teste__dbt_flow.storage = GCS(constants.GCS_FLOWS_BUCKET.value)
exemplo__teste__dbt_flow.run_config = KubernetesRun(image=constants.DOCKER_IMAGE.value)
