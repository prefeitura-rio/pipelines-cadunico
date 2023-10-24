
{{
    config(
        materialized="table",
        partition_by={
            "field": "data_particao",
            "data_type": "date",
            "granularity": "month",
        }
    )
}}


SELECT

    --column: chv_natural_prefeitura_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_representante_legal,

    --column: chv_natural_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,807,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,807,13))  AS STRING)
    END AS id_representante_legal,

    --column: cod_familiar_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_representante_legal,

    --column: cod_ibge_municipio_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,280,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,280,7))  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,

    --column: cod_pais_nasicmento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,324,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,324,4))  AS STRING)
    END AS id_pais_nascimento_representante_legal,

    --column: cod_sexo_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,129,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,129,1))  AS STRING)
    END AS id_sexo_representante_legal,

    --column: desc_complemento_lograd_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,923,53), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,923,53))  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,

    --column: desc_representacao_legal
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,557,250), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,557,250))  AS STRING)
    END AS descricao_representacao_legal,

    --column: dta_cadastramento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro_representante_legal,

    --column: dta_nasc_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,130,8)))  AS DATE)
    END AS data_nascimento_representante_legal,

    --column: email_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,50))  AS STRING)
    END AS email_representante_legal,

    --column: ic_obito_acatado_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,380,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,380,1))  AS STRING)
    END AS obito_acatado_representante_legal,

    --column: ic_obito_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,379,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,379,1))  AS STRING)
    END AS obito_representante_legal,

    --column: ind_nom_completo_mae_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,208,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,208,1))  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,

    --column: ind_nom_completo_pai_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,279,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,279,1))  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,

    --column: nom_completo_mae_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,138,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,138,70))  AS STRING)
    END AS mae_representante_legal,

    --column: nom_completo_pai_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,209,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,209,70))  AS STRING)
    END AS pai_representante_legal,

    --column: nom_pessoa_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS representante_legal,

    --column: nome_bairro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,984,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,984,40))  AS STRING)
    END AS bairro_representante_legal,

    --column: nome_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,858,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,858,50))  AS STRING)
    END AS logradouro_representante_legal,

    --column: nome_municipio_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,35))  AS STRING)
    END AS municipio_nascimento_representante_legal,

    --column: nome_municipio_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1033,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1033,35))  AS STRING)
    END AS municipio_representante_legal,

    --column: nome_pais_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,40))  AS STRING)
    END AS pais_nascimento_representante_legal,

    --column: nome_tipo_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,820,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,820,38))  AS STRING)
    END AS tipo_logradouro_representante_legal,

    --column: num_cep_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,976,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,976,8))  AS STRING)
    END AS cep_representante_legal,

    --column: num_cpf_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,11))  AS STRING)
    END AS cpf_representante_legal,

    --column: num_ddd_contato_1_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,381,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,381,3))  AS STRING)
    END AS contato_ddd_representante_legal,

    --column: num_ddd_contato_2_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,394,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,394,3))  AS STRING)
    END AS contato_ddd_2_representante_legal,

    --column: num_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,908,15), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,908,15)) AS INT64)
    END AS numero_logradouro_representante_legal,

    --column: num_nis_pessoa_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,118,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,118,11))  AS STRING)
    END AS nis_representante_legal,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_rl_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_interno_representante_legal,

    --column: num_tel_contato_1_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,384,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,384,10))  AS STRING)
    END AS contato_telefone_representante_legal,

    --column: num_tel_contato_2_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,397,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,397,10))  AS STRING)
    END AS contato_telefone_2_representante_legal,

    --column: numero_municipio_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1024,9), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1024,9))  AS STRING)
    END AS id_municipio_representante_legal,

    --column: sigla_uf_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,322,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,322,2))  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,

    --column: sigla_uf_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1068,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1068,2))  AS STRING)
    END AS sigla_uf_representante_legal,

    --column: tipo_representacao_legal
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,457,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,457,100))  AS STRING)
    END AS tipo_representacao_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '20'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_representante_legal,

    --column: chv_natural_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,807,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,807,13))  AS STRING)
    END AS id_representante_legal,

    --column: cod_familiar_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_representante_legal,

    --column: cod_ibge_municipio_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,280,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,280,7))  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,

    --column: cod_pais_nasicmento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,324,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,324,4))  AS STRING)
    END AS id_pais_nascimento_representante_legal,

    --column: cod_sexo_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,129,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,129,1))  AS STRING)
    END AS id_sexo_representante_legal,

    --column: desc_complemento_lograd_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,923,53), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,923,53))  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,

    --column: desc_representacao_legal
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,557,250), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,557,250))  AS STRING)
    END AS descricao_representacao_legal,

    --column: dta_cadastramento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro_representante_legal,

    --column: dta_nasc_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,130,8)))  AS DATE)
    END AS data_nascimento_representante_legal,

    --column: email_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,50))  AS STRING)
    END AS email_representante_legal,

    --column: ic_obito_acatado_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,380,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,380,1))  AS STRING)
    END AS obito_acatado_representante_legal,

    --column: ic_obito_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,379,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,379,1))  AS STRING)
    END AS obito_representante_legal,

    --column: ind_nom_completo_mae_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,208,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,208,1))  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,

    --column: ind_nom_completo_pai_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,279,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,279,1))  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,

    --column: nom_completo_mae_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,138,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,138,70))  AS STRING)
    END AS mae_representante_legal,

    --column: nom_completo_pai_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,209,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,209,70))  AS STRING)
    END AS pai_representante_legal,

    --column: nom_pessoa_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS representante_legal,

    --column: nome_bairro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,984,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,984,40))  AS STRING)
    END AS bairro_representante_legal,

    --column: nome_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,858,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,858,50))  AS STRING)
    END AS logradouro_representante_legal,

    --column: nome_municipio_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,35))  AS STRING)
    END AS municipio_nascimento_representante_legal,

    --column: nome_municipio_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1033,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1033,35))  AS STRING)
    END AS municipio_representante_legal,

    --column: nome_pais_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,40))  AS STRING)
    END AS pais_nascimento_representante_legal,

    --column: nome_tipo_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,820,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,820,38))  AS STRING)
    END AS tipo_logradouro_representante_legal,

    --column: num_cep_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,976,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,976,8))  AS STRING)
    END AS cep_representante_legal,

    --column: num_cpf_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,11))  AS STRING)
    END AS cpf_representante_legal,

    --column: num_ddd_contato_1_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,381,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,381,3))  AS STRING)
    END AS contato_ddd_representante_legal,

    --column: num_ddd_contato_2_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,394,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,394,3))  AS STRING)
    END AS contato_ddd_2_representante_legal,

    --column: num_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,908,15), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,908,15)) AS INT64)
    END AS numero_logradouro_representante_legal,

    --column: num_nis_pessoa_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,118,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,118,11))  AS STRING)
    END AS nis_representante_legal,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_rl_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_interno_representante_legal,

    --column: num_tel_contato_1_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,384,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,384,10))  AS STRING)
    END AS contato_telefone_representante_legal,

    --column: num_tel_contato_2_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,397,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,397,10))  AS STRING)
    END AS contato_telefone_2_representante_legal,

    --column: numero_municipio_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1024,9), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1024,9))  AS STRING)
    END AS id_municipio_representante_legal,

    --column: sigla_uf_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,322,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,322,2))  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,

    --column: sigla_uf_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1068,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1068,2))  AS STRING)
    END AS sigla_uf_representante_legal,

    --column: tipo_representacao_legal
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,457,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,457,100))  AS STRING)
    END AS tipo_representacao_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '20'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_representante_legal,

    --column: chv_natural_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,807,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,807,13))  AS STRING)
    END AS id_representante_legal,

    --column: cod_familiar_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_representante_legal,

    --column: cod_ibge_municipio_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,280,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,280,7))  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,

    --column: cod_pais_nasicmento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,324,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,324,4))  AS STRING)
    END AS id_pais_nascimento_representante_legal,

    --column: cod_sexo_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,129,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,129,1))  AS STRING)
    END AS id_sexo_representante_legal,

    --column: desc_complemento_lograd_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,923,53), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,923,53))  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,

    --column: desc_representacao_legal
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,557,250), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,557,250))  AS STRING)
    END AS descricao_representacao_legal,

    --column: dta_cadastramento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro_representante_legal,

    --column: dta_nasc_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,130,8)))  AS DATE)
    END AS data_nascimento_representante_legal,

    --column: email_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,50))  AS STRING)
    END AS email_representante_legal,

    --column: ic_obito_acatado_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,380,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,380,1))  AS STRING)
    END AS obito_acatado_representante_legal,

    --column: ic_obito_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,379,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,379,1))  AS STRING)
    END AS obito_representante_legal,

    --column: ind_nom_completo_mae_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,208,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,208,1))  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,

    --column: ind_nom_completo_pai_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,279,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,279,1))  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,

    --column: nom_completo_mae_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,138,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,138,70))  AS STRING)
    END AS mae_representante_legal,

    --column: nom_completo_pai_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,209,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,209,70))  AS STRING)
    END AS pai_representante_legal,

    --column: nom_pessoa_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS representante_legal,

    --column: nome_bairro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,984,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,984,40))  AS STRING)
    END AS bairro_representante_legal,

    --column: nome_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,858,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,858,50))  AS STRING)
    END AS logradouro_representante_legal,

    --column: nome_municipio_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,35))  AS STRING)
    END AS municipio_nascimento_representante_legal,

    --column: nome_municipio_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1033,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1033,35))  AS STRING)
    END AS municipio_representante_legal,

    --column: nome_pais_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,40))  AS STRING)
    END AS pais_nascimento_representante_legal,

    --column: nome_tipo_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,820,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,820,38))  AS STRING)
    END AS tipo_logradouro_representante_legal,

    --column: num_cep_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,976,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,976,8))  AS STRING)
    END AS cep_representante_legal,

    --column: num_cpf_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,11))  AS STRING)
    END AS cpf_representante_legal,

    --column: num_ddd_contato_1_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,381,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,381,3))  AS STRING)
    END AS contato_ddd_representante_legal,

    --column: num_ddd_contato_2_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,394,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,394,3))  AS STRING)
    END AS contato_ddd_2_representante_legal,

    --column: num_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,908,15), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,908,15)) AS INT64)
    END AS numero_logradouro_representante_legal,

    --column: num_nis_pessoa_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,118,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,118,11))  AS STRING)
    END AS nis_representante_legal,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_rl_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_interno_representante_legal,

    --column: num_tel_contato_1_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,384,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,384,10))  AS STRING)
    END AS contato_telefone_representante_legal,

    --column: num_tel_contato_2_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,397,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,397,10))  AS STRING)
    END AS contato_telefone_2_representante_legal,

    --column: numero_municipio_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1024,9), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1024,9))  AS STRING)
    END AS id_municipio_representante_legal,

    --column: sigla_uf_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,322,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,322,2))  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,

    --column: sigla_uf_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1068,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1068,2))  AS STRING)
    END AS sigla_uf_representante_legal,

    --column: tipo_representacao_legal
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,457,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,457,100))  AS STRING)
    END AS tipo_representacao_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '20'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_representante_legal,

    --column: chv_natural_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,807,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,807,13))  AS STRING)
    END AS id_representante_legal,

    --column: cod_familiar_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_representante_legal,

    --column: cod_ibge_municipio_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,280,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,280,7))  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,

    --column: cod_pais_nasicmento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,324,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,324,4))  AS STRING)
    END AS id_pais_nascimento_representante_legal,

    --column: cod_sexo_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,129,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,129,1))  AS STRING)
    END AS id_sexo_representante_legal,

    --column: desc_complemento_lograd_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,923,53), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,923,53))  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,

    --column: desc_representacao_legal
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,557,250), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,557,250))  AS STRING)
    END AS descricao_representacao_legal,

    --column: dta_cadastramento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro_representante_legal,

    --column: dta_nasc_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,130,8)))  AS DATE)
    END AS data_nascimento_representante_legal,

    --column: email_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,50))  AS STRING)
    END AS email_representante_legal,

    --column: ic_obito_acatado_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,380,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,380,1))  AS STRING)
    END AS obito_acatado_representante_legal,

    --column: ic_obito_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,379,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,379,1))  AS STRING)
    END AS obito_representante_legal,

    --column: ind_nom_completo_mae_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,208,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,208,1))  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,

    --column: ind_nom_completo_pai_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,279,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,279,1))  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,

    --column: nom_completo_mae_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,138,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,138,70))  AS STRING)
    END AS mae_representante_legal,

    --column: nom_completo_pai_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,209,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,209,70))  AS STRING)
    END AS pai_representante_legal,

    --column: nom_pessoa_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS representante_legal,

    --column: nome_bairro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,984,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,984,40))  AS STRING)
    END AS bairro_representante_legal,

    --column: nome_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,858,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,858,50))  AS STRING)
    END AS logradouro_representante_legal,

    --column: nome_municipio_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,35))  AS STRING)
    END AS municipio_nascimento_representante_legal,

    --column: nome_municipio_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1033,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1033,35))  AS STRING)
    END AS municipio_representante_legal,

    --column: nome_pais_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,40))  AS STRING)
    END AS pais_nascimento_representante_legal,

    --column: nome_tipo_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,820,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,820,38))  AS STRING)
    END AS tipo_logradouro_representante_legal,

    --column: num_cep_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,976,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,976,8))  AS STRING)
    END AS cep_representante_legal,

    --column: num_cpf_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,11))  AS STRING)
    END AS cpf_representante_legal,

    --column: num_ddd_contato_1_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,381,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,381,3))  AS STRING)
    END AS contato_ddd_representante_legal,

    --column: num_ddd_contato_2_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,394,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,394,3))  AS STRING)
    END AS contato_ddd_2_representante_legal,

    --column: num_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,908,15), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,908,15)) AS INT64)
    END AS numero_logradouro_representante_legal,

    --column: num_nis_pessoa_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,118,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,118,11))  AS STRING)
    END AS nis_representante_legal,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_rl_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_interno_representante_legal,

    --column: num_tel_contato_1_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,384,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,384,10))  AS STRING)
    END AS contato_telefone_representante_legal,

    --column: num_tel_contato_2_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,397,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,397,10))  AS STRING)
    END AS contato_telefone_2_representante_legal,

    --column: numero_municipio_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1024,9), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1024,9))  AS STRING)
    END AS id_municipio_representante_legal,

    --column: sigla_uf_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,322,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,322,2))  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,

    --column: sigla_uf_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1068,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1068,2))  AS STRING)
    END AS sigla_uf_representante_legal,

    --column: tipo_representacao_legal
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,457,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,457,100))  AS STRING)
    END AS tipo_representacao_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '20'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_representante_legal,

    --column: chv_natural_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,807,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,807,13))  AS STRING)
    END AS id_representante_legal,

    --column: cod_familiar_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_representante_legal,

    --column: cod_ibge_municipio_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,280,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,280,7))  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,

    --column: cod_pais_nasicmento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,324,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,324,4))  AS STRING)
    END AS id_pais_nascimento_representante_legal,

    --column: cod_sexo_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,129,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,129,1))  AS STRING)
    END AS id_sexo_representante_legal,

    --column: desc_complemento_lograd_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,923,53), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,923,53))  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,

    --column: desc_representacao_legal
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,557,250), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,557,250))  AS STRING)
    END AS descricao_representacao_legal,

    --column: dta_cadastramento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro_representante_legal,

    --column: dta_nasc_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,130,8)))  AS DATE)
    END AS data_nascimento_representante_legal,

    --column: email_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,50))  AS STRING)
    END AS email_representante_legal,

    --column: ic_obito_acatado_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,380,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,380,1))  AS STRING)
    END AS obito_acatado_representante_legal,

    --column: ic_obito_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,379,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,379,1))  AS STRING)
    END AS obito_representante_legal,

    --column: ind_nom_completo_mae_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,208,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,208,1))  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,

    --column: ind_nom_completo_pai_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,279,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,279,1))  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,

    --column: nom_completo_mae_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,138,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,138,70))  AS STRING)
    END AS mae_representante_legal,

    --column: nom_completo_pai_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,209,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,209,70))  AS STRING)
    END AS pai_representante_legal,

    --column: nom_pessoa_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS representante_legal,

    --column: nome_bairro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,984,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,984,40))  AS STRING)
    END AS bairro_representante_legal,

    --column: nome_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,858,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,858,50))  AS STRING)
    END AS logradouro_representante_legal,

    --column: nome_municipio_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,35))  AS STRING)
    END AS municipio_nascimento_representante_legal,

    --column: nome_municipio_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1033,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1033,35))  AS STRING)
    END AS municipio_representante_legal,

    --column: nome_pais_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,40))  AS STRING)
    END AS pais_nascimento_representante_legal,

    --column: nome_tipo_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,820,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,820,38))  AS STRING)
    END AS tipo_logradouro_representante_legal,

    --column: num_cep_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,976,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,976,8))  AS STRING)
    END AS cep_representante_legal,

    --column: num_cpf_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,11))  AS STRING)
    END AS cpf_representante_legal,

    --column: num_ddd_contato_1_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,381,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,381,3))  AS STRING)
    END AS contato_ddd_representante_legal,

    --column: num_ddd_contato_2_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,394,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,394,3))  AS STRING)
    END AS contato_ddd_2_representante_legal,

    --column: num_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,908,15), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,908,15)) AS INT64)
    END AS numero_logradouro_representante_legal,

    --column: num_nis_pessoa_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,118,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,118,11))  AS STRING)
    END AS nis_representante_legal,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_rl_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_interno_representante_legal,

    --column: num_tel_contato_1_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,384,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,384,10))  AS STRING)
    END AS contato_telefone_representante_legal,

    --column: num_tel_contato_2_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,397,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,397,10))  AS STRING)
    END AS contato_telefone_2_representante_legal,

    --column: numero_municipio_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1024,9), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1024,9))  AS STRING)
    END AS id_municipio_representante_legal,

    --column: sigla_uf_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,322,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,322,2))  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,

    --column: sigla_uf_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1068,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1068,2))  AS STRING)
    END AS sigla_uf_representante_legal,

    --column: tipo_representacao_legal
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,457,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,457,100))  AS STRING)
    END AS tipo_representacao_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '20'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura_representante_legal,

    --column: chv_natural_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,807,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,807,13))  AS STRING)
    END AS id_representante_legal,

    --column: cod_familiar_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia_representante_legal,

    --column: cod_ibge_municipio_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,280,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,280,7))  AS STRING)
    END AS id_minicipio_nascimento_representante_legal,

    --column: cod_pais_nasicmento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,324,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,324,4))  AS STRING)
    END AS id_pais_nascimento_representante_legal,

    --column: cod_sexo_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,129,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,129,1))  AS STRING)
    END AS id_sexo_representante_legal,

    --column: desc_complemento_lograd_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,923,53), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,923,53))  AS STRING)
    END AS descricao_complemento_logradouro_representante_legal,

    --column: desc_representacao_legal
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,557,250), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,557,250))  AS STRING)
    END AS descricao_representacao_legal,

    --column: dta_cadastramento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro_representante_legal,

    --column: dta_nasc_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,130,8)))  AS DATE)
    END AS data_nascimento_representante_legal,

    --column: email_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,407,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,407,50))  AS STRING)
    END AS email_representante_legal,

    --column: ic_obito_acatado_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,380,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,380,1))  AS STRING)
    END AS obito_acatado_representante_legal,

    --column: ic_obito_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,379,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,379,1))  AS STRING)
    END AS obito_representante_legal,

    --column: ind_nom_completo_mae_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,208,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,208,1))  AS STRING)
    END AS nao_sabe_nome_mae_representante_legal,

    --column: ind_nom_completo_pai_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,279,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,279,1))  AS STRING)
    END AS nao_sabe_nome_pai_representante_legal,

    --column: nom_completo_mae_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,138,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,138,70))  AS STRING)
    END AS mae_representante_legal,

    --column: nom_completo_pai_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,209,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,209,70))  AS STRING)
    END AS pai_representante_legal,

    --column: nom_pessoa_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,70))  AS STRING)
    END AS representante_legal,

    --column: nome_bairro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,984,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,984,40))  AS STRING)
    END AS bairro_representante_legal,

    --column: nome_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,858,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,858,50))  AS STRING)
    END AS logradouro_representante_legal,

    --column: nome_municipio_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,287,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,287,35))  AS STRING)
    END AS municipio_nascimento_representante_legal,

    --column: nome_municipio_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1033,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1033,35))  AS STRING)
    END AS municipio_representante_legal,

    --column: nome_pais_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,40))  AS STRING)
    END AS pais_nascimento_representante_legal,

    --column: nome_tipo_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,820,38), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,820,38))  AS STRING)
    END AS tipo_logradouro_representante_legal,

    --column: num_cep_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,976,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,976,8))  AS STRING)
    END AS cep_representante_legal,

    --column: num_cpf_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,11))  AS STRING)
    END AS cpf_representante_legal,

    --column: num_ddd_contato_1_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,381,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,381,3))  AS STRING)
    END AS contato_ddd_representante_legal,

    --column: num_ddd_contato_2_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,394,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,394,3))  AS STRING)
    END AS contato_ddd_2_representante_legal,

    --column: num_logradouro_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,908,15), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,908,15)) AS INT64)
    END AS numero_logradouro_representante_legal,

    --column: num_nis_pessoa_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,118,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,118,11))  AS STRING)
    END AS nis_representante_legal,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_rl_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_interno_representante_legal,

    --column: num_tel_contato_1_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,384,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,384,10))  AS STRING)
    END AS contato_telefone_representante_legal,

    --column: num_tel_contato_2_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,397,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,397,10))  AS STRING)
    END AS contato_telefone_2_representante_legal,

    --column: numero_municipio_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1024,9), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1024,9))  AS STRING)
    END AS id_municipio_representante_legal,

    --column: sigla_uf_nascimento_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,322,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,322,2))  AS STRING)
    END AS sigla_uf_nascimento_representante_legal,

    --column: sigla_uf_rl
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1068,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1068,2))  AS STRING)
    END AS sigla_uf_representante_legal,

    --column: tipo_representacao_legal
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,457,100), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,457,100))  AS STRING)
    END AS tipo_representacao_legal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '20'

