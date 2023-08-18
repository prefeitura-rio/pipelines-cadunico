# -*- coding: utf-8 -*-
from prefect import task

from pipelines.utils.gcs import list_blobs_with_prefix
from pipelines.utils.logging import log


@task
def list_blobs():
    blobs = list_blobs_with_prefix(bucket_name="rj-smas", prefix="raw/")
    for blob in blobs:
        log(f"- {blob.name}")
