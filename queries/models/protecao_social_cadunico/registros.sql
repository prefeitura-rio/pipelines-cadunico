
SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,40,9)) AS INT64)
    END AS registros_tipo_00,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,49,9)) AS INT64)
    END AS registros_tipo_01,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,58,9)) AS INT64)
    END AS registros_tipo_02,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,67,9)) AS INT64)
    END AS registros_tipo_03,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,76,9)) AS INT64)
    END AS registros_tipo_04,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,85,9)) AS INT64)
    END AS registros_tipo_05,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,94,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,94,9)) AS INT64)
    END AS registros_tipo_06,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,103,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,103,9)) AS INT64)
    END AS registros_tipo_07,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,112,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,112,9)) AS INT64)
    END AS registros_tipo_08,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,121,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,121,9)) AS INT64)
    END AS registros_tipo_09,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,130,9)) AS INT64)
    END AS registros_tipo_10,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,139,9)) AS INT64)
    END AS registros_tipo_11,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,148,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,148,9)) AS INT64)
    END AS registros_tipo_12,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,157,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,157,9)) AS INT64)
    END AS registros_tipo_13,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,166,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,166,9)) AS INT64)
    END AS registros_tipo_14,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,175,9)) AS INT64)
    END AS registros_tipo_15,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,184,9)) AS INT64)
    END AS registros_tipo_16,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,193,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,193,9)) AS INT64)
    END AS registros_tipo_17,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,202,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,202,9)) AS INT64)
    END AS registros_tipo_18,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,211,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,211,9)) AS INT64)
    END AS registros_tipo_19,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,220,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,220,9)) AS INT64)
    END AS registros_tipo_20,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,229,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,229,9)) AS INT64)
    END AS registros_tipo_98,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,238,9)) AS INT64)
    END AS registros_tipo_99,
    NULL AS registros_tipo_21, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.registros_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '99'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,40,9)) AS INT64)
    END AS registros_tipo_00,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,49,9)) AS INT64)
    END AS registros_tipo_01,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,58,9)) AS INT64)
    END AS registros_tipo_02,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,67,9)) AS INT64)
    END AS registros_tipo_03,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,76,9)) AS INT64)
    END AS registros_tipo_04,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,85,9)) AS INT64)
    END AS registros_tipo_05,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,94,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,94,9)) AS INT64)
    END AS registros_tipo_06,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,103,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,103,9)) AS INT64)
    END AS registros_tipo_07,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,112,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,112,9)) AS INT64)
    END AS registros_tipo_08,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,121,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,121,9)) AS INT64)
    END AS registros_tipo_09,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,130,9)) AS INT64)
    END AS registros_tipo_10,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,139,9)) AS INT64)
    END AS registros_tipo_11,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,148,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,148,9)) AS INT64)
    END AS registros_tipo_12,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,157,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,157,9)) AS INT64)
    END AS registros_tipo_13,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,166,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,166,9)) AS INT64)
    END AS registros_tipo_14,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,175,9)) AS INT64)
    END AS registros_tipo_15,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,184,9)) AS INT64)
    END AS registros_tipo_16,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,193,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,193,9)) AS INT64)
    END AS registros_tipo_17,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,202,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,202,9)) AS INT64)
    END AS registros_tipo_18,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,211,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,211,9)) AS INT64)
    END AS registros_tipo_19,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,220,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,220,9)) AS INT64)
    END AS registros_tipo_20,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,229,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,229,9)) AS INT64)
    END AS registros_tipo_98,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,238,9)) AS INT64)
    END AS registros_tipo_99,
    NULL AS registros_tipo_21, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.registros_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '99'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,40,9)) AS INT64)
    END AS registros_tipo_00,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,49,9)) AS INT64)
    END AS registros_tipo_01,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,58,9)) AS INT64)
    END AS registros_tipo_02,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,67,9)) AS INT64)
    END AS registros_tipo_03,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,76,9)) AS INT64)
    END AS registros_tipo_04,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,85,9)) AS INT64)
    END AS registros_tipo_05,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,94,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,94,9)) AS INT64)
    END AS registros_tipo_06,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,103,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,103,9)) AS INT64)
    END AS registros_tipo_07,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,112,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,112,9)) AS INT64)
    END AS registros_tipo_08,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,121,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,121,9)) AS INT64)
    END AS registros_tipo_09,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,130,9)) AS INT64)
    END AS registros_tipo_10,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,139,9)) AS INT64)
    END AS registros_tipo_11,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,148,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,148,9)) AS INT64)
    END AS registros_tipo_12,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,157,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,157,9)) AS INT64)
    END AS registros_tipo_13,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,166,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,166,9)) AS INT64)
    END AS registros_tipo_14,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,175,9)) AS INT64)
    END AS registros_tipo_15,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,184,9)) AS INT64)
    END AS registros_tipo_16,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,193,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,193,9)) AS INT64)
    END AS registros_tipo_17,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,202,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,202,9)) AS INT64)
    END AS registros_tipo_18,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,211,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,211,9)) AS INT64)
    END AS registros_tipo_19,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,220,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,220,9)) AS INT64)
    END AS registros_tipo_20,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,229,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,229,9)) AS INT64)
    END AS registros_tipo_98,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,238,9)) AS INT64)
    END AS registros_tipo_99,
    NULL AS registros_tipo_21, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.registros_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '99'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,40,9)) AS INT64)
    END AS registros_tipo_00,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,49,9)) AS INT64)
    END AS registros_tipo_01,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,58,9)) AS INT64)
    END AS registros_tipo_02,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,67,9)) AS INT64)
    END AS registros_tipo_03,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,76,9)) AS INT64)
    END AS registros_tipo_04,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,85,9)) AS INT64)
    END AS registros_tipo_05,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,94,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,94,9)) AS INT64)
    END AS registros_tipo_06,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,103,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,103,9)) AS INT64)
    END AS registros_tipo_07,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,112,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,112,9)) AS INT64)
    END AS registros_tipo_08,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,121,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,121,9)) AS INT64)
    END AS registros_tipo_09,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,130,9)) AS INT64)
    END AS registros_tipo_10,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,139,9)) AS INT64)
    END AS registros_tipo_11,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,148,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,148,9)) AS INT64)
    END AS registros_tipo_12,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,157,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,157,9)) AS INT64)
    END AS registros_tipo_13,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,166,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,166,9)) AS INT64)
    END AS registros_tipo_14,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,175,9)) AS INT64)
    END AS registros_tipo_15,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,184,9)) AS INT64)
    END AS registros_tipo_16,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,193,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,193,9)) AS INT64)
    END AS registros_tipo_17,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,202,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,202,9)) AS INT64)
    END AS registros_tipo_18,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,211,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,211,9)) AS INT64)
    END AS registros_tipo_19,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,220,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,220,9)) AS INT64)
    END AS registros_tipo_21,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,220,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,220,9)) AS INT64)
    END AS registros_tipo_20,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,229,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,229,9)) AS INT64)
    END AS registros_tipo_98,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,238,9)) AS INT64)
    END AS registros_tipo_99,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.registros_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '99'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,40,9)) AS INT64)
    END AS registros_tipo_00,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,49,9)) AS INT64)
    END AS registros_tipo_01,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,58,9)) AS INT64)
    END AS registros_tipo_02,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,67,9)) AS INT64)
    END AS registros_tipo_03,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,76,9)) AS INT64)
    END AS registros_tipo_04,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,85,9)) AS INT64)
    END AS registros_tipo_05,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,94,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,94,9)) AS INT64)
    END AS registros_tipo_06,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,103,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,103,9)) AS INT64)
    END AS registros_tipo_07,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,112,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,112,9)) AS INT64)
    END AS registros_tipo_08,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,121,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,121,9)) AS INT64)
    END AS registros_tipo_09,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,130,9)) AS INT64)
    END AS registros_tipo_10,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,139,9)) AS INT64)
    END AS registros_tipo_11,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,148,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,148,9)) AS INT64)
    END AS registros_tipo_12,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,157,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,157,9)) AS INT64)
    END AS registros_tipo_13,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,166,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,166,9)) AS INT64)
    END AS registros_tipo_14,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,175,9)) AS INT64)
    END AS registros_tipo_15,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,184,9)) AS INT64)
    END AS registros_tipo_16,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,193,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,193,9)) AS INT64)
    END AS registros_tipo_17,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,202,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,202,9)) AS INT64)
    END AS registros_tipo_18,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,211,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,211,9)) AS INT64)
    END AS registros_tipo_19,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,220,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,220,9)) AS INT64)
    END AS registros_tipo_21,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,220,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,220,9)) AS INT64)
    END AS registros_tipo_20,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,229,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,229,9)) AS INT64)
    END AS registros_tipo_98,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,238,9)) AS INT64)
    END AS registros_tipo_99,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.registros_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '99'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,40,9)) AS INT64)
    END AS registros_tipo_00,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,49,9)) AS INT64)
    END AS registros_tipo_01,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,58,9)) AS INT64)
    END AS registros_tipo_02,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,67,9)) AS INT64)
    END AS registros_tipo_03,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,76,9)) AS INT64)
    END AS registros_tipo_04,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,85,9)) AS INT64)
    END AS registros_tipo_05,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,94,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,94,9)) AS INT64)
    END AS registros_tipo_06,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,103,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,103,9)) AS INT64)
    END AS registros_tipo_07,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,112,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,112,9)) AS INT64)
    END AS registros_tipo_08,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,121,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,121,9)) AS INT64)
    END AS registros_tipo_09,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,130,9)) AS INT64)
    END AS registros_tipo_10,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,139,9)) AS INT64)
    END AS registros_tipo_11,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,148,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,148,9)) AS INT64)
    END AS registros_tipo_12,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,157,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,157,9)) AS INT64)
    END AS registros_tipo_13,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,166,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,166,9)) AS INT64)
    END AS registros_tipo_14,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,175,9)) AS INT64)
    END AS registros_tipo_15,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,184,9)) AS INT64)
    END AS registros_tipo_16,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,193,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,193,9)) AS INT64)
    END AS registros_tipo_17,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,202,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,202,9)) AS INT64)
    END AS registros_tipo_18,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,211,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,211,9)) AS INT64)
    END AS registros_tipo_19,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,220,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,220,9)) AS INT64)
    END AS registros_tipo_20,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,229,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,229,9)) AS INT64)
    END AS registros_tipo_98,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,238,9)) AS INT64)
    END AS registros_tipo_99,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.registros_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '99'
