
SELECT
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(qtd_reg_00_tlr AS INT64) AS registros_tipo_00,
    CAST(qtd_reg_01_tlr AS INT64) AS registros_tipo_01,
    CAST(qtd_reg_02_tlr AS INT64) AS registros_tipo_02,
    CAST(qtd_reg_03_tlr AS INT64) AS registros_tipo_03,
    CAST(qtd_reg_04_tlr AS INT64) AS registros_tipo_04,
    CAST(qtd_reg_05_tlr AS INT64) AS registros_tipo_05,
    CAST(qtd_reg_06_tlr AS INT64) AS registros_tipo_06,
    CAST(qtd_reg_07_tlr AS INT64) AS registros_tipo_07,
    CAST(qtd_reg_08_tlr AS INT64) AS registros_tipo_08,
    CAST(qtd_reg_09_tlr AS INT64) AS registros_tipo_09,
    CAST(qtd_reg_10_tlr AS INT64) AS registros_tipo_10,
    CAST(qtd_reg_11_tlr AS INT64) AS registros_tipo_11,
    CAST(qtd_reg_12_tlr AS INT64) AS registros_tipo_12,
    CAST(qtd_reg_13_tlr AS INT64) AS registros_tipo_13,
    CAST(qtd_reg_14_tlr AS INT64) AS registros_tipo_14,
    CAST(qtd_reg_15_tlr AS INT64) AS registros_tipo_15,
    CAST(qtd_reg_16_tlr AS INT64) AS registros_tipo_16,
    CAST(qtd_reg_17_tlr AS INT64) AS registros_tipo_17,
    CAST(qtd_reg_18_tlr AS INT64) AS registros_tipo_18,
    CAST(qtd_reg_19_tlr AS INT64) AS registros_tipo_19,
    CAST(qtd_reg_20_tlr AS INT64) AS registros_tipo_20,
    CAST(qtd_reg_98_tlr AS INT64) AS registros_tipo_98,
    CAST(qtd_reg_99_tlr AS INT64) AS registros_tipo_99,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.registros_0601`

UNION ALL


SELECT
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(qtd_reg_00_tlr AS INT64) AS registros_tipo_00,
    CAST(qtd_reg_01_tlr AS INT64) AS registros_tipo_01,
    CAST(qtd_reg_02_tlr AS INT64) AS registros_tipo_02,
    CAST(qtd_reg_03_tlr AS INT64) AS registros_tipo_03,
    CAST(qtd_reg_04_tlr AS INT64) AS registros_tipo_04,
    CAST(qtd_reg_05_tlr AS INT64) AS registros_tipo_05,
    CAST(qtd_reg_06_tlr AS INT64) AS registros_tipo_06,
    CAST(qtd_reg_07_tlr AS INT64) AS registros_tipo_07,
    CAST(qtd_reg_08_tlr AS INT64) AS registros_tipo_08,
    CAST(qtd_reg_09_tlr AS INT64) AS registros_tipo_09,
    CAST(qtd_reg_10_tlr AS INT64) AS registros_tipo_10,
    CAST(qtd_reg_11_tlr AS INT64) AS registros_tipo_11,
    CAST(qtd_reg_12_tlr AS INT64) AS registros_tipo_12,
    CAST(qtd_reg_13_tlr AS INT64) AS registros_tipo_13,
    CAST(qtd_reg_14_tlr AS INT64) AS registros_tipo_14,
    CAST(qtd_reg_15_tlr AS INT64) AS registros_tipo_15,
    CAST(qtd_reg_16_tlr AS INT64) AS registros_tipo_16,
    CAST(qtd_reg_17_tlr AS INT64) AS registros_tipo_17,
    CAST(qtd_reg_18_tlr AS INT64) AS registros_tipo_18,
    CAST(qtd_reg_19_tlr AS INT64) AS registros_tipo_19,
    CAST(qtd_reg_20_tlr AS INT64) AS registros_tipo_20,
    CAST(qtd_reg_98_tlr AS INT64) AS registros_tipo_98,
    CAST(qtd_reg_99_tlr AS INT64) AS registros_tipo_99,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.registros_0603`

UNION ALL


