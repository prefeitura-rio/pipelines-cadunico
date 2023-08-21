# -*- coding: utf-8 -*-
from prefect import Parameter
from prefect.run_configs import KubernetesRun
from prefect.storage import GCS

from pipelines.constants import constants
from pipelines.custom import CustomFlow as Flow
from pipelines.templates.run_dbt_model.tasks import run_dbt_model_task

with Flow(
    name="Template: Executa modelo do dbt",
) as templates__run_dbt_model__flow:
    # Parameters
    dataset_id = Parameter("dataset_id")
    table_id = Parameter("table_id", default=None, required=False)
    dbt_alias = Parameter("dbt_alias", default=False, required=False)
    upstream = Parameter("upstream", default=None, required=False)
    downstream = Parameter("downstream", default=None, required=False)
    exclude = Parameter("exclude", default=None, required=False)
    flags = Parameter("flags", default=None, required=False)
    vars_ = Parameter("vars", default=None, required=False)

    run_dbt_model_task(
        dataset_id=dataset_id,
        table_id=table_id,
        dbt_alias=dbt_alias,
        upstream=upstream,
        downstream=downstream,
        exclude=exclude,
        flags=flags,
        _vars=vars_,
    )

# Storage and run configs
templates__run_dbt_model__flow.storage = GCS(constants.GCS_FLOWS_BUCKET.value)
templates__run_dbt_model__flow.run_config = KubernetesRun(image=constants.DOCKER_IMAGE.value)
