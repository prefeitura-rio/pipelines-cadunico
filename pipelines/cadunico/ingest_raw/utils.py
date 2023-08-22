# -*- coding: utf-8 -*-
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


def create_cadunico_queries_from_table(dataset_id: str):
    sheet_url = "https://docs.google.com/spreadsheets/d/18zrbzY9ao00tB3d1y0-pYZWKUNF1Zuct/edit#gid=552983928"
    sheet_url = sheet_url.replace("/edit#gid=", "/export?format=csv&gid=")

    df = pd.read_csv(sheet_url, dtype=str)
    df["arquivo_base_versao_7"] = df["arquivo_base_versao_7"].fillna("sem_nome")
    df["arquivo_base_versao_7"] = df["arquivo_base_versao_7"].apply(
        lambda x: unidecode(x).replace("-", "_").lower().strip()
    )

    df = df[df["version"] == "6.04"]

    for table in df["reg"].unique():
        dd = df[df["reg"] == table]

        columns = (
            "SUBSTRING(text,"
            + dd["posicao"]
            + ","
            + dd["tamanho"]
            + ") AS "
            + dd["arquivo_base_versao_7"]
            + ","
        )
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
