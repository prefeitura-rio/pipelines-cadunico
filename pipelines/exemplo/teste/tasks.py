# -*- coding: utf-8 -*-
from typing import Dict, List

import prefect
from prefect import task

from pipelines.utils.dbt import run_dbt_model
from pipelines.utils.gcs import list_blobs_with_prefix
from pipelines.utils.logging import log


@task
def list_blobs():
    blobs = list_blobs_with_prefix(bucket_name="rj-smas", prefix="raw/")
    for blob in blobs:
        log(f"- {blob.name}")


@task
def log_context():
    log(prefect.context)
    log(prefect.context.get("config"))
    log(prefect.context.get("config").get("cloud"))
    log(prefect.context.get("config").get("cloud").get("agent"))
    log(prefect.context.get("config").get("cloud").get("agent").get("labels"))


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


@task
def log_message(message: str):
    log(message)
