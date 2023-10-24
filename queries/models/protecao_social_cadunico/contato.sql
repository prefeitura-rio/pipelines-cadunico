
SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cpf_operador_responsavel
    NULL AS cpf_operador_responsavel, --Essa coluna não esta na versao posterior

    --column: data_arquivos_carregados
    NULL AS data_arquivos_carregados, --Essa coluna não esta na versao posterior

    --column: email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,50))  AS STRING)
    END AS email,

    --column: ic_arquivos_carregados
    NULL AS arquivos_carregados, --Essa coluna não esta na versao posterior

    --column: ic_envio_email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,1))  AS STRING)
    END AS autoriza_envio_email,

    --column: ic_envo_sms_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS contato_envio_sms,

    --column: ic_envo_sms_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS contato_2_envio_sms,

    --column: ic_tipo_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS contato_tipo,

    --column: ic_tipo_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS contato_2_tipo,

    --column: ic_tipo_email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS email_tipo,

    --column: num_ddd_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS contato_ddd,

    --column: num_ddd_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,2))  AS STRING)
    END AS contato_2_ddd,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_tel_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,10))  AS STRING)
    END AS contato_telefone,

    --column: num_tel_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,10))  AS STRING)
    END AS contato_2_telefone,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '09'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cpf_operador_responsavel
    NULL AS cpf_operador_responsavel, --Essa coluna não esta na versao posterior

    --column: data_arquivos_carregados
    NULL AS data_arquivos_carregados, --Essa coluna não esta na versao posterior

    --column: email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,50))  AS STRING)
    END AS email,

    --column: ic_arquivos_carregados
    NULL AS arquivos_carregados, --Essa coluna não esta na versao posterior

    --column: ic_envio_email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,1))  AS STRING)
    END AS autoriza_envio_email,

    --column: ic_envo_sms_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS contato_envio_sms,

    --column: ic_envo_sms_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS contato_2_envio_sms,

    --column: ic_tipo_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS contato_tipo,

    --column: ic_tipo_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS contato_2_tipo,

    --column: ic_tipo_email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS email_tipo,

    --column: num_ddd_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS contato_ddd,

    --column: num_ddd_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,2))  AS STRING)
    END AS contato_2_ddd,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_tel_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,10))  AS STRING)
    END AS contato_telefone,

    --column: num_tel_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,10))  AS STRING)
    END AS contato_2_telefone,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '09'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cpf_operador_responsavel
    NULL AS cpf_operador_responsavel, --Essa coluna não esta na versao posterior

    --column: data_arquivos_carregados
    NULL AS data_arquivos_carregados, --Essa coluna não esta na versao posterior

    --column: email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,50))  AS STRING)
    END AS email,

    --column: ic_arquivos_carregados
    NULL AS arquivos_carregados, --Essa coluna não esta na versao posterior

    --column: ic_envio_email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,1))  AS STRING)
    END AS autoriza_envio_email,

    --column: ic_envo_sms_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS contato_envio_sms,

    --column: ic_envo_sms_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS contato_2_envio_sms,

    --column: ic_tipo_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS contato_tipo,

    --column: ic_tipo_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS contato_2_tipo,

    --column: ic_tipo_email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS email_tipo,

    --column: num_ddd_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS contato_ddd,

    --column: num_ddd_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,2))  AS STRING)
    END AS contato_2_ddd,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_tel_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,10))  AS STRING)
    END AS contato_telefone,

    --column: num_tel_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,10))  AS STRING)
    END AS contato_2_telefone,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '09'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cpf_operador_responsavel
    NULL AS cpf_operador_responsavel, --Essa coluna não esta na versao posterior

    --column: data_arquivos_carregados
    NULL AS data_arquivos_carregados, --Essa coluna não esta na versao posterior

    --column: email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,50))  AS STRING)
    END AS email,

    --column: ic_arquivos_carregados
    NULL AS arquivos_carregados, --Essa coluna não esta na versao posterior

    --column: ic_envio_email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,1))  AS STRING)
    END AS autoriza_envio_email,

    --column: ic_envo_sms_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS contato_envio_sms,

    --column: ic_envo_sms_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS contato_2_envio_sms,

    --column: ic_tipo_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS contato_tipo,

    --column: ic_tipo_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS contato_2_tipo,

    --column: ic_tipo_email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS email_tipo,

    --column: num_ddd_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS contato_ddd,

    --column: num_ddd_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,2))  AS STRING)
    END AS contato_2_ddd,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_tel_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,10))  AS STRING)
    END AS contato_telefone,

    --column: num_tel_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,10))  AS STRING)
    END AS contato_2_telefone,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '09'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cpf_operador_responsavel
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,129,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,129,11))  AS STRING)
    END AS cpf_operador_responsavel,

    --column: data_arquivos_carregados
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,121,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,121,8)))  AS DATE)
    END AS data_arquivos_carregados,

    --column: email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,50))  AS STRING)
    END AS email,

    --column: ic_arquivos_carregados
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,120,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,120,1))  AS STRING)
    END AS arquivos_carregados,

    --column: ic_envio_email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,1))  AS STRING)
    END AS autoriza_envio_email,

    --column: ic_envo_sms_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS contato_envio_sms,

    --column: ic_envo_sms_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS contato_2_envio_sms,

    --column: ic_tipo_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS contato_tipo,

    --column: ic_tipo_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS contato_2_tipo,

    --column: ic_tipo_email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS email_tipo,

    --column: num_ddd_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS contato_ddd,

    --column: num_ddd_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,2))  AS STRING)
    END AS contato_2_ddd,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_tel_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,10))  AS STRING)
    END AS contato_telefone,

    --column: num_tel_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,10))  AS STRING)
    END AS contato_2_telefone,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '09'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cpf_operador_responsavel
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,129,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,129,11))  AS STRING)
    END AS cpf_operador_responsavel,

    --column: data_arquivos_carregados
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,121,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,121,8)))  AS DATE)
    END AS data_arquivos_carregados,

    --column: email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,50), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,50))  AS STRING)
    END AS email,

    --column: ic_arquivos_carregados
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,120,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,120,1))  AS STRING)
    END AS arquivos_carregados,

    --column: ic_envio_email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,119,1))  AS STRING)
    END AS autoriza_envio_email,

    --column: ic_envo_sms_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS contato_envio_sms,

    --column: ic_envo_sms_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS contato_2_envio_sms,

    --column: ic_tipo_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS contato_tipo,

    --column: ic_tipo_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS contato_2_tipo,

    --column: ic_tipo_email_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS email_tipo,

    --column: num_ddd_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,2))  AS STRING)
    END AS contato_ddd,

    --column: num_ddd_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,2))  AS STRING)
    END AS contato_2_ddd,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: num_tel_contato_1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,10))  AS STRING)
    END AS contato_telefone,

    --column: num_tel_contato_2_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,10), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,10))  AS STRING)
    END AS contato_2_telefone,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '09'

