
{{
    config(
        partition_by={
            "field": "data_particao",
            "data_type": "date",
            "granularity": "month",
        }
    )
}}


SELECT

    --column: chv_natural_prefeitura
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_munic_ibge_2_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS sigla_uf,

    --column: cod_munic_ibge_5_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,5))  AS STRING)
    END AS if_municipio,

    --column: ind_migracao_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS migracao,

    --column: nom_prefeitura_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS prefeitura,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '98'

UNION ALL


SELECT

    --column: chv_natural_prefeitura
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_munic_ibge_2_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS sigla_uf,

    --column: cod_munic_ibge_5_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,5))  AS STRING)
    END AS if_municipio,

    --column: ind_migracao_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS migracao,

    --column: nom_prefeitura_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS prefeitura,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '98'

UNION ALL


SELECT

    --column: chv_natural_prefeitura
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_munic_ibge_2_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS sigla_uf,

    --column: cod_munic_ibge_5_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,5))  AS STRING)
    END AS if_municipio,

    --column: ind_migracao_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS migracao,

    --column: nom_prefeitura_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS prefeitura,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '98'

UNION ALL


SELECT

    --column: chv_natural_prefeitura
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_munic_ibge_2_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS sigla_uf,

    --column: cod_munic_ibge_5_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,5))  AS STRING)
    END AS if_municipio,

    --column: ind_migracao_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS migracao,

    --column: nom_prefeitura_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS prefeitura,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '98'

UNION ALL


SELECT

    --column: chv_natural_prefeitura
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_munic_ibge_2_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS sigla_uf,

    --column: cod_munic_ibge_5_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,5))  AS STRING)
    END AS if_municipio,

    --column: ind_migracao_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS migracao,

    --column: nom_prefeitura_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS prefeitura,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '98'

UNION ALL


SELECT

    --column: chv_natural_prefeitura
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_munic_ibge_2_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS sigla_uf,

    --column: cod_munic_ibge_5_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,5))  AS STRING)
    END AS if_municipio,

    --column: ind_migracao_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS migracao,

    --column: nom_prefeitura_pre
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS prefeitura,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '98'

