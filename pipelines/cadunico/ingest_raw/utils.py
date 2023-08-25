# -*- coding: utf-8 -*-
from pathlib import Path
from typing import Union, Tuple

import pandas as pd
from google.cloud.storage.blob import Blob
from unidecode import unidecode

from pipelines.utils.io import get_root_path


def parse_partition(blob: Blob) -> str:
    name_parts = blob.name.split(".")
    partition_info = name_parts[-3]
    year = str(2000 + int(partition_info[1:3]))
    month = partition_info[3:5]
    day = partition_info[5:7]
    return f"{year}-{month}-{day}"


def parse_txt_first_line(filepath: Union[str, Path]) -> Tuple[str, str]:
    with open(filepath) as f:
        first_line = f.readline()

    txt_layout_version = first_line[69:74].strip().lstrip("0")
    dta_extracao_dados_hdr = first_line[82:90].strip()
    day = dta_extracao_dados_hdr[:2]
    txt_month = dta_extracao_dados_hdr[2:4]
    text_year = dta_extracao_dados_hdr[4:]
    txt_date = f"{text_year}-{txt_month}-{day}"

    return txt_layout_version, txt_date


def create_cadunico_queries_from_table(dataset_id: str):
    sheet_url = "https://docs.google.com/spreadsheets/d/18zrbzY9ao00tB3d1y0-pYZWKUNF1Zuct/edit#gid=552983928"  # noqa
    sheet_url = sheet_url.replace("/edit#gid=", "/export?format=csv&gid=")

    df = pd.read_csv(sheet_url, dtype=str)
    df["arquivo_base_versao_7"] = df["arquivo_base_versao_7"].fillna("sem_nome")
    df["arquivo_base_versao_7"] = df["arquivo_base_versao_7"].apply(
        lambda x: unidecode(x).replace("-", "_").lower().strip()
    )

    df = df[df["version"] == "6.04"]

    for table in df["reg"].unique():
        dd = df[df["reg"] == table]

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

            col_expression = f"SUBSTRING(text,{row['posicao']},{row['tamanho']}) AS {new_col_name},"
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
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SUBSTRING(text,38,2) = '__table_replacer__' AND
    SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
"""

        table_query = ini_query + "\n    ".join(columns) + end_query
        table = table if len(table) > 1 else f"0{table}"
        table_query = table_query.replace("__table_replacer__", table)

        root_path = get_root_path()

        with open(root_path / f"queries/models/{dataset_id}/{table}.sql", "w") as text_file:
            text_file.write(table_query)
