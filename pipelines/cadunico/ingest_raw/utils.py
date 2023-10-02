# -*- coding: utf-8 -*-
import json
import re
import shutil
import textwrap
from datetime import datetime
from pathlib import Path

import basedosdados as bd
import numpy as np
import pandas as pd
import ruamel.yaml as ryaml
from google.cloud.storage.blob import Blob
from unidecode import unidecode

from pipelines.utils.bd import create_table_and_upload_to_gcs
from pipelines.utils.io import get_root_path, to_partitions
from pipelines.utils.logging import log


def parse_partition(blob: Blob) -> str:
    name_parts = blob.name.split(".")
    for name_part in name_parts:
        if name_part.startswith("A"):
            partition_info = name_part.replace("A", "")
            break
    parsed_date = datetime.strptime(partition_info, "%y%m%d").strftime("%Y-%m-%d")
    return str(parsed_date)


def parse_txt_first_line(filepath):
    with open(filepath) as f:
        first_line = f.readline()
    txt_layout_version = first_line[69:74].strip().replace(".", "")
    dta_extracao_dados_hdr = first_line[82:90].strip()
    txt_date = datetime.strptime(dta_extracao_dados_hdr, "%d%m%Y").strftime("%Y-%m-%d")
    return txt_layout_version, txt_date


def get_version(input_string):
    match = re.search(r"\d+\.\d+", input_string)
    if match:
        version = match.group()
    else:
        version = None

    return version


def handle_merged_cells(df):
    df = df.reset_index(drop=True)
    last_index_not_na = 0
    for index, row in df.iterrows():
        if pd.isna(row["reg"]):
            if not pd.isna(row["descricao"]):
                df.loc[last_index_not_na, "descricao"] = (
                    str(df.loc[last_index_not_na, "descricao"])
                    + "    \n"
                    + str(row["descricao"]).strip()
                )
        else:
            last_index_not_na = index
    return df[df["posicao"].notnull()]


def parse_tables_from_xlsx(xlsx_input, csv_output, target_pattern, filter_versions):
    # Carregue o arquivo XLSX
    xls = pd.ExcelFile(xlsx_input)
    df_final = pd.DataFrame()
    table_cols = [
        "reg",
        "campo",
        "arquivo_base_versao_7",
        "posicao",
        "tamanho",
        "tipo",
        "transformacao",
        "descricao",
        "nulos",
        "observacoes",
    ]
    for sheet_name in xls.sheet_names:
        df = xls.parse(sheet_name, header=None, dtype=str)
        for index, row in df.iterrows():
            for col, value in row.items():  # Change this line
                if isinstance(value, str) and target_pattern in value:
                    ini_row = int(index) + 1
                    end_row = len(df)
                    ini_col = int(col)
                    end_col = int(col) + len(table_cols) - 1

                    table_data = df.iloc[
                        ini_row : end_row + 1, ini_col : end_col + 1  # noqa: E203
                    ].copy()
                    table_data = table_data.reset_index(drop=True)
                    if len(table_data.columns) < len(table_cols):
                        table_data["observacoes"] = np.nan

                    table_data.columns = table_data.iloc[0].str.strip().tolist()
                    table_data.columns = table_cols

                    if str(table_data["observacoes"][0]).lower() == "reg":
                        table_data["observacoes"] = np.nan

                    table_data = table_data.iloc[1:]

                    table_data.insert(0, "version", get_version(value))
                    table_data.insert(0, "table", sheet_name)

                    table_data = handle_merged_cells(table_data)

                    df_final = pd.concat([df_final, table_data])

    found_versions = df_final["version"].unique().tolist()
    found_versions.sort()
    log(f"PARSED VERSIONS: {found_versions}")

    df_final = df_final[df_final["version"].isin(filter_versions)]
    log(f"Filtered versions: {filter_versions}")

    df_final = df_final.reset_index(drop=True)

    output_filepath = Path(csv_output)
    log(f"Parsed csv file: {output_filepath}")
    df_final.to_csv(output_filepath, index=False)


