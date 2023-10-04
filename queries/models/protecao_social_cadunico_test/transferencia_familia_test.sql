
SELECT
    CAST(chv_natural_prefeitura_famt AS string) AS id_prefeitura_antes_transferencia,
    CAST(cod_familiar_famt AS string) AS id_familia_antes_transferencia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo_famt AS string) AS numero_registro_transferencia,
    CAST(dat_transferencia_famt AS date) AS data_transferencia,
    CAST(cod_est_cadastral_atual_famt AS string) AS id_estado_cadastro_transferencia,
    CAST(cod_munic_ibge_origem_2_famt AS string) AS id_uf_transferencia,
    CAST(cod_munic_ibge_origem_5_famt AS string) AS id_municipio_transferencia,
    CAST(cod_destino_prefeitura_famt AS string) AS id_prefeitura_destino,
    CAST(cod_destino_familia_famt AS string) AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.transferencia_familia_test_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_famt AS string) AS id_prefeitura_antes_transferencia,
    CAST(cod_familiar_famt AS string) AS id_familia_antes_transferencia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo_famt AS string) AS numero_registro_transferencia,
    CAST(dat_transferencia_famt AS date) AS data_transferencia,
    CAST(cod_est_cadastral_atual_famt AS string) AS id_estado_cadastro_transferencia,
    CAST(cod_munic_ibge_origem_2_famt AS string) AS id_uf_transferencia,
    CAST(cod_munic_ibge_origem_5_famt AS string) AS id_municipio_transferencia,
    CAST(cod_destino_prefeitura_famt AS string) AS id_prefeitura_destino,
    CAST(cod_destino_familia_famt AS string) AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.transferencia_familia_test_0609_test`

