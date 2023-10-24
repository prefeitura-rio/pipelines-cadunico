
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

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_condicao_cadastro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS id_condicao_cadastro,

    --column: cod_est_cadastral_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastro,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_forma_coleta_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS id_forma_coleta,

    --column: cod_ibge_distrito_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,2))  AS STRING)
    END AS id_distrito,

    --column: cod_ibge_setor_censo_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,4))  AS STRING)
    END AS id_setor_censitario,

    --column: cod_ibge_subdistr_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,2))  AS STRING)
    END AS id_subdistrito,

    --column: cod_modalidade_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS id_modalidade,

    --column: cod_munic_ibge_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,2))  AS STRING)
    END AS id_uf,

    --column: cod_munic_ibge_5_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,5))  AS STRING)
    END AS id_municipio,

    --column: cod_origem_familia_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1092,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1092,11))  AS STRING)
    END AS id_familia_origem,

    --column: cod_origem_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1079,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1079,13))  AS STRING)
    END AS id_prefeitura_origem,

    --column: cod_unidade_territorial_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1120,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1120,10))  AS STRING)
    END AS id_unidade_territorial,

    --column: dat_alteracao_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_alteracao,

    --column: dat_atualizacao_familia
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1112,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1112,8)))  AS DATE)
    END AS data_atualizacao,

    --column: dat_cadastramento_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_catrastro,

    --column: des_complemento_adic_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,365,75), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,365,75))  AS STRING)
    END AS complemento_adicional,

    --column: des_complemento_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,22), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,22))  AS STRING)
    END AS complemento,

    --column: dt_cdstr_atual_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1103,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1103,8)))  AS DATE)
    END AS data_limite_catastro_atual,

    --column: dta_entrevista_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,91,8)))  AS DATE)
    END AS data_entrevista,

    --column: dta_integracao_fam
    NULL AS data_integracao_familia, --Essa coluna não esta na versao posterior

    --column: filler
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,448,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,448,38))  AS STRING)
    END AS filler,

    --column: flag_fam_alterada_v7
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1111,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1111,1))  AS STRING)
    END AS alterada_v7,

    --column: ind_cadastro_valido_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS cadastro_valido,

    --column: ind_formulario_0_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS formulario_0,

    --column: ind_formulario_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS formulario_1,

    --column: ind_formulario_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS formulario_2,

    --column: ind_formulario_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS formulario_suplementar_1,

    --column: ind_formulario_sup2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS formulario_suplementar_2,

    --column: ind_formulario_sup3_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1230,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1230,1))  AS STRING)
    END AS formulario_suplementar_3,

    --column: ind_trabalho_infantil_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS trabalho_infantil,

    --column: nom_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,742,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,742,70))  AS STRING)
    END AS entrevistador,

    --column: nom_localidade_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,76))  AS STRING)
    END AS localidade,

    --column: nom_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,76))  AS STRING)
    END AS logradouro,

    --column: nom_tip_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,38))  AS STRING)
    END AS tipo_logradouro,

    --column: nom_titulo_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,213,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,213,38))  AS STRING)
    END AS titulo_logradouro,

    --column: nom_unidade_territorial_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1130,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1130,100))  AS STRING)
    END AS unidade_territorial,

    --column: nu_origem_cadastro_fam
    NULL AS origem_cadastro, --Essa coluna não esta na versao posterior

    --column: num_cep_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,440,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,440,8))  AS STRING)
    END AS cep,

    --column: num_cpf_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,812,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,812,11))  AS STRING)
    END AS cpf_entrevistador,

    --column: num_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,327,16), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,327,16)) AS INT64)
    END AS numero_logradouro,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: txt_obs_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,823,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,823,256))  AS STRING)
    END AS observacoes_entrevistador,

    --column: txt_referencia_local_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,486,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,486,256))  AS STRING)
    END AS refencia_logradouro,

    --column: vlr_renda_media_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,9)) AS INT64)
    END AS valor_renda_media,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '01'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_condicao_cadastro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS id_condicao_cadastro,

    --column: cod_est_cadastral_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastro,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_forma_coleta_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS id_forma_coleta,

    --column: cod_ibge_distrito_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,2))  AS STRING)
    END AS id_distrito,

    --column: cod_ibge_setor_censo_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,4))  AS STRING)
    END AS id_setor_censitario,

    --column: cod_ibge_subdistr_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,2))  AS STRING)
    END AS id_subdistrito,

    --column: cod_modalidade_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS id_modalidade,

    --column: cod_munic_ibge_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,2))  AS STRING)
    END AS id_uf,

    --column: cod_munic_ibge_5_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,5))  AS STRING)
    END AS id_municipio,

    --column: cod_origem_familia_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1092,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1092,11))  AS STRING)
    END AS id_familia_origem,

    --column: cod_origem_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1079,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1079,13))  AS STRING)
    END AS id_prefeitura_origem,

    --column: cod_unidade_territorial_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1120,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1120,10))  AS STRING)
    END AS id_unidade_territorial,

    --column: dat_alteracao_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_alteracao,

    --column: dat_atualizacao_familia
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1112,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1112,8)))  AS DATE)
    END AS data_atualizacao,

    --column: dat_cadastramento_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_catrastro,

    --column: des_complemento_adic_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,365,75), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,365,75))  AS STRING)
    END AS complemento_adicional,

    --column: des_complemento_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,22), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,22))  AS STRING)
    END AS complemento,

    --column: dt_cdstr_atual_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1103,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1103,8)))  AS DATE)
    END AS data_limite_catastro_atual,

    --column: dta_entrevista_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,91,8)))  AS DATE)
    END AS data_entrevista,

    --column: dta_integracao_fam
    NULL AS data_integracao_familia, --Essa coluna não esta na versao posterior

    --column: filler
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,448,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,448,38))  AS STRING)
    END AS filler,

    --column: flag_fam_alterada_v7
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1111,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1111,1))  AS STRING)
    END AS alterada_v7,

    --column: ind_cadastro_valido_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS cadastro_valido,

    --column: ind_formulario_0_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS formulario_0,

    --column: ind_formulario_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS formulario_1,

    --column: ind_formulario_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS formulario_2,

    --column: ind_formulario_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS formulario_suplementar_1,

    --column: ind_formulario_sup2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS formulario_suplementar_2,

    --column: ind_formulario_sup3_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1230,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1230,1))  AS STRING)
    END AS formulario_suplementar_3,

    --column: ind_trabalho_infantil_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS trabalho_infantil,

    --column: nom_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,742,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,742,70))  AS STRING)
    END AS entrevistador,

    --column: nom_localidade_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,76))  AS STRING)
    END AS localidade,

    --column: nom_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,76))  AS STRING)
    END AS logradouro,

    --column: nom_tip_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,38))  AS STRING)
    END AS tipo_logradouro,

    --column: nom_titulo_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,213,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,213,38))  AS STRING)
    END AS titulo_logradouro,

    --column: nom_unidade_territorial_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1130,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1130,100))  AS STRING)
    END AS unidade_territorial,

    --column: nu_origem_cadastro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1231,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1231,2))  AS STRING)
    END AS origem_cadastro,

    --column: num_cep_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,440,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,440,8))  AS STRING)
    END AS cep,

    --column: num_cpf_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,812,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,812,11))  AS STRING)
    END AS cpf_entrevistador,

    --column: num_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,327,16), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,327,16)) AS INT64)
    END AS numero_logradouro,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: txt_obs_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,823,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,823,256))  AS STRING)
    END AS observacoes_entrevistador,

    --column: txt_referencia_local_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,486,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,486,256))  AS STRING)
    END AS refencia_logradouro,

    --column: vlr_renda_media_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,9)) AS INT64)
    END AS valor_renda_media,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '01'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_condicao_cadastro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS id_condicao_cadastro,

    --column: cod_est_cadastral_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastro,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_forma_coleta_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS id_forma_coleta,

    --column: cod_ibge_distrito_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,2))  AS STRING)
    END AS id_distrito,

    --column: cod_ibge_setor_censo_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,4))  AS STRING)
    END AS id_setor_censitario,

    --column: cod_ibge_subdistr_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,2))  AS STRING)
    END AS id_subdistrito,

    --column: cod_modalidade_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS id_modalidade,

    --column: cod_munic_ibge_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,2))  AS STRING)
    END AS id_uf,

    --column: cod_munic_ibge_5_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,5))  AS STRING)
    END AS id_municipio,

    --column: cod_origem_familia_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1092,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1092,11))  AS STRING)
    END AS id_familia_origem,

    --column: cod_origem_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1079,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1079,13))  AS STRING)
    END AS id_prefeitura_origem,

    --column: cod_unidade_territorial_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1120,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1120,10))  AS STRING)
    END AS id_unidade_territorial,

    --column: dat_alteracao_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_alteracao,

    --column: dat_atualizacao_familia
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1112,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1112,8)))  AS DATE)
    END AS data_atualizacao,

    --column: dat_cadastramento_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_catrastro,

    --column: des_complemento_adic_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,365,75), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,365,75))  AS STRING)
    END AS complemento_adicional,

    --column: des_complemento_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,22), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,22))  AS STRING)
    END AS complemento,

    --column: dt_cdstr_atual_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1103,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1103,8)))  AS DATE)
    END AS data_limite_catastro_atual,

    --column: dta_entrevista_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,91,8)))  AS DATE)
    END AS data_entrevista,

    --column: dta_integracao_fam
    NULL AS data_integracao_familia, --Essa coluna não esta na versao posterior

    --column: filler
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,448,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,448,38))  AS STRING)
    END AS filler,

    --column: flag_fam_alterada_v7
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1111,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1111,1))  AS STRING)
    END AS alterada_v7,

    --column: ind_cadastro_valido_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS cadastro_valido,

    --column: ind_formulario_0_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS formulario_0,

    --column: ind_formulario_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS formulario_1,

    --column: ind_formulario_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS formulario_2,

    --column: ind_formulario_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS formulario_suplementar_1,

    --column: ind_formulario_sup2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS formulario_suplementar_2,

    --column: ind_formulario_sup3_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1230,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1230,1))  AS STRING)
    END AS formulario_suplementar_3,

    --column: ind_trabalho_infantil_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS trabalho_infantil,

    --column: nom_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,742,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,742,70))  AS STRING)
    END AS entrevistador,

    --column: nom_localidade_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,76))  AS STRING)
    END AS localidade,

    --column: nom_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,76))  AS STRING)
    END AS logradouro,

    --column: nom_tip_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,38))  AS STRING)
    END AS tipo_logradouro,

    --column: nom_titulo_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,213,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,213,38))  AS STRING)
    END AS titulo_logradouro,

    --column: nom_unidade_territorial_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1130,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1130,100))  AS STRING)
    END AS unidade_territorial,

    --column: nu_origem_cadastro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1231,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1231,2))  AS STRING)
    END AS origem_cadastro,

    --column: num_cep_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,440,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,440,8))  AS STRING)
    END AS cep,

    --column: num_cpf_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,812,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,812,11))  AS STRING)
    END AS cpf_entrevistador,

    --column: num_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,327,16), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,327,16)) AS INT64)
    END AS numero_logradouro,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: txt_obs_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,823,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,823,256))  AS STRING)
    END AS observacoes_entrevistador,

    --column: txt_referencia_local_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,486,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,486,256))  AS STRING)
    END AS refencia_logradouro,

    --column: vlr_renda_media_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,9)) AS INT64)
    END AS valor_renda_media,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '01'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_condicao_cadastro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS id_condicao_cadastro,

    --column: cod_est_cadastral_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastro,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_forma_coleta_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS id_forma_coleta,

    --column: cod_ibge_distrito_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,2))  AS STRING)
    END AS id_distrito,

    --column: cod_ibge_setor_censo_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,4))  AS STRING)
    END AS id_setor_censitario,

    --column: cod_ibge_subdistr_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,2))  AS STRING)
    END AS id_subdistrito,

    --column: cod_modalidade_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS id_modalidade,

    --column: cod_munic_ibge_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,2))  AS STRING)
    END AS id_uf,

    --column: cod_munic_ibge_5_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,5))  AS STRING)
    END AS id_municipio,

    --column: cod_origem_familia_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1092,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1092,11))  AS STRING)
    END AS id_familia_origem,

    --column: cod_origem_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1079,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1079,13))  AS STRING)
    END AS id_prefeitura_origem,

    --column: cod_unidade_territorial_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1120,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1120,10))  AS STRING)
    END AS id_unidade_territorial,

    --column: dat_alteracao_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_alteracao,

    --column: dat_atualizacao_familia
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1112,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1112,8)))  AS DATE)
    END AS data_atualizacao,

    --column: dat_cadastramento_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_catrastro,

    --column: des_complemento_adic_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,365,75), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,365,75))  AS STRING)
    END AS complemento_adicional,

    --column: des_complemento_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,22), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,22))  AS STRING)
    END AS complemento,

    --column: dt_cdstr_atual_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1103,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1103,8)))  AS DATE)
    END AS data_limite_catastro_atual,

    --column: dta_entrevista_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,91,8)))  AS DATE)
    END AS data_entrevista,

    --column: dta_integracao_fam
    NULL AS data_integracao_familia, --Essa coluna não esta na versao posterior

    --column: filler
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,448,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,448,38))  AS STRING)
    END AS filler,

    --column: flag_fam_alterada_v7
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1111,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1111,1))  AS STRING)
    END AS alterada_v7,

    --column: ind_cadastro_valido_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS cadastro_valido,

    --column: ind_formulario_0_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS formulario_0,

    --column: ind_formulario_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS formulario_1,

    --column: ind_formulario_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS formulario_2,

    --column: ind_formulario_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS formulario_suplementar_1,

    --column: ind_formulario_sup2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS formulario_suplementar_2,

    --column: ind_formulario_sup3_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1230,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1230,1))  AS STRING)
    END AS formulario_suplementar_3,

    --column: ind_trabalho_infantil_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS trabalho_infantil,

    --column: nom_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,742,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,742,70))  AS STRING)
    END AS entrevistador,

    --column: nom_localidade_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,76))  AS STRING)
    END AS localidade,

    --column: nom_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,76))  AS STRING)
    END AS logradouro,

    --column: nom_tip_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,38))  AS STRING)
    END AS tipo_logradouro,

    --column: nom_titulo_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,213,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,213,38))  AS STRING)
    END AS titulo_logradouro,

    --column: nom_unidade_territorial_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1130,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1130,100))  AS STRING)
    END AS unidade_territorial,

    --column: nu_origem_cadastro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1231,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1231,2))  AS STRING)
    END AS origem_cadastro,

    --column: num_cep_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,440,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,440,8))  AS STRING)
    END AS cep,

    --column: num_cpf_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,812,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,812,11))  AS STRING)
    END AS cpf_entrevistador,

    --column: num_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,327,16), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,327,16)) AS INT64)
    END AS numero_logradouro,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: txt_obs_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,823,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,823,256))  AS STRING)
    END AS observacoes_entrevistador,

    --column: txt_referencia_local_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,486,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,486,256))  AS STRING)
    END AS refencia_logradouro,

    --column: vlr_renda_media_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,9)) AS INT64)
    END AS valor_renda_media,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '01'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_condicao_cadastro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS id_condicao_cadastro,

    --column: cod_est_cadastral_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastro,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_forma_coleta_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS id_forma_coleta,

    --column: cod_ibge_distrito_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,2))  AS STRING)
    END AS id_distrito,

    --column: cod_ibge_setor_censo_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,4))  AS STRING)
    END AS id_setor_censitario,

    --column: cod_ibge_subdistr_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,2))  AS STRING)
    END AS id_subdistrito,

    --column: cod_modalidade_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS id_modalidade,

    --column: cod_munic_ibge_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,2))  AS STRING)
    END AS id_uf,

    --column: cod_munic_ibge_5_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,5))  AS STRING)
    END AS id_municipio,

    --column: cod_origem_familia_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1092,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1092,11))  AS STRING)
    END AS id_familia_origem,

    --column: cod_origem_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1079,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1079,13))  AS STRING)
    END AS id_prefeitura_origem,

    --column: cod_unidade_territorial_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1120,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1120,10))  AS STRING)
    END AS id_unidade_territorial,

    --column: dat_alteracao_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_alteracao,

    --column: dat_atualizacao_familia
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1112,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1112,8)))  AS DATE)
    END AS data_atualizacao,

    --column: dat_cadastramento_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_catrastro,

    --column: des_complemento_adic_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,365,75), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,365,75))  AS STRING)
    END AS complemento_adicional,

    --column: des_complemento_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,22), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,22))  AS STRING)
    END AS complemento,

    --column: dt_cdstr_atual_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1103,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1103,8)))  AS DATE)
    END AS data_limite_catastro_atual,

    --column: dta_entrevista_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,91,8)))  AS DATE)
    END AS data_entrevista,

    --column: dta_integracao_fam
    NULL AS data_integracao_familia, --Essa coluna não esta na versao posterior

    --column: filler
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,448,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,448,38))  AS STRING)
    END AS filler,

    --column: flag_fam_alterada_v7
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1111,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1111,1))  AS STRING)
    END AS alterada_v7,

    --column: ind_cadastro_valido_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS cadastro_valido,

    --column: ind_formulario_0_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS formulario_0,

    --column: ind_formulario_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS formulario_1,

    --column: ind_formulario_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS formulario_2,

    --column: ind_formulario_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS formulario_suplementar_1,

    --column: ind_formulario_sup2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS formulario_suplementar_2,

    --column: ind_formulario_sup3_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1230,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1230,1))  AS STRING)
    END AS formulario_suplementar_3,

    --column: ind_trabalho_infantil_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS trabalho_infantil,

    --column: nom_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,742,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,742,70))  AS STRING)
    END AS entrevistador,

    --column: nom_localidade_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,76))  AS STRING)
    END AS localidade,

    --column: nom_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,76))  AS STRING)
    END AS logradouro,

    --column: nom_tip_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,38))  AS STRING)
    END AS tipo_logradouro,

    --column: nom_titulo_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,213,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,213,38))  AS STRING)
    END AS titulo_logradouro,

    --column: nom_unidade_territorial_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1130,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1130,100))  AS STRING)
    END AS unidade_territorial,

    --column: nu_origem_cadastro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1231,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1231,2))  AS STRING)
    END AS origem_cadastro,

    --column: num_cep_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,440,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,440,8))  AS STRING)
    END AS cep,

    --column: num_cpf_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,812,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,812,11))  AS STRING)
    END AS cpf_entrevistador,

    --column: num_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,327,16), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,327,16)) AS INT64)
    END AS numero_logradouro,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: txt_obs_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,823,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,823,256))  AS STRING)
    END AS observacoes_entrevistador,

    --column: txt_referencia_local_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,486,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,486,256))  AS STRING)
    END AS refencia_logradouro,

    --column: vlr_renda_media_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,9)) AS INT64)
    END AS valor_renda_media,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '01'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_condicao_cadastro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS id_condicao_cadastro,

    --column: cod_est_cadastral_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastro,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_forma_coleta_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS id_forma_coleta,

    --column: cod_ibge_distrito_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,2))  AS STRING)
    END AS id_distrito,

    --column: cod_ibge_setor_censo_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,4))  AS STRING)
    END AS id_setor_censitario,

    --column: cod_ibge_subdistr_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,2))  AS STRING)
    END AS id_subdistrito,

    --column: cod_modalidade_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS id_modalidade,

    --column: cod_munic_ibge_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,2))  AS STRING)
    END AS id_uf,

    --column: cod_munic_ibge_5_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,5))  AS STRING)
    END AS id_municipio,

    --column: cod_origem_familia_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1092,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1092,11))  AS STRING)
    END AS id_familia_origem,

    --column: cod_origem_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1079,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1079,13))  AS STRING)
    END AS id_prefeitura_origem,

    --column: cod_unidade_territorial_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1120,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1120,10))  AS STRING)
    END AS id_unidade_territorial,

    --column: dat_alteracao_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_alteracao,

    --column: dat_atualizacao_familia
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1112,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1112,8)))  AS DATE)
    END AS data_atualizacao,

    --column: dat_cadastramento_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_catrastro,

    --column: des_complemento_adic_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,365,75), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,365,75))  AS STRING)
    END AS complemento_adicional,

    --column: des_complemento_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,22), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,22))  AS STRING)
    END AS complemento,

    --column: dt_cdstr_atual_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1103,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1103,8)))  AS DATE)
    END AS data_limite_catastro_atual,

    --column: dta_entrevista_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,91,8)))  AS DATE)
    END AS data_entrevista,

    --column: dta_integracao_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1233,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1233,8)))  AS DATE)
    END AS data_integracao_familia,

    --column: filler
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,448,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,448,38))  AS STRING)
    END AS filler,

    --column: flag_fam_alterada_v7
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1111,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1111,1))  AS STRING)
    END AS alterada_v7,

    --column: ind_cadastro_valido_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS cadastro_valido,

    --column: ind_formulario_0_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS formulario_0,

    --column: ind_formulario_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS formulario_1,

    --column: ind_formulario_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS formulario_2,

    --column: ind_formulario_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS formulario_suplementar_1,

    --column: ind_formulario_sup2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS formulario_suplementar_2,

    --column: ind_formulario_sup3_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1230,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1230,1))  AS STRING)
    END AS formulario_suplementar_3,

    --column: ind_trabalho_infantil_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS trabalho_infantil,

    --column: nom_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,742,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,742,70))  AS STRING)
    END AS entrevistador,

    --column: nom_localidade_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,76))  AS STRING)
    END AS localidade,

    --column: nom_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,76))  AS STRING)
    END AS logradouro,

    --column: nom_tip_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,38))  AS STRING)
    END AS tipo_logradouro,

    --column: nom_titulo_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,213,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,213,38))  AS STRING)
    END AS titulo_logradouro,

    --column: nom_unidade_territorial_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1130,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1130,100))  AS STRING)
    END AS unidade_territorial,

    --column: nu_origem_cadastro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1231,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1231,2))  AS STRING)
    END AS origem_cadastro,

    --column: num_cep_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,440,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,440,8))  AS STRING)
    END AS cep,

    --column: num_cpf_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,812,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,812,11))  AS STRING)
    END AS cpf_entrevistador,

    --column: num_logradouro_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,327,16), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,327,16)) AS INT64)
    END AS numero_logradouro,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: txt_obs_entrevistador_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,823,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,823,256))  AS STRING)
    END AS observacoes_entrevistador,

    --column: txt_referencia_local_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,486,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,486,256))  AS STRING)
    END AS refencia_logradouro,

    --column: vlr_renda_media_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,9)) AS INT64)
    END AS valor_renda_media,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '01'

