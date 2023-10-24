
SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,11))  AS STRING)
    END AS cpf_operador_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS motivo_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,10))  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,71,8)))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,70))  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,149,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,149,11))  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,160,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,160,2))  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,162,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,162,7))  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,169,255), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,169,255))  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '18'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,11))  AS STRING)
    END AS cpf_operador_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS motivo_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,10))  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,71,8)))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,70))  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,149,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,149,11))  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,160,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,160,2))  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,162,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,162,7))  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,169,255), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,169,255))  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '18'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,11))  AS STRING)
    END AS cpf_operador_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS motivo_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,10))  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,71,8)))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,70))  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,149,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,149,11))  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,160,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,160,2))  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,162,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,162,7))  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,169,255), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,169,255))  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '18'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,11))  AS STRING)
    END AS cpf_operador_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS motivo_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,10))  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,71,8)))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,70))  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,149,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,149,11))  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,160,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,160,2))  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,162,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,162,7))  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,169,255), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,169,255))  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '18'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,11))  AS STRING)
    END AS cpf_operador_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS motivo_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,10))  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,71,8)))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,70))  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,149,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,149,11))  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,160,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,160,2))  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,162,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,162,7))  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,169,255), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,169,255))  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '18'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,11))  AS STRING)
    END AS cpf_operador_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS motivo_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,10))  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,71,8)))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,70))  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,149,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,149,11))  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,160,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,160,2))  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,162,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,162,7))  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,169,255), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,169,255))  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '18'
