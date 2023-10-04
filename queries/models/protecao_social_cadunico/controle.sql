
SELECT
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(nom_arquivo_hdr, r'^\s*$') THEN NULL
        ELSE CAST( nom_arquivo_hdr  AS STRING)
    END AS nome_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_versao_layout_hdr, r'^\s*$') THEN NULL
        ELSE CAST( cod_versao_layout_hdr  AS STRING)
    END AS versao_layout,
    CASE
        WHEN REGEXP_CONTAINS(dta_posicao_cadastro_hdr, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_posicao_cadastro_hdr)  AS DATE)
    END AS data_posicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(dta_extracao_dados_hdr, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_extracao_dados_hdr)  AS DATE)
    END AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.controle_0601`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(nom_arquivo_hdr, r'^\s*$') THEN NULL
        ELSE CAST( nom_arquivo_hdr  AS STRING)
    END AS nome_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_versao_layout_hdr, r'^\s*$') THEN NULL
        ELSE CAST( cod_versao_layout_hdr  AS STRING)
    END AS versao_layout,
    CASE
        WHEN REGEXP_CONTAINS(dta_posicao_cadastro_hdr, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_posicao_cadastro_hdr)  AS DATE)
    END AS data_posicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(dta_extracao_dados_hdr, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_extracao_dados_hdr)  AS DATE)
    END AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.controle_0603`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(nom_arquivo_hdr, r'^\s*$') THEN NULL
        ELSE CAST( nom_arquivo_hdr  AS STRING)
    END AS nome_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_versao_layout_hdr, r'^\s*$') THEN NULL
        ELSE CAST( cod_versao_layout_hdr  AS STRING)
    END AS versao_layout,
    CASE
        WHEN REGEXP_CONTAINS(dta_posicao_cadastro_hdr, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_posicao_cadastro_hdr)  AS DATE)
    END AS data_posicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(dta_extracao_dados_hdr, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_extracao_dados_hdr)  AS DATE)
    END AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.controle_0604`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(nom_arquivo_hdr, r'^\s*$') THEN NULL
        ELSE CAST( nom_arquivo_hdr  AS STRING)
    END AS nome_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_versao_layout_hdr, r'^\s*$') THEN NULL
        ELSE CAST( cod_versao_layout_hdr  AS STRING)
    END AS versao_layout,
    CASE
        WHEN REGEXP_CONTAINS(dta_posicao_cadastro_hdr, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_posicao_cadastro_hdr)  AS DATE)
    END AS data_posicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(dta_extracao_dados_hdr, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_extracao_dados_hdr)  AS DATE)
    END AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.controle_0609`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(nom_arquivo_hdr, r'^\s*$') THEN NULL
        ELSE CAST( nom_arquivo_hdr  AS STRING)
    END AS nome_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_versao_layout_hdr, r'^\s*$') THEN NULL
        ELSE CAST( cod_versao_layout_hdr  AS STRING)
    END AS versao_layout,
    CASE
        WHEN REGEXP_CONTAINS(dta_posicao_cadastro_hdr, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_posicao_cadastro_hdr)  AS DATE)
    END AS data_posicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(dta_extracao_dados_hdr, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_extracao_dados_hdr)  AS DATE)
    END AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.controle_0612`

