
SELECT
    CAST(chv_natural_prefeitura_famt AS STRING) AS id_prefeitura_antes_transferencia,
    CAST(cod_familiar_famt AS STRING) AS id_familia_antes_transferencia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo_famt AS STRING) AS numero_registro_transferencia,
    CAST(PARSE_DATE('%d%m%Y', dat_transferencia_famt) AS DATE) AS data_transferencia,
    CAST(cod_est_cadastral_atual_famt AS STRING) AS id_estado_cadastro_transferencia,
    CAST(cod_munic_ibge_origem_2_famt AS STRING) AS id_uf_transferencia,
    CAST(cod_munic_ibge_origem_5_famt AS STRING) AS id_municipio_transferencia,
    CAST(cod_destino_prefeitura_famt AS STRING) AS id_prefeitura_destino,
    CAST(cod_destino_familia_famt AS STRING) AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0601`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_famt AS STRING) AS id_prefeitura_antes_transferencia,
    CAST(cod_familiar_famt AS STRING) AS id_familia_antes_transferencia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo_famt AS STRING) AS numero_registro_transferencia,
    CAST(PARSE_DATE('%d%m%Y', dat_transferencia_famt) AS DATE) AS data_transferencia,
    CAST(cod_est_cadastral_atual_famt AS STRING) AS id_estado_cadastro_transferencia,
    CAST(cod_munic_ibge_origem_2_famt AS STRING) AS id_uf_transferencia,
    CAST(cod_munic_ibge_origem_5_famt AS STRING) AS id_municipio_transferencia,
    CAST(cod_destino_prefeitura_famt AS STRING) AS id_prefeitura_destino,
    CAST(cod_destino_familia_famt AS STRING) AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0603`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_famt AS STRING) AS id_prefeitura_antes_transferencia,
    CAST(cod_familiar_famt AS STRING) AS id_familia_antes_transferencia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo_famt AS STRING) AS numero_registro_transferencia,
    CAST(PARSE_DATE('%d%m%Y', dat_transferencia_famt) AS DATE) AS data_transferencia,
    CAST(cod_est_cadastral_atual_famt AS STRING) AS id_estado_cadastro_transferencia,
    CAST(cod_munic_ibge_origem_2_famt AS STRING) AS id_uf_transferencia,
    CAST(cod_munic_ibge_origem_5_famt AS STRING) AS id_municipio_transferencia,
    CAST(cod_destino_prefeitura_famt AS STRING) AS id_prefeitura_destino,
    CAST(cod_destino_familia_famt AS STRING) AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0604`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_famt AS STRING) AS id_prefeitura_antes_transferencia,
    CAST(cod_familiar_famt AS STRING) AS id_familia_antes_transferencia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo_famt AS STRING) AS numero_registro_transferencia,
    CAST(PARSE_DATE('%d%m%Y', dat_transferencia_famt) AS DATE) AS data_transferencia,
    CAST(cod_est_cadastral_atual_famt AS STRING) AS id_estado_cadastro_transferencia,
    CAST(cod_munic_ibge_origem_2_famt AS STRING) AS id_uf_transferencia,
    CAST(cod_munic_ibge_origem_5_famt AS STRING) AS id_municipio_transferencia,
    CAST(cod_destino_prefeitura_famt AS STRING) AS id_prefeitura_destino,
    CAST(cod_destino_familia_famt AS STRING) AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0609`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_famt AS STRING) AS id_prefeitura_antes_transferencia,
    CAST(cod_familiar_famt AS STRING) AS id_familia_antes_transferencia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo_famt AS STRING) AS numero_registro_transferencia,
    CAST(PARSE_DATE('%d%m%Y', dat_transferencia_famt) AS DATE) AS data_transferencia,
    CAST(cod_est_cadastral_atual_famt AS STRING) AS id_estado_cadastro_transferencia,
    CAST(cod_munic_ibge_origem_2_famt AS STRING) AS id_uf_transferencia,
    CAST(cod_munic_ibge_origem_5_famt AS STRING) AS id_municipio_transferencia,
    CAST(cod_destino_prefeitura_famt AS STRING) AS id_prefeitura_destino,
    CAST(cod_destino_familia_famt AS STRING) AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0612`

