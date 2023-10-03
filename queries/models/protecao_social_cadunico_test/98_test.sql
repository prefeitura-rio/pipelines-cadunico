
SELECT
    CAST(chv_natural_prefeitura AS string) AS id_prefeitura,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_munic_ibge_2_pre AS string) AS sigla_uf,
    CAST(cod_munic_ibge_5_pre AS string) AS if_municipio,
    CAST(ind_migracao_pre AS string) AS migracao,
    CAST(nom_prefeitura_pre AS string) AS prefeitura,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.98_0601_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura AS string) AS id_prefeitura,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_munic_ibge_2_pre AS string) AS sigla_uf,
    CAST(cod_munic_ibge_5_pre AS string) AS if_municipio,
    CAST(ind_migracao_pre AS string) AS migracao,
    CAST(nom_prefeitura_pre AS string) AS prefeitura,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.98_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura AS string) AS id_prefeitura,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_munic_ibge_2_pre AS string) AS sigla_uf,
    CAST(cod_munic_ibge_5_pre AS string) AS if_municipio,
    CAST(ind_migracao_pre AS string) AS migracao,
    CAST(nom_prefeitura_pre AS string) AS prefeitura,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.98_0609_test`