def get_staging_partitions_versions(dataset_id, table_id):
    st = bd.Storage(dataset_id=dataset_id, table_id=table_id)
    blobs = list(
        st.client["storage_staging"]
        .bucket(st.bucket_name)
        .list_blobs(prefix=f"staging/{st.dataset_id}/{st.table_id}/")
    )

    partitions_list = []
    for blob in blobs:
        for folder in blob.name.split("/"):
            if "=" in folder:
                key = folder.split("=")[0]
                value = folder.split("=")[1]
                if key == "versao_layout_particao":
                    partitions_list.append(value)
    return list(set(partitions_list))


def parse_version_from_blob(name):
    version = name.split("BMM_V")[1].split(".")[0].replace("_", "")
    version = f"0{version}" if len(version) == 3 else version
    return version


def download_files_from_storage_raw(dataset_id, table_id, staging_partitions_list, output_path):
    st = bd.Storage(dataset_id=dataset_id, table_id=table_id)
    blobs = list(
        st.client["storage_staging"]
        .bucket(st.bucket_name)
        .list_blobs(prefix=f"raw/{st.dataset_id}/{st.table_id}/")
    )

    raw_blobs_files = [blob for blob in blobs if "xlsx" in blob.name or "xls" in blob.name]
    output_path = Path(output_path)
    output_path.mkdir(parents=True, exist_ok=True)

    raw_filespaths_to_ingest = []
    raw_versions_to_ingest = []
    for blob in raw_blobs_files:
        version = parse_version_from_blob(name=blob.name)
        if version not in staging_partitions_list:
            download_file_path = output_path / blob.name.split("/")[-1]
            blob.download_to_filename(download_file_path)
            raw_filespaths_to_ingest.append(download_file_path)
            raw_versions_to_ingest.append(version)
            log(f"Downloaded file: {download_file_path}")
    return raw_filespaths_to_ingest


def parse_xlsx_files_and_save_partition(output_path, raw_filespaths_to_ingest):
    shutil.rmtree(output_path, ignore_errors=True)
    for raw_file in raw_filespaths_to_ingest:
        name = str(raw_file).split("/")[-1]
        version = parse_version_from_blob(name=name)
        csv_output = Path(output_path) / f"versao_layout_particao={version}"
        csv_output.mkdir(parents=True, exist_ok=True)
        csv_name = name.replace(".xlsx", ".csv").replace(".xls", ".csv")
        version_float = str(float(version[:2] + "." + version[2:]))

        parse_tables_from_xlsx(
            xlsx_input=raw_file,
            csv_output=csv_output / csv_name,
            target_pattern="LEIAUTE VERSÃO",
            filter_versions=[version_float],
        )

    return output_path


def create_table_and_upload_to_storage(dataset_id, table_id, output_path):
    tb = bd.Table(dataset_id=dataset_id, table_id=table_id)
    log(f"Ingest files from outputpath: {output_path}")

    if not tb.table_exists(mode="staging"):
        log(f"Table {dataset_id}.{table_id} does not exist in STAGING, need to create first")
        tb.create(
            path=output_path,
            if_storage_data_exists="replace",
            biglake_table=True,
        )
        log(f"Successfully created table  {dataset_id}.{table_id} in STAGING")
    else:
        log(f"Table  {dataset_id}.{table_id} exists in STAGING, will append data")
        tb.append(filepath=output_path, if_exists="replace")
        log(f"Successfully uploaded data to Storage for table  {dataset_id}.{table_id}")
    return output_path


def get_layout_table_from_staging(project_id, dataset_id, table_id):
    bd.config.billing_project_id = project_id
    bd.config.from_file = True

    query = f"""
        SELECT
            *
        FROM `{project_id}.{dataset_id}_staging.{table_id}`
    """
    log(query)
    return bd.read_sql(query=query)


def load_ruamel():
    """
    Loads a YAML file.
    """
    ruamel = ryaml.YAML()
    ruamel.default_flow_style = False
    ruamel.top_level_colon_align = True
    ruamel.indent(mapping=2, sequence=4, offset=2)
    return ruamel


