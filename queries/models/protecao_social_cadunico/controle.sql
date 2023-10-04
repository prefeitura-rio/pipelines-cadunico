
SELECT
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(nom_arquivo_hdr AS string) AS nome_arquivo,
    CAST(cod_versao_layout_hdr AS string) AS versao_layout,
    CAST(dta_posicao_cadastro_hdr AS date) AS data_posicao_cadastro,
    CAST(dta_extracao_dados_hdr AS date) AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.controle_0601`

UNION ALL


SELECT
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(nom_arquivo_hdr AS string) AS nome_arquivo,
    CAST(cod_versao_layout_hdr AS string) AS versao_layout,
    CAST(dta_posicao_cadastro_hdr AS date) AS data_posicao_cadastro,
    CAST(dta_extracao_dados_hdr AS date) AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.controle_0603`

UNION ALL


SELECT
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(nom_arquivo_hdr AS string) AS nome_arquivo,
    CAST(cod_versao_layout_hdr AS string) AS versao_layout,
    CAST(dta_posicao_cadastro_hdr AS date) AS data_posicao_cadastro,
    CAST(dta_extracao_dados_hdr AS date) AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.controle_0604`

UNION ALL


SELECT
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(nom_arquivo_hdr AS string) AS nome_arquivo,
    CAST(cod_versao_layout_hdr AS string) AS versao_layout,
    CAST(dta_posicao_cadastro_hdr AS date) AS data_posicao_cadastro,
    CAST(dta_extracao_dados_hdr AS date) AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.controle_0609`

UNION ALL


SELECT
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(nom_arquivo_hdr AS string) AS nome_arquivo,
    CAST(cod_versao_layout_hdr AS string) AS versao_layout,
    CAST(dta_posicao_cadastro_hdr AS date) AS data_posicao_cadastro,
    CAST(dta_extracao_dados_hdr AS date) AS data_extracao_dados,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.controle_0612`

