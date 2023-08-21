# -*- coding: utf-8 -*-
from pathlib import Path
from typing import List
from uuid import uuid4
from zipfile import ZipFile

from google.cloud.storage.blob import Blob
from prefect import task

from pipelines.utils.bd import get_project_id
from pipelines.utils.gcs import (
    get_gcs_client,
    list_blobs_with_prefix,
    parse_blobs_to_partition_list,
)
from pipelines.utils.logging import log


@task
def get_project_id_task() -> str:
    """
    Get the project ID from the environment.
    """
    return get_project_id()


@task
def get_existing_partitions(prefix: str, bucket_name: str) -> List[str]:
    """
    List the existing partitions in the staging area.

    Args:
        prefix (str): The path prefix to list partitions from.

    Returns:
        List[str]: A list of partitions in format `YYYY-MM-DD`.
    """
    # List blobs in staging area
    staging_blobs = list_blobs_with_prefix(bucket_name=bucket_name, prefix=prefix)
    log(f"Found {len(staging_blobs)} blobs in staging area")
    log(f"Blobs: {staging_blobs}")

    # Extract partition information from blobs
    staging_partitions = parse_blobs_to_partition_list(staging_blobs)
    log(f"Staging partitions: {staging_partitions}")
    return staging_partitions


@task(checkpoint=False)
def get_files_to_ingest(prefix: str, partitions: List[str], bucket_name: str) -> List[Blob]:
    """
    List the files to ingest from the raw area (files that are not yet in the staging area).

    Args:
        prefix (str): The path prefix to list files from.
        partitions (List[str]): A list of partitions to list files from.

    Returns:
        List[str]: A list of files to ingest.
    """
    # List blobs in raw area
    raw_blobs = list_blobs_with_prefix(bucket_name=bucket_name, prefix=prefix)
    log(f"Found {len(raw_blobs)} blobs in raw area")
    log(f"Blobs: {raw_blobs}")

    # Filter ZIP files
    raw_blobs = [blob for blob in raw_blobs if blob.name.lower().endswith(".zip")]
    log(f"ZIP blobs: {raw_blobs}")

    # Extract partition information from blobs
    def _parse_partition(blob: Blob) -> str:
        name_parts = blob.name.split(".")
        partition_info = name_parts[-3]
        year = str(2000 + int(partition_info[1:3]))
        month = partition_info[3:5]
        day = partition_info[5:7]
        return f"{year}-{month}-{day}"

    raw_partitions = []
    for blob in raw_blobs:
        try:
            raw_partitions.append(_parse_partition(blob))
        except Exception as e:
            log(f"Failed to parse partition from blob {blob.name}: {e}", "warning")
    log(f"Raw partitions: {raw_partitions}")

    # Filter files that are not in the staging area
    files_to_ingest = []
    for blob, partition in zip(raw_blobs, raw_partitions):
        if partition not in partitions:
            files_to_ingest.append(blob)
    log(f"Files to ingest: {files_to_ingest}")
    return files_to_ingest


@task
def ingest_file(blob: Blob, output_directory: str) -> None:
    """
    Ingest a file from the raw area to the staging area.

    Args:
        blob (Blob): The blob to ingest.
        output_directory (str): The directory to ingest the file to.
    """
    # Assert that the output directory exists
    output_directory: Path = Path(output_directory)
    output_directory.mkdir(parents=True, exist_ok=True)

    # Create temporary directory for file
    temp_directory: Path = Path("/tmp") / str(uuid4())
    temp_directory.mkdir(parents=True, exist_ok=True)
    log(f"Created temporary directory {temp_directory}")

    # Download blob to temporary directory
    gcs_client = get_gcs_client()
    fname = str(temp_directory / blob.name.rpartition("/")[-1])
    blob.download_to_filename(fname, client=gcs_client)
    log(f"Downloaded blob {blob.name} to {fname}")

    # Unzip file
    unzip_output_directory = temp_directory / "output"
    unzip_output_directory.mkdir(parents=True, exist_ok=True)
    with ZipFile(fname, "r") as zip_file:
        zip_file.extractall(unzip_output_directory)
    log(f"Unzipped {fname} to {unzip_output_directory}")
    log(f"Unzipped files: {unzip_output_directory.glob('*')}")
