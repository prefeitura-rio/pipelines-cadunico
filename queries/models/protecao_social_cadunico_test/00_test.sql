
SELECT
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(nom_arquivo_hdr AS STRING) AS nom_arquivo_hdr,
    CAST(cod_versao_layout_hdr AS STRING) AS cod_versao_layout_hdr,
    CAST(dta_posicao_cadastro_hdr AS STRING) AS dta_posicao_cadastro_hdr,
    CAST(dta_extracao_dados_hdr AS STRING) AS dta_extracao_dados_hdr,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.00_0601_test`

UNION ALL


SELECT
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(nom_arquivo_hdr AS STRING) AS nom_arquivo_hdr,
    CAST(cod_versao_layout_hdr AS STRING) AS cod_versao_layout_hdr,
    CAST(dta_posicao_cadastro_hdr AS STRING) AS dta_posicao_cadastro_hdr,
    CAST(dta_extracao_dados_hdr AS STRING) AS dta_extracao_dados_hdr,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.00_0604_test`

UNION ALL


SELECT
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(nom_arquivo_hdr AS STRING) AS nom_arquivo_hdr,
    CAST(cod_versao_layout_hdr AS STRING) AS cod_versao_layout_hdr,
    CAST(dta_posicao_cadastro_hdr AS STRING) AS dta_posicao_cadastro_hdr,
    CAST(dta_extracao_dados_hdr AS STRING) AS dta_extracao_dados_hdr,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.00_0609_test`

