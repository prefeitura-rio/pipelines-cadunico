# -*- coding: utf-8 -*-
import prefect
from prefect.run_configs import KubernetesRun
from prefect.storage import GCS

from pipelines.constants import constants
from pipelines.custom import CustomFlow as Flow
from pipelines.exemplo.teste.tasks import (
    list_blobs,
    log_context,
    log_message,
    run_dbt_model_task,
)

with Flow(
    name="CadUnico: Flow de teste",
) as exemplo__teste__flow:
    # Tasks
    list_blobs()
    log_ctx = log_context()
    log_ctx.set_upstream(list_blobs)
    # prefect.context.get("config").get("cloud").get("agent").get("labels")
    log_message(prefect.context)
    log_message(prefect.context.get("config"))
    log_message(prefect.context.get("config").get("cloud"))
    log_message(prefect.context.get("config").get("cloud").get("agent"))
    log_message(prefect.context.get("config").get("cloud").get("agent").get("labels"))

# Storage and run configs
exemplo__teste__flow.storage = GCS(constants.GCS_FLOWS_BUCKET.value)
exemplo__teste__flow.run_config = KubernetesRun(image=constants.DOCKER_IMAGE.value)


with Flow(
    name="CadUnico: Testando execução do dbt",
) as exemplo__teste__dbt_flow:
    run_dbt_model_task(dataset_id="example")

# Storage and run configs
exemplo__teste__dbt_flow.storage = GCS(constants.GCS_FLOWS_BUCKET.value)
exemplo__teste__dbt_flow.run_config = KubernetesRun(image=constants.DOCKER_IMAGE.value)
