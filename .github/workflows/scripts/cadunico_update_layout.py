from pathlib import Path
import re
import shutil
import textwrap

import basedosdados as bd
import pandas as pd
import numpy as np
from unidecode import unidecode


def get_root_path() -> Path:
    """
    Returns the root path of the project.
    """
    root_path = Path(__file__)
    # If the root path is site-packages, we're running in a Docker container. Thus, we
    # need to change the root path to /app
    return Path(str(root_path).split(".github/workflows/scripts")[0])


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

                    table_data = df.iloc[ini_row : end_row + 1, ini_col : end_col + 1].copy()
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

    df_final = df_final[df_final["version"].isin(filter_versions)]
    df_final = df_final.reset_index(drop=True)

    output_filepath = Path(csv_output)
    print("Parsed csv file:", output_filepath)
    df_final.to_csv(output_filepath, index=False)
    # if output_filepath.exists():
    #     df_output = pd.read_excel(output_filepath, dtype="str")
    #     for _version in filter_versions:
    #         if _version in df_output["version"].unique().tolist():
    #             print(f"Version {_version} already in {output_filepath}")
    #             df_final = df_final[~df_final["version"].isin([_version])]
    #         else:
    #             print(f"Version {_version} will be append to {output_filepath}")
    #     df_to_save = pd.concat([df_output, df_final])
    # else:
    #     df_to_save = df_final.copy()

    # df_to_save.to_excel(output_filepath, index=False)
    # return df_to_save


def get_partitions_to_ingest(dataset_id, table_id):
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
    return partitions_list


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
            print("Downloaded file:", download_file_path)

    return raw_filespaths_to_ingest, raw_versions_to_ingest


def parse_xlsx_files_and_save_partition(output_path, raw_filespaths_to_ingest):
    for raw_file in raw_filespaths_to_ingest:
        name = str(raw_file).split("/")[-1]
        version = parse_version_from_blob(name=name)

        shutil.rmtree(output_path, ignore_errors=True)

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
    print("Ingest files from outputpath: ", output_path)
    if not tb.table_exists(mode="staging"):
        print("Table does not exist in STAGING, need to create first")
        tb.create(
            path=output_path,
            if_storage_data_exists="replace",
            biglake_table=True,
        )
        print("Successfully created table in STAGING")
    else:
        print("Table exists in STAGING, will append data")
        tb.append(filepath=output_path, if_exists="replace")
        print("Successfully uploaded data to Storage")
    return output_path


def get_layout_table_from_staging(project_id, dataset_id, table_id, raw_versions_to_ingest):
    bd.config.billing_project_id = project_id
    bd.config.from_file = True

    print("versao_layout_particao: ", raw_versions_to_ingest)
    query = f"""
        SELECT
            *
        FROM `{project_id}.{dataset_id}_staging.{table_id}`
    """
    if raw_versions_to_ingest:
        query += f"""
        WHERE versao_layout_particao IN ({', '.join([f"'{v}'" for v in raw_versions_to_ingest])})
        """
    print(query)
    return bd.read_sql(query=query)


def create_cadunico_queries_from_table(df: pd.DataFrame, dataset_id: str, table_id: str):
    df["arquivo_base_versao_7"] = df["arquivo_base_versao_7"].fillna("sem_nome")
    df["arquivo_base_versao_7"] = df["arquivo_base_versao_7"].apply(
        lambda x: unidecode(x).replace("-", "_").replace(" ", "_").replace("/", "_").lower().strip()
    )
    df["reg"] = df["reg"].apply(lambda x: x if len(x) > 1 else f"0{x}")
    df["version"] = df["version"].str.replace(".", "").apply(lambda x: x if len(x) > 3 else f"0{x}")
    df["reg_version"] = df["reg"] + "____" + df["version"]

    for table_version in df["reg_version"].unique():
        dd = df[df["reg_version"] == table_version]
        table = table_version.split("____")[0]
        version = table_version.split("____")[1]
        columns = []
        column_counter = {}  # Dicionário para rastrear a contagem de colunas repetidas

        for index, row in dd.iterrows():
            col_name = row["arquivo_base_versao_7"]
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

        ini_query = """
                {{
                    config(
                        materialized='incremental',
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
        table_query = table_query.replace("__dataset_id_replacer__", dataset_id)
        table_query = table_query.replace("__table_id_replacer__", table_id)

        root_path = get_root_path()
        filepath = root_path / f"queries/models/{dataset_id}_versao/{table}_{version}.sql"
        filepath.parent.mkdir(parents=True, exist_ok=True)

        with open(filepath, "w") as text_file:
            text_file.write(table_query)


def main(project_id, dataset_id, table_id, output_path, model_dataset_id, model_table_id):
    staging_partitions_list = get_partitions_to_ingest(dataset_id=dataset_id, table_id=table_id)
    raw_filespaths_to_ingest, raw_versions_to_ingest = download_files_from_storage_raw(
        dataset_id=dataset_id,
        table_id=table_id,
        staging_partitions_list=staging_partitions_list,
        output_path="/tmp/cadunico/raw",
    )

    if raw_filespaths_to_ingest:
        print("Files to ingest:", raw_filespaths_to_ingest)
        output_path = parse_xlsx_files_and_save_partition(
            output_path=output_path,
            raw_filespaths_to_ingest=raw_filespaths_to_ingest,
        )
        output_path = create_table_and_upload_to_storage(
            dataset_id=dataset_id, table_id=table_id, output_path=output_path
        )
    else:
        print("No files to ingest")

    df = get_layout_table_from_staging(
        project_id=project_id,
        dataset_id=dataset_id,
        table_id=table_id,
        raw_versions_to_ingest=raw_versions_to_ingest,
    )
    create_cadunico_queries_from_table(df=df, dataset_id=model_dataset_id, table_id=model_table_id)


project_id = "rj-escritorio-dev"
dataset_id = "protecao_social_cadunico"
table_id = "layout"
model_dataset_id = "test"
model_table_id = "test"


output_path = f"/tmp/cadunico/layout_parsed/{dataset_id}/{table_id}"


main(
    project_id=project_id,
    dataset_id=dataset_id,
    table_id=table_id,
    output_path=output_path,
    model_dataset_id=model_dataset_id,
    model_table_id=model_table_id,
)
