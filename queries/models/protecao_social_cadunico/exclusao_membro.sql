
SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,11))  AS STRING)
    END AS cpf_operador_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS motivo_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,10))  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,71,8)))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,70))  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,149,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,149,11))  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,160,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,160,2))  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,162,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,162,7))  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,169,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,169,70))  AS STRING)
    END AS cartorio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,239,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,239,8))  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,247,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,247,4))  AS STRING)
    END AS folha_ceritao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,32))  AS STRING)
    END AS numero_termo_matricula_certidao_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,283,8)))  AS DATE)
    END AS data_emissao_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,2))  AS STRING)
    END AS sigla_uf_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,293,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,293,35))  AS STRING)
    END AS municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,7))  AS STRING)
    END AS id_municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,335,255), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,335,255))  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '19'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,11))  AS STRING)
    END AS cpf_operador_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS motivo_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,10))  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,71,8)))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,70))  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,149,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,149,11))  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,160,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,160,2))  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,162,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,162,7))  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,169,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,169,70))  AS STRING)
    END AS cartorio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,239,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,239,8))  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,247,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,247,4))  AS STRING)
    END AS folha_ceritao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,32))  AS STRING)
    END AS numero_termo_matricula_certidao_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,283,8)))  AS DATE)
    END AS data_emissao_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,2))  AS STRING)
    END AS sigla_uf_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,293,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,293,35))  AS STRING)
    END AS municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,7))  AS STRING)
    END AS id_municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,335,255), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,335,255))  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '19'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,11))  AS STRING)
    END AS cpf_operador_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS motivo_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,10))  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,71,8)))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,70))  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,149,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,149,11))  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,160,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,160,2))  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,162,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,162,7))  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,169,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,169,70))  AS STRING)
    END AS cartorio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,239,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,239,8))  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,247,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,247,4))  AS STRING)
    END AS folha_ceritao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,32))  AS STRING)
    END AS numero_termo_matricula_certidao_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,283,8)))  AS DATE)
    END AS data_emissao_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,2))  AS STRING)
    END AS sigla_uf_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,293,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,293,35))  AS STRING)
    END AS municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,7))  AS STRING)
    END AS id_municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,335,255), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,335,255))  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '19'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,11))  AS STRING)
    END AS cpf_operador_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS motivo_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,10))  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,71,8)))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,70))  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,149,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,149,11))  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,160,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,160,2))  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,162,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,162,7))  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,169,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,169,70))  AS STRING)
    END AS cartorio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,239,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,239,8))  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,247,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,247,4))  AS STRING)
    END AS folha_ceritao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,32))  AS STRING)
    END AS numero_termo_matricula_certidao_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,283,8)))  AS DATE)
    END AS data_emissao_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,2))  AS STRING)
    END AS sigla_uf_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,293,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,293,35))  AS STRING)
    END AS municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,7))  AS STRING)
    END AS id_municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,335,255), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,335,255))  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '19'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,11))  AS STRING)
    END AS cpf_operador_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS motivo_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,10))  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,71,8)))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,70))  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,149,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,149,11))  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,160,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,160,2))  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,162,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,162,7))  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,169,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,169,70))  AS STRING)
    END AS cartorio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,239,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,239,8))  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,247,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,247,4))  AS STRING)
    END AS folha_ceritao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,32))  AS STRING)
    END AS numero_termo_matricula_certidao_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,283,8)))  AS DATE)
    END AS data_emissao_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,2))  AS STRING)
    END AS sigla_uf_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,293,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,293,35))  AS STRING)
    END AS municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,7))  AS STRING)
    END AS id_municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,335,255), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,335,255))  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '19'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,11))  AS STRING)
    END AS cpf_operador_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS motivo_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,10))  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,71,8)))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,70))  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,149,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,149,11))  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,160,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,160,2))  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,162,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,162,7))  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,169,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,169,70))  AS STRING)
    END AS cartorio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,239,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,239,8))  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,247,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,247,4))  AS STRING)
    END AS folha_ceritao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,32), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,32))  AS STRING)
    END AS numero_termo_matricula_certidao_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,283,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,283,8)))  AS DATE)
    END AS data_emissao_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,291,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,291,2))  AS STRING)
    END AS sigla_uf_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,293,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,293,35))  AS STRING)
    END AS municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,7))  AS STRING)
    END AS id_municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,335,255), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,335,255))  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '19'
