
SELECT
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(qtd_reg_00_tlr AS int64) AS registros_tipo_00,
    CAST(qtd_reg_01_tlr AS int64) AS registros_tipo_01,
    CAST(qtd_reg_02_tlr AS int64) AS registros_tipo_02,
    CAST(qtd_reg_03_tlr AS int64) AS registros_tipo_03,
    CAST(qtd_reg_04_tlr AS int64) AS registros_tipo_04,
    CAST(qtd_reg_05_tlr AS int64) AS registros_tipo_05,
    CAST(qtd_reg_06_tlr AS int64) AS registros_tipo_06,
    CAST(qtd_reg_07_tlr AS int64) AS registros_tipo_07,
    CAST(qtd_reg_08_tlr AS int64) AS registros_tipo_08,
    CAST(qtd_reg_09_tlr AS int64) AS registros_tipo_09,
    CAST(qtd_reg_10_tlr AS int64) AS registros_tipo_10,
    CAST(qtd_reg_11_tlr AS int64) AS registros_tipo_11,
    CAST(qtd_reg_12_tlr AS int64) AS registros_tipo_12,
    CAST(qtd_reg_13_tlr AS int64) AS registros_tipo_13,
    CAST(qtd_reg_14_tlr AS int64) AS registros_tipo_14,
    CAST(qtd_reg_15_tlr AS int64) AS registros_tipo_15,
    CAST(qtd_reg_16_tlr AS int64) AS registros_tipo_16,
    CAST(qtd_reg_17_tlr AS int64) AS registros_tipo_17,
    CAST(qtd_reg_18_tlr AS int64) AS registros_tipo_18,
    CAST(qtd_reg_19_tlr AS int64) AS registros_tipo_19,
    CAST(qtd_reg_20_tlr AS int64) AS registros_tipo_20,
    CAST(qtd_reg_98_tlr AS int64) AS registros_tipo_98,
    CAST(qtd_reg_99_tlr AS int64) AS registros_tipo_99,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.registros_test_0601_test`

UNION ALL


SELECT
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(qtd_reg_00_tlr AS int64) AS registros_tipo_00,
    CAST(qtd_reg_01_tlr AS int64) AS registros_tipo_01,
    CAST(qtd_reg_02_tlr AS int64) AS registros_tipo_02,
    CAST(qtd_reg_03_tlr AS int64) AS registros_tipo_03,
    CAST(qtd_reg_04_tlr AS int64) AS registros_tipo_04,
    CAST(qtd_reg_05_tlr AS int64) AS registros_tipo_05,
    CAST(qtd_reg_06_tlr AS int64) AS registros_tipo_06,
    CAST(qtd_reg_07_tlr AS int64) AS registros_tipo_07,
    CAST(qtd_reg_08_tlr AS int64) AS registros_tipo_08,
    CAST(qtd_reg_09_tlr AS int64) AS registros_tipo_09,
    CAST(qtd_reg_10_tlr AS int64) AS registros_tipo_10,
    CAST(qtd_reg_11_tlr AS int64) AS registros_tipo_11,
    CAST(qtd_reg_12_tlr AS int64) AS registros_tipo_12,
    CAST(qtd_reg_13_tlr AS int64) AS registros_tipo_13,
    CAST(qtd_reg_14_tlr AS int64) AS registros_tipo_14,
    CAST(qtd_reg_15_tlr AS int64) AS registros_tipo_15,
    CAST(qtd_reg_16_tlr AS int64) AS registros_tipo_16,
    CAST(qtd_reg_17_tlr AS int64) AS registros_tipo_17,
    CAST(qtd_reg_18_tlr AS int64) AS registros_tipo_18,
    CAST(qtd_reg_19_tlr AS int64) AS registros_tipo_19,
    CAST(qtd_reg_20_tlr AS int64) AS registros_tipo_20,
    CAST(qtd_reg_98_tlr AS int64) AS registros_tipo_98,
    CAST(qtd_reg_99_tlr AS int64) AS registros_tipo_99,
    NULL AS registros_tipo_21, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.registros_test_0604_test`

UNION ALL


SELECT
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(qtd_reg_00_tlr AS int64) AS registros_tipo_00,
    CAST(qtd_reg_01_tlr AS int64) AS registros_tipo_01,
    CAST(qtd_reg_02_tlr AS int64) AS registros_tipo_02,
    CAST(qtd_reg_03_tlr AS int64) AS registros_tipo_03,
    CAST(qtd_reg_04_tlr AS int64) AS registros_tipo_04,
    CAST(qtd_reg_05_tlr AS int64) AS registros_tipo_05,
    CAST(qtd_reg_06_tlr AS int64) AS registros_tipo_06,
    CAST(qtd_reg_07_tlr AS int64) AS registros_tipo_07,
    CAST(qtd_reg_08_tlr AS int64) AS registros_tipo_08,
    CAST(qtd_reg_09_tlr AS int64) AS registros_tipo_09,
    CAST(qtd_reg_10_tlr AS int64) AS registros_tipo_10,
    CAST(qtd_reg_11_tlr AS int64) AS registros_tipo_11,
    CAST(qtd_reg_12_tlr AS int64) AS registros_tipo_12,
    CAST(qtd_reg_13_tlr AS int64) AS registros_tipo_13,
    CAST(qtd_reg_14_tlr AS int64) AS registros_tipo_14,
    CAST(qtd_reg_15_tlr AS int64) AS registros_tipo_15,
    CAST(qtd_reg_16_tlr AS int64) AS registros_tipo_16,
    CAST(qtd_reg_17_tlr AS int64) AS registros_tipo_17,
    CAST(qtd_reg_18_tlr AS int64) AS registros_tipo_18,
    CAST(qtd_reg_19_tlr AS int64) AS registros_tipo_19,
    NULL AS registros_tipo_21, --Essa coluna não esta na versao posterior
    CAST(qtd_reg_20_tlr AS int64) AS registros_tipo_20,
    CAST(qtd_reg_98_tlr AS int64) AS registros_tipo_98,
    CAST(qtd_reg_99_tlr AS int64) AS registros_tipo_99,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.registros_test_0609_test`

