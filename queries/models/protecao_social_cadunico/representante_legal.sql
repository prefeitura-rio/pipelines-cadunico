
SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_interno_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,118,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,118,11))  AS STRING)
    END AS nis_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,129,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,129,1))  AS STRING)
    END AS id_sexo_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,130,8)))  AS DATE)
    END AS data_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,138,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,138,70))  AS STRING)
    END AS mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,208,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,208,1))  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,209,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,209,70))  AS STRING)
    END AS pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,279,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,279,1))  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,280,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,280,7))  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,35))  AS STRING)
    END AS municipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,322,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,322,2))  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,324,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,324,4))  AS STRING)
    END AS id_pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,40))  AS STRING)
    END AS pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,11))  AS STRING)
    END AS cpf_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,379,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,379,1))  AS STRING)
    END AS obito_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,380,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,380,1))  AS STRING)
    END AS obito_acatado_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,381,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,381,3))  AS STRING)
    END AS contato_ddd_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,384,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,384,10))  AS STRING)
    END AS contato_telefone_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,394,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,394,3))  AS STRING)
    END AS contato_ddd_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,397,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,397,10))  AS STRING)
    END AS contato_telefone_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,50))  AS STRING)
    END AS email_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,457,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,457,100))  AS STRING)
    END AS tipo_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,557,250), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,557,250))  AS STRING)
    END AS descricao_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,807,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,807,13))  AS STRING)
    END AS id_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,820,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,820,38))  AS STRING)
    END AS tipo_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,858,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,858,50))  AS STRING)
    END AS logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,908,15), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,908,15)) AS INT64)
    END AS numero_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,923,53), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,923,53))  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,976,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,976,8))  AS STRING)
    END AS cep_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,984,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,984,40))  AS STRING)
    END AS bairro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1024,9), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1024,9))  AS STRING)
    END AS id_municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1033,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1033,35))  AS STRING)
    END AS municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1068,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1068,2))  AS STRING)
    END AS sigla_uf_representante_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.representante_legal_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '20'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_interno_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,118,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,118,11))  AS STRING)
    END AS nis_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,129,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,129,1))  AS STRING)
    END AS id_sexo_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,130,8)))  AS DATE)
    END AS data_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,138,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,138,70))  AS STRING)
    END AS mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,208,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,208,1))  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,209,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,209,70))  AS STRING)
    END AS pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,279,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,279,1))  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,280,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,280,7))  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,35))  AS STRING)
    END AS municipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,322,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,322,2))  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,324,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,324,4))  AS STRING)
    END AS id_pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,40))  AS STRING)
    END AS pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,11))  AS STRING)
    END AS cpf_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,379,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,379,1))  AS STRING)
    END AS obito_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,380,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,380,1))  AS STRING)
    END AS obito_acatado_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,381,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,381,3))  AS STRING)
    END AS contato_ddd_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,384,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,384,10))  AS STRING)
    END AS contato_telefone_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,394,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,394,3))  AS STRING)
    END AS contato_ddd_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,397,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,397,10))  AS STRING)
    END AS contato_telefone_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,50))  AS STRING)
    END AS email_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,457,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,457,100))  AS STRING)
    END AS tipo_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,557,250), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,557,250))  AS STRING)
    END AS descricao_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,807,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,807,13))  AS STRING)
    END AS id_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,820,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,820,38))  AS STRING)
    END AS tipo_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,858,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,858,50))  AS STRING)
    END AS logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,908,15), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,908,15)) AS INT64)
    END AS numero_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,923,53), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,923,53))  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,976,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,976,8))  AS STRING)
    END AS cep_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,984,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,984,40))  AS STRING)
    END AS bairro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1024,9), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1024,9))  AS STRING)
    END AS id_municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1033,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1033,35))  AS STRING)
    END AS municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1068,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1068,2))  AS STRING)
    END AS sigla_uf_representante_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.representante_legal_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '20'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_interno_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,118,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,118,11))  AS STRING)
    END AS nis_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,129,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,129,1))  AS STRING)
    END AS id_sexo_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,130,8)))  AS DATE)
    END AS data_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,138,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,138,70))  AS STRING)
    END AS mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,208,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,208,1))  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,209,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,209,70))  AS STRING)
    END AS pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,279,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,279,1))  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,280,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,280,7))  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,35))  AS STRING)
    END AS municipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,322,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,322,2))  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,324,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,324,4))  AS STRING)
    END AS id_pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,40))  AS STRING)
    END AS pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,11))  AS STRING)
    END AS cpf_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,379,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,379,1))  AS STRING)
    END AS obito_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,380,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,380,1))  AS STRING)
    END AS obito_acatado_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,381,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,381,3))  AS STRING)
    END AS contato_ddd_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,384,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,384,10))  AS STRING)
    END AS contato_telefone_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,394,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,394,3))  AS STRING)
    END AS contato_ddd_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,397,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,397,10))  AS STRING)
    END AS contato_telefone_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,50))  AS STRING)
    END AS email_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,457,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,457,100))  AS STRING)
    END AS tipo_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,557,250), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,557,250))  AS STRING)
    END AS descricao_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,807,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,807,13))  AS STRING)
    END AS id_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,820,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,820,38))  AS STRING)
    END AS tipo_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,858,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,858,50))  AS STRING)
    END AS logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,908,15), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,908,15)) AS INT64)
    END AS numero_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,923,53), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,923,53))  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,976,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,976,8))  AS STRING)
    END AS cep_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,984,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,984,40))  AS STRING)
    END AS bairro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1024,9), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1024,9))  AS STRING)
    END AS id_municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1033,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1033,35))  AS STRING)
    END AS municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1068,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1068,2))  AS STRING)
    END AS sigla_uf_representante_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.representante_legal_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '20'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_interno_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,118,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,118,11))  AS STRING)
    END AS nis_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,129,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,129,1))  AS STRING)
    END AS id_sexo_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,130,8)))  AS DATE)
    END AS data_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,138,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,138,70))  AS STRING)
    END AS mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,208,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,208,1))  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,209,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,209,70))  AS STRING)
    END AS pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,279,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,279,1))  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,280,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,280,7))  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,35))  AS STRING)
    END AS municipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,322,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,322,2))  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,324,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,324,4))  AS STRING)
    END AS id_pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,40))  AS STRING)
    END AS pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,11))  AS STRING)
    END AS cpf_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,379,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,379,1))  AS STRING)
    END AS obito_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,380,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,380,1))  AS STRING)
    END AS obito_acatado_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,381,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,381,3))  AS STRING)
    END AS contato_ddd_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,384,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,384,10))  AS STRING)
    END AS contato_telefone_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,394,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,394,3))  AS STRING)
    END AS contato_ddd_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,397,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,397,10))  AS STRING)
    END AS contato_telefone_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,50))  AS STRING)
    END AS email_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,457,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,457,100))  AS STRING)
    END AS tipo_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,557,250), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,557,250))  AS STRING)
    END AS descricao_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,807,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,807,13))  AS STRING)
    END AS id_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,820,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,820,38))  AS STRING)
    END AS tipo_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,858,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,858,50))  AS STRING)
    END AS logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,908,15), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,908,15)) AS INT64)
    END AS numero_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,923,53), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,923,53))  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,976,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,976,8))  AS STRING)
    END AS cep_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,984,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,984,40))  AS STRING)
    END AS bairro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1024,9), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1024,9))  AS STRING)
    END AS id_municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1033,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1033,35))  AS STRING)
    END AS municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1068,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1068,2))  AS STRING)
    END AS sigla_uf_representante_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.representante_legal_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '20'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_interno_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,118,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,118,11))  AS STRING)
    END AS nis_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,129,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,129,1))  AS STRING)
    END AS id_sexo_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,130,8)))  AS DATE)
    END AS data_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,138,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,138,70))  AS STRING)
    END AS mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,208,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,208,1))  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,209,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,209,70))  AS STRING)
    END AS pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,279,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,279,1))  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,280,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,280,7))  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,35))  AS STRING)
    END AS municipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,322,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,322,2))  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,324,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,324,4))  AS STRING)
    END AS id_pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,40))  AS STRING)
    END AS pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,11))  AS STRING)
    END AS cpf_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,379,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,379,1))  AS STRING)
    END AS obito_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,380,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,380,1))  AS STRING)
    END AS obito_acatado_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,381,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,381,3))  AS STRING)
    END AS contato_ddd_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,384,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,384,10))  AS STRING)
    END AS contato_telefone_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,394,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,394,3))  AS STRING)
    END AS contato_ddd_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,397,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,397,10))  AS STRING)
    END AS contato_telefone_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,50))  AS STRING)
    END AS email_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,457,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,457,100))  AS STRING)
    END AS tipo_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,557,250), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,557,250))  AS STRING)
    END AS descricao_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,807,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,807,13))  AS STRING)
    END AS id_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,820,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,820,38))  AS STRING)
    END AS tipo_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,858,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,858,50))  AS STRING)
    END AS logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,908,15), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,908,15)) AS INT64)
    END AS numero_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,923,53), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,923,53))  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,976,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,976,8))  AS STRING)
    END AS cep_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,984,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,984,40))  AS STRING)
    END AS bairro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1024,9), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1024,9))  AS STRING)
    END AS id_municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1033,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1033,35))  AS STRING)
    END AS municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1068,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1068,2))  AS STRING)
    END AS sigla_uf_representante_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.representante_legal_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '20'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_interno_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,118,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,118,11))  AS STRING)
    END AS nis_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,129,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,129,1))  AS STRING)
    END AS id_sexo_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,130,8)))  AS DATE)
    END AS data_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,138,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,138,70))  AS STRING)
    END AS mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,208,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,208,1))  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,209,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,209,70))  AS STRING)
    END AS pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,279,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,279,1))  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,280,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,280,7))  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,35))  AS STRING)
    END AS municipio_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,322,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,322,2))  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,324,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,324,4))  AS STRING)
    END AS id_pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,40))  AS STRING)
    END AS pais_nascimento_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,11))  AS STRING)
    END AS cpf_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,379,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,379,1))  AS STRING)
    END AS obito_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,380,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,380,1))  AS STRING)
    END AS obito_acatado_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,381,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,381,3))  AS STRING)
    END AS contato_ddd_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,384,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,384,10))  AS STRING)
    END AS contato_telefone_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,394,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,394,3))  AS STRING)
    END AS contato_ddd_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,397,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,397,10))  AS STRING)
    END AS contato_telefone_2_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,50))  AS STRING)
    END AS email_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,457,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,457,100))  AS STRING)
    END AS tipo_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,557,250), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,557,250))  AS STRING)
    END AS descricao_representacao_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,807,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,807,13))  AS STRING)
    END AS id_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,820,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,820,38))  AS STRING)
    END AS tipo_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,858,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,858,50))  AS STRING)
    END AS logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,908,15), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,908,15)) AS INT64)
    END AS numero_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,923,53), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,923,53))  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,976,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,976,8))  AS STRING)
    END AS cep_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,984,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,984,40))  AS STRING)
    END AS bairro_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1024,9), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1024,9))  AS STRING)
    END AS id_municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1033,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1033,35))  AS STRING)
    END AS municipio_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1068,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1068,2))  AS STRING)
    END AS sigla_uf_representante_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.representante_legal_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '20'
