
SELECT
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_00_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_00_tlr  AS INT64)
    END AS registros_tipo_00,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_01_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_01_tlr  AS INT64)
    END AS registros_tipo_01,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_02_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_02_tlr  AS INT64)
    END AS registros_tipo_02,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_03_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_03_tlr  AS INT64)
    END AS registros_tipo_03,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_04_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_04_tlr  AS INT64)
    END AS registros_tipo_04,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_05_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_05_tlr  AS INT64)
    END AS registros_tipo_05,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_06_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_06_tlr  AS INT64)
    END AS registros_tipo_06,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_07_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_07_tlr  AS INT64)
    END AS registros_tipo_07,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_08_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_08_tlr  AS INT64)
    END AS registros_tipo_08,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_09_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_09_tlr  AS INT64)
    END AS registros_tipo_09,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_10_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_10_tlr  AS INT64)
    END AS registros_tipo_10,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_11_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_11_tlr  AS INT64)
    END AS registros_tipo_11,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_12_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_12_tlr  AS INT64)
    END AS registros_tipo_12,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_13_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_13_tlr  AS INT64)
    END AS registros_tipo_13,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_14_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_14_tlr  AS INT64)
    END AS registros_tipo_14,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_15_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_15_tlr  AS INT64)
    END AS registros_tipo_15,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_16_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_16_tlr  AS INT64)
    END AS registros_tipo_16,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_17_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_17_tlr  AS INT64)
    END AS registros_tipo_17,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_18_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_18_tlr  AS INT64)
    END AS registros_tipo_18,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_19_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_19_tlr  AS INT64)
    END AS registros_tipo_19,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_20_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_20_tlr  AS INT64)
    END AS registros_tipo_20,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_98_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_98_tlr  AS INT64)
    END AS registros_tipo_98,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_99_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_99_tlr  AS INT64)
    END AS registros_tipo_99,
    NULL AS registros_tipo_21, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.registros_0601`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_00_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_00_tlr  AS INT64)
    END AS registros_tipo_00,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_01_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_01_tlr  AS INT64)
    END AS registros_tipo_01,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_02_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_02_tlr  AS INT64)
    END AS registros_tipo_02,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_03_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_03_tlr  AS INT64)
    END AS registros_tipo_03,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_04_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_04_tlr  AS INT64)
    END AS registros_tipo_04,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_05_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_05_tlr  AS INT64)
    END AS registros_tipo_05,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_06_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_06_tlr  AS INT64)
    END AS registros_tipo_06,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_07_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_07_tlr  AS INT64)
    END AS registros_tipo_07,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_08_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_08_tlr  AS INT64)
    END AS registros_tipo_08,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_09_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_09_tlr  AS INT64)
    END AS registros_tipo_09,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_10_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_10_tlr  AS INT64)
    END AS registros_tipo_10,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_11_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_11_tlr  AS INT64)
    END AS registros_tipo_11,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_12_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_12_tlr  AS INT64)
    END AS registros_tipo_12,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_13_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_13_tlr  AS INT64)
    END AS registros_tipo_13,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_14_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_14_tlr  AS INT64)
    END AS registros_tipo_14,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_15_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_15_tlr  AS INT64)
    END AS registros_tipo_15,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_16_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_16_tlr  AS INT64)
    END AS registros_tipo_16,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_17_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_17_tlr  AS INT64)
    END AS registros_tipo_17,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_18_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_18_tlr  AS INT64)
    END AS registros_tipo_18,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_19_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_19_tlr  AS INT64)
    END AS registros_tipo_19,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_20_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_20_tlr  AS INT64)
    END AS registros_tipo_20,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_98_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_98_tlr  AS INT64)
    END AS registros_tipo_98,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_99_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_99_tlr  AS INT64)
    END AS registros_tipo_99,
    NULL AS registros_tipo_21, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.registros_0603`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_00_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_00_tlr  AS INT64)
    END AS registros_tipo_00,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_01_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_01_tlr  AS INT64)
    END AS registros_tipo_01,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_02_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_02_tlr  AS INT64)
    END AS registros_tipo_02,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_03_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_03_tlr  AS INT64)
    END AS registros_tipo_03,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_04_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_04_tlr  AS INT64)
    END AS registros_tipo_04,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_05_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_05_tlr  AS INT64)
    END AS registros_tipo_05,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_06_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_06_tlr  AS INT64)
    END AS registros_tipo_06,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_07_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_07_tlr  AS INT64)
    END AS registros_tipo_07,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_08_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_08_tlr  AS INT64)
    END AS registros_tipo_08,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_09_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_09_tlr  AS INT64)
    END AS registros_tipo_09,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_10_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_10_tlr  AS INT64)
    END AS registros_tipo_10,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_11_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_11_tlr  AS INT64)
    END AS registros_tipo_11,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_12_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_12_tlr  AS INT64)
    END AS registros_tipo_12,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_13_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_13_tlr  AS INT64)
    END AS registros_tipo_13,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_14_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_14_tlr  AS INT64)
    END AS registros_tipo_14,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_15_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_15_tlr  AS INT64)
    END AS registros_tipo_15,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_16_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_16_tlr  AS INT64)
    END AS registros_tipo_16,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_17_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_17_tlr  AS INT64)
    END AS registros_tipo_17,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_18_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_18_tlr  AS INT64)
    END AS registros_tipo_18,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_19_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_19_tlr  AS INT64)
    END AS registros_tipo_19,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_20_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_20_tlr  AS INT64)
    END AS registros_tipo_20,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_98_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_98_tlr  AS INT64)
    END AS registros_tipo_98,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_99_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_99_tlr  AS INT64)
    END AS registros_tipo_99,
    NULL AS registros_tipo_21, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.registros_0604`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_00_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_00_tlr  AS INT64)
    END AS registros_tipo_00,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_01_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_01_tlr  AS INT64)
    END AS registros_tipo_01,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_02_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_02_tlr  AS INT64)
    END AS registros_tipo_02,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_03_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_03_tlr  AS INT64)
    END AS registros_tipo_03,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_04_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_04_tlr  AS INT64)
    END AS registros_tipo_04,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_05_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_05_tlr  AS INT64)
    END AS registros_tipo_05,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_06_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_06_tlr  AS INT64)
    END AS registros_tipo_06,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_07_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_07_tlr  AS INT64)
    END AS registros_tipo_07,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_08_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_08_tlr  AS INT64)
    END AS registros_tipo_08,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_09_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_09_tlr  AS INT64)
    END AS registros_tipo_09,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_10_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_10_tlr  AS INT64)
    END AS registros_tipo_10,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_11_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_11_tlr  AS INT64)
    END AS registros_tipo_11,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_12_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_12_tlr  AS INT64)
    END AS registros_tipo_12,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_13_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_13_tlr  AS INT64)
    END AS registros_tipo_13,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_14_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_14_tlr  AS INT64)
    END AS registros_tipo_14,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_15_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_15_tlr  AS INT64)
    END AS registros_tipo_15,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_16_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_16_tlr  AS INT64)
    END AS registros_tipo_16,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_17_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_17_tlr  AS INT64)
    END AS registros_tipo_17,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_18_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_18_tlr  AS INT64)
    END AS registros_tipo_18,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_19_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_19_tlr  AS INT64)
    END AS registros_tipo_19,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_21_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_21_tlr  AS INT64)
    END AS registros_tipo_21,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_20_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_20_tlr  AS INT64)
    END AS registros_tipo_20,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_98_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_98_tlr  AS INT64)
    END AS registros_tipo_98,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_99_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_99_tlr  AS INT64)
    END AS registros_tipo_99,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.registros_0609`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_00_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_00_tlr  AS INT64)
    END AS registros_tipo_00,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_01_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_01_tlr  AS INT64)
    END AS registros_tipo_01,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_02_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_02_tlr  AS INT64)
    END AS registros_tipo_02,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_03_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_03_tlr  AS INT64)
    END AS registros_tipo_03,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_04_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_04_tlr  AS INT64)
    END AS registros_tipo_04,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_05_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_05_tlr  AS INT64)
    END AS registros_tipo_05,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_06_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_06_tlr  AS INT64)
    END AS registros_tipo_06,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_07_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_07_tlr  AS INT64)
    END AS registros_tipo_07,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_08_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_08_tlr  AS INT64)
    END AS registros_tipo_08,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_09_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_09_tlr  AS INT64)
    END AS registros_tipo_09,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_10_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_10_tlr  AS INT64)
    END AS registros_tipo_10,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_11_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_11_tlr  AS INT64)
    END AS registros_tipo_11,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_12_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_12_tlr  AS INT64)
    END AS registros_tipo_12,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_13_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_13_tlr  AS INT64)
    END AS registros_tipo_13,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_14_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_14_tlr  AS INT64)
    END AS registros_tipo_14,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_15_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_15_tlr  AS INT64)
    END AS registros_tipo_15,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_16_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_16_tlr  AS INT64)
    END AS registros_tipo_16,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_17_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_17_tlr  AS INT64)
    END AS registros_tipo_17,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_18_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_18_tlr  AS INT64)
    END AS registros_tipo_18,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_19_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_19_tlr  AS INT64)
    END AS registros_tipo_19,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_21_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_21_tlr  AS INT64)
    END AS registros_tipo_21,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_20_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_20_tlr  AS INT64)
    END AS registros_tipo_20,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_98_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_98_tlr  AS INT64)
    END AS registros_tipo_98,
    CASE
        WHEN REGEXP_CONTAINS(qtd_reg_99_tlr, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( qtd_reg_99_tlr  AS INT64)
    END AS registros_tipo_99,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.registros_0612`