def dump_dict_to_dbt_yaml(schema, schema_yaml_path):
    ruamel = load_ruamel()
    for model in schema["models"]:
        for col in model["columns"]:
            if len(col["description"]) > 1024:
                model_name = model["name"]
                col_name = col["name"]
                col_description_lenght = len(col["description"])
                log_msg = (
                    "Column exced max bigquery description lenght"
                    + f"Model: {model_name}\n"
                    + f"Column: {col_name}\n"
                    + f"Description lenght:{col_description_lenght}"
                )
                log(log_msg, level="warning")
    log(f"Dumping schema to {schema_yaml_path}")
    ruamel.dump(
        schema,
        open(Path(schema_yaml_path), "w", encoding="utf-8"),
    )


def create_cadunico_queries_from_table(
    df: pd.DataFrame, model_dataset_id: str, model_table_id: str
):
    df["reg"] = df["reg"].apply(lambda x: x if len(x) > 1 else f"0{x}")
    df["version"] = df["version"].str.replace(".", "").apply(lambda x: x if len(x) > 3 else f"0{x}")
    df["reg_version"] = df["reg"] + "____" + df["version"]

    schema = {"version": 2, "models": []}
    log_created_models = []
    for table_version in df["reg_version"].unique():
        table_schema = {}

        dd = df[df["reg_version"] == table_version]
        table = table_version.split("____")[0]
        version = table_version.split("____")[1]
        table_name_original = f"{table}_{version}"
        table_name = (
            f"{table_name_original}_test" if "test" in model_dataset_id else table_name_original
        )
        table_schema["name"] = table_name
        table_schema["description"] = f"Table {table} version {version}"
        table_schema["columns"] = []
        columns = []
        column_counter = {}  # Dicionário para rastrear a contagem de colunas repetidas

        for index, row in dd.iterrows():
            col_name = row["column"]
            if col_name in column_counter:
                column_counter[col_name] += 1
                new_col_name = f"{col_name}_{column_counter[col_name]}"
            else:
                column_counter[col_name] = 1
                new_col_name = col_name

            col_expression = (
                f"    SUBSTRING(text,{row['posicao']},{row['tamanho']}) AS {new_col_name},"
            )
            columns.append(col_expression)
            col_description = row["descricao"] if row["descricao"] is not None else "Sem descrição"
            col_description = (
                re.sub(r"\s+", " ", col_description)
                .replace(";", "\n")
                .replace("\\", "")
                .replace(". ", "\n")
                .replace("\n ", "\n")
                .replace(" - ", "-")
            )
            # bigquery limits the description to 1024 characters
            col_description = col_description[:1020]

            table_schema["columns"].append({"name": new_col_name, "description": col_description})

        schema["models"].append(table_schema)

        ini_query = """
                {{
                    config(
                        materialized= "incremental",
                        partition_by={
                            "field": "data_particao",
                            "data_type": "date",
                            "granularity": "month",
                        }
                    )

                }}

                SELECT
                    """

        end_query = """
                SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
                SAFE_CAST(data_particao AS DATE) AS data_particao
            FROM `rj-smas.__dataset_id_replacer___staging.__table_id_replacer__`
            WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
                AND versao_layout_particao = '__version_replacer__'
                AND SUBSTRING(text,38,2) = '__table_replacer__'

            {% if is_incremental() %}

            {% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

            AND
                SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

            {% endif %}
        """
        ini_query = textwrap.dedent(ini_query)
        end_query = textwrap.dedent(end_query)
        table_query = ini_query + "\n".join(columns) + end_query
        table_query = table_query.replace("__table_replacer__", table)
        table_query = table_query.replace("__version_replacer__", version)
        table_query = table_query.replace("__dataset_id_replacer__", model_dataset_id)
        table_query = table_query.replace("__table_id_replacer__", model_table_id)

        root_path = get_root_path()

        model_path_versao = root_path / f"queries/models/{model_dataset_id}_versao"
        sql_filepath = model_path_versao / f"{table_name}.sql"

        sql_filepath.parent.mkdir(parents=True, exist_ok=True)

        with open(sql_filepath, "w") as text_file:
            text_file.write(table_query)

        log_created_models.append(str(sql_filepath))
    json_log = json.dumps(log_created_models, indent=4)
    log(f"created models: {json_log}")

    dump_dict_to_dbt_yaml(schema=schema, schema_yaml_path=model_path_versao / "schema.yml")


