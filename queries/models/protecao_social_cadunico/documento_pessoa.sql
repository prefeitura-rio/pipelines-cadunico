
SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_certidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,70))  AS STRING)
    END AS cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,111,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,111,8))  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,4))  AS STRING)
    END AS folha_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,131,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,131,8)))  AS DATE)
    END AS data_emissao_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,139,2))  AS STRING)
    END AS sigla_uf_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,35))  AS STRING)
    END AS municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,176,7))  AS STRING)
    END AS id_municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,183,15), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,183,15))  AS STRING)
    END AS id_cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,11))  AS STRING)
    END AS cpf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,225,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,225,5))  AS STRING)
    END AS id_complemento_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,230,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,230,8)))  AS DATE)
    END AS data_emissao_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,238,2))  AS STRING)
    END AS sigla_uf_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,240,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,240,8))  AS STRING)
    END AS orgao_emissor_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,248,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,248,7))  AS STRING)
    END AS id_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,255,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,255,5))  AS STRING)
    END AS id_serie_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,260,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,260,8)))  AS DATE)
    END AS data_emissao_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,268,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,268,2))  AS STRING)
    END AS sigla_uf_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,270,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,270,13))  AS STRING)
    END AS id_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,283,4))  AS STRING)
    END AS id_zona_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,4))  AS STRING)
    END AS id_secao_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,32))  AS STRING)
    END AS id_termi_matricula_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,323,20))  AS STRING)
    END AS rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.documento_pessoa_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '05'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_certidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,70))  AS STRING)
    END AS cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,111,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,111,8))  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,4))  AS STRING)
    END AS folha_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,131,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,131,8)))  AS DATE)
    END AS data_emissao_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,139,2))  AS STRING)
    END AS sigla_uf_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,35))  AS STRING)
    END AS municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,176,7))  AS STRING)
    END AS id_municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,183,15), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,183,15))  AS STRING)
    END AS id_cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,11))  AS STRING)
    END AS cpf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,225,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,225,5))  AS STRING)
    END AS id_complemento_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,230,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,230,8)))  AS DATE)
    END AS data_emissao_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,238,2))  AS STRING)
    END AS sigla_uf_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,240,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,240,8))  AS STRING)
    END AS orgao_emissor_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,248,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,248,7))  AS STRING)
    END AS id_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,255,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,255,5))  AS STRING)
    END AS id_serie_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,260,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,260,8)))  AS DATE)
    END AS data_emissao_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,268,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,268,2))  AS STRING)
    END AS sigla_uf_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,270,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,270,13))  AS STRING)
    END AS id_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,283,4))  AS STRING)
    END AS id_zona_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,4))  AS STRING)
    END AS id_secao_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,32))  AS STRING)
    END AS id_termi_matricula_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,323,20))  AS STRING)
    END AS rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.documento_pessoa_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '05'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_certidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,70))  AS STRING)
    END AS cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,111,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,111,8))  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,4))  AS STRING)
    END AS folha_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,131,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,131,8)))  AS DATE)
    END AS data_emissao_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,139,2))  AS STRING)
    END AS sigla_uf_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,35))  AS STRING)
    END AS municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,176,7))  AS STRING)
    END AS id_municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,183,15), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,183,15))  AS STRING)
    END AS id_cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,11))  AS STRING)
    END AS cpf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,225,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,225,5))  AS STRING)
    END AS id_complemento_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,230,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,230,8)))  AS DATE)
    END AS data_emissao_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,238,2))  AS STRING)
    END AS sigla_uf_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,240,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,240,8))  AS STRING)
    END AS orgao_emissor_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,248,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,248,7))  AS STRING)
    END AS id_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,255,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,255,5))  AS STRING)
    END AS id_serie_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,260,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,260,8)))  AS DATE)
    END AS data_emissao_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,268,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,268,2))  AS STRING)
    END AS sigla_uf_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,270,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,270,13))  AS STRING)
    END AS id_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,283,4))  AS STRING)
    END AS id_zona_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,4))  AS STRING)
    END AS id_secao_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,32))  AS STRING)
    END AS id_termi_matricula_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,323,20))  AS STRING)
    END AS rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.documento_pessoa_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '05'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_certidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,70))  AS STRING)
    END AS cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,111,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,111,8))  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,4))  AS STRING)
    END AS folha_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,131,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,131,8)))  AS DATE)
    END AS data_emissao_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,139,2))  AS STRING)
    END AS sigla_uf_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,35))  AS STRING)
    END AS municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,176,7))  AS STRING)
    END AS id_municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,183,15), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,183,15))  AS STRING)
    END AS id_cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,11))  AS STRING)
    END AS cpf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,225,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,225,5))  AS STRING)
    END AS id_complemento_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,230,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,230,8)))  AS DATE)
    END AS data_emissao_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,238,2))  AS STRING)
    END AS sigla_uf_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,240,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,240,8))  AS STRING)
    END AS orgao_emissor_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,248,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,248,7))  AS STRING)
    END AS id_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,255,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,255,5))  AS STRING)
    END AS id_serie_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,260,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,260,8)))  AS DATE)
    END AS data_emissao_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,268,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,268,2))  AS STRING)
    END AS sigla_uf_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,270,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,270,13))  AS STRING)
    END AS id_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,283,4))  AS STRING)
    END AS id_zona_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,4))  AS STRING)
    END AS id_secao_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,32))  AS STRING)
    END AS id_termi_matricula_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,323,20))  AS STRING)
    END AS rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.documento_pessoa_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '05'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_certidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,70))  AS STRING)
    END AS cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,111,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,111,8))  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,4))  AS STRING)
    END AS folha_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,131,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,131,8)))  AS DATE)
    END AS data_emissao_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,139,2))  AS STRING)
    END AS sigla_uf_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,35))  AS STRING)
    END AS municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,176,7))  AS STRING)
    END AS id_municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,183,15), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,183,15))  AS STRING)
    END AS id_cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,11))  AS STRING)
    END AS cpf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,225,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,225,5))  AS STRING)
    END AS id_complemento_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,230,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,230,8)))  AS DATE)
    END AS data_emissao_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,238,2))  AS STRING)
    END AS sigla_uf_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,240,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,240,8))  AS STRING)
    END AS orgao_emissor_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,248,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,248,7))  AS STRING)
    END AS id_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,255,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,255,5))  AS STRING)
    END AS id_serie_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,260,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,260,8)))  AS DATE)
    END AS data_emissao_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,268,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,268,2))  AS STRING)
    END AS sigla_uf_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,270,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,270,13))  AS STRING)
    END AS id_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,283,4))  AS STRING)
    END AS id_zona_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,4))  AS STRING)
    END AS id_secao_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,32))  AS STRING)
    END AS id_termi_matricula_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,323,20))  AS STRING)
    END AS rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.documento_pessoa_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '05'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_certidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,70))  AS STRING)
    END AS cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,111,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,111,8))  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,4))  AS STRING)
    END AS folha_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,131,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,131,8)))  AS DATE)
    END AS data_emissao_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,139,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,139,2))  AS STRING)
    END AS sigla_uf_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,35))  AS STRING)
    END AS municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,176,7))  AS STRING)
    END AS id_municipio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,183,15), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,183,15))  AS STRING)
    END AS id_cartorio_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,11))  AS STRING)
    END AS cpf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,225,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,225,5))  AS STRING)
    END AS id_complemento_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,230,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,230,8)))  AS DATE)
    END AS data_emissao_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,238,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,238,2))  AS STRING)
    END AS sigla_uf_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,240,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,240,8))  AS STRING)
    END AS orgao_emissor_rg,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,248,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,248,7))  AS STRING)
    END AS id_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,255,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,255,5))  AS STRING)
    END AS id_serie_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,260,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,260,8)))  AS DATE)
    END AS data_emissao_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,268,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,268,2))  AS STRING)
    END AS sigla_uf_carteira_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,270,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,270,13))  AS STRING)
    END AS id_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,283,4))  AS STRING)
    END AS id_zona_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,4))  AS STRING)
    END AS id_secao_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,32))  AS STRING)
    END AS id_termi_matricula_certidao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,323,20))  AS STRING)
    END AS rg,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.documento_pessoa_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '05'