SELECT
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(qtd_reg_00_tlr AS INT64) AS registros_tipo_00,
    CAST(qtd_reg_01_tlr AS INT64) AS registros_tipo_01,
    CAST(qtd_reg_02_tlr AS INT64) AS registros_tipo_02,
    CAST(qtd_reg_03_tlr AS INT64) AS registros_tipo_03,
    CAST(qtd_reg_04_tlr AS INT64) AS registros_tipo_04,
    CAST(qtd_reg_05_tlr AS INT64) AS registros_tipo_05,
    CAST(qtd_reg_06_tlr AS INT64) AS registros_tipo_06,
    CAST(qtd_reg_07_tlr AS INT64) AS registros_tipo_07,
    CAST(qtd_reg_08_tlr AS INT64) AS registros_tipo_08,
    CAST(qtd_reg_09_tlr AS INT64) AS registros_tipo_09,
    CAST(qtd_reg_10_tlr AS INT64) AS registros_tipo_10,
    CAST(qtd_reg_11_tlr AS INT64) AS registros_tipo_11,
    CAST(qtd_reg_12_tlr AS INT64) AS registros_tipo_12,
    CAST(qtd_reg_13_tlr AS INT64) AS registros_tipo_13,
    CAST(qtd_reg_14_tlr AS INT64) AS registros_tipo_14,
    CAST(qtd_reg_15_tlr AS INT64) AS registros_tipo_15,
    CAST(qtd_reg_16_tlr AS INT64) AS registros_tipo_16,
    CAST(qtd_reg_17_tlr AS INT64) AS registros_tipo_17,
    CAST(qtd_reg_18_tlr AS INT64) AS registros_tipo_18,
    CAST(qtd_reg_19_tlr AS INT64) AS registros_tipo_19,
    CAST(qtd_reg_20_tlr AS INT64) AS registros_tipo_20,
    CAST(qtd_reg_98_tlr AS INT64) AS registros_tipo_98,
    CAST(qtd_reg_99_tlr AS INT64) AS registros_tipo_99,
    NULL AS registros_tipo_21, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.registros_0604`

UNION ALL


SELECT
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(qtd_reg_00_tlr AS INT64) AS registros_tipo_00,
    CAST(qtd_reg_01_tlr AS INT64) AS registros_tipo_01,
    CAST(qtd_reg_02_tlr AS INT64) AS registros_tipo_02,
    CAST(qtd_reg_03_tlr AS INT64) AS registros_tipo_03,
    CAST(qtd_reg_04_tlr AS INT64) AS registros_tipo_04,
    CAST(qtd_reg_05_tlr AS INT64) AS registros_tipo_05,
    CAST(qtd_reg_06_tlr AS INT64) AS registros_tipo_06,
    CAST(qtd_reg_07_tlr AS INT64) AS registros_tipo_07,
    CAST(qtd_reg_08_tlr AS INT64) AS registros_tipo_08,
    CAST(qtd_reg_09_tlr AS INT64) AS registros_tipo_09,
    CAST(qtd_reg_10_tlr AS INT64) AS registros_tipo_10,
    CAST(qtd_reg_11_tlr AS INT64) AS registros_tipo_11,
    CAST(qtd_reg_12_tlr AS INT64) AS registros_tipo_12,
    CAST(qtd_reg_13_tlr AS INT64) AS registros_tipo_13,
    CAST(qtd_reg_14_tlr AS INT64) AS registros_tipo_14,
    CAST(qtd_reg_15_tlr AS INT64) AS registros_tipo_15,
    CAST(qtd_reg_16_tlr AS INT64) AS registros_tipo_16,
    CAST(qtd_reg_17_tlr AS INT64) AS registros_tipo_17,
    CAST(qtd_reg_18_tlr AS INT64) AS registros_tipo_18,
    CAST(qtd_reg_19_tlr AS INT64) AS registros_tipo_19,
    NULL AS registros_tipo_21, --Essa coluna não esta na versao posterior
    CAST(qtd_reg_20_tlr AS INT64) AS registros_tipo_20,
    CAST(qtd_reg_98_tlr AS INT64) AS registros_tipo_98,
    CAST(qtd_reg_99_tlr AS INT64) AS registros_tipo_99,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.registros_0609`

UNION ALL


SELECT
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(qtd_reg_00_tlr AS INT64) AS registros_tipo_00,
    CAST(qtd_reg_01_tlr AS INT64) AS registros_tipo_01,
    CAST(qtd_reg_02_tlr AS INT64) AS registros_tipo_02,
    CAST(qtd_reg_03_tlr AS INT64) AS registros_tipo_03,
    CAST(qtd_reg_04_tlr AS INT64) AS registros_tipo_04,
    CAST(qtd_reg_05_tlr AS INT64) AS registros_tipo_05,
    CAST(qtd_reg_06_tlr AS INT64) AS registros_tipo_06,
    CAST(qtd_reg_07_tlr AS INT64) AS registros_tipo_07,
    CAST(qtd_reg_08_tlr AS INT64) AS registros_tipo_08,
    CAST(qtd_reg_09_tlr AS INT64) AS registros_tipo_09,
    CAST(qtd_reg_10_tlr AS INT64) AS registros_tipo_10,
    CAST(qtd_reg_11_tlr AS INT64) AS registros_tipo_11,
    CAST(qtd_reg_12_tlr AS INT64) AS registros_tipo_12,
    CAST(qtd_reg_13_tlr AS INT64) AS registros_tipo_13,
    CAST(qtd_reg_14_tlr AS INT64) AS registros_tipo_14,
    CAST(qtd_reg_15_tlr AS INT64) AS registros_tipo_15,
    CAST(qtd_reg_16_tlr AS INT64) AS registros_tipo_16,
    CAST(qtd_reg_17_tlr AS INT64) AS registros_tipo_17,
    CAST(qtd_reg_18_tlr AS INT64) AS registros_tipo_18,
    CAST(qtd_reg_19_tlr AS INT64) AS registros_tipo_19,
    CAST(qtd_reg_21_tlr AS INT64) AS registros_tipo_21,
    CAST(qtd_reg_20_tlr AS INT64) AS registros_tipo_20,
    CAST(qtd_reg_98_tlr AS INT64) AS registros_tipo_98,
    CAST(qtd_reg_99_tlr AS INT64) AS registros_tipo_99,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.registros_0612`