def create_cadunico_final_queries_from_table(df: pd.DataFrame, model_dataset_id: str):
    df["reg"] = df["reg"].apply(lambda x: x if len(x) > 1 else f"0{x}")
    df["version"] = df["version"].str.replace(".", "").apply(lambda x: x if len(x) > 3 else f"0{x}")
    df = df.sort_values(["reg", "versao_layout_particao"])
    diff = df[df["coluna_esta_versao_anterior"] == "False"]
    diff["version"] = diff["versao_layout_anterior"]

    df = pd.concat([df, diff])
    df = df.sort_values(["reg", "versao_layout_particao"])

    schema = {"version": 2, "models": []}
    log_created_models = []
    for reg in df["reg"].unique():
        table_schema = {}

        tables = df[df["reg"] == reg]
        versions = tables["version"].unique()
        table_schema["name"] = reg
        table_schema["description"] = f"Table {reg}"
        table_schema["columns"] = []
        final_query = ""
        ini_query = """
            SELECT
        """
        end_query = """
                SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
                SAFE_CAST(data_particao AS DATE) AS data_particao
            FROM `rj-smas.__dataset_id_replacer___versao.__table_id_replacer__`

            UNION ALL

        """
        ini_query = textwrap.dedent(ini_query)
        end_query = textwrap.dedent(end_query)

        for version in versions:
            table_version = tables[tables["version"] == version]
            columns = table_version["column"].tolist()
            table_name_original = f"{reg}_{version}"
            table_name = (
                f"{table_name_original}_test" if "test" in model_dataset_id else table_name_original
            )
            columns = []
            column_counter = {}  # Dicionário para rastrear a contagem de colunas repetidas
            for index, row in table_version.iterrows():
                col_name = row["column"]
                col_in_last_version = row["coluna_esta_versao_anterior"]
                if col_name in column_counter:
                    column_counter[col_name] += 1
                    new_col_name = f"{col_name}_{column_counter[col_name]}"
                else:
                    column_counter[col_name] = 1
                    new_col_name = col_name

                if col_in_last_version == "False":
                    col_expression = (
                        f"    NULL AS {col_name}, --Essa coluna não esta na versao posterior"
                    )
                    print(col_expression)
                else:
                    col_expression = f"    CAST({new_col_name} AS STRING) AS {new_col_name},"
                columns.append(col_expression)
                col_description = (
                    row["descricao"] if row["descricao"] is not None else "Sem descrição"
                )
                col_description = (
                    re.sub(r"\s+", " ", col_description)
                    .replace(";", "\n")
                    .replace("\\", "")
                    .replace(". ", "\n")
                    .replace("\n ", "\n")
                    .replace(" - ", "-")
                )
                col_description = col_description + f" | version: {version}"
                # bigquery limits the description to 1024 characters
                col_description = col_description[:1020]

                col_schema = {"name": new_col_name, "description": col_description}
                table_schema["columns"].append(col_schema)

            column_dict = {}

            table_query = ini_query + "\n".join(columns) + end_query
            table_query = table_query.replace("__dataset_id_replacer__", model_dataset_id)
            table_query = table_query.replace("__table_id_replacer__", table_name)
            final_query += table_query
        final_query = final_query.rsplit("UNION ALL", 1)[0]
        for item in table_schema["columns"]:
            column_dict[item["name"]] = item
        table_schema["columns"] = list(column_dict.values())
        schema["models"].append(table_schema)

        root_path = get_root_path()

        model_path_versao = root_path / f"queries/models/{model_dataset_id}"
        sql_filepath = model_path_versao / f"{reg}.sql"

        sql_filepath.parent.mkdir(parents=True, exist_ok=True)
        log_created_models.append(str(sql_filepath))

        with open(sql_filepath, "w") as text_file:
            text_file.write(final_query)

    dump_dict_to_dbt_yaml(schema=schema, schema_yaml_path=model_path_versao / "schema.yml")
    json_log = json.dumps(log_created_models, indent=4)
    log(f"created models: {json_log}")


