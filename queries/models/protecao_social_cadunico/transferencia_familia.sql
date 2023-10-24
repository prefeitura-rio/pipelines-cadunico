
SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_famt)  AS STRING)
    END AS id_prefeitura_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_famt)  AS STRING)
    END AS id_familia_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo_famt)  AS STRING)
    END AS numero_registro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(dat_transferencia_famt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_transferencia_famt))  AS DATE)
    END AS data_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_atual_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_atual_famt)  AS STRING)
    END AS id_estado_cadastro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_origem_2_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_origem_2_famt)  AS STRING)
    END AS id_uf_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_origem_5_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_origem_5_famt)  AS STRING)
    END AS id_municipio_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_prefeitura_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_prefeitura_famt)  AS STRING)
    END AS id_prefeitura_destino,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_familia_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_familia_famt)  AS STRING)
    END AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0601`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_famt)  AS STRING)
    END AS id_prefeitura_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_famt)  AS STRING)
    END AS id_familia_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo_famt)  AS STRING)
    END AS numero_registro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(dat_transferencia_famt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_transferencia_famt))  AS DATE)
    END AS data_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_atual_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_atual_famt)  AS STRING)
    END AS id_estado_cadastro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_origem_2_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_origem_2_famt)  AS STRING)
    END AS id_uf_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_origem_5_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_origem_5_famt)  AS STRING)
    END AS id_municipio_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_prefeitura_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_prefeitura_famt)  AS STRING)
    END AS id_prefeitura_destino,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_familia_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_familia_famt)  AS STRING)
    END AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0603`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_famt)  AS STRING)
    END AS id_prefeitura_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_famt)  AS STRING)
    END AS id_familia_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo_famt)  AS STRING)
    END AS numero_registro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(dat_transferencia_famt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_transferencia_famt))  AS DATE)
    END AS data_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_atual_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_atual_famt)  AS STRING)
    END AS id_estado_cadastro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_origem_2_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_origem_2_famt)  AS STRING)
    END AS id_uf_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_origem_5_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_origem_5_famt)  AS STRING)
    END AS id_municipio_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_prefeitura_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_prefeitura_famt)  AS STRING)
    END AS id_prefeitura_destino,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_familia_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_familia_famt)  AS STRING)
    END AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0604`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_famt)  AS STRING)
    END AS id_prefeitura_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_famt)  AS STRING)
    END AS id_familia_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo_famt)  AS STRING)
    END AS numero_registro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(dat_transferencia_famt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_transferencia_famt))  AS DATE)
    END AS data_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_atual_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_atual_famt)  AS STRING)
    END AS id_estado_cadastro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_origem_2_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_origem_2_famt)  AS STRING)
    END AS id_uf_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_origem_5_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_origem_5_famt)  AS STRING)
    END AS id_municipio_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_prefeitura_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_prefeitura_famt)  AS STRING)
    END AS id_prefeitura_destino,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_familia_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_familia_famt)  AS STRING)
    END AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0609`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_famt)  AS STRING)
    END AS id_prefeitura_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_famt)  AS STRING)
    END AS id_familia_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo_famt)  AS STRING)
    END AS numero_registro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(dat_transferencia_famt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_transferencia_famt))  AS DATE)
    END AS data_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_atual_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_atual_famt)  AS STRING)
    END AS id_estado_cadastro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_origem_2_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_origem_2_famt)  AS STRING)
    END AS id_uf_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_origem_5_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_origem_5_famt)  AS STRING)
    END AS id_municipio_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_prefeitura_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_prefeitura_famt)  AS STRING)
    END AS id_prefeitura_destino,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_familia_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_familia_famt)  AS STRING)
    END AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0612`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_famt)  AS STRING)
    END AS id_prefeitura_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_famt)  AS STRING)
    END AS id_familia_antes_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo_famt)  AS STRING)
    END AS numero_registro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(dat_transferencia_famt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_transferencia_famt))  AS DATE)
    END AS data_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_atual_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_atual_famt)  AS STRING)
    END AS id_estado_cadastro_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_origem_2_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_origem_2_famt)  AS STRING)
    END AS id_uf_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_origem_5_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_origem_5_famt)  AS STRING)
    END AS id_municipio_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_prefeitura_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_prefeitura_famt)  AS STRING)
    END AS id_prefeitura_destino,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_familia_famt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_familia_famt)  AS STRING)
    END AS id_familia_destino,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.transferencia_familia_0615`

