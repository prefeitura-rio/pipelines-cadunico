# -*- coding: utf-8 -*-
from typing import Dict, List

from prefect import task

from pipelines.utils.dbt import run_dbt_model


@task
def run_dbt_model_task(
    dataset_id: str,
    table_id: str = None,
    dbt_alias: bool = False,
    upstream: bool = None,
    downstream: bool = None,
    exclude: str = None,
    flags: str = None,
    _vars: dict | List[Dict] = None,
):
    run_dbt_model(
        dataset_id=dataset_id,
        table_id=table_id,
        dbt_alias=dbt_alias,
        upstream=upstream,
        downstream=downstream,
        exclude=exclude,
        flags=flags,
        _vars=_vars,
    )
