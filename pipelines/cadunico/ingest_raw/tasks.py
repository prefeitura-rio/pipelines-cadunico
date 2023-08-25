# -*- coding: utf-8 -*-
import json
from os import system
from pathlib import Path
from typing import List
from uuid import uuid4
from zipfile import ZipFile

import basedosdados as bd
import pandas as pd
from google.cloud.storage.blob import Blob
from prefect import task

from pipelines.cadunico.ingest_raw.utils import parse_partition, parse_txt_first_line
from pipelines.utils.bd import create_table_and_upload_to_gcs, get_project_id
from pipelines.utils.gcs import (
    get_gcs_client,
    list_blobs_with_prefix,
    parse_blobs_to_partition_list,
)
from pipelines.utils.io import get_root_path
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
    partitions_to_ingest = []
    for blob, partition in zip(raw_partitions_blobs, raw_partitions):
        if partition not in partitions:
            files_to_ingest.append(blob)
            partitions_to_ingest.append(partition)

    log(f"Partitions to ingest: {partitions_to_ingest}")
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

    # Split TXT files into chunks of 1GB\
    txt_layout_version = None
    txt_date = None
    txt_files_after_split: List[Path] = []
    for txt_file in txt_files:
        txt_layout_version, txt_date = parse_txt_first_line(filepath=txt_file)
        log(f"TXT layout version: {txt_layout_version}")
        txt_file_size = txt_file.stat().st_size
        if txt_file_size > 1e9:
            log(f"Splitting {txt_file} into chunks of 1GB")
            system(f"split -b 1G {txt_file} {txt_file}.PART_")
            txt_file.unlink()
            txt_files_after_split.extend(list(unzip_output_directory.glob("*.PART_*")))
        else:
            log(f"File {txt_file} is smaller than 1GB, not splitting")
            txt_files_after_split.append(txt_file)
    txt_files = txt_files_after_split
    log(f"TXT files after split: {txt_files}")

    # Modify extension to CSV
    csv_files: List[Path] = []
    for txt_file in txt_files:
        csv_file = Path(str(txt_file) + ".csv")
        txt_file.rename(csv_file)
        csv_files.append(csv_file)
    log(f"CSV files: {csv_files}")

    # Create partition directories
    partition = parse_partition(blob)
    if partition == txt_date:
        log(f"Partition {partition} is equal to date inside TXT {txt_date}")
    else:
        log(
            f"Partition {partition} is different from date inside TXT {txt_date}",
            "warning",
        )

    year, month, _ = partition.split("-")
    partition_directory = (
        output_directory
        / f"versao_layout_particao={txt_layout_version}"
        / f"ano_particao={int(year)}"
        / f"mes_particao={int(month)}"
        / f"data_particao={partition}"
    )
    partition_directory.mkdir(parents=True, exist_ok=True)

    # Move CSV files to partition directory
    for csv_file in csv_files:
        csv_file.rename(partition_directory / csv_file.name)


@task
def create_table_if_not_exists(
    dataset_id: str,
    table_id: str,
    biglake_table: bool = True,
) -> bool:
    """
    Create table using BD+ .

    Args:
        data_path (str | Path): The path to the data.
        dataset_id (str): The dataset ID.
        table_id (str): The table ID.
        biglake_table (bool): Whether to create a BigLake table.
    """

    tb = bd.Table(dataset_id=dataset_id, table_id=table_id)
    st = bd.Storage(dataset_id=dataset_id, table_id=table_id)

    table_exists = tb.table_exists(mode="staging")

    if not table_exists:
        mock_data_path = Path("/tmp/mock_data/")
        partition_data_path_file = Path(
            "versao_layout_particao=XXXX/ano_particao=1970/mes_particao=1/data_particao=1970-01-01/delete_this_data.csv"
        )
        mock_data_path_partition_file = mock_data_path / partition_data_path_file
        mock_data_path_partition_file.parent.mkdir(parents=True, exist_ok=True)

        # create mock data csv
        data = {"text": ["delete_this_data"]}
        pd.DataFrame(data).to_csv(mock_data_path_partition_file, index=False)

        # create table
        tb.create(
            path=mock_data_path,
            csv_delimiter="Æ",
            csv_skip_leading_rows=0,
            csv_allow_jagged_rows=False,
            if_storage_data_exists="replace",
            biglake_table=biglake_table,
        )
        log(f"SUCESSFULLY CREATED TABLE: {dataset_id}.{table_id}")
        # delete data from storage
        st.delete_file(
            filename=str(partition_data_path_file),  # noqa
            mode="staging",
        )
        log(
            f"SUCESSFULLY DELETED DATA FROM STORAGE: staging/{dataset_id}/{table_id}/{str(partition_data_path_file)}"
        )
    else:
        log(f"TABLE ALREADY EXISTS: {dataset_id}.{table_id}")

    return table_exists


@task
def append_data_to_storage(
    data_path: str | Path,
    dataset_id: str,
    table_id: str,
    dump_mode: str,
    biglake_table: bool = True,
) -> None:
    """
    Upload to GCS.

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

    return dataset_id


@task
def get_tables_to_materialize(dataset_id: str, ingested_files_output: str | Path) -> List[dict]:
    """
    Get tables parameters to materialize from queries/models/{dataset_id}/.

    Args:
        dataset_id (str): The dataset ID.
    """

    ## get version from path folders
    versions = []
    for file in Path(ingested_files_output).glob("**/*"):
        if file.is_file():
            for folder in file.parts:
                if "=" in folder:
                    key = folder.split("=")[0]
                    value = folder.split("=")[1]
                    if key == "versao_layout_particao":
                        versions.append(value)
    versions = list(set(versions))
    log(f"FOUND Versions: {versions}")

    root_path = get_root_path()
    queries_dir = root_path / f"queries/models/{dataset_id}/"
    files_path = [str(q) for q in queries_dir.iterdir() if q.is_file()]
    files_path.sort()
    tables = [q.replace(".sql", "").split("/")[-1].split("__")[-1] for q in files_path]
    table_dbt_alias = [True if "__" in q.split("/")[-1] else False for q in files_path]

    parameters_list = []
    for version in versions:
        for table, dbt_alias in zip(tables, table_dbt_alias):
            parameters = {
                "dataset_id": dataset_id,
                "table_id": f"{table}",
                "dbt_alias": dbt_alias,
            }
            if version in table:
                parameters_list.append(parameters)
        parsed_parameters_to_log = json.dumps(parameters_list, indent=4)
        log(f"Materialize tables parameters: \n{parsed_parameters_to_log}")
        return parameters_list
