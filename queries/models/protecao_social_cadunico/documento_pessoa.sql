
SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_cartorio_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,183,15), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,183,15))  AS STRING)
    END AS id_cartorio_certidao,

    --column: cod_certidao_civil_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_certidao_civil,

    --column: cod_complemento_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,225,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,225,5))  AS STRING)
    END AS id_complemento_rg,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_folha_termo_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,4))  AS STRING)
    END AS folha_certidao,

    --column: cod_ibge_munic_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,176,7))  AS STRING)
    END AS id_municipio_certidao,

    --column: cod_livro_termo_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,111,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,111,8))  AS STRING)
    END AS livro_certidao_obito_excluido,

    --column: cod_termo___matricula__certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,32))  AS STRING)
    END AS id_termi_matricula_certidao,

    --column: dta_emissao_cart_trab_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,260,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,260,8)))  AS DATE)
    END AS data_emissao_carteira_trabalho,

    --column: dta_emissao_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,131,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,131,8)))  AS DATE)
    END AS data_emissao_certidao,

    --column: dta_emissao_ident_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,230,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,230,8)))  AS DATE)
    END AS data_emissao_rg,

    --column: nom_cartorio_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,70))  AS STRING)
    END AS cartorio_certidao,

    --column: nom_munic_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,35))  AS STRING)
    END AS municipio_certidao,

    --column: num_cart_trab_prev_soc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,248,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,248,7))  AS STRING)
    END AS id_carteira_trabalho,

    --column: num_cpf_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,11))  AS STRING)
    END AS cpf,

    --column: num_identidade_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,323,20))  AS STRING)
    END AS rg,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_secao_tit_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,4))  AS STRING)
    END AS id_secao_titulo_eleitor,

    --column: num_serie_trab_prev_soc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,255,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,255,5))  AS STRING)
    END AS id_serie_carteira_trabalho,

    --column: num_titulo_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,270,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,270,13))  AS STRING)
    END AS id_titulo_eleitor,

    --column: num_zona_tit_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,283,4))  AS STRING)
    END AS id_zona_titulo_eleitor,

    --column: sig_orgao_emissor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,240,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,240,8))  AS STRING)
    END AS orgao_emissor_rg,

    --column: sig_uf_cart_trab_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,268,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,268,2))  AS STRING)
    END AS sigla_uf_carteira_trabalho,

    --column: sig_uf_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,139,2))  AS STRING)
    END AS sigla_uf_certidao,

    --column: sig_uf_ident_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,238,2))  AS STRING)
    END AS sigla_uf_rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '05'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_cartorio_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,183,15), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,183,15))  AS STRING)
    END AS id_cartorio_certidao,

    --column: cod_certidao_civil_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_certidao_civil,

    --column: cod_complemento_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,225,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,225,5))  AS STRING)
    END AS id_complemento_rg,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_folha_termo_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,4))  AS STRING)
    END AS folha_certidao,

    --column: cod_ibge_munic_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,176,7))  AS STRING)
    END AS id_municipio_certidao,

    --column: cod_livro_termo_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,111,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,111,8))  AS STRING)
    END AS livro_certidao_obito_excluido,

    --column: cod_termo___matricula__certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,32))  AS STRING)
    END AS id_termi_matricula_certidao,

    --column: dta_emissao_cart_trab_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,260,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,260,8)))  AS DATE)
    END AS data_emissao_carteira_trabalho,

    --column: dta_emissao_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,131,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,131,8)))  AS DATE)
    END AS data_emissao_certidao,

    --column: dta_emissao_ident_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,230,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,230,8)))  AS DATE)
    END AS data_emissao_rg,

    --column: nom_cartorio_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,70))  AS STRING)
    END AS cartorio_certidao,

    --column: nom_munic_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,35))  AS STRING)
    END AS municipio_certidao,

    --column: num_cart_trab_prev_soc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,248,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,248,7))  AS STRING)
    END AS id_carteira_trabalho,

    --column: num_cpf_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,11))  AS STRING)
    END AS cpf,

    --column: num_identidade_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,323,20))  AS STRING)
    END AS rg,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_secao_tit_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,4))  AS STRING)
    END AS id_secao_titulo_eleitor,

    --column: num_serie_trab_prev_soc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,255,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,255,5))  AS STRING)
    END AS id_serie_carteira_trabalho,

    --column: num_titulo_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,270,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,270,13))  AS STRING)
    END AS id_titulo_eleitor,

    --column: num_zona_tit_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,283,4))  AS STRING)
    END AS id_zona_titulo_eleitor,

    --column: sig_orgao_emissor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,240,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,240,8))  AS STRING)
    END AS orgao_emissor_rg,

    --column: sig_uf_cart_trab_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,268,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,268,2))  AS STRING)
    END AS sigla_uf_carteira_trabalho,

    --column: sig_uf_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,139,2))  AS STRING)
    END AS sigla_uf_certidao,

    --column: sig_uf_ident_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,238,2))  AS STRING)
    END AS sigla_uf_rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '05'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_cartorio_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,183,15), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,183,15))  AS STRING)
    END AS id_cartorio_certidao,

    --column: cod_certidao_civil_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_certidao_civil,

    --column: cod_complemento_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,225,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,225,5))  AS STRING)
    END AS id_complemento_rg,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_folha_termo_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,4))  AS STRING)
    END AS folha_certidao,

    --column: cod_ibge_munic_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,176,7))  AS STRING)
    END AS id_municipio_certidao,

    --column: cod_livro_termo_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,111,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,111,8))  AS STRING)
    END AS livro_certidao_obito_excluido,

    --column: cod_termo___matricula__certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,32))  AS STRING)
    END AS id_termi_matricula_certidao,

    --column: dta_emissao_cart_trab_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,260,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,260,8)))  AS DATE)
    END AS data_emissao_carteira_trabalho,

    --column: dta_emissao_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,131,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,131,8)))  AS DATE)
    END AS data_emissao_certidao,

    --column: dta_emissao_ident_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,230,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,230,8)))  AS DATE)
    END AS data_emissao_rg,

    --column: nom_cartorio_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,70))  AS STRING)
    END AS cartorio_certidao,

    --column: nom_munic_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,35))  AS STRING)
    END AS municipio_certidao,

    --column: num_cart_trab_prev_soc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,248,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,248,7))  AS STRING)
    END AS id_carteira_trabalho,

    --column: num_cpf_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,11))  AS STRING)
    END AS cpf,

    --column: num_identidade_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,323,20))  AS STRING)
    END AS rg,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_secao_tit_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,4))  AS STRING)
    END AS id_secao_titulo_eleitor,

    --column: num_serie_trab_prev_soc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,255,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,255,5))  AS STRING)
    END AS id_serie_carteira_trabalho,

    --column: num_titulo_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,270,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,270,13))  AS STRING)
    END AS id_titulo_eleitor,

    --column: num_zona_tit_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,283,4))  AS STRING)
    END AS id_zona_titulo_eleitor,

    --column: sig_orgao_emissor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,240,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,240,8))  AS STRING)
    END AS orgao_emissor_rg,

    --column: sig_uf_cart_trab_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,268,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,268,2))  AS STRING)
    END AS sigla_uf_carteira_trabalho,

    --column: sig_uf_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,139,2))  AS STRING)
    END AS sigla_uf_certidao,

    --column: sig_uf_ident_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,238,2))  AS STRING)
    END AS sigla_uf_rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '05'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_cartorio_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,183,15), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,183,15))  AS STRING)
    END AS id_cartorio_certidao,

    --column: cod_certidao_civil_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_certidao_civil,

    --column: cod_complemento_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,225,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,225,5))  AS STRING)
    END AS id_complemento_rg,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_folha_termo_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,4))  AS STRING)
    END AS folha_certidao,

    --column: cod_ibge_munic_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,176,7))  AS STRING)
    END AS id_municipio_certidao,

    --column: cod_livro_termo_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,111,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,111,8))  AS STRING)
    END AS livro_certidao_obito_excluido,

    --column: cod_termo___matricula__certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,32))  AS STRING)
    END AS id_termi_matricula_certidao,

    --column: dta_emissao_cart_trab_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,260,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,260,8)))  AS DATE)
    END AS data_emissao_carteira_trabalho,

    --column: dta_emissao_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,131,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,131,8)))  AS DATE)
    END AS data_emissao_certidao,

    --column: dta_emissao_ident_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,230,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,230,8)))  AS DATE)
    END AS data_emissao_rg,

    --column: nom_cartorio_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,70))  AS STRING)
    END AS cartorio_certidao,

    --column: nom_munic_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,35))  AS STRING)
    END AS municipio_certidao,

    --column: num_cart_trab_prev_soc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,248,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,248,7))  AS STRING)
    END AS id_carteira_trabalho,

    --column: num_cpf_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,11))  AS STRING)
    END AS cpf,

    --column: num_identidade_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,323,20))  AS STRING)
    END AS rg,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_secao_tit_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,4))  AS STRING)
    END AS id_secao_titulo_eleitor,

    --column: num_serie_trab_prev_soc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,255,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,255,5))  AS STRING)
    END AS id_serie_carteira_trabalho,

    --column: num_titulo_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,270,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,270,13))  AS STRING)
    END AS id_titulo_eleitor,

    --column: num_zona_tit_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,283,4))  AS STRING)
    END AS id_zona_titulo_eleitor,

    --column: sig_orgao_emissor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,240,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,240,8))  AS STRING)
    END AS orgao_emissor_rg,

    --column: sig_uf_cart_trab_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,268,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,268,2))  AS STRING)
    END AS sigla_uf_carteira_trabalho,

    --column: sig_uf_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,139,2))  AS STRING)
    END AS sigla_uf_certidao,

    --column: sig_uf_ident_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,238,2))  AS STRING)
    END AS sigla_uf_rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '05'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_cartorio_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,183,15), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,183,15))  AS STRING)
    END AS id_cartorio_certidao,

    --column: cod_certidao_civil_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_certidao_civil,

    --column: cod_complemento_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,225,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,225,5))  AS STRING)
    END AS id_complemento_rg,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_folha_termo_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,4))  AS STRING)
    END AS folha_certidao,

    --column: cod_ibge_munic_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,176,7))  AS STRING)
    END AS id_municipio_certidao,

    --column: cod_livro_termo_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,111,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,111,8))  AS STRING)
    END AS livro_certidao_obito_excluido,

    --column: cod_termo___matricula__certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,32))  AS STRING)
    END AS id_termi_matricula_certidao,

    --column: dta_emissao_cart_trab_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,260,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,260,8)))  AS DATE)
    END AS data_emissao_carteira_trabalho,

    --column: dta_emissao_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,131,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,131,8)))  AS DATE)
    END AS data_emissao_certidao,

    --column: dta_emissao_ident_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,230,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,230,8)))  AS DATE)
    END AS data_emissao_rg,

    --column: nom_cartorio_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,70))  AS STRING)
    END AS cartorio_certidao,

    --column: nom_munic_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,35))  AS STRING)
    END AS municipio_certidao,

    --column: num_cart_trab_prev_soc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,248,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,248,7))  AS STRING)
    END AS id_carteira_trabalho,

    --column: num_cpf_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,11))  AS STRING)
    END AS cpf,

    --column: num_identidade_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,323,20))  AS STRING)
    END AS rg,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_secao_tit_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,4))  AS STRING)
    END AS id_secao_titulo_eleitor,

    --column: num_serie_trab_prev_soc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,255,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,255,5))  AS STRING)
    END AS id_serie_carteira_trabalho,

    --column: num_titulo_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,270,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,270,13))  AS STRING)
    END AS id_titulo_eleitor,

    --column: num_zona_tit_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,283,4))  AS STRING)
    END AS id_zona_titulo_eleitor,

    --column: sig_orgao_emissor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,240,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,240,8))  AS STRING)
    END AS orgao_emissor_rg,

    --column: sig_uf_cart_trab_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,268,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,268,2))  AS STRING)
    END AS sigla_uf_carteira_trabalho,

    --column: sig_uf_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,139,2))  AS STRING)
    END AS sigla_uf_certidao,

    --column: sig_uf_ident_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,238,2))  AS STRING)
    END AS sigla_uf_rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '05'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_cartorio_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,183,15), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,183,15))  AS STRING)
    END AS id_cartorio_certidao,

    --column: cod_certidao_civil_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_certidao_civil,

    --column: cod_complemento_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,225,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,225,5))  AS STRING)
    END AS id_complemento_rg,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_folha_termo_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,4))  AS STRING)
    END AS folha_certidao,

    --column: cod_ibge_munic_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,176,7))  AS STRING)
    END AS id_municipio_certidao,

    --column: cod_livro_termo_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,111,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,111,8))  AS STRING)
    END AS livro_certidao_obito_excluido,

    --column: cod_termo___matricula__certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,32))  AS STRING)
    END AS id_termi_matricula_certidao,

    --column: dta_emissao_cart_trab_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,260,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,260,8)))  AS DATE)
    END AS data_emissao_carteira_trabalho,

    --column: dta_emissao_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,131,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,131,8)))  AS DATE)
    END AS data_emissao_certidao,

    --column: dta_emissao_ident_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,230,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,230,8)))  AS DATE)
    END AS data_emissao_rg,

    --column: nom_cartorio_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,70))  AS STRING)
    END AS cartorio_certidao,

    --column: nom_munic_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,35))  AS STRING)
    END AS municipio_certidao,

    --column: num_cart_trab_prev_soc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,248,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,248,7))  AS STRING)
    END AS id_carteira_trabalho,

    --column: num_cpf_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,11))  AS STRING)
    END AS cpf,

    --column: num_identidade_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,323,20))  AS STRING)
    END AS rg,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_secao_tit_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,4))  AS STRING)
    END AS id_secao_titulo_eleitor,

    --column: num_serie_trab_prev_soc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,255,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,255,5))  AS STRING)
    END AS id_serie_carteira_trabalho,

    --column: num_titulo_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,270,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,270,13))  AS STRING)
    END AS id_titulo_eleitor,

    --column: num_zona_tit_eleitor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,283,4))  AS STRING)
    END AS id_zona_titulo_eleitor,

    --column: sig_orgao_emissor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,240,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,240,8))  AS STRING)
    END AS orgao_emissor_rg,

    --column: sig_uf_cart_trab_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,268,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,268,2))  AS STRING)
    END AS sigla_uf_carteira_trabalho,

    --column: sig_uf_certid_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,139,2))  AS STRING)
    END AS sigla_uf_certidao,

    --column: sig_uf_ident_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,238,2))  AS STRING)
    END AS sigla_uf_rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '05'

