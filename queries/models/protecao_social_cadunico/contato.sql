
SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_ddd_contato_1_fam)  AS STRING)
    END AS contato_ddd,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_tel_contato_1_fam)  AS STRING)
    END AS contato_telefone,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_contato_1_fam)  AS STRING)
    END AS contato_tipo,
    CASE
        WHEN REGEXP_CONTAINS(ic_envo_sms_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envo_sms_contato_1_fam)  AS STRING)
    END AS contato_envio_sms,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_ddd_contato_2_fam)  AS STRING)
    END AS contato_2_ddd,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_tel_contato_2_fam)  AS STRING)
    END AS contato_2_telefone,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_contato_2_fam)  AS STRING)
    END AS contato_2_tipo,
    CASE
        WHEN REGEXP_CONTAINS(ic_envo_sms_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envo_sms_contato_2_fam)  AS STRING)
    END AS contato_2_envio_sms,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_email_fam)  AS STRING)
    END AS email_tipo,
    CASE
        WHEN REGEXP_CONTAINS(email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(email_fam)  AS STRING)
    END AS email,
    CASE
        WHEN REGEXP_CONTAINS(ic_envio_email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envio_email_fam)  AS STRING)
    END AS autoriza_envio_email,
    NULL AS arquivos_carregados, --Essa coluna não esta na versao posterior
    NULL AS data_arquivos_carregados, --Essa coluna não esta na versao posterior
    NULL AS cpf_operador_responsavel, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.contato_0601`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_ddd_contato_1_fam)  AS STRING)
    END AS contato_ddd,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_tel_contato_1_fam)  AS STRING)
    END AS contato_telefone,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_contato_1_fam)  AS STRING)
    END AS contato_tipo,
    CASE
        WHEN REGEXP_CONTAINS(ic_envo_sms_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envo_sms_contato_1_fam)  AS STRING)
    END AS contato_envio_sms,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_ddd_contato_2_fam)  AS STRING)
    END AS contato_2_ddd,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_tel_contato_2_fam)  AS STRING)
    END AS contato_2_telefone,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_contato_2_fam)  AS STRING)
    END AS contato_2_tipo,
    CASE
        WHEN REGEXP_CONTAINS(ic_envo_sms_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envo_sms_contato_2_fam)  AS STRING)
    END AS contato_2_envio_sms,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_email_fam)  AS STRING)
    END AS email_tipo,
    CASE
        WHEN REGEXP_CONTAINS(email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(email_fam)  AS STRING)
    END AS email,
    CASE
        WHEN REGEXP_CONTAINS(ic_envio_email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envio_email_fam)  AS STRING)
    END AS autoriza_envio_email,
    NULL AS arquivos_carregados, --Essa coluna não esta na versao posterior
    NULL AS data_arquivos_carregados, --Essa coluna não esta na versao posterior
    NULL AS cpf_operador_responsavel, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.contato_0603`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_ddd_contato_1_fam)  AS STRING)
    END AS contato_ddd,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_tel_contato_1_fam)  AS STRING)
    END AS contato_telefone,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_contato_1_fam)  AS STRING)
    END AS contato_tipo,
    CASE
        WHEN REGEXP_CONTAINS(ic_envo_sms_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envo_sms_contato_1_fam)  AS STRING)
    END AS contato_envio_sms,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_ddd_contato_2_fam)  AS STRING)
    END AS contato_2_ddd,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_tel_contato_2_fam)  AS STRING)
    END AS contato_2_telefone,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_contato_2_fam)  AS STRING)
    END AS contato_2_tipo,
    CASE
        WHEN REGEXP_CONTAINS(ic_envo_sms_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envo_sms_contato_2_fam)  AS STRING)
    END AS contato_2_envio_sms,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_email_fam)  AS STRING)
    END AS email_tipo,
    CASE
        WHEN REGEXP_CONTAINS(email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(email_fam)  AS STRING)
    END AS email,
    CASE
        WHEN REGEXP_CONTAINS(ic_envio_email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envio_email_fam)  AS STRING)
    END AS autoriza_envio_email,
    NULL AS arquivos_carregados, --Essa coluna não esta na versao posterior
    NULL AS data_arquivos_carregados, --Essa coluna não esta na versao posterior
    NULL AS cpf_operador_responsavel, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.contato_0604`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_ddd_contato_1_fam)  AS STRING)
    END AS contato_ddd,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_tel_contato_1_fam)  AS STRING)
    END AS contato_telefone,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_contato_1_fam)  AS STRING)
    END AS contato_tipo,
    CASE
        WHEN REGEXP_CONTAINS(ic_envo_sms_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envo_sms_contato_1_fam)  AS STRING)
    END AS contato_envio_sms,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_ddd_contato_2_fam)  AS STRING)
    END AS contato_2_ddd,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_tel_contato_2_fam)  AS STRING)
    END AS contato_2_telefone,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_contato_2_fam)  AS STRING)
    END AS contato_2_tipo,
    CASE
        WHEN REGEXP_CONTAINS(ic_envo_sms_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envo_sms_contato_2_fam)  AS STRING)
    END AS contato_2_envio_sms,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_email_fam)  AS STRING)
    END AS email_tipo,
    CASE
        WHEN REGEXP_CONTAINS(email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(email_fam)  AS STRING)
    END AS email,
    CASE
        WHEN REGEXP_CONTAINS(ic_envio_email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envio_email_fam)  AS STRING)
    END AS autoriza_envio_email,
    NULL AS arquivos_carregados, --Essa coluna não esta na versao posterior
    NULL AS data_arquivos_carregados, --Essa coluna não esta na versao posterior
    NULL AS cpf_operador_responsavel, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.contato_0609`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_ddd_contato_1_fam)  AS STRING)
    END AS contato_ddd,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_tel_contato_1_fam)  AS STRING)
    END AS contato_telefone,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_contato_1_fam)  AS STRING)
    END AS contato_tipo,
    CASE
        WHEN REGEXP_CONTAINS(ic_envo_sms_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envo_sms_contato_1_fam)  AS STRING)
    END AS contato_envio_sms,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_ddd_contato_2_fam)  AS STRING)
    END AS contato_2_ddd,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_tel_contato_2_fam)  AS STRING)
    END AS contato_2_telefone,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_contato_2_fam)  AS STRING)
    END AS contato_2_tipo,
    CASE
        WHEN REGEXP_CONTAINS(ic_envo_sms_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envo_sms_contato_2_fam)  AS STRING)
    END AS contato_2_envio_sms,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_email_fam)  AS STRING)
    END AS email_tipo,
    CASE
        WHEN REGEXP_CONTAINS(email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(email_fam)  AS STRING)
    END AS email,
    CASE
        WHEN REGEXP_CONTAINS(ic_envio_email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envio_email_fam)  AS STRING)
    END AS autoriza_envio_email,
    CASE
        WHEN REGEXP_CONTAINS(ic_arquivos_carregados, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_arquivos_carregados)  AS STRING)
    END AS arquivos_carregados,
    CASE
        WHEN REGEXP_CONTAINS(data_arquivos_carregados, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(data_arquivos_carregados))  AS DATE)
    END AS data_arquivos_carregados,
    CASE
        WHEN REGEXP_CONTAINS(cpf_operador_responsavel, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cpf_operador_responsavel)  AS STRING)
    END AS cpf_operador_responsavel,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.contato_0612`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_ddd_contato_1_fam)  AS STRING)
    END AS contato_ddd,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_tel_contato_1_fam)  AS STRING)
    END AS contato_telefone,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_contato_1_fam)  AS STRING)
    END AS contato_tipo,
    CASE
        WHEN REGEXP_CONTAINS(ic_envo_sms_contato_1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envo_sms_contato_1_fam)  AS STRING)
    END AS contato_envio_sms,
    CASE
        WHEN REGEXP_CONTAINS(num_ddd_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_ddd_contato_2_fam)  AS STRING)
    END AS contato_2_ddd,
    CASE
        WHEN REGEXP_CONTAINS(num_tel_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_tel_contato_2_fam)  AS STRING)
    END AS contato_2_telefone,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_contato_2_fam)  AS STRING)
    END AS contato_2_tipo,
    CASE
        WHEN REGEXP_CONTAINS(ic_envo_sms_contato_2_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envo_sms_contato_2_fam)  AS STRING)
    END AS contato_2_envio_sms,
    CASE
        WHEN REGEXP_CONTAINS(ic_tipo_email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_tipo_email_fam)  AS STRING)
    END AS email_tipo,
    CASE
        WHEN REGEXP_CONTAINS(email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(email_fam)  AS STRING)
    END AS email,
    CASE
        WHEN REGEXP_CONTAINS(ic_envio_email_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_envio_email_fam)  AS STRING)
    END AS autoriza_envio_email,
    CASE
        WHEN REGEXP_CONTAINS(ic_arquivos_carregados, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ic_arquivos_carregados)  AS STRING)
    END AS arquivos_carregados,
    CASE
        WHEN REGEXP_CONTAINS(data_arquivos_carregados, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(data_arquivos_carregados))  AS DATE)
    END AS data_arquivos_carregados,
    CASE
        WHEN REGEXP_CONTAINS(cpf_operador_responsavel, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cpf_operador_responsavel)  AS STRING)
    END AS cpf_operador_responsavel,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.contato_0615`

