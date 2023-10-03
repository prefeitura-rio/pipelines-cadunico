
SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(num_ddd_contato_1_fam AS string) AS contato_ddd,
    CAST(num_tel_contato_1_fam AS string) AS contato_telefone,
    CAST(ic_tipo_contato_1_fam AS string) AS contato_tipo,
    CAST(ic_envo_sms_contato_1_fam AS string) AS contato_envio_sms,
    CAST(num_ddd_contato_2_fam AS string) AS contato_2_ddd,
    CAST(num_tel_contato_2_fam AS string) AS contato_2_telefone,
    CAST(ic_tipo_contato_2_fam AS string) AS contato_2_tipo,
    CAST(ic_envo_sms_contato_2_fam AS string) AS contato_2_envio_sms,
    CAST(ic_tipo_email_fam AS string) AS email_tipo,
    CAST(email_fam AS string) AS email,
    CAST(ic_envio_email_fam AS string) AS autoriza_envio_email,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.09_0601_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(num_ddd_contato_1_fam AS string) AS contato_ddd,
    CAST(num_tel_contato_1_fam AS string) AS contato_telefone,
    CAST(ic_tipo_contato_1_fam AS string) AS contato_tipo,
    CAST(ic_envo_sms_contato_1_fam AS string) AS contato_envio_sms,
    CAST(num_ddd_contato_2_fam AS string) AS contato_2_ddd,
    CAST(num_tel_contato_2_fam AS string) AS contato_2_telefone,
    CAST(ic_tipo_contato_2_fam AS string) AS contato_2_tipo,
    CAST(ic_envo_sms_contato_2_fam AS string) AS contato_2_envio_sms,
    CAST(ic_tipo_email_fam AS string) AS email_tipo,
    CAST(email_fam AS string) AS email,
    CAST(ic_envio_email_fam AS string) AS autoriza_envio_email,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.09_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(num_ddd_contato_1_fam AS string) AS contato_ddd,
    CAST(num_tel_contato_1_fam AS string) AS contato_telefone,
    CAST(ic_tipo_contato_1_fam AS string) AS contato_tipo,
    CAST(ic_envo_sms_contato_1_fam AS string) AS contato_envio_sms,
    CAST(num_ddd_contato_2_fam AS string) AS contato_2_ddd,
    CAST(num_tel_contato_2_fam AS string) AS contato_2_telefone,
    CAST(ic_tipo_contato_2_fam AS string) AS contato_2_tipo,
    CAST(ic_envo_sms_contato_2_fam AS string) AS contato_2_envio_sms,
    CAST(ic_tipo_email_fam AS string) AS email_tipo,
    CAST(email_fam AS string) AS email,
    CAST(ic_envio_email_fam AS string) AS autoriza_envio_email,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.09_0609_test`

