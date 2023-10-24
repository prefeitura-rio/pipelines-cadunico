
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_ultima_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastral,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS id_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,2))  AS STRING)
    END AS id_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,70))  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,11))  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,34))  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,1))  AS STRING)
    END AS id_sexo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,176,8)))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,184,2))  AS STRING)
    END AS id_parentesco_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,186,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,186,1))  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,187,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,187,70))  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,257,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,257,1))  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,258,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,258,70))  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,329,1))  AS STRING)
    END AS id_local_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,330,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,330,2))  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,332,1))  AS STRING)
    END AS sabe_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,333,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,333,35))  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,7))  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,375,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,375,1))  AS STRING)
    END AS sabe_id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,376,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,376,40))  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,418,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,418,1))  AS STRING)
    END AS sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,419,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,419,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,433,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,433,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,1))  AS STRING)
    END AS foi_transferido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,445,60), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,445,60))  AS STRING)
    END AS origem_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,505,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,505,13))  AS STRING)
    END AS id_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,518,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,518,13))  AS STRING)
    END AS id_original_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,531,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,531,11))  AS STRING)
    END AS nis_original,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,542,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,542,4))  AS STRING)
    END AS id_pais_origem,
    NULL AS origem_cadastro_pessoa, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_primeira_pessoa_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '04'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_ultima_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastral,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS id_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,2))  AS STRING)
    END AS id_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,70))  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,11))  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,34))  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,1))  AS STRING)
    END AS id_sexo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,176,8)))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,184,2))  AS STRING)
    END AS id_parentesco_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,186,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,186,1))  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,187,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,187,70))  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,257,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,257,1))  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,258,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,258,70))  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,329,1))  AS STRING)
    END AS id_local_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,330,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,330,2))  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,332,1))  AS STRING)
    END AS sabe_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,333,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,333,35))  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,7))  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,375,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,375,1))  AS STRING)
    END AS sabe_id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,376,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,376,40))  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,418,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,418,1))  AS STRING)
    END AS sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,419,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,419,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,433,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,433,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,1))  AS STRING)
    END AS foi_transferido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,445,60), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,445,60))  AS STRING)
    END AS origem_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,505,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,505,13))  AS STRING)
    END AS id_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,518,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,518,13))  AS STRING)
    END AS id_original_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,531,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,531,11))  AS STRING)
    END AS nis_original,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,542,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,542,4))  AS STRING)
    END AS id_pais_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,546,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,546,2))  AS STRING)
    END AS origem_cadastro_pessoa,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_primeira_pessoa_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '04'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_ultima_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastral,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS id_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,2))  AS STRING)
    END AS id_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,70))  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,11))  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,34))  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,1))  AS STRING)
    END AS id_sexo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,176,8)))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,184,2))  AS STRING)
    END AS id_parentesco_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,186,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,186,1))  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,187,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,187,70))  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,257,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,257,1))  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,258,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,258,70))  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,329,1))  AS STRING)
    END AS id_local_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,330,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,330,2))  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,332,1))  AS STRING)
    END AS sabe_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,333,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,333,35))  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,7))  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,375,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,375,1))  AS STRING)
    END AS sabe_id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,376,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,376,40))  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,418,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,418,1))  AS STRING)
    END AS sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,419,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,419,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,433,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,433,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,1))  AS STRING)
    END AS foi_transferido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,445,60), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,445,60))  AS STRING)
    END AS origem_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,505,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,505,13))  AS STRING)
    END AS id_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,518,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,518,13))  AS STRING)
    END AS id_original_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,531,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,531,11))  AS STRING)
    END AS nis_original,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,542,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,542,4))  AS STRING)
    END AS id_pais_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,546,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,546,2))  AS STRING)
    END AS origem_cadastro_pessoa,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_primeira_pessoa_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '04'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_ultima_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastral,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS id_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,2))  AS STRING)
    END AS id_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,70))  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,11))  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,34))  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,1))  AS STRING)
    END AS id_sexo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,176,8)))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,184,2))  AS STRING)
    END AS id_parentesco_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,186,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,186,1))  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,187,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,187,70))  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,257,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,257,1))  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,258,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,258,70))  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,329,1))  AS STRING)
    END AS id_local_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,330,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,330,2))  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,332,1))  AS STRING)
    END AS sabe_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,333,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,333,35))  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,7))  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,375,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,375,1))  AS STRING)
    END AS sabe_id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,376,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,376,40))  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,418,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,418,1))  AS STRING)
    END AS sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,419,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,419,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,433,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,433,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,1))  AS STRING)
    END AS foi_transferido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,445,60), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,445,60))  AS STRING)
    END AS origem_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,505,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,505,13))  AS STRING)
    END AS id_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,518,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,518,13))  AS STRING)
    END AS id_original_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,531,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,531,11))  AS STRING)
    END AS nis_original,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,542,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,542,4))  AS STRING)
    END AS id_pais_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,546,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,546,2))  AS STRING)
    END AS origem_cadastro_pessoa,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_primeira_pessoa_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '04'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_ultima_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastral,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS id_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,2))  AS STRING)
    END AS id_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,70))  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,11))  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,34))  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,1))  AS STRING)
    END AS id_sexo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,176,8)))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,184,2))  AS STRING)
    END AS id_parentesco_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,186,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,186,1))  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,187,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,187,70))  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,257,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,257,1))  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,258,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,258,70))  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,329,1))  AS STRING)
    END AS id_local_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,330,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,330,2))  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,332,1))  AS STRING)
    END AS sabe_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,333,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,333,35))  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,7))  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,375,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,375,1))  AS STRING)
    END AS sabe_id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,376,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,376,40))  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,418,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,418,1))  AS STRING)
    END AS sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,419,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,419,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,433,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,433,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,1))  AS STRING)
    END AS foi_transferido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,445,60), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,445,60))  AS STRING)
    END AS origem_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,505,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,505,13))  AS STRING)
    END AS id_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,518,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,518,13))  AS STRING)
    END AS id_original_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,531,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,531,11))  AS STRING)
    END AS nis_original,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,542,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,542,4))  AS STRING)
    END AS id_pais_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,546,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,546,2))  AS STRING)
    END AS origem_cadastro_pessoa,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_primeira_pessoa_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '04'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_ultima_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastral,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS id_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,2))  AS STRING)
    END AS id_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,70))  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,11))  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,34))  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,1))  AS STRING)
    END AS id_sexo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,176,8)))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,184,2))  AS STRING)
    END AS id_parentesco_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,186,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,186,1))  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,187,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,187,70))  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,257,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,257,1))  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,258,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,258,70))  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,329,1))  AS STRING)
    END AS id_local_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,330,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,330,2))  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,332,1))  AS STRING)
    END AS sabe_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,333,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,333,35))  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,7))  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,375,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,375,1))  AS STRING)
    END AS sabe_id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,376,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,376,40))  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,418,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,418,1))  AS STRING)
    END AS sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,419,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,419,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,433,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,433,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,1))  AS STRING)
    END AS foi_transferido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,445,60), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,445,60))  AS STRING)
    END AS origem_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,505,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,505,13))  AS STRING)
    END AS id_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,518,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,518,13))  AS STRING)
    END AS id_original_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,531,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,531,11))  AS STRING)
    END AS nis_original,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,542,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,542,4))  AS STRING)
    END AS id_pais_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,546,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,546,2))  AS STRING)
    END AS origem_cadastro_pessoa,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_primeira_pessoa_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '04'
