
SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,30), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,30))  AS STRING)
    END AS nome_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,5))  AS STRING)
    END AS versao_layout_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,75,8)))  AS DATE)
    END AS data_posicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,83,8)))  AS DATE)
    END AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.controle_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '00'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,30), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,30))  AS STRING)
    END AS nome_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,5))  AS STRING)
    END AS versao_layout_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,75,8)))  AS DATE)
    END AS data_posicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,83,8)))  AS DATE)
    END AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.controle_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '00'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,30), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,30))  AS STRING)
    END AS nome_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,5))  AS STRING)
    END AS versao_layout_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,75,8)))  AS DATE)
    END AS data_posicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,83,8)))  AS DATE)
    END AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.controle_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '00'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,30), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,30))  AS STRING)
    END AS nome_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,5))  AS STRING)
    END AS versao_layout_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,75,8)))  AS DATE)
    END AS data_posicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,83,8)))  AS DATE)
    END AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.controle_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '00'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,30), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,30))  AS STRING)
    END AS nome_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,5))  AS STRING)
    END AS versao_layout_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,75,8)))  AS DATE)
    END AS data_posicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,83,8)))  AS DATE)
    END AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.controle_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '00'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,30), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,30))  AS STRING)
    END AS nome_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,5))  AS STRING)
    END AS versao_layout_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,75,8)))  AS DATE)
    END AS data_posicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,83,8)))  AS DATE)
    END AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.controle_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '00'
