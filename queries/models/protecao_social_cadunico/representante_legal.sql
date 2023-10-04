
SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_rl, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_rl  AS STRING)
    END AS id_prefeitura_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_rl  AS STRING)
    END AS id_familia_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_rl_fmla, r'^\s*$') THEN NULL
        ELSE CAST( num_rl_fmla  AS STRING)
    END AS id_interno_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_cadastramento_rl, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_cadastramento_rl)  AS DATE)
    END AS data_cadastro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nom_pessoa_rl, r'^\s*$') THEN NULL
        ELSE CAST( nom_pessoa_rl  AS STRING)
    END AS representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_pessoa_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_nis_pessoa_rl  AS STRING)
    END AS nis_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_sexo_rl  AS STRING)
    END AS id_sexo_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_rl, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_nasc_rl)  AS DATE)
    END AS data_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_rl, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_mae_rl  AS STRING)
    END AS mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_rl, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_mae_rl  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_rl, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_pai_rl  AS STRING)
    END AS pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_rl, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_pai_rl  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_municipio_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_ibge_municipio_nascimento_rl  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_municipio_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_municipio_nascimento_rl  AS STRING)
    END AS municipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(sigla_uf_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( sigla_uf_nascimento_rl  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_nasicmento_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_pais_nasicmento_rl  AS STRING)
    END AS id_pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_pais_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_pais_nascimento_rl  AS STRING)
    END AS pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_cpf_rl  AS STRING)
    END AS cpf_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ic_obito_rl, r'^\s*$') THEN NULL
        ELSE CAST( ic_obito_rl  AS STRING)
    END AS obito_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ic_obito_acatado_rl, r'^\s*$') THEN NULL
        ELSE CAST( ic_obito_acatado_rl  AS STRING)
    END AS obito_acatado_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_1_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_ddd_contato_1_rl  AS STRING)
    END AS contato_ddd_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_1_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_tel_contato_1_rl  AS STRING)
    END AS contato_telefone_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_2_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_ddd_contato_2_rl  AS STRING)
    END AS contato_ddd_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_2_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_tel_contato_2_rl  AS STRING)
    END AS contato_telefone_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(email_rl, r'^\s*$') THEN NULL
        ELSE CAST( email_rl  AS STRING)
    END AS email_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(tipo_representacao_legal, r'^\s*$') THEN NULL
        ELSE CAST( tipo_representacao_legal  AS STRING)
    END AS tipo_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(desc_representacao_legal, r'^\s*$') THEN NULL
        ELSE CAST( desc_representacao_legal  AS STRING)
    END AS descricao_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_rl, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_rl  AS STRING)
    END AS id_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_tipo_logradouro_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_tipo_logradouro_rl  AS STRING)
    END AS tipo_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_logradouro_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_logradouro_rl  AS STRING)
    END AS logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_logradouro_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_logradouro_rl  AS INT64)
    END AS numero_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(desc_complemento_lograd_rl, r'^\s*$') THEN NULL
        ELSE CAST( desc_complemento_lograd_rl  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_cep_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_cep_rl  AS STRING)
    END AS cep_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_bairro_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_bairro_rl  AS STRING)
    END AS bairro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(numero_municipio_rl, r'^\s*$') THEN NULL
        ELSE CAST( numero_municipio_rl  AS STRING)
    END AS id_municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_municipio_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_municipio_rl  AS STRING)
    END AS municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(sigla_uf_rl, r'^\s*$') THEN NULL
        ELSE CAST( sigla_uf_rl  AS STRING)
    END AS sigla_uf_representante_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.representante_legal_0601`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_rl, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_rl  AS STRING)
    END AS id_prefeitura_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_rl  AS STRING)
    END AS id_familia_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_rl_fmla, r'^\s*$') THEN NULL
        ELSE CAST( num_rl_fmla  AS STRING)
    END AS id_interno_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_cadastramento_rl, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_cadastramento_rl)  AS DATE)
    END AS data_cadastro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nom_pessoa_rl, r'^\s*$') THEN NULL
        ELSE CAST( nom_pessoa_rl  AS STRING)
    END AS representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_pessoa_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_nis_pessoa_rl  AS STRING)
    END AS nis_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_sexo_rl  AS STRING)
    END AS id_sexo_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_rl, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_nasc_rl)  AS DATE)
    END AS data_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_rl, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_mae_rl  AS STRING)
    END AS mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_rl, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_mae_rl  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_rl, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_pai_rl  AS STRING)
    END AS pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_rl, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_pai_rl  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_municipio_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_ibge_municipio_nascimento_rl  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_municipio_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_municipio_nascimento_rl  AS STRING)
    END AS municipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(sigla_uf_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( sigla_uf_nascimento_rl  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_nasicmento_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_pais_nasicmento_rl  AS STRING)
    END AS id_pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_pais_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_pais_nascimento_rl  AS STRING)
    END AS pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_cpf_rl  AS STRING)
    END AS cpf_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ic_obito_rl, r'^\s*$') THEN NULL
        ELSE CAST( ic_obito_rl  AS STRING)
    END AS obito_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ic_obito_acatado_rl, r'^\s*$') THEN NULL
        ELSE CAST( ic_obito_acatado_rl  AS STRING)
    END AS obito_acatado_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_1_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_ddd_contato_1_rl  AS STRING)
    END AS contato_ddd_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_1_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_tel_contato_1_rl  AS STRING)
    END AS contato_telefone_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_2_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_ddd_contato_2_rl  AS STRING)
    END AS contato_ddd_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_2_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_tel_contato_2_rl  AS STRING)
    END AS contato_telefone_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(email_rl, r'^\s*$') THEN NULL
        ELSE CAST( email_rl  AS STRING)
    END AS email_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(tipo_representacao_legal, r'^\s*$') THEN NULL
        ELSE CAST( tipo_representacao_legal  AS STRING)
    END AS tipo_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(desc_representacao_legal, r'^\s*$') THEN NULL
        ELSE CAST( desc_representacao_legal  AS STRING)
    END AS descricao_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_rl, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_rl  AS STRING)
    END AS id_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_tipo_logradouro_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_tipo_logradouro_rl  AS STRING)
    END AS tipo_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_logradouro_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_logradouro_rl  AS STRING)
    END AS logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_logradouro_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_logradouro_rl  AS INT64)
    END AS numero_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(desc_complemento_lograd_rl, r'^\s*$') THEN NULL
        ELSE CAST( desc_complemento_lograd_rl  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_cep_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_cep_rl  AS STRING)
    END AS cep_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_bairro_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_bairro_rl  AS STRING)
    END AS bairro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(numero_municipio_rl, r'^\s*$') THEN NULL
        ELSE CAST( numero_municipio_rl  AS STRING)
    END AS id_municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_municipio_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_municipio_rl  AS STRING)
    END AS municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(sigla_uf_rl, r'^\s*$') THEN NULL
        ELSE CAST( sigla_uf_rl  AS STRING)
    END AS sigla_uf_representante_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.representante_legal_0603`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_rl, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_rl  AS STRING)
    END AS id_prefeitura_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_rl  AS STRING)
    END AS id_familia_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_rl_fmla, r'^\s*$') THEN NULL
        ELSE CAST( num_rl_fmla  AS STRING)
    END AS id_interno_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_cadastramento_rl, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_cadastramento_rl)  AS DATE)
    END AS data_cadastro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nom_pessoa_rl, r'^\s*$') THEN NULL
        ELSE CAST( nom_pessoa_rl  AS STRING)
    END AS representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_pessoa_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_nis_pessoa_rl  AS STRING)
    END AS nis_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_sexo_rl  AS STRING)
    END AS id_sexo_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_rl, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_nasc_rl)  AS DATE)
    END AS data_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_rl, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_mae_rl  AS STRING)
    END AS mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_rl, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_mae_rl  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_rl, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_pai_rl  AS STRING)
    END AS pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_rl, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_pai_rl  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_municipio_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_ibge_municipio_nascimento_rl  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_municipio_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_municipio_nascimento_rl  AS STRING)
    END AS municipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(sigla_uf_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( sigla_uf_nascimento_rl  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_nasicmento_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_pais_nasicmento_rl  AS STRING)
    END AS id_pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_pais_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_pais_nascimento_rl  AS STRING)
    END AS pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_cpf_rl  AS STRING)
    END AS cpf_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ic_obito_rl, r'^\s*$') THEN NULL
        ELSE CAST( ic_obito_rl  AS STRING)
    END AS obito_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ic_obito_acatado_rl, r'^\s*$') THEN NULL
        ELSE CAST( ic_obito_acatado_rl  AS STRING)
    END AS obito_acatado_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_1_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_ddd_contato_1_rl  AS STRING)
    END AS contato_ddd_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_1_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_tel_contato_1_rl  AS STRING)
    END AS contato_telefone_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_2_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_ddd_contato_2_rl  AS STRING)
    END AS contato_ddd_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_2_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_tel_contato_2_rl  AS STRING)
    END AS contato_telefone_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(email_rl, r'^\s*$') THEN NULL
        ELSE CAST( email_rl  AS STRING)
    END AS email_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(tipo_representacao_legal, r'^\s*$') THEN NULL
        ELSE CAST( tipo_representacao_legal  AS STRING)
    END AS tipo_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(desc_representacao_legal, r'^\s*$') THEN NULL
        ELSE CAST( desc_representacao_legal  AS STRING)
    END AS descricao_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_rl, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_rl  AS STRING)
    END AS id_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_tipo_logradouro_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_tipo_logradouro_rl  AS STRING)
    END AS tipo_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_logradouro_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_logradouro_rl  AS STRING)
    END AS logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_logradouro_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_logradouro_rl  AS INT64)
    END AS numero_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(desc_complemento_lograd_rl, r'^\s*$') THEN NULL
        ELSE CAST( desc_complemento_lograd_rl  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_cep_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_cep_rl  AS STRING)
    END AS cep_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_bairro_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_bairro_rl  AS STRING)
    END AS bairro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(numero_municipio_rl, r'^\s*$') THEN NULL
        ELSE CAST( numero_municipio_rl  AS STRING)
    END AS id_municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_municipio_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_municipio_rl  AS STRING)
    END AS municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(sigla_uf_rl, r'^\s*$') THEN NULL
        ELSE CAST( sigla_uf_rl  AS STRING)
    END AS sigla_uf_representante_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.representante_legal_0604`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_rl, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_rl  AS STRING)
    END AS id_prefeitura_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_rl  AS STRING)
    END AS id_familia_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_rl_fmla, r'^\s*$') THEN NULL
        ELSE CAST( num_rl_fmla  AS STRING)
    END AS id_interno_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_cadastramento_rl, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_cadastramento_rl)  AS DATE)
    END AS data_cadastro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nom_pessoa_rl, r'^\s*$') THEN NULL
        ELSE CAST( nom_pessoa_rl  AS STRING)
    END AS representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_pessoa_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_nis_pessoa_rl  AS STRING)
    END AS nis_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_sexo_rl  AS STRING)
    END AS id_sexo_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_rl, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_nasc_rl)  AS DATE)
    END AS data_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_rl, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_mae_rl  AS STRING)
    END AS mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_rl, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_mae_rl  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_rl, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_pai_rl  AS STRING)
    END AS pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_rl, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_pai_rl  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_municipio_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_ibge_municipio_nascimento_rl  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_municipio_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_municipio_nascimento_rl  AS STRING)
    END AS municipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(sigla_uf_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( sigla_uf_nascimento_rl  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_nasicmento_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_pais_nasicmento_rl  AS STRING)
    END AS id_pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_pais_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_pais_nascimento_rl  AS STRING)
    END AS pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_cpf_rl  AS STRING)
    END AS cpf_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ic_obito_rl, r'^\s*$') THEN NULL
        ELSE CAST( ic_obito_rl  AS STRING)
    END AS obito_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ic_obito_acatado_rl, r'^\s*$') THEN NULL
        ELSE CAST( ic_obito_acatado_rl  AS STRING)
    END AS obito_acatado_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_1_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_ddd_contato_1_rl  AS STRING)
    END AS contato_ddd_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_1_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_tel_contato_1_rl  AS STRING)
    END AS contato_telefone_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_2_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_ddd_contato_2_rl  AS STRING)
    END AS contato_ddd_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_2_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_tel_contato_2_rl  AS STRING)
    END AS contato_telefone_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(email_rl, r'^\s*$') THEN NULL
        ELSE CAST( email_rl  AS STRING)
    END AS email_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(tipo_representacao_legal, r'^\s*$') THEN NULL
        ELSE CAST( tipo_representacao_legal  AS STRING)
    END AS tipo_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(desc_representacao_legal, r'^\s*$') THEN NULL
        ELSE CAST( desc_representacao_legal  AS STRING)
    END AS descricao_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_rl, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_rl  AS STRING)
    END AS id_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_tipo_logradouro_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_tipo_logradouro_rl  AS STRING)
    END AS tipo_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_logradouro_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_logradouro_rl  AS STRING)
    END AS logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_logradouro_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_logradouro_rl  AS INT64)
    END AS numero_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(desc_complemento_lograd_rl, r'^\s*$') THEN NULL
        ELSE CAST( desc_complemento_lograd_rl  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_cep_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_cep_rl  AS STRING)
    END AS cep_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_bairro_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_bairro_rl  AS STRING)
    END AS bairro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(numero_municipio_rl, r'^\s*$') THEN NULL
        ELSE CAST( numero_municipio_rl  AS STRING)
    END AS id_municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_municipio_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_municipio_rl  AS STRING)
    END AS municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(sigla_uf_rl, r'^\s*$') THEN NULL
        ELSE CAST( sigla_uf_rl  AS STRING)
    END AS sigla_uf_representante_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.representante_legal_0609`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_rl, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_rl  AS STRING)
    END AS id_prefeitura_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_rl  AS STRING)
    END AS id_familia_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_rl_fmla, r'^\s*$') THEN NULL
        ELSE CAST( num_rl_fmla  AS STRING)
    END AS id_interno_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_cadastramento_rl, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_cadastramento_rl)  AS DATE)
    END AS data_cadastro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nom_pessoa_rl, r'^\s*$') THEN NULL
        ELSE CAST( nom_pessoa_rl  AS STRING)
    END AS representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_pessoa_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_nis_pessoa_rl  AS STRING)
    END AS nis_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_sexo_rl  AS STRING)
    END AS id_sexo_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_rl, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_nasc_rl)  AS DATE)
    END AS data_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_rl, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_mae_rl  AS STRING)
    END AS mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_rl, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_mae_rl  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_rl, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_pai_rl  AS STRING)
    END AS pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_rl, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_pai_rl  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_municipio_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_ibge_municipio_nascimento_rl  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_municipio_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_municipio_nascimento_rl  AS STRING)
    END AS municipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(sigla_uf_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( sigla_uf_nascimento_rl  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_nasicmento_rl, r'^\s*$') THEN NULL
        ELSE CAST( cod_pais_nasicmento_rl  AS STRING)
    END AS id_pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_pais_nascimento_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_pais_nascimento_rl  AS STRING)
    END AS pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_cpf_rl  AS STRING)
    END AS cpf_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ic_obito_rl, r'^\s*$') THEN NULL
        ELSE CAST( ic_obito_rl  AS STRING)
    END AS obito_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(ic_obito_acatado_rl, r'^\s*$') THEN NULL
        ELSE CAST( ic_obito_acatado_rl  AS STRING)
    END AS obito_acatado_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_1_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_ddd_contato_1_rl  AS STRING)
    END AS contato_ddd_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_1_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_tel_contato_1_rl  AS STRING)
    END AS contato_telefone_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_2_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_ddd_contato_2_rl  AS STRING)
    END AS contato_ddd_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_2_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_tel_contato_2_rl  AS STRING)
    END AS contato_telefone_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(email_rl, r'^\s*$') THEN NULL
        ELSE CAST( email_rl  AS STRING)
    END AS email_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(tipo_representacao_legal, r'^\s*$') THEN NULL
        ELSE CAST( tipo_representacao_legal  AS STRING)
    END AS tipo_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(desc_representacao_legal, r'^\s*$') THEN NULL
        ELSE CAST( desc_representacao_legal  AS STRING)
    END AS descricao_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_rl, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_rl  AS STRING)
    END AS id_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_tipo_logradouro_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_tipo_logradouro_rl  AS STRING)
    END AS tipo_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_logradouro_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_logradouro_rl  AS STRING)
    END AS logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_logradouro_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_logradouro_rl  AS INT64)
    END AS numero_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(desc_complemento_lograd_rl, r'^\s*$') THEN NULL
        ELSE CAST( desc_complemento_lograd_rl  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(num_cep_rl, r'^\s*$') THEN NULL
        ELSE CAST( num_cep_rl  AS STRING)
    END AS cep_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_bairro_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_bairro_rl  AS STRING)
    END AS bairro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(numero_municipio_rl, r'^\s*$') THEN NULL
        ELSE CAST( numero_municipio_rl  AS STRING)
    END AS id_municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(nome_municipio_rl, r'^\s*$') THEN NULL
        ELSE CAST( nome_municipio_rl  AS STRING)
    END AS municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(sigla_uf_rl, r'^\s*$') THEN NULL
        ELSE CAST( sigla_uf_rl  AS STRING)
    END AS sigla_uf_representante_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.representante_legal_0612`

