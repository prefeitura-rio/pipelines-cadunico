
SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS sigla_uf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,5))  AS STRING)
    END AS if_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS migracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS prefeitura,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.prefeitura_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '98'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS sigla_uf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,5))  AS STRING)
    END AS if_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS migracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS prefeitura,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.prefeitura_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '98'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS sigla_uf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,5))  AS STRING)
    END AS if_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS migracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS prefeitura,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.prefeitura_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '98'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS sigla_uf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,5))  AS STRING)
    END AS if_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS migracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS prefeitura,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.prefeitura_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '98'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS sigla_uf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,5))  AS STRING)
    END AS if_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS migracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS prefeitura,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.prefeitura_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '98'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS sigla_uf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,5))  AS STRING)
    END AS if_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS migracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS prefeitura,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.prefeitura_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '98'
