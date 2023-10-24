
{{
    config(
        partition_by={
            "field": "data_particao",
            "data_type": "date",
            "granularity": "month",
        }
    )
}}


SELECT

    --column: chv_natural_prefeitura_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_antes_transferencia,

    --column: cod_destino_familia_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,11))  AS STRING)
    END AS id_familia_destino,

    --column: cod_destino_prefeitura_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,13))  AS STRING)
    END AS id_prefeitura_destino,

    --column: cod_est_cadastral_atual_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia,

    --column: cod_familiar_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_antes_transferencia,

    --column: cod_munic_ibge_origem_2_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,2))  AS STRING)
    END AS id_uf_transferencia,

    --column: cod_munic_ibge_origem_5_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,5))  AS STRING)
    END AS id_municipio_transferencia,

    --column: dat_transferencia_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia,

    --column: num_reg_arquivo_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_transferencia,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '16'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_antes_transferencia,

    --column: cod_destino_familia_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,11))  AS STRING)
    END AS id_familia_destino,

    --column: cod_destino_prefeitura_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,13))  AS STRING)
    END AS id_prefeitura_destino,

    --column: cod_est_cadastral_atual_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia,

    --column: cod_familiar_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_antes_transferencia,

    --column: cod_munic_ibge_origem_2_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,2))  AS STRING)
    END AS id_uf_transferencia,

    --column: cod_munic_ibge_origem_5_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,5))  AS STRING)
    END AS id_municipio_transferencia,

    --column: dat_transferencia_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia,

    --column: num_reg_arquivo_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_transferencia,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '16'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_antes_transferencia,

    --column: cod_destino_familia_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,11))  AS STRING)
    END AS id_familia_destino,

    --column: cod_destino_prefeitura_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,13))  AS STRING)
    END AS id_prefeitura_destino,

    --column: cod_est_cadastral_atual_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia,

    --column: cod_familiar_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_antes_transferencia,

    --column: cod_munic_ibge_origem_2_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,2))  AS STRING)
    END AS id_uf_transferencia,

    --column: cod_munic_ibge_origem_5_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,5))  AS STRING)
    END AS id_municipio_transferencia,

    --column: dat_transferencia_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia,

    --column: num_reg_arquivo_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_transferencia,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '16'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_antes_transferencia,

    --column: cod_destino_familia_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,11))  AS STRING)
    END AS id_familia_destino,

    --column: cod_destino_prefeitura_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,13))  AS STRING)
    END AS id_prefeitura_destino,

    --column: cod_est_cadastral_atual_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia,

    --column: cod_familiar_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_antes_transferencia,

    --column: cod_munic_ibge_origem_2_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,2))  AS STRING)
    END AS id_uf_transferencia,

    --column: cod_munic_ibge_origem_5_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,5))  AS STRING)
    END AS id_municipio_transferencia,

    --column: dat_transferencia_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia,

    --column: num_reg_arquivo_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_transferencia,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '16'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_antes_transferencia,

    --column: cod_destino_familia_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,11))  AS STRING)
    END AS id_familia_destino,

    --column: cod_destino_prefeitura_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,13))  AS STRING)
    END AS id_prefeitura_destino,

    --column: cod_est_cadastral_atual_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia,

    --column: cod_familiar_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_antes_transferencia,

    --column: cod_munic_ibge_origem_2_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,2))  AS STRING)
    END AS id_uf_transferencia,

    --column: cod_munic_ibge_origem_5_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,5))  AS STRING)
    END AS id_municipio_transferencia,

    --column: dat_transferencia_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia,

    --column: num_reg_arquivo_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_transferencia,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '16'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_antes_transferencia,

    --column: cod_destino_familia_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,11))  AS STRING)
    END AS id_familia_destino,

    --column: cod_destino_prefeitura_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,13))  AS STRING)
    END AS id_prefeitura_destino,

    --column: cod_est_cadastral_atual_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia,

    --column: cod_familiar_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_antes_transferencia,

    --column: cod_munic_ibge_origem_2_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,2))  AS STRING)
    END AS id_uf_transferencia,

    --column: cod_munic_ibge_origem_5_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,5))  AS STRING)
    END AS id_municipio_transferencia,

    --column: dat_transferencia_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia,

    --column: num_reg_arquivo_famt
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_transferencia,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '16'

