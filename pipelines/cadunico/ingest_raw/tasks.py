# -*- coding: utf-8 -*-
from pathlib import Path
from typing import List
from uuid import uuid4
from zipfile import ZipFile

from google.cloud.storage.blob import Blob
from prefect import task

from pipelines.cadunico.ingest_raw.utils import parse_partition
from pipelines.utils.bd import create_table_and_upload_to_gcs, get_project_id
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
    raw_partitions = []
    raw_partitions_blobs = []
    for blob in raw_blobs:
        try:
            raw_partitions.append(parse_partition(blob))
            raw_partitions_blobs.append(blob)
        except Exception as e:
            log(f"Failed to parse partition from blob {blob.name}: {e}", "warning")
    log(f"Raw partitions: {raw_partitions}")

    # Filter files that are not in the staging area
    files_to_ingest = []
    for blob, partition in zip(raw_partitions_blobs, raw_partitions):
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
    log(f"Unzipped files: {list(unzip_output_directory.glob('*'))}")

    # List TXT files (non-case sensitive)
    txt_files = list(unzip_output_directory.glob("*.txt")) + list(
        unzip_output_directory.glob("*.TXT")
    )
    log(f"TXT files: {txt_files}")

    # Modify extension to CSV
    csv_files: List[Path] = []
    for txt_file in txt_files:
        csv_file = txt_file.with_suffix(".csv")
        txt_file.rename(csv_file)
        csv_files.append(csv_file)
    log(f"CSV files: {csv_files}")

    # Create partition directories
    partition = parse_partition(blob)
    year, month, _ = partition.split("-")
    partition_directory = (
        output_directory
        / f"ano_particao={int(year)}"
        / f"mes_particao={int(month)}"
        / f"data_particao={partition}"
    )
    partition_directory.mkdir(parents=True, exist_ok=True)

    # Move CSV files to partition directory
    for csv_file in csv_files:
        csv_file.rename(partition_directory / csv_file.name)


@task
def create_update_table(
    data_path: str | Path,
    dataset_id: str,
    table_id: str,
    dump_mode: str,
    biglake_table: bool = True,
):
    """
    Create table using BD+ and upload to GCS.

    Args:
        data_path (str | Path): The path to the data.
        dataset_id (str): The dataset ID.
        table_id (str): The table ID.
        dump_mode (str): The dump mode.
        biglake_table (bool): Whether to create a BigLake table.
    """
    create_table_and_upload_to_gcs(
        data_path=data_path,
        dataset_id=dataset_id,
        table_id=table_id,
        dump_mode=dump_mode,
        biglake_table=biglake_table,
    )
