
SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dat_cadastramento_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_cadastramento_fam))  AS DATE)
    END AS data_catrastro,
    CASE
        WHEN REGEXP_CONTAINS(dat_alteracao_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_alteracao_fam))  AS DATE)
    END AS data_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_fam)  AS STRING)
    END AS id_estado_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(ind_cadastro_valido_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_cadastro_valido_fam)  AS STRING)
    END AS cadastro_valido,
    CASE
        WHEN REGEXP_CONTAINS(cod_condicao_cadastro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_condicao_cadastro_fam)  AS STRING)
    END AS id_condicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(vlr_renda_media_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(vlr_renda_media_fam) AS INT64)
    END AS valor_renda_media,
    CASE
        WHEN REGEXP_CONTAINS(ind_trabalho_infantil_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_trabalho_infantil_fam)  AS STRING)
    END AS trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_2_fam)  AS STRING)
    END AS id_uf,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_5_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_5_fam)  AS STRING)
    END AS id_municipio,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_distrito_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_distrito_fam)  AS STRING)
    END AS id_distrito,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_subdistr_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_subdistr_fam)  AS STRING)
    END AS id_subdistrito,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_setor_censo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_setor_censo_fam)  AS STRING)
    END AS id_setor_censitario,
    CASE
        WHEN REGEXP_CONTAINS(cod_modalidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_modalidade_fam)  AS STRING)
    END AS id_modalidade,
    CASE
        WHEN REGEXP_CONTAINS(cod_forma_coleta_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_forma_coleta_fam)  AS STRING)
    END AS id_forma_coleta,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_0_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_0_fam)  AS STRING)
    END AS formulario_0,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_1_fam)  AS STRING)
    END AS formulario_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_2_fam)  AS STRING)
    END AS formulario_2,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup1_fam)  AS STRING)
    END AS formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup2_fam)  AS STRING)
    END AS formulario_suplementar_2,
    CASE
        WHEN REGEXP_CONTAINS(dta_entrevista_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_entrevista_fam))  AS DATE)
    END AS data_entrevista,
    CASE
        WHEN REGEXP_CONTAINS(nom_localidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_localidade_fam)  AS STRING)
    END AS localidade,
    CASE
        WHEN REGEXP_CONTAINS(nom_tip_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_tip_logradouro_fam)  AS STRING)
    END AS tipo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_titulo_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_titulo_logradouro_fam)  AS STRING)
    END AS titulo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_logradouro_fam)  AS STRING)
    END AS logradouro,
    CASE
        WHEN REGEXP_CONTAINS(num_logradouro_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(num_logradouro_fam) AS INT64)
    END AS numero_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(des_complemento_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(des_complemento_fam)  AS STRING)
    END AS complemento,
    CASE
        WHEN REGEXP_CONTAINS(des_complemento_adic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(des_complemento_adic_fam)  AS STRING)
    END AS complemento_adicional,
    CASE
        WHEN REGEXP_CONTAINS(num_cep_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cep_logradouro_fam)  AS STRING)
    END AS cep,
    CASE
        WHEN REGEXP_CONTAINS(filler, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(filler)  AS STRING)
    END AS filler,
    CASE
        WHEN REGEXP_CONTAINS(txt_referencia_local_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(txt_referencia_local_fam)  AS STRING)
    END AS refencia_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_entrevistador_fam)  AS STRING)
    END AS entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cpf_entrevistador_fam)  AS STRING)
    END AS cpf_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(txt_obs_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(txt_obs_entrevistador_fam)  AS STRING)
    END AS observacoes_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_origem_prefeitura_fam)  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_familia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_origem_familia_fam)  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(dt_cdstr_atual_fmla, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dt_cdstr_atual_fmla))  AS DATE)
    END AS data_limite_catastro_atual,
    CASE
        WHEN REGEXP_CONTAINS(flag_fam_alterada_v7, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(flag_fam_alterada_v7)  AS STRING)
    END AS alterada_v7,
    CASE
        WHEN REGEXP_CONTAINS(dat_atualizacao_familia, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_atualizacao_familia))  AS DATE)
    END AS data_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_unidade_territorial_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_unidade_territorial_fam)  AS STRING)
    END AS id_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(nom_unidade_territorial_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_unidade_territorial_fam)  AS STRING)
    END AS unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup3_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup3_fam)  AS STRING)
    END AS formulario_suplementar_3,
    NULL AS origem_cadastro, --Essa coluna não esta na versao posterior
    NULL AS dta_integracao_fam, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_controle_0601`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dat_cadastramento_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_cadastramento_fam))  AS DATE)
    END AS data_catrastro,
    CASE
        WHEN REGEXP_CONTAINS(dat_alteracao_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_alteracao_fam))  AS DATE)
    END AS data_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_fam)  AS STRING)
    END AS id_estado_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(ind_cadastro_valido_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_cadastro_valido_fam)  AS STRING)
    END AS cadastro_valido,
    CASE
        WHEN REGEXP_CONTAINS(cod_condicao_cadastro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_condicao_cadastro_fam)  AS STRING)
    END AS id_condicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(vlr_renda_media_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(vlr_renda_media_fam) AS INT64)
    END AS valor_renda_media,
    CASE
        WHEN REGEXP_CONTAINS(ind_trabalho_infantil_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_trabalho_infantil_fam)  AS STRING)
    END AS trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_2_fam)  AS STRING)
    END AS id_uf,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_5_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_5_fam)  AS STRING)
    END AS id_municipio,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_distrito_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_distrito_fam)  AS STRING)
    END AS id_distrito,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_subdistr_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_subdistr_fam)  AS STRING)
    END AS id_subdistrito,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_setor_censo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_setor_censo_fam)  AS STRING)
    END AS id_setor_censitario,
    CASE
        WHEN REGEXP_CONTAINS(cod_modalidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_modalidade_fam)  AS STRING)
    END AS id_modalidade,
    CASE
        WHEN REGEXP_CONTAINS(cod_forma_coleta_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_forma_coleta_fam)  AS STRING)
    END AS id_forma_coleta,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_0_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_0_fam)  AS STRING)
    END AS formulario_0,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_1_fam)  AS STRING)
    END AS formulario_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_2_fam)  AS STRING)
    END AS formulario_2,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup1_fam)  AS STRING)
    END AS formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup2_fam)  AS STRING)
    END AS formulario_suplementar_2,
    CASE
        WHEN REGEXP_CONTAINS(dta_entrevista_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_entrevista_fam))  AS DATE)
    END AS data_entrevista,
    CASE
        WHEN REGEXP_CONTAINS(nom_localidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_localidade_fam)  AS STRING)
    END AS localidade,
    CASE
        WHEN REGEXP_CONTAINS(nom_tip_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_tip_logradouro_fam)  AS STRING)
    END AS tipo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_titulo_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_titulo_logradouro_fam)  AS STRING)
    END AS titulo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_logradouro_fam)  AS STRING)
    END AS logradouro,
    CASE
        WHEN REGEXP_CONTAINS(num_logradouro_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(num_logradouro_fam) AS INT64)
    END AS numero_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(des_complemento_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(des_complemento_fam)  AS STRING)
    END AS complemento,
    CASE
        WHEN REGEXP_CONTAINS(des_complemento_adic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(des_complemento_adic_fam)  AS STRING)
    END AS complemento_adicional,
    CASE
        WHEN REGEXP_CONTAINS(num_cep_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cep_logradouro_fam)  AS STRING)
    END AS cep,
    CASE
        WHEN REGEXP_CONTAINS(filler, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(filler)  AS STRING)
    END AS filler,
    CASE
        WHEN REGEXP_CONTAINS(txt_referencia_local_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(txt_referencia_local_fam)  AS STRING)
    END AS refencia_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_entrevistador_fam)  AS STRING)
    END AS entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cpf_entrevistador_fam)  AS STRING)
    END AS cpf_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(txt_obs_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(txt_obs_entrevistador_fam)  AS STRING)
    END AS observacoes_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_origem_prefeitura_fam)  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_familia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_origem_familia_fam)  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(dt_cdstr_atual_fmla, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dt_cdstr_atual_fmla))  AS DATE)
    END AS data_limite_catastro_atual,
    CASE
        WHEN REGEXP_CONTAINS(flag_fam_alterada_v7, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(flag_fam_alterada_v7)  AS STRING)
    END AS alterada_v7,
    CASE
        WHEN REGEXP_CONTAINS(dat_atualizacao_familia, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_atualizacao_familia))  AS DATE)
    END AS data_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_unidade_territorial_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_unidade_territorial_fam)  AS STRING)
    END AS id_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(nom_unidade_territorial_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_unidade_territorial_fam)  AS STRING)
    END AS unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup3_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup3_fam)  AS STRING)
    END AS formulario_suplementar_3,
    CASE
        WHEN REGEXP_CONTAINS(nu_origem_cadastro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nu_origem_cadastro_fam)  AS STRING)
    END AS origem_cadastro,
    NULL AS dta_integracao_fam, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_controle_0603`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dat_cadastramento_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_cadastramento_fam))  AS DATE)
    END AS data_catrastro,
    CASE
        WHEN REGEXP_CONTAINS(dat_alteracao_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_alteracao_fam))  AS DATE)
    END AS data_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_fam)  AS STRING)
    END AS id_estado_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(ind_cadastro_valido_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_cadastro_valido_fam)  AS STRING)
    END AS cadastro_valido,
    CASE
        WHEN REGEXP_CONTAINS(cod_condicao_cadastro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_condicao_cadastro_fam)  AS STRING)
    END AS id_condicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(vlr_renda_media_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(vlr_renda_media_fam) AS INT64)
    END AS valor_renda_media,
    CASE
        WHEN REGEXP_CONTAINS(ind_trabalho_infantil_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_trabalho_infantil_fam)  AS STRING)
    END AS trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_2_fam)  AS STRING)
    END AS id_uf,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_5_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_5_fam)  AS STRING)
    END AS id_municipio,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_distrito_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_distrito_fam)  AS STRING)
    END AS id_distrito,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_subdistr_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_subdistr_fam)  AS STRING)
    END AS id_subdistrito,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_setor_censo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_setor_censo_fam)  AS STRING)
    END AS id_setor_censitario,
    CASE
        WHEN REGEXP_CONTAINS(cod_modalidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_modalidade_fam)  AS STRING)
    END AS id_modalidade,
    CASE
        WHEN REGEXP_CONTAINS(cod_forma_coleta_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_forma_coleta_fam)  AS STRING)
    END AS id_forma_coleta,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_0_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_0_fam)  AS STRING)
    END AS formulario_0,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_1_fam)  AS STRING)
    END AS formulario_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_2_fam)  AS STRING)
    END AS formulario_2,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup1_fam)  AS STRING)
    END AS formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup2_fam)  AS STRING)
    END AS formulario_suplementar_2,
    CASE
        WHEN REGEXP_CONTAINS(dta_entrevista_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_entrevista_fam))  AS DATE)
    END AS data_entrevista,
    CASE
        WHEN REGEXP_CONTAINS(nom_localidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_localidade_fam)  AS STRING)
    END AS localidade,
    CASE
        WHEN REGEXP_CONTAINS(nom_tip_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_tip_logradouro_fam)  AS STRING)
    END AS tipo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_titulo_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_titulo_logradouro_fam)  AS STRING)
    END AS titulo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_logradouro_fam)  AS STRING)
    END AS logradouro,
    CASE
        WHEN REGEXP_CONTAINS(num_logradouro_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(num_logradouro_fam) AS INT64)
    END AS numero_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(des_complemento_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(des_complemento_fam)  AS STRING)
    END AS complemento,
    CASE
        WHEN REGEXP_CONTAINS(des_complemento_adic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(des_complemento_adic_fam)  AS STRING)
    END AS complemento_adicional,
    CASE
        WHEN REGEXP_CONTAINS(num_cep_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cep_logradouro_fam)  AS STRING)
    END AS cep,
    CASE
        WHEN REGEXP_CONTAINS(filler, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(filler)  AS STRING)
    END AS filler,
    CASE
        WHEN REGEXP_CONTAINS(txt_referencia_local_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(txt_referencia_local_fam)  AS STRING)
    END AS refencia_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_entrevistador_fam)  AS STRING)
    END AS entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cpf_entrevistador_fam)  AS STRING)
    END AS cpf_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(txt_obs_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(txt_obs_entrevistador_fam)  AS STRING)
    END AS observacoes_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_origem_prefeitura_fam)  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_familia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_origem_familia_fam)  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(dt_cdstr_atual_fmla, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dt_cdstr_atual_fmla))  AS DATE)
    END AS data_limite_catastro_atual,
    CASE
        WHEN REGEXP_CONTAINS(flag_fam_alterada_v7, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(flag_fam_alterada_v7)  AS STRING)
    END AS alterada_v7,
    CASE
        WHEN REGEXP_CONTAINS(dat_atualizacao_familia, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_atualizacao_familia))  AS DATE)
    END AS data_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_unidade_territorial_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_unidade_territorial_fam)  AS STRING)
    END AS id_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(nom_unidade_territorial_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_unidade_territorial_fam)  AS STRING)
    END AS unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup3_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup3_fam)  AS STRING)
    END AS formulario_suplementar_3,
    CASE
        WHEN REGEXP_CONTAINS(nu_origem_cadastro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nu_origem_cadastro_fam)  AS STRING)
    END AS origem_cadastro,
    NULL AS dta_integracao_fam, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_controle_0604`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dat_cadastramento_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_cadastramento_fam))  AS DATE)
    END AS data_catrastro,
    CASE
        WHEN REGEXP_CONTAINS(dat_alteracao_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_alteracao_fam))  AS DATE)
    END AS data_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_fam)  AS STRING)
    END AS id_estado_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(ind_cadastro_valido_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_cadastro_valido_fam)  AS STRING)
    END AS cadastro_valido,
    CASE
        WHEN REGEXP_CONTAINS(cod_condicao_cadastro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_condicao_cadastro_fam)  AS STRING)
    END AS id_condicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(vlr_renda_media_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(vlr_renda_media_fam) AS INT64)
    END AS valor_renda_media,
    CASE
        WHEN REGEXP_CONTAINS(ind_trabalho_infantil_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_trabalho_infantil_fam)  AS STRING)
    END AS trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_2_fam)  AS STRING)
    END AS id_uf,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_5_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_5_fam)  AS STRING)
    END AS id_municipio,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_distrito_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_distrito_fam)  AS STRING)
    END AS id_distrito,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_subdistr_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_subdistr_fam)  AS STRING)
    END AS id_subdistrito,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_setor_censo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_setor_censo_fam)  AS STRING)
    END AS id_setor_censitario,
    CASE
        WHEN REGEXP_CONTAINS(cod_modalidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_modalidade_fam)  AS STRING)
    END AS id_modalidade,
    CASE
        WHEN REGEXP_CONTAINS(cod_forma_coleta_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_forma_coleta_fam)  AS STRING)
    END AS id_forma_coleta,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_0_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_0_fam)  AS STRING)
    END AS formulario_0,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_1_fam)  AS STRING)
    END AS formulario_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_2_fam)  AS STRING)
    END AS formulario_2,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup1_fam)  AS STRING)
    END AS formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup2_fam)  AS STRING)
    END AS formulario_suplementar_2,
    CASE
        WHEN REGEXP_CONTAINS(dta_entrevista_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_entrevista_fam))  AS DATE)
    END AS data_entrevista,
    CASE
        WHEN REGEXP_CONTAINS(nom_localidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_localidade_fam)  AS STRING)
    END AS localidade,
    CASE
        WHEN REGEXP_CONTAINS(nom_tip_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_tip_logradouro_fam)  AS STRING)
    END AS tipo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_titulo_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_titulo_logradouro_fam)  AS STRING)
    END AS titulo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_logradouro_fam)  AS STRING)
    END AS logradouro,
    CASE
        WHEN REGEXP_CONTAINS(num_logradouro_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(num_logradouro_fam) AS INT64)
    END AS numero_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(des_complemento_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(des_complemento_fam)  AS STRING)
    END AS complemento,
    CASE
        WHEN REGEXP_CONTAINS(des_complemento_adic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(des_complemento_adic_fam)  AS STRING)
    END AS complemento_adicional,
    CASE
        WHEN REGEXP_CONTAINS(num_cep_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cep_logradouro_fam)  AS STRING)
    END AS cep,
    CASE
        WHEN REGEXP_CONTAINS(filler, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(filler)  AS STRING)
    END AS filler,
    CASE
        WHEN REGEXP_CONTAINS(txt_referencia_local_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(txt_referencia_local_fam)  AS STRING)
    END AS refencia_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_entrevistador_fam)  AS STRING)
    END AS entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cpf_entrevistador_fam)  AS STRING)
    END AS cpf_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(txt_obs_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(txt_obs_entrevistador_fam)  AS STRING)
    END AS observacoes_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_origem_prefeitura_fam)  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_familia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_origem_familia_fam)  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(dt_cdstr_atual_fmla, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dt_cdstr_atual_fmla))  AS DATE)
    END AS data_limite_catastro_atual,
    CASE
        WHEN REGEXP_CONTAINS(flag_fam_alterada_v7, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(flag_fam_alterada_v7)  AS STRING)
    END AS alterada_v7,
    CASE
        WHEN REGEXP_CONTAINS(dat_atualizacao_familia, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_atualizacao_familia))  AS DATE)
    END AS data_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_unidade_territorial_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_unidade_territorial_fam)  AS STRING)
    END AS id_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(nom_unidade_territorial_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_unidade_territorial_fam)  AS STRING)
    END AS unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup3_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup3_fam)  AS STRING)
    END AS formulario_suplementar_3,
    CASE
        WHEN REGEXP_CONTAINS(nu_origem_cadastro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nu_origem_cadastro_fam)  AS STRING)
    END AS origem_cadastro,
    NULL AS dta_integracao_fam, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_controle_0609`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dat_cadastramento_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_cadastramento_fam))  AS DATE)
    END AS data_catrastro,
    CASE
        WHEN REGEXP_CONTAINS(dat_alteracao_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_alteracao_fam))  AS DATE)
    END AS data_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_fam)  AS STRING)
    END AS id_estado_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(ind_cadastro_valido_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_cadastro_valido_fam)  AS STRING)
    END AS cadastro_valido,
    CASE
        WHEN REGEXP_CONTAINS(cod_condicao_cadastro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_condicao_cadastro_fam)  AS STRING)
    END AS id_condicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(vlr_renda_media_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(vlr_renda_media_fam) AS INT64)
    END AS valor_renda_media,
    CASE
        WHEN REGEXP_CONTAINS(ind_trabalho_infantil_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_trabalho_infantil_fam)  AS STRING)
    END AS trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_2_fam)  AS STRING)
    END AS id_uf,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_5_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_5_fam)  AS STRING)
    END AS id_municipio,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_distrito_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_distrito_fam)  AS STRING)
    END AS id_distrito,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_subdistr_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_subdistr_fam)  AS STRING)
    END AS id_subdistrito,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_setor_censo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_setor_censo_fam)  AS STRING)
    END AS id_setor_censitario,
    CASE
        WHEN REGEXP_CONTAINS(cod_modalidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_modalidade_fam)  AS STRING)
    END AS id_modalidade,
    CASE
        WHEN REGEXP_CONTAINS(cod_forma_coleta_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_forma_coleta_fam)  AS STRING)
    END AS id_forma_coleta,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_0_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_0_fam)  AS STRING)
    END AS formulario_0,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_1_fam)  AS STRING)
    END AS formulario_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_2_fam)  AS STRING)
    END AS formulario_2,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup1_fam)  AS STRING)
    END AS formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup2_fam)  AS STRING)
    END AS formulario_suplementar_2,
    CASE
        WHEN REGEXP_CONTAINS(dta_entrevista_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_entrevista_fam))  AS DATE)
    END AS data_entrevista,
    CASE
        WHEN REGEXP_CONTAINS(nom_localidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_localidade_fam)  AS STRING)
    END AS localidade,
    CASE
        WHEN REGEXP_CONTAINS(nom_tip_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_tip_logradouro_fam)  AS STRING)
    END AS tipo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_titulo_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_titulo_logradouro_fam)  AS STRING)
    END AS titulo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_logradouro_fam)  AS STRING)
    END AS logradouro,
    CASE
        WHEN REGEXP_CONTAINS(num_logradouro_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(num_logradouro_fam) AS INT64)
    END AS numero_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(des_complemento_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(des_complemento_fam)  AS STRING)
    END AS complemento,
    CASE
        WHEN REGEXP_CONTAINS(des_complemento_adic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(des_complemento_adic_fam)  AS STRING)
    END AS complemento_adicional,
    CASE
        WHEN REGEXP_CONTAINS(num_cep_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cep_logradouro_fam)  AS STRING)
    END AS cep,
    CASE
        WHEN REGEXP_CONTAINS(filler, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(filler)  AS STRING)
    END AS filler,
    CASE
        WHEN REGEXP_CONTAINS(txt_referencia_local_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(txt_referencia_local_fam)  AS STRING)
    END AS refencia_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_entrevistador_fam)  AS STRING)
    END AS entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cpf_entrevistador_fam)  AS STRING)
    END AS cpf_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(txt_obs_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(txt_obs_entrevistador_fam)  AS STRING)
    END AS observacoes_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_origem_prefeitura_fam)  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_familia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_origem_familia_fam)  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(dt_cdstr_atual_fmla, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dt_cdstr_atual_fmla))  AS DATE)
    END AS data_limite_catastro_atual,
    CASE
        WHEN REGEXP_CONTAINS(flag_fam_alterada_v7, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(flag_fam_alterada_v7)  AS STRING)
    END AS alterada_v7,
    CASE
        WHEN REGEXP_CONTAINS(dat_atualizacao_familia, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_atualizacao_familia))  AS DATE)
    END AS data_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_unidade_territorial_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_unidade_territorial_fam)  AS STRING)
    END AS id_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(nom_unidade_territorial_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_unidade_territorial_fam)  AS STRING)
    END AS unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup3_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup3_fam)  AS STRING)
    END AS formulario_suplementar_3,
    CASE
        WHEN REGEXP_CONTAINS(nu_origem_cadastro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nu_origem_cadastro_fam)  AS STRING)
    END AS origem_cadastro,
    NULL AS dta_integracao_fam, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_controle_0612`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dat_cadastramento_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_cadastramento_fam))  AS DATE)
    END AS data_catrastro,
    CASE
        WHEN REGEXP_CONTAINS(dat_alteracao_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_alteracao_fam))  AS DATE)
    END AS data_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_fam)  AS STRING)
    END AS id_estado_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(ind_cadastro_valido_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_cadastro_valido_fam)  AS STRING)
    END AS cadastro_valido,
    CASE
        WHEN REGEXP_CONTAINS(cod_condicao_cadastro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_condicao_cadastro_fam)  AS STRING)
    END AS id_condicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(vlr_renda_media_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(vlr_renda_media_fam) AS INT64)
    END AS valor_renda_media,
    CASE
        WHEN REGEXP_CONTAINS(ind_trabalho_infantil_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_trabalho_infantil_fam)  AS STRING)
    END AS trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_2_fam)  AS STRING)
    END AS id_uf,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_5_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_munic_ibge_5_fam)  AS STRING)
    END AS id_municipio,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_distrito_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_distrito_fam)  AS STRING)
    END AS id_distrito,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_subdistr_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_subdistr_fam)  AS STRING)
    END AS id_subdistrito,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_setor_censo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_setor_censo_fam)  AS STRING)
    END AS id_setor_censitario,
    CASE
        WHEN REGEXP_CONTAINS(cod_modalidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_modalidade_fam)  AS STRING)
    END AS id_modalidade,
    CASE
        WHEN REGEXP_CONTAINS(cod_forma_coleta_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_forma_coleta_fam)  AS STRING)
    END AS id_forma_coleta,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_0_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_0_fam)  AS STRING)
    END AS formulario_0,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_1_fam)  AS STRING)
    END AS formulario_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_2_fam)  AS STRING)
    END AS formulario_2,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup1_fam)  AS STRING)
    END AS formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup2_fam)  AS STRING)
    END AS formulario_suplementar_2,
    CASE
        WHEN REGEXP_CONTAINS(dta_entrevista_fam, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_entrevista_fam))  AS DATE)
    END AS data_entrevista,
    CASE
        WHEN REGEXP_CONTAINS(nom_localidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_localidade_fam)  AS STRING)
    END AS localidade,
    CASE
        WHEN REGEXP_CONTAINS(nom_tip_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_tip_logradouro_fam)  AS STRING)
    END AS tipo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_titulo_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_titulo_logradouro_fam)  AS STRING)
    END AS titulo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_logradouro_fam)  AS STRING)
    END AS logradouro,
    CASE
        WHEN REGEXP_CONTAINS(num_logradouro_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(num_logradouro_fam) AS INT64)
    END AS numero_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(des_complemento_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(des_complemento_fam)  AS STRING)
    END AS complemento,
    CASE
        WHEN REGEXP_CONTAINS(des_complemento_adic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(des_complemento_adic_fam)  AS STRING)
    END AS complemento_adicional,
    CASE
        WHEN REGEXP_CONTAINS(num_cep_logradouro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cep_logradouro_fam)  AS STRING)
    END AS cep,
    CASE
        WHEN REGEXP_CONTAINS(filler, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(filler)  AS STRING)
    END AS filler,
    CASE
        WHEN REGEXP_CONTAINS(txt_referencia_local_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(txt_referencia_local_fam)  AS STRING)
    END AS refencia_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(nom_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_entrevistador_fam)  AS STRING)
    END AS entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cpf_entrevistador_fam)  AS STRING)
    END AS cpf_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(txt_obs_entrevistador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(txt_obs_entrevistador_fam)  AS STRING)
    END AS observacoes_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_origem_prefeitura_fam)  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_familia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_origem_familia_fam)  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(dt_cdstr_atual_fmla, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dt_cdstr_atual_fmla))  AS DATE)
    END AS data_limite_catastro_atual,
    CASE
        WHEN REGEXP_CONTAINS(flag_fam_alterada_v7, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(flag_fam_alterada_v7)  AS STRING)
    END AS alterada_v7,
    CASE
        WHEN REGEXP_CONTAINS(dat_atualizacao_familia, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_atualizacao_familia))  AS DATE)
    END AS data_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_unidade_territorial_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_unidade_territorial_fam)  AS STRING)
    END AS id_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(nom_unidade_territorial_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_unidade_territorial_fam)  AS STRING)
    END AS unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(ind_formulario_sup3_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_formulario_sup3_fam)  AS STRING)
    END AS formulario_suplementar_3,
    CASE
        WHEN REGEXP_CONTAINS(nu_origem_cadastro_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nu_origem_cadastro_fam)  AS STRING)
    END AS origem_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(dta_integracao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(dta_integracao_fam)  AS STRING)
    END AS dta_integracao_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_controle_0615`

