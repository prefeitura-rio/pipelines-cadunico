# -*- coding: utf-8 -*-
from datetime import datetime
import textwrap

import pandas as pd
from google.cloud.storage.blob import Blob
from unidecode import unidecode

from pipelines.utils.io import get_root_path


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


def create_cadunico_queries_from_table(
    dataset_id: str, table_id: str, filter_versions: list = None
):
    sheet_url = "https://docs.google.com/spreadsheets/d/18zrbzY9ao00tB3d1y0-pYZWKUNF1Zuct/edit#gid=53978399"  # noqa
    sheet_url = sheet_url.replace("/edit#gid=", "/export?format=csv&gid=")

    df = pd.read_csv(sheet_url, dtype=str)
    df = df[df["version"].isin(filter_versions)]

    df["arquivo_base_versao_7"] = df["arquivo_base_versao_7"].fillna("sem_nome")
    df["arquivo_base_versao_7"] = df["arquivo_base_versao_7"].apply(
        lambda x: unidecode(x).replace("-", "_").lower().strip()
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
            FROM `rj-smas.protecao_solical_cadunico_staging.__table_id_replacer__`
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
        filepath = root_path / f"queries/models/{dataset_id}/{table}_{version}.sql"
        if table_id == "test":
            filepath = root_path / f"queries/models/{dataset_id}/{table}_{version}_test.sql"

        filepath.parent.mkdir(parents=True, exist_ok=True)

        with open(filepath, "w") as text_file:
            text_file.write(table_query)
