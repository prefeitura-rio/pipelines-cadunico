
SELECT
    CAST(chv_natural_prefeitura_famt AS STRING) AS chv_natural_prefeitura_famt,
    CAST(cod_familiar_famt AS STRING) AS cod_familiar_famt,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo_famt AS STRING) AS num_reg_arquivo_famt,
    CAST(dat_transferencia_famt AS STRING) AS dat_transferencia_famt,
    CAST(cod_est_cadastral_atual_famt AS STRING) AS cod_est_cadastral_atual_famt,
    CAST(cod_munic_ibge_origem_2_famt AS STRING) AS cod_munic_ibge_origem_2_famt,
    CAST(cod_munic_ibge_origem_5_famt AS STRING) AS cod_munic_ibge_origem_5_famt,
    CAST(cod_destino_prefeitura_famt AS STRING) AS cod_destino_prefeitura_famt,
    CAST(cod_destino_familia_famt AS STRING) AS cod_destino_familia_famt,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.16_0601_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_famt AS STRING) AS chv_natural_prefeitura_famt,
    CAST(cod_familiar_famt AS STRING) AS cod_familiar_famt,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo_famt AS STRING) AS num_reg_arquivo_famt,
    CAST(dat_transferencia_famt AS STRING) AS dat_transferencia_famt,
    CAST(cod_est_cadastral_atual_famt AS STRING) AS cod_est_cadastral_atual_famt,
    CAST(cod_munic_ibge_origem_2_famt AS STRING) AS cod_munic_ibge_origem_2_famt,
    CAST(cod_munic_ibge_origem_5_famt AS STRING) AS cod_munic_ibge_origem_5_famt,
    CAST(cod_destino_prefeitura_famt AS STRING) AS cod_destino_prefeitura_famt,
    CAST(cod_destino_familia_famt AS STRING) AS cod_destino_familia_famt,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.16_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_famt AS STRING) AS chv_natural_prefeitura_famt,
    CAST(cod_familiar_famt AS STRING) AS cod_familiar_famt,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo_famt AS STRING) AS num_reg_arquivo_famt,
    CAST(dat_transferencia_famt AS STRING) AS dat_transferencia_famt,
    CAST(cod_est_cadastral_atual_famt AS STRING) AS cod_est_cadastral_atual_famt,
    CAST(cod_munic_ibge_origem_2_famt AS STRING) AS cod_munic_ibge_origem_2_famt,
    CAST(cod_munic_ibge_origem_5_famt AS STRING) AS cod_munic_ibge_origem_5_famt,
    CAST(cod_destino_prefeitura_famt AS STRING) AS cod_destino_prefeitura_famt,
    CAST(cod_destino_familia_famt AS STRING) AS cod_destino_familia_famt,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.16_0609_test`

