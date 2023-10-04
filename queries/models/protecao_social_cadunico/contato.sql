
SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(num_ddd_contato_1_fam AS STRING) AS contato_ddd,
    CAST(num_tel_contato_1_fam AS STRING) AS contato_telefone,
    CAST(ic_tipo_contato_1_fam AS STRING) AS contato_tipo,
    CAST(ic_envo_sms_contato_1_fam AS STRING) AS contato_envio_sms,
    CAST(num_ddd_contato_2_fam AS STRING) AS contato_2_ddd,
    CAST(num_tel_contato_2_fam AS STRING) AS contato_2_telefone,
    CAST(ic_tipo_contato_2_fam AS STRING) AS contato_2_tipo,
    CAST(ic_envo_sms_contato_2_fam AS STRING) AS contato_2_envio_sms,
    CAST(ic_tipo_email_fam AS STRING) AS email_tipo,
    CAST(email_fam AS STRING) AS email,
    CAST(ic_envio_email_fam AS STRING) AS autoriza_envio_email,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.contato_0601`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(num_ddd_contato_1_fam AS STRING) AS contato_ddd,
    CAST(num_tel_contato_1_fam AS STRING) AS contato_telefone,
    CAST(ic_tipo_contato_1_fam AS STRING) AS contato_tipo,
    CAST(ic_envo_sms_contato_1_fam AS STRING) AS contato_envio_sms,
    CAST(num_ddd_contato_2_fam AS STRING) AS contato_2_ddd,
    CAST(num_tel_contato_2_fam AS STRING) AS contato_2_telefone,
    CAST(ic_tipo_contato_2_fam AS STRING) AS contato_2_tipo,
    CAST(ic_envo_sms_contato_2_fam AS STRING) AS contato_2_envio_sms,
    CAST(ic_tipo_email_fam AS STRING) AS email_tipo,
    CAST(email_fam AS STRING) AS email,
    CAST(ic_envio_email_fam AS STRING) AS autoriza_envio_email,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.contato_0603`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(num_ddd_contato_1_fam AS STRING) AS contato_ddd,
    CAST(num_tel_contato_1_fam AS STRING) AS contato_telefone,
    CAST(ic_tipo_contato_1_fam AS STRING) AS contato_tipo,
    CAST(ic_envo_sms_contato_1_fam AS STRING) AS contato_envio_sms,
    CAST(num_ddd_contato_2_fam AS STRING) AS contato_2_ddd,
    CAST(num_tel_contato_2_fam AS STRING) AS contato_2_telefone,
    CAST(ic_tipo_contato_2_fam AS STRING) AS contato_2_tipo,
    CAST(ic_envo_sms_contato_2_fam AS STRING) AS contato_2_envio_sms,
    CAST(ic_tipo_email_fam AS STRING) AS email_tipo,
    CAST(email_fam AS STRING) AS email,
    CAST(ic_envio_email_fam AS STRING) AS autoriza_envio_email,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.contato_0604`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(num_ddd_contato_1_fam AS STRING) AS contato_ddd,
    CAST(num_tel_contato_1_fam AS STRING) AS contato_telefone,
    CAST(ic_tipo_contato_1_fam AS STRING) AS contato_tipo,
    CAST(ic_envo_sms_contato_1_fam AS STRING) AS contato_envio_sms,
    CAST(num_ddd_contato_2_fam AS STRING) AS contato_2_ddd,
    CAST(num_tel_contato_2_fam AS STRING) AS contato_2_telefone,
    CAST(ic_tipo_contato_2_fam AS STRING) AS contato_2_tipo,
    CAST(ic_envo_sms_contato_2_fam AS STRING) AS contato_2_envio_sms,
    CAST(ic_tipo_email_fam AS STRING) AS email_tipo,
    CAST(email_fam AS STRING) AS email,
    CAST(ic_envio_email_fam AS STRING) AS autoriza_envio_email,
    NULL AS ic_arquivos_carregados, --Essa coluna não esta na versao posterior
    NULL AS data_arquivos_carregados, --Essa coluna não esta na versao posterior
    NULL AS cpf_operador_responsavel, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.contato_0609`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(num_ddd_contato_1_fam AS STRING) AS contato_ddd,
    CAST(num_tel_contato_1_fam AS STRING) AS contato_telefone,
    CAST(ic_tipo_contato_1_fam AS STRING) AS contato_tipo,
    CAST(ic_envo_sms_contato_1_fam AS STRING) AS contato_envio_sms,
    CAST(num_ddd_contato_2_fam AS STRING) AS contato_2_ddd,
    CAST(num_tel_contato_2_fam AS STRING) AS contato_2_telefone,
    CAST(ic_tipo_contato_2_fam AS STRING) AS contato_2_tipo,
    CAST(ic_envo_sms_contato_2_fam AS STRING) AS contato_2_envio_sms,
    CAST(ic_tipo_email_fam AS STRING) AS email_tipo,
    CAST(email_fam AS STRING) AS email,
    CAST(ic_envio_email_fam AS STRING) AS autoriza_envio_email,
    NULL AS ic_arquivos_carregados, --Essa coluna não esta na versao posterior
    NULL AS data_arquivos_carregados, --Essa coluna não esta na versao posterior
    NULL AS cpf_operador_responsavel, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.contato_0612`

