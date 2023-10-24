
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_catrastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS cadastro_valido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS id_condicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,9)) AS INT64)
    END AS valor_renda_media,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,2))  AS STRING)
    END AS id_uf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,5))  AS STRING)
    END AS id_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,2))  AS STRING)
    END AS id_distrito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,2))  AS STRING)
    END AS id_subdistrito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,4))  AS STRING)
    END AS id_setor_censitario,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS id_modalidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS id_forma_coleta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS formulario_0,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS formulario_1,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS formulario_2,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS formulario_suplementar_2,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,91,8)))  AS DATE)
    END AS data_entrevista,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,76))  AS STRING)
    END AS localidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,38))  AS STRING)
    END AS tipo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,213,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,213,38))  AS STRING)
    END AS titulo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,76))  AS STRING)
    END AS logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,327,16), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,327,16)) AS INT64)
    END AS numero_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,22), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,22))  AS STRING)
    END AS complemento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,365,75), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,365,75))  AS STRING)
    END AS complemento_adicional,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,440,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,440,8))  AS STRING)
    END AS cep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,448,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,448,38))  AS STRING)
    END AS filler,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,486,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,486,256))  AS STRING)
    END AS refencia_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,742,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,742,70))  AS STRING)
    END AS entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,812,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,812,11))  AS STRING)
    END AS cpf_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,823,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,823,256))  AS STRING)
    END AS observacoes_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1079,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1079,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1092,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1092,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1103,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1103,8)))  AS DATE)
    END AS data_limite_catastro_atual,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1111,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1111,1))  AS STRING)
    END AS alterada_v7,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1112,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1112,8)))  AS DATE)
    END AS data_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1120,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1120,10))  AS STRING)
    END AS id_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1130,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1130,100))  AS STRING)
    END AS unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1230,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1230,1))  AS STRING)
    END AS formulario_suplementar_3,
    NULL AS origem_cadastro, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_familia, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_controle_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '01'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_catrastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS cadastro_valido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS id_condicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,9)) AS INT64)
    END AS valor_renda_media,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,2))  AS STRING)
    END AS id_uf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,5))  AS STRING)
    END AS id_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,2))  AS STRING)
    END AS id_distrito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,2))  AS STRING)
    END AS id_subdistrito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,4))  AS STRING)
    END AS id_setor_censitario,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS id_modalidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS id_forma_coleta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS formulario_0,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS formulario_1,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS formulario_2,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS formulario_suplementar_2,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,91,8)))  AS DATE)
    END AS data_entrevista,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,76))  AS STRING)
    END AS localidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,38))  AS STRING)
    END AS tipo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,213,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,213,38))  AS STRING)
    END AS titulo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,76))  AS STRING)
    END AS logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,327,16), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,327,16)) AS INT64)
    END AS numero_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,22), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,22))  AS STRING)
    END AS complemento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,365,75), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,365,75))  AS STRING)
    END AS complemento_adicional,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,440,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,440,8))  AS STRING)
    END AS cep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,448,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,448,38))  AS STRING)
    END AS filler,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,486,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,486,256))  AS STRING)
    END AS refencia_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,742,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,742,70))  AS STRING)
    END AS entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,812,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,812,11))  AS STRING)
    END AS cpf_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,823,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,823,256))  AS STRING)
    END AS observacoes_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1079,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1079,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1092,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1092,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1103,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1103,8)))  AS DATE)
    END AS data_limite_catastro_atual,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1111,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1111,1))  AS STRING)
    END AS alterada_v7,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1112,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1112,8)))  AS DATE)
    END AS data_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1120,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1120,10))  AS STRING)
    END AS id_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1130,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1130,100))  AS STRING)
    END AS unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1230,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1230,1))  AS STRING)
    END AS formulario_suplementar_3,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1231,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1231,2))  AS STRING)
    END AS origem_cadastro,
    NULL AS data_integracao_familia, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_controle_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '01'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_catrastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS cadastro_valido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS id_condicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,9)) AS INT64)
    END AS valor_renda_media,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,2))  AS STRING)
    END AS id_uf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,5))  AS STRING)
    END AS id_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,2))  AS STRING)
    END AS id_distrito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,2))  AS STRING)
    END AS id_subdistrito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,4))  AS STRING)
    END AS id_setor_censitario,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS id_modalidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS id_forma_coleta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS formulario_0,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS formulario_1,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS formulario_2,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS formulario_suplementar_2,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,91,8)))  AS DATE)
    END AS data_entrevista,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,76))  AS STRING)
    END AS localidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,38))  AS STRING)
    END AS tipo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,213,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,213,38))  AS STRING)
    END AS titulo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,76))  AS STRING)
    END AS logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,327,16), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,327,16)) AS INT64)
    END AS numero_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,22), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,22))  AS STRING)
    END AS complemento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,365,75), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,365,75))  AS STRING)
    END AS complemento_adicional,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,440,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,440,8))  AS STRING)
    END AS cep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,448,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,448,38))  AS STRING)
    END AS filler,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,486,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,486,256))  AS STRING)
    END AS refencia_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,742,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,742,70))  AS STRING)
    END AS entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,812,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,812,11))  AS STRING)
    END AS cpf_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,823,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,823,256))  AS STRING)
    END AS observacoes_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1079,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1079,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1092,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1092,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1103,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1103,8)))  AS DATE)
    END AS data_limite_catastro_atual,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1111,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1111,1))  AS STRING)
    END AS alterada_v7,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1112,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1112,8)))  AS DATE)
    END AS data_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1120,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1120,10))  AS STRING)
    END AS id_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1130,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1130,100))  AS STRING)
    END AS unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1230,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1230,1))  AS STRING)
    END AS formulario_suplementar_3,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1231,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1231,2))  AS STRING)
    END AS origem_cadastro,
    NULL AS data_integracao_familia, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_controle_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '01'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_catrastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS cadastro_valido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS id_condicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,9)) AS INT64)
    END AS valor_renda_media,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,2))  AS STRING)
    END AS id_uf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,5))  AS STRING)
    END AS id_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,2))  AS STRING)
    END AS id_distrito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,2))  AS STRING)
    END AS id_subdistrito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,4))  AS STRING)
    END AS id_setor_censitario,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS id_modalidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS id_forma_coleta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS formulario_0,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS formulario_1,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS formulario_2,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS formulario_suplementar_2,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,91,8)))  AS DATE)
    END AS data_entrevista,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,76))  AS STRING)
    END AS localidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,38))  AS STRING)
    END AS tipo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,213,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,213,38))  AS STRING)
    END AS titulo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,76))  AS STRING)
    END AS logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,327,16), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,327,16)) AS INT64)
    END AS numero_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,22), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,22))  AS STRING)
    END AS complemento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,365,75), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,365,75))  AS STRING)
    END AS complemento_adicional,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,440,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,440,8))  AS STRING)
    END AS cep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,448,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,448,38))  AS STRING)
    END AS filler,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,486,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,486,256))  AS STRING)
    END AS refencia_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,742,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,742,70))  AS STRING)
    END AS entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,812,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,812,11))  AS STRING)
    END AS cpf_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,823,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,823,256))  AS STRING)
    END AS observacoes_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1079,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1079,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1092,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1092,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1103,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1103,8)))  AS DATE)
    END AS data_limite_catastro_atual,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1111,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1111,1))  AS STRING)
    END AS alterada_v7,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1112,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1112,8)))  AS DATE)
    END AS data_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1120,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1120,10))  AS STRING)
    END AS id_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1130,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1130,100))  AS STRING)
    END AS unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1230,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1230,1))  AS STRING)
    END AS formulario_suplementar_3,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1231,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1231,2))  AS STRING)
    END AS origem_cadastro,
    NULL AS data_integracao_familia, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_controle_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '01'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_catrastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS cadastro_valido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS id_condicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,9)) AS INT64)
    END AS valor_renda_media,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,2))  AS STRING)
    END AS id_uf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,5))  AS STRING)
    END AS id_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,2))  AS STRING)
    END AS id_distrito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,2))  AS STRING)
    END AS id_subdistrito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,4))  AS STRING)
    END AS id_setor_censitario,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS id_modalidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS id_forma_coleta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS formulario_0,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS formulario_1,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS formulario_2,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS formulario_suplementar_2,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,91,8)))  AS DATE)
    END AS data_entrevista,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,76))  AS STRING)
    END AS localidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,38))  AS STRING)
    END AS tipo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,213,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,213,38))  AS STRING)
    END AS titulo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,76))  AS STRING)
    END AS logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,327,16), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,327,16)) AS INT64)
    END AS numero_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,22), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,22))  AS STRING)
    END AS complemento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,365,75), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,365,75))  AS STRING)
    END AS complemento_adicional,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,440,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,440,8))  AS STRING)
    END AS cep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,448,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,448,38))  AS STRING)
    END AS filler,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,486,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,486,256))  AS STRING)
    END AS refencia_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,742,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,742,70))  AS STRING)
    END AS entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,812,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,812,11))  AS STRING)
    END AS cpf_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,823,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,823,256))  AS STRING)
    END AS observacoes_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1079,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1079,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1092,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1092,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1103,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1103,8)))  AS DATE)
    END AS data_limite_catastro_atual,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1111,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1111,1))  AS STRING)
    END AS alterada_v7,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1112,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1112,8)))  AS DATE)
    END AS data_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1120,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1120,10))  AS STRING)
    END AS id_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1130,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1130,100))  AS STRING)
    END AS unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1230,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1230,1))  AS STRING)
    END AS formulario_suplementar_3,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1231,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1231,2))  AS STRING)
    END AS origem_cadastro,
    NULL AS data_integracao_familia, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_controle_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '01'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_catrastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS cadastro_valido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS id_condicao_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,9), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,9)) AS INT64)
    END AS valor_renda_media,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,2))  AS STRING)
    END AS id_uf,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,5))  AS STRING)
    END AS id_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,2))  AS STRING)
    END AS id_distrito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,2))  AS STRING)
    END AS id_subdistrito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,4))  AS STRING)
    END AS id_setor_censitario,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS id_modalidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS id_forma_coleta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS formulario_0,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS formulario_1,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS formulario_2,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS formulario_suplementar_2,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,91,8)))  AS DATE)
    END AS data_entrevista,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,76))  AS STRING)
    END AS localidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,38))  AS STRING)
    END AS tipo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,213,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,213,38))  AS STRING)
    END AS titulo_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,251,76), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,251,76))  AS STRING)
    END AS logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,327,16), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,327,16)) AS INT64)
    END AS numero_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,22), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,22))  AS STRING)
    END AS complemento,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,365,75), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,365,75))  AS STRING)
    END AS complemento_adicional,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,440,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,440,8))  AS STRING)
    END AS cep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,448,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,448,38))  AS STRING)
    END AS filler,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,486,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,486,256))  AS STRING)
    END AS refencia_logradouro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,742,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,742,70))  AS STRING)
    END AS entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,812,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,812,11))  AS STRING)
    END AS cpf_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,823,256), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,823,256))  AS STRING)
    END AS observacoes_entrevistador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1079,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1079,13))  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1092,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1092,11))  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1103,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1103,8)))  AS DATE)
    END AS data_limite_catastro_atual,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1111,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1111,1))  AS STRING)
    END AS alterada_v7,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1112,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1112,8)))  AS DATE)
    END AS data_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1120,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1120,10))  AS STRING)
    END AS id_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1130,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1130,100))  AS STRING)
    END AS unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1230,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1230,1))  AS STRING)
    END AS formulario_suplementar_3,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1231,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1231,2))  AS STRING)
    END AS origem_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1233,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,1233,8)))  AS DATE)
    END AS data_integracao_familia,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.identificacao_controle_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '01'
