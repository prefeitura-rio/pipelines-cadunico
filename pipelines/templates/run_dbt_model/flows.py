# -*- coding: utf-8 -*-
from prefect import Parameter
from prefect.run_configs import KubernetesRun
from prefect.storage import GCS

from pipelines.constants import constants
from pipelines.custom import CustomFlow as Flow
from pipelines.templates.run_dbt_model.tasks import (
    run_dbt_model_task,
)
from pipelines.templates.constants import constants as template_constants
from pipelines.utils.prefect import rename_current_flow_run_dataset_table

with Flow(
    name=template_constants.FLOW_EXECUTE_DBT_MODEL_NAME.value,
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

    rename_flow_run = rename_current_flow_run_dataset_table(
        prefix="Materialize: ", dataset_id=dataset_id, table_id=table_id
    )

    run_dbt_model_task_return = run_dbt_model_task(
        dataset_id=dataset_id,
        table_id=table_id,
        dbt_alias=dbt_alias,
        upstream=upstream,
        downstream=downstream,
        exclude=exclude,
        flags=flags,
        _vars=vars_,
    )
    run_dbt_model_task_return.set_upstream(rename_flow_run)

# Storage and run configs
templates__run_dbt_model__flow.storage = GCS(constants.GCS_FLOWS_BUCKET.value)
templates__run_dbt_model__flow.run_config = KubernetesRun(
    image=constants.DOCKER_IMAGE.value,
)
