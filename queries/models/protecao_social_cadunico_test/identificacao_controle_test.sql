
SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(dat_cadastramento_fam AS date) AS data_catrastro,
    CAST(dat_alteracao_fam AS date) AS data_alteracao,
    CAST(cod_est_cadastral_fam AS string) AS id_estado_cadastro,
    CAST(ind_cadastro_valido_fam AS string) AS cadastro_valido,
    CAST(cod_condicao_cadastro_fam AS string) AS id_condicao_cadastro,
    CAST(vlr_renda_media_fam AS float64) AS valor_renda_media,
    CAST(ind_trabalho_infantil_fam AS string) AS trabalho_infantil,
    CAST(cod_munic_ibge_2_fam AS string) AS id_uf,
    CAST(cod_munic_ibge_5_fam AS string) AS id_municipio,
    CAST(cod_ibge_distrito_fam AS string) AS id_distrito,
    CAST(cod_ibge_subdistr_fam AS string) AS id_subdistrito,
    CAST(cod_ibge_setor_censo_fam AS string) AS id_setor_censitario,
    CAST(cod_modalidade_fam AS string) AS id_modalidade,
    CAST(cod_forma_coleta_fam AS string) AS id_forma_coleta,
    CAST(ind_formulario_0_fam AS string) AS formulario_0,
    CAST(ind_formulario_1_fam AS string) AS formulario_1,
    CAST(ind_formulario_2_fam AS string) AS formulario_2,
    CAST(ind_formulario_sup1_fam AS string) AS formulario_suplementar_1,
    CAST(ind_formulario_sup2_fam AS string) AS formulario_suplementar_2,
    CAST(dta_entrevista_fam AS string) AS data_entrevista,
    CAST(nom_localidade_fam AS string) AS localidade,
    CAST(nom_tip_logradouro_fam AS string) AS tipo_logradouro,
    CAST(nom_titulo_logradouro_fam AS string) AS titulo_logradouro,
    CAST(nom_logradouro_fam AS string) AS logradouro,
    CAST(num_logradouro_fam AS string) AS numero_logradouro,
    CAST(des_complemento_fam AS string) AS complemento,
    CAST(des_complemento_adic_fam AS string) AS complemento_adicional,
    CAST(num_cep_logradouro_fam AS string) AS cep,
    CAST(filler AS string) AS filler,
    CAST(txt_referencia_local_fam AS string) AS refencia_logradouro,
    CAST(nom_entrevistador_fam AS string) AS entrevistador,
    CAST(num_cpf_entrevistador_fam AS string) AS cpf_entrevistador,
    CAST(txt_obs_entrevistador_fam AS string) AS observacoes_entrevistador,
    CAST(cod_origem_prefeitura_fam AS string) AS id_prefeitura_origem,
    CAST(cod_origem_familia_fam AS string) AS id_familia_origem,
    CAST(dt_cdstr_atual_fmla AS date) AS data_limite_catastro_atual,
    CAST(flag_fam_alterada_v7 AS string) AS alterada_v7,
    CAST(dat_atualizacao_familia AS date) AS data_atualizacao,
    CAST(cod_unidade_territorial_fam AS string) AS id_unidade_territorial,
    CAST(nom_unidade_territorial_fam AS string) AS unidade_territorial,
    CAST(ind_formulario_sup3_fam AS string) AS formulario_suplementar_3,
    CAST(nu_origem_cadastro_fam AS string) AS origem_cadastro,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.identificacao_controle_test_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(dat_cadastramento_fam AS date) AS data_catrastro,
    CAST(dat_alteracao_fam AS date) AS data_alteracao,
    CAST(cod_est_cadastral_fam AS string) AS id_estado_cadastro,
    CAST(ind_cadastro_valido_fam AS string) AS cadastro_valido,
    CAST(cod_condicao_cadastro_fam AS string) AS id_condicao_cadastro,
    CAST(vlr_renda_media_fam AS float64) AS valor_renda_media,
    CAST(ind_trabalho_infantil_fam AS string) AS trabalho_infantil,
    CAST(cod_munic_ibge_2_fam AS string) AS id_uf,
    CAST(cod_munic_ibge_5_fam AS string) AS id_municipio,
    CAST(cod_ibge_distrito_fam AS string) AS id_distrito,
    CAST(cod_ibge_subdistr_fam AS string) AS id_subdistrito,
    CAST(cod_ibge_setor_censo_fam AS string) AS id_setor_censitario,
    CAST(cod_modalidade_fam AS string) AS id_modalidade,
    CAST(cod_forma_coleta_fam AS string) AS id_forma_coleta,
    CAST(ind_formulario_0_fam AS string) AS formulario_0,
    CAST(ind_formulario_1_fam AS string) AS formulario_1,
    CAST(ind_formulario_2_fam AS string) AS formulario_2,
    CAST(ind_formulario_sup1_fam AS string) AS formulario_suplementar_1,
    CAST(ind_formulario_sup2_fam AS string) AS formulario_suplementar_2,
    CAST(dta_entrevista_fam AS string) AS data_entrevista,
    CAST(nom_localidade_fam AS string) AS localidade,
    CAST(nom_tip_logradouro_fam AS string) AS tipo_logradouro,
    CAST(nom_titulo_logradouro_fam AS string) AS titulo_logradouro,
    CAST(nom_logradouro_fam AS string) AS logradouro,
    CAST(num_logradouro_fam AS string) AS numero_logradouro,
    CAST(des_complemento_fam AS string) AS complemento,
    CAST(des_complemento_adic_fam AS string) AS complemento_adicional,
    CAST(num_cep_logradouro_fam AS string) AS cep,
    CAST(filler AS string) AS filler,
    CAST(txt_referencia_local_fam AS string) AS refencia_logradouro,
    CAST(nom_entrevistador_fam AS string) AS entrevistador,
    CAST(num_cpf_entrevistador_fam AS string) AS cpf_entrevistador,
    CAST(txt_obs_entrevistador_fam AS string) AS observacoes_entrevistador,
    CAST(cod_origem_prefeitura_fam AS string) AS id_prefeitura_origem,
    CAST(cod_origem_familia_fam AS string) AS id_familia_origem,
    CAST(dt_cdstr_atual_fmla AS date) AS data_limite_catastro_atual,
    CAST(flag_fam_alterada_v7 AS string) AS alterada_v7,
    CAST(dat_atualizacao_familia AS date) AS data_atualizacao,
    CAST(cod_unidade_territorial_fam AS string) AS id_unidade_territorial,
    CAST(nom_unidade_territorial_fam AS string) AS unidade_territorial,
    CAST(ind_formulario_sup3_fam AS string) AS formulario_suplementar_3,
    CAST(nu_origem_cadastro_fam AS string) AS origem_cadastro,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.identificacao_controle_test_0609_test`

