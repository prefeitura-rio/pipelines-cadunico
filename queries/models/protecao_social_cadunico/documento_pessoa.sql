
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
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_civil_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_certidao_civil_pessoa)  AS STRING)
    END AS id_certidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(nom_cartorio_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_cartorio_pessoa)  AS STRING)
    END AS cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_livro_termo_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_livro_termo_certid_pessoa)  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_folha_termo_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_folha_termo_certid_pessoa)  AS STRING)
    END AS folha_certidao,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_certid_pessoa))  AS DATE)
    END AS data_emissao_certidao,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_certid_pessoa)  AS STRING)
    END AS sigla_uf_certidao,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_munic_certid_pessoa)  AS STRING)
    END AS municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_certid_pessoa)  AS STRING)
    END AS id_municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_cartorio_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cartorio_certid_pessoa)  AS STRING)
    END AS id_cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cpf_pessoa)  AS STRING)
    END AS cpf,
    CASE
        WHEN REGEXP_CONTAINS(cod_complemento_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_complemento_pessoa)  AS STRING)
    END AS id_complemento_rg,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_ident_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_ident_pessoa))  AS DATE)
    END AS data_emissao_rg,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_ident_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_ident_pessoa)  AS STRING)
    END AS sigla_uf_rg,
    CASE
        WHEN REGEXP_CONTAINS(sig_orgao_emissor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_orgao_emissor_pessoa)  AS STRING)
    END AS orgao_emissor_rg,
    CASE
        WHEN REGEXP_CONTAINS(num_cart_trab_prev_soc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cart_trab_prev_soc_pessoa)  AS STRING)
    END AS id_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(num_serie_trab_prev_soc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_serie_trab_prev_soc_pessoa)  AS STRING)
    END AS id_serie_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_cart_trab_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_cart_trab_pessoa))  AS DATE)
    END AS data_emissao_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_cart_trab_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_cart_trab_pessoa)  AS STRING)
    END AS sigla_uf_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(num_titulo_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_titulo_eleitor_pessoa)  AS STRING)
    END AS id_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(num_zona_tit_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_zona_tit_eleitor_pessoa)  AS STRING)
    END AS id_zona_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(num_secao_tit_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_secao_tit_eleitor_pessoa)  AS STRING)
    END AS id_secao_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(cod_termo___matricula__certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_termo___matricula__certid_pessoa)  AS STRING)
    END AS id_termi_matricula_certidao,
    CASE
        WHEN REGEXP_CONTAINS(num_identidade_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_identidade_pessoa)  AS STRING)
    END AS rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.documento_pessoa_0601`

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
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_civil_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_certidao_civil_pessoa)  AS STRING)
    END AS id_certidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(nom_cartorio_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_cartorio_pessoa)  AS STRING)
    END AS cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_livro_termo_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_livro_termo_certid_pessoa)  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_folha_termo_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_folha_termo_certid_pessoa)  AS STRING)
    END AS folha_certidao,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_certid_pessoa))  AS DATE)
    END AS data_emissao_certidao,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_certid_pessoa)  AS STRING)
    END AS sigla_uf_certidao,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_munic_certid_pessoa)  AS STRING)
    END AS municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_certid_pessoa)  AS STRING)
    END AS id_municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_cartorio_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cartorio_certid_pessoa)  AS STRING)
    END AS id_cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cpf_pessoa)  AS STRING)
    END AS cpf,
    CASE
        WHEN REGEXP_CONTAINS(cod_complemento_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_complemento_pessoa)  AS STRING)
    END AS id_complemento_rg,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_ident_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_ident_pessoa))  AS DATE)
    END AS data_emissao_rg,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_ident_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_ident_pessoa)  AS STRING)
    END AS sigla_uf_rg,
    CASE
        WHEN REGEXP_CONTAINS(sig_orgao_emissor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_orgao_emissor_pessoa)  AS STRING)
    END AS orgao_emissor_rg,
    CASE
        WHEN REGEXP_CONTAINS(num_cart_trab_prev_soc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cart_trab_prev_soc_pessoa)  AS STRING)
    END AS id_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(num_serie_trab_prev_soc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_serie_trab_prev_soc_pessoa)  AS STRING)
    END AS id_serie_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_cart_trab_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_cart_trab_pessoa))  AS DATE)
    END AS data_emissao_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_cart_trab_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_cart_trab_pessoa)  AS STRING)
    END AS sigla_uf_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(num_titulo_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_titulo_eleitor_pessoa)  AS STRING)
    END AS id_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(num_zona_tit_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_zona_tit_eleitor_pessoa)  AS STRING)
    END AS id_zona_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(num_secao_tit_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_secao_tit_eleitor_pessoa)  AS STRING)
    END AS id_secao_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(cod_termo___matricula__certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_termo___matricula__certid_pessoa)  AS STRING)
    END AS id_termi_matricula_certidao,
    CASE
        WHEN REGEXP_CONTAINS(num_identidade_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_identidade_pessoa)  AS STRING)
    END AS rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.documento_pessoa_0603`

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
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_civil_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_certidao_civil_pessoa)  AS STRING)
    END AS id_certidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(nom_cartorio_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_cartorio_pessoa)  AS STRING)
    END AS cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_livro_termo_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_livro_termo_certid_pessoa)  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_folha_termo_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_folha_termo_certid_pessoa)  AS STRING)
    END AS folha_certidao,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_certid_pessoa))  AS DATE)
    END AS data_emissao_certidao,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_certid_pessoa)  AS STRING)
    END AS sigla_uf_certidao,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_munic_certid_pessoa)  AS STRING)
    END AS municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_certid_pessoa)  AS STRING)
    END AS id_municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_cartorio_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cartorio_certid_pessoa)  AS STRING)
    END AS id_cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cpf_pessoa)  AS STRING)
    END AS cpf,
    CASE
        WHEN REGEXP_CONTAINS(cod_complemento_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_complemento_pessoa)  AS STRING)
    END AS id_complemento_rg,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_ident_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_ident_pessoa))  AS DATE)
    END AS data_emissao_rg,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_ident_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_ident_pessoa)  AS STRING)
    END AS sigla_uf_rg,
    CASE
        WHEN REGEXP_CONTAINS(sig_orgao_emissor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_orgao_emissor_pessoa)  AS STRING)
    END AS orgao_emissor_rg,
    CASE
        WHEN REGEXP_CONTAINS(num_cart_trab_prev_soc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cart_trab_prev_soc_pessoa)  AS STRING)
    END AS id_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(num_serie_trab_prev_soc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_serie_trab_prev_soc_pessoa)  AS STRING)
    END AS id_serie_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_cart_trab_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_cart_trab_pessoa))  AS DATE)
    END AS data_emissao_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_cart_trab_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_cart_trab_pessoa)  AS STRING)
    END AS sigla_uf_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(num_titulo_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_titulo_eleitor_pessoa)  AS STRING)
    END AS id_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(num_zona_tit_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_zona_tit_eleitor_pessoa)  AS STRING)
    END AS id_zona_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(num_secao_tit_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_secao_tit_eleitor_pessoa)  AS STRING)
    END AS id_secao_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(cod_termo___matricula__certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_termo___matricula__certid_pessoa)  AS STRING)
    END AS id_termi_matricula_certidao,
    CASE
        WHEN REGEXP_CONTAINS(num_identidade_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_identidade_pessoa)  AS STRING)
    END AS rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.documento_pessoa_0604`

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
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_civil_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_certidao_civil_pessoa)  AS STRING)
    END AS id_certidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(nom_cartorio_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_cartorio_pessoa)  AS STRING)
    END AS cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_livro_termo_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_livro_termo_certid_pessoa)  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_folha_termo_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_folha_termo_certid_pessoa)  AS STRING)
    END AS folha_certidao,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_certid_pessoa))  AS DATE)
    END AS data_emissao_certidao,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_certid_pessoa)  AS STRING)
    END AS sigla_uf_certidao,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_munic_certid_pessoa)  AS STRING)
    END AS municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_certid_pessoa)  AS STRING)
    END AS id_municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_cartorio_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cartorio_certid_pessoa)  AS STRING)
    END AS id_cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cpf_pessoa)  AS STRING)
    END AS cpf,
    CASE
        WHEN REGEXP_CONTAINS(cod_complemento_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_complemento_pessoa)  AS STRING)
    END AS id_complemento_rg,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_ident_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_ident_pessoa))  AS DATE)
    END AS data_emissao_rg,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_ident_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_ident_pessoa)  AS STRING)
    END AS sigla_uf_rg,
    CASE
        WHEN REGEXP_CONTAINS(sig_orgao_emissor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_orgao_emissor_pessoa)  AS STRING)
    END AS orgao_emissor_rg,
    CASE
        WHEN REGEXP_CONTAINS(num_cart_trab_prev_soc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cart_trab_prev_soc_pessoa)  AS STRING)
    END AS id_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(num_serie_trab_prev_soc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_serie_trab_prev_soc_pessoa)  AS STRING)
    END AS id_serie_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_cart_trab_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_cart_trab_pessoa))  AS DATE)
    END AS data_emissao_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_cart_trab_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_cart_trab_pessoa)  AS STRING)
    END AS sigla_uf_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(num_titulo_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_titulo_eleitor_pessoa)  AS STRING)
    END AS id_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(num_zona_tit_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_zona_tit_eleitor_pessoa)  AS STRING)
    END AS id_zona_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(num_secao_tit_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_secao_tit_eleitor_pessoa)  AS STRING)
    END AS id_secao_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(cod_termo___matricula__certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_termo___matricula__certid_pessoa)  AS STRING)
    END AS id_termi_matricula_certidao,
    CASE
        WHEN REGEXP_CONTAINS(num_identidade_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_identidade_pessoa)  AS STRING)
    END AS rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.documento_pessoa_0609`

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
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_civil_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_certidao_civil_pessoa)  AS STRING)
    END AS id_certidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(nom_cartorio_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_cartorio_pessoa)  AS STRING)
    END AS cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_livro_termo_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_livro_termo_certid_pessoa)  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_folha_termo_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_folha_termo_certid_pessoa)  AS STRING)
    END AS folha_certidao,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_certid_pessoa))  AS DATE)
    END AS data_emissao_certidao,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_certid_pessoa)  AS STRING)
    END AS sigla_uf_certidao,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_munic_certid_pessoa)  AS STRING)
    END AS municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_certid_pessoa)  AS STRING)
    END AS id_municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_cartorio_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cartorio_certid_pessoa)  AS STRING)
    END AS id_cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cpf_pessoa)  AS STRING)
    END AS cpf,
    CASE
        WHEN REGEXP_CONTAINS(cod_complemento_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_complemento_pessoa)  AS STRING)
    END AS id_complemento_rg,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_ident_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_ident_pessoa))  AS DATE)
    END AS data_emissao_rg,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_ident_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_ident_pessoa)  AS STRING)
    END AS sigla_uf_rg,
    CASE
        WHEN REGEXP_CONTAINS(sig_orgao_emissor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_orgao_emissor_pessoa)  AS STRING)
    END AS orgao_emissor_rg,
    CASE
        WHEN REGEXP_CONTAINS(num_cart_trab_prev_soc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cart_trab_prev_soc_pessoa)  AS STRING)
    END AS id_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(num_serie_trab_prev_soc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_serie_trab_prev_soc_pessoa)  AS STRING)
    END AS id_serie_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_cart_trab_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_cart_trab_pessoa))  AS DATE)
    END AS data_emissao_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_cart_trab_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_cart_trab_pessoa)  AS STRING)
    END AS sigla_uf_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(num_titulo_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_titulo_eleitor_pessoa)  AS STRING)
    END AS id_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(num_zona_tit_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_zona_tit_eleitor_pessoa)  AS STRING)
    END AS id_zona_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(num_secao_tit_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_secao_tit_eleitor_pessoa)  AS STRING)
    END AS id_secao_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(cod_termo___matricula__certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_termo___matricula__certid_pessoa)  AS STRING)
    END AS id_termi_matricula_certidao,
    CASE
        WHEN REGEXP_CONTAINS(num_identidade_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_identidade_pessoa)  AS STRING)
    END AS rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.documento_pessoa_0612`

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
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_civil_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_certidao_civil_pessoa)  AS STRING)
    END AS id_certidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(nom_cartorio_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_cartorio_pessoa)  AS STRING)
    END AS cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_livro_termo_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_livro_termo_certid_pessoa)  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_folha_termo_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_folha_termo_certid_pessoa)  AS STRING)
    END AS folha_certidao,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_certid_pessoa))  AS DATE)
    END AS data_emissao_certidao,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_certid_pessoa)  AS STRING)
    END AS sigla_uf_certidao,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_munic_certid_pessoa)  AS STRING)
    END AS municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_certid_pessoa)  AS STRING)
    END AS id_municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(cod_cartorio_certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cartorio_certid_pessoa)  AS STRING)
    END AS id_cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(num_cpf_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cpf_pessoa)  AS STRING)
    END AS cpf,
    CASE
        WHEN REGEXP_CONTAINS(cod_complemento_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_complemento_pessoa)  AS STRING)
    END AS id_complemento_rg,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_ident_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_ident_pessoa))  AS DATE)
    END AS data_emissao_rg,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_ident_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_ident_pessoa)  AS STRING)
    END AS sigla_uf_rg,
    CASE
        WHEN REGEXP_CONTAINS(sig_orgao_emissor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_orgao_emissor_pessoa)  AS STRING)
    END AS orgao_emissor_rg,
    CASE
        WHEN REGEXP_CONTAINS(num_cart_trab_prev_soc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_cart_trab_prev_soc_pessoa)  AS STRING)
    END AS id_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(num_serie_trab_prev_soc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_serie_trab_prev_soc_pessoa)  AS STRING)
    END AS id_serie_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_cart_trab_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_emissao_cart_trab_pessoa))  AS DATE)
    END AS data_emissao_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_cart_trab_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_cart_trab_pessoa)  AS STRING)
    END AS sigla_uf_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(num_titulo_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_titulo_eleitor_pessoa)  AS STRING)
    END AS id_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(num_zona_tit_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_zona_tit_eleitor_pessoa)  AS STRING)
    END AS id_zona_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(num_secao_tit_eleitor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_secao_tit_eleitor_pessoa)  AS STRING)
    END AS id_secao_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(cod_termo___matricula__certid_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_termo___matricula__certid_pessoa)  AS STRING)
    END AS id_termi_matricula_certidao,
    CASE
        WHEN REGEXP_CONTAINS(num_identidade_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_identidade_pessoa)  AS STRING)
    END AS rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.documento_pessoa_0615`

