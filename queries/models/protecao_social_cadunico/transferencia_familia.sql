
SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,2))  AS STRING)
    END AS id_uf_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,5))  AS STRING)
    END AS id_municipio_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,13))  AS STRING)
    END AS id_prefeitura_destino,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,11))  AS STRING)
    END AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '16'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,2))  AS STRING)
    END AS id_uf_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,5))  AS STRING)
    END AS id_municipio_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,13))  AS STRING)
    END AS id_prefeitura_destino,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,11))  AS STRING)
    END AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '16'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,2))  AS STRING)
    END AS id_uf_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,5))  AS STRING)
    END AS id_municipio_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,13))  AS STRING)
    END AS id_prefeitura_destino,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,11))  AS STRING)
    END AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '16'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,2))  AS STRING)
    END AS id_uf_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,5))  AS STRING)
    END AS id_municipio_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,13))  AS STRING)
    END AS id_prefeitura_destino,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,11))  AS STRING)
    END AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '16'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,2))  AS STRING)
    END AS id_uf_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,5))  AS STRING)
    END AS id_municipio_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,13))  AS STRING)
    END AS id_prefeitura_destino,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,11))  AS STRING)
    END AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '16'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,2))  AS STRING)
    END AS id_uf_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,5))  AS STRING)
    END AS id_municipio_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,13))  AS STRING)
    END AS id_prefeitura_destino,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,11))  AS STRING)
    END AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '16'
