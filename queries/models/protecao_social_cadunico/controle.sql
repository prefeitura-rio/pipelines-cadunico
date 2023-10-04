
SELECT
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(nom_arquivo_hdr AS STRING) AS nome_arquivo,
    CAST(cod_versao_layout_hdr AS STRING) AS versao_layout,
    CAST(PARSE_DATE('%d%m%Y', dta_posicao_cadastro_hdr) AS DATE) AS data_posicao_cadastro,
    CAST(PARSE_DATE('%d%m%Y', dta_extracao_dados_hdr) AS DATE) AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.controle_0601`

UNION ALL


SELECT
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(nom_arquivo_hdr AS STRING) AS nome_arquivo,
    CAST(cod_versao_layout_hdr AS STRING) AS versao_layout,
    CAST(PARSE_DATE('%d%m%Y', dta_posicao_cadastro_hdr) AS DATE) AS data_posicao_cadastro,
    CAST(PARSE_DATE('%d%m%Y', dta_extracao_dados_hdr) AS DATE) AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.controle_0603`

UNION ALL


SELECT
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(nom_arquivo_hdr AS STRING) AS nome_arquivo,
    CAST(cod_versao_layout_hdr AS STRING) AS versao_layout,
    CAST(PARSE_DATE('%d%m%Y', dta_posicao_cadastro_hdr) AS DATE) AS data_posicao_cadastro,
    CAST(PARSE_DATE('%d%m%Y', dta_extracao_dados_hdr) AS DATE) AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.controle_0604`

UNION ALL


SELECT
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(nom_arquivo_hdr AS STRING) AS nome_arquivo,
    CAST(cod_versao_layout_hdr AS STRING) AS versao_layout,
    CAST(PARSE_DATE('%d%m%Y', dta_posicao_cadastro_hdr) AS DATE) AS data_posicao_cadastro,
    CAST(PARSE_DATE('%d%m%Y', dta_extracao_dados_hdr) AS DATE) AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.controle_0609`

UNION ALL


SELECT
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(nom_arquivo_hdr AS STRING) AS nome_arquivo,
    CAST(cod_versao_layout_hdr AS STRING) AS versao_layout,
    CAST(PARSE_DATE('%d%m%Y', dta_posicao_cadastro_hdr) AS DATE) AS data_posicao_cadastro,
    CAST(PARSE_DATE('%d%m%Y', dta_extracao_dados_hdr) AS DATE) AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.controle_0612`

