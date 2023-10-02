
SELECT
    CAST(chv_natural_prefeitura AS STRING) AS chv_natural_prefeitura,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_munic_ibge_2_pre AS STRING) AS cod_munic_ibge_2_pre,
    CAST(cod_munic_ibge_5_pre AS STRING) AS cod_munic_ibge_5_pre,
    CAST(ind_migracao_pre AS STRING) AS ind_migracao_pre,
    CAST(nom_prefeitura_pre AS STRING) AS nom_prefeitura_pre,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.98_0601_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura AS STRING) AS chv_natural_prefeitura,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_munic_ibge_2_pre AS STRING) AS cod_munic_ibge_2_pre,
    CAST(cod_munic_ibge_5_pre AS STRING) AS cod_munic_ibge_5_pre,
    CAST(ind_migracao_pre AS STRING) AS ind_migracao_pre,
    CAST(nom_prefeitura_pre AS STRING) AS nom_prefeitura_pre,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.98_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura AS STRING) AS chv_natural_prefeitura,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_munic_ibge_2_pre AS STRING) AS cod_munic_ibge_2_pre,
    CAST(cod_munic_ibge_5_pre AS STRING) AS cod_munic_ibge_5_pre,
    CAST(ind_migracao_pre AS STRING) AS ind_migracao_pre,
    CAST(nom_prefeitura_pre AS STRING) AS nom_prefeitura_pre,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.98_0609_test`

