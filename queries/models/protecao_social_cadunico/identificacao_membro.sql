
SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,70))  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,11))  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,34))  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,164,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,164,1))  AS STRING)
    END AS sexo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,165,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,165,8)))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,173,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,173,1))  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,174,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,174,70))  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,244,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,244,1))  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,245,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,245,70))  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,315,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,315,1))  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,317,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,317,2))  AS STRING)
    END AS sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,319,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,319,1))  AS STRING)
    END AS sabe_sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,320,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,320,35))  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,355,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,355,7))  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,362,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,362,1))  AS STRING)
    END AS sabe_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,363,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,363,40))  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,405,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,405,1))  AS STRING)
    END AS nao_sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,406,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,406,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,13))  AS STRING)
    END AS id_prefeitura_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,11))  AS STRING)
    END AS id_familia_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,431,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,431,4))  AS STRING)
    END AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '17'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,70))  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,11))  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,34))  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,164,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,164,1))  AS STRING)
    END AS sexo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,165,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,165,8)))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,173,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,173,1))  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,174,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,174,70))  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,244,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,244,1))  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,245,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,245,70))  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,315,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,315,1))  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,317,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,317,2))  AS STRING)
    END AS sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,319,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,319,1))  AS STRING)
    END AS sabe_sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,320,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,320,35))  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,355,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,355,7))  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,362,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,362,1))  AS STRING)
    END AS sabe_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,363,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,363,40))  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,405,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,405,1))  AS STRING)
    END AS nao_sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,406,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,406,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,13))  AS STRING)
    END AS id_prefeitura_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,11))  AS STRING)
    END AS id_familia_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,431,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,431,4))  AS STRING)
    END AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '17'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,70))  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,11))  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,34))  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,164,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,164,1))  AS STRING)
    END AS sexo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,165,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,165,8)))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,173,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,173,1))  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,174,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,174,70))  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,244,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,244,1))  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,245,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,245,70))  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,315,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,315,1))  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,317,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,317,2))  AS STRING)
    END AS sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,319,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,319,1))  AS STRING)
    END AS sabe_sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,320,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,320,35))  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,355,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,355,7))  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,362,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,362,1))  AS STRING)
    END AS sabe_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,363,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,363,40))  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,405,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,405,1))  AS STRING)
    END AS nao_sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,406,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,406,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,13))  AS STRING)
    END AS id_prefeitura_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,11))  AS STRING)
    END AS id_familia_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,431,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,431,4))  AS STRING)
    END AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '17'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,70))  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,11))  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,34))  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,164,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,164,1))  AS STRING)
    END AS sexo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,165,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,165,8)))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,173,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,173,1))  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,174,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,174,70))  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,244,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,244,1))  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,245,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,245,70))  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,315,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,315,1))  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,317,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,317,2))  AS STRING)
    END AS sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,319,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,319,1))  AS STRING)
    END AS sabe_sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,320,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,320,35))  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,355,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,355,7))  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,362,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,362,1))  AS STRING)
    END AS sabe_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,363,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,363,40))  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,405,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,405,1))  AS STRING)
    END AS nao_sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,406,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,406,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,13))  AS STRING)
    END AS id_prefeitura_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,11))  AS STRING)
    END AS id_familia_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,431,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,431,4))  AS STRING)
    END AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '17'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,70))  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,11))  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,34))  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,164,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,164,1))  AS STRING)
    END AS sexo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,165,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,165,8)))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,173,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,173,1))  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,174,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,174,70))  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,244,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,244,1))  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,245,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,245,70))  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,315,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,315,1))  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,317,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,317,2))  AS STRING)
    END AS sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,319,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,319,1))  AS STRING)
    END AS sabe_sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,320,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,320,35))  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,355,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,355,7))  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,362,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,362,1))  AS STRING)
    END AS sabe_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,363,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,363,40))  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,405,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,405,1))  AS STRING)
    END AS nao_sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,406,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,406,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,13))  AS STRING)
    END AS id_prefeitura_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,11))  AS STRING)
    END AS id_familia_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,431,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,431,4))  AS STRING)
    END AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '17'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_estado_cadastro_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,70))  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,11))  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,34))  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,164,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,164,1))  AS STRING)
    END AS sexo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,165,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,165,8)))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,173,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,173,1))  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,174,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,174,70))  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,244,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,244,1))  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,245,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,245,70))  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,315,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,315,1))  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,317,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,317,2))  AS STRING)
    END AS sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,319,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,319,1))  AS STRING)
    END AS sabe_sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,320,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,320,35))  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,355,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,355,7))  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,362,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,362,1))  AS STRING)
    END AS sabe_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,363,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,363,40))  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,405,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,405,1))  AS STRING)
    END AS nao_sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,406,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,406,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,13))  AS STRING)
    END AS id_prefeitura_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,11))  AS STRING)
    END AS id_familia_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,431,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,431,4))  AS STRING)
    END AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '17'