def parse_columns_version_control(df):
    df = df.sort_values(["reg", "versao_layout_particao"])
    df["column"] = df["arquivo_base_versao_7"].fillna("sem_nome")
    df["column"] = df["column"].apply(
        lambda x: unidecode(x).replace("-", "_").replace(" ", "_").replace("/", "_").lower().strip()
    )

    df_final = pd.DataFrame()
    for reg in df["reg"].unique().tolist():
        df_table = df[df["reg"] == reg]
        table_versions = df_table["versao_layout_particao"].unique().tolist()
        table_versions = [table_versions[0]] + table_versions

        for i in range(len(table_versions) - 1):
            current_version = table_versions[i]
            df_version = df_table[df_table["versao_layout_particao"] == current_version]
            version_columns = df_version["column"].tolist()

            next_version = table_versions[i + 1]
            df_next_version = df_table[df_table["versao_layout_particao"] == next_version]
            next_version_columns = df_next_version["column"].tolist()

            control_column_version = []
            prev_versions = []
            for nv_col in next_version_columns:
                prev_versions.append(current_version)
                if nv_col not in version_columns:
                    control_column_version.append("False")
                    log_msg = (
                        f"Table {reg} version {next_version}\n"
                        + f"Column {nv_col} not found in version {current_version}"
                    )
                    log(log_msg, level="warning")
                else:
                    control_column_version.append("True")

            df_next_version["versao_layout_anterior"] = prev_versions
            df_next_version["coluna_esta_versao_anterior"] = control_column_version

            df_final = pd.concat([df_final, df_next_version])
    df_final = df_final.sort_values(["reg", "versao_layout_particao"])

    return df_final


def create_layout_final_bq_table(dataframe, dataset_id, table_id):
    new_dataframe = parse_columns_version_control(df=dataframe)
    output_path = Path("/tmp/cadunico/final_layout")
    shutil.rmtree(output_path, ignore_errors=True)
    to_partitions(
        data=new_dataframe, partition_columns=["versao_layout_particao"], savepath=output_path
    )
    table_id = table_id + "_columns_version_control"
    create_table_and_upload_to_gcs(
        data_path=output_path,
        dataset_id=dataset_id,
        table_id=table_id,
        dump_mode="overwrite",
        biglake_table=True,
    )
    log(f"Table {dataset_id}.{table_id} created in STAGING")

    return new_dataframe


def update_layout_from_storage_and_create_versions_dbt_models(
    project_id,
    layout_dataset_id,
    layout_table_id,
    output_path,
    model_dataset_id,
    model_table_id,
    force_create_models,
):
    staging_partitions_list = get_staging_partitions_versions(
        dataset_id=layout_dataset_id, table_id=layout_table_id
    )
    raw_filespaths_to_ingest = download_files_from_storage_raw(
        dataset_id=layout_dataset_id,
        table_id=layout_table_id,
        staging_partitions_list=staging_partitions_list,
        output_path="/tmp/cadunico/raw",
    )

    if raw_filespaths_to_ingest:
        log(f"Files to ingest: {raw_filespaths_to_ingest}")
        output_path = parse_xlsx_files_and_save_partition(
            output_path=output_path,
            raw_filespaths_to_ingest=raw_filespaths_to_ingest,
        )
        output_path = create_table_and_upload_to_storage(
            dataset_id=layout_dataset_id, table_id=layout_table_id, output_path=output_path
        )
    else:
        log("No LAYOUT files to ingest or Models do Create")

    if raw_filespaths_to_ingest or force_create_models:
        df = get_layout_table_from_staging(
            project_id=project_id,
            dataset_id=layout_dataset_id,
            table_id=layout_table_id,
        )
        log("Parse and create table columns version control")
        df_final = create_layout_final_bq_table(
            dataframe=df, dataset_id=layout_dataset_id, table_id=layout_table_id
        )
        create_cadunico_queries_from_table(
            df=df_final, model_dataset_id=model_dataset_id, model_table_id=model_table_id
        )
        create_cadunico_final_queries_from_table(df=df_final, model_dataset_id=model_dataset_id)
