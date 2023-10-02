
SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(num_ddd_contato_1_fam AS STRING) AS num_ddd_contato_1_fam,
    CAST(num_tel_contato_1_fam AS STRING) AS num_tel_contato_1_fam,
    CAST(ic_tipo_contato_1_fam AS STRING) AS ic_tipo_contato_1_fam,
    CAST(ic_envo_sms_contato_1_fam AS STRING) AS ic_envo_sms_contato_1_fam,
    CAST(num_ddd_contato_2_fam AS STRING) AS num_ddd_contato_2_fam,
    CAST(num_tel_contato_2_fam AS STRING) AS num_tel_contato_2_fam,
    CAST(ic_tipo_contato_2_fam AS STRING) AS ic_tipo_contato_2_fam,
    CAST(ic_envo_sms_contato_2_fam AS STRING) AS ic_envo_sms_contato_2_fam,
    CAST(ic_tipo_email_fam AS STRING) AS ic_tipo_email_fam,
    CAST(email_fam AS STRING) AS email_fam,
    CAST(ic_envio_email_fam AS STRING) AS ic_envio_email_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.09_0601_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(num_ddd_contato_1_fam AS STRING) AS num_ddd_contato_1_fam,
    CAST(num_tel_contato_1_fam AS STRING) AS num_tel_contato_1_fam,
    CAST(ic_tipo_contato_1_fam AS STRING) AS ic_tipo_contato_1_fam,
    CAST(ic_envo_sms_contato_1_fam AS STRING) AS ic_envo_sms_contato_1_fam,
    CAST(num_ddd_contato_2_fam AS STRING) AS num_ddd_contato_2_fam,
    CAST(num_tel_contato_2_fam AS STRING) AS num_tel_contato_2_fam,
    CAST(ic_tipo_contato_2_fam AS STRING) AS ic_tipo_contato_2_fam,
    CAST(ic_envo_sms_contato_2_fam AS STRING) AS ic_envo_sms_contato_2_fam,
    CAST(ic_tipo_email_fam AS STRING) AS ic_tipo_email_fam,
    CAST(email_fam AS STRING) AS email_fam,
    CAST(ic_envio_email_fam AS STRING) AS ic_envio_email_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.09_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(num_ddd_contato_1_fam AS STRING) AS num_ddd_contato_1_fam,
    CAST(num_tel_contato_1_fam AS STRING) AS num_tel_contato_1_fam,
    CAST(ic_tipo_contato_1_fam AS STRING) AS ic_tipo_contato_1_fam,
    CAST(ic_envo_sms_contato_1_fam AS STRING) AS ic_envo_sms_contato_1_fam,
    CAST(num_ddd_contato_2_fam AS STRING) AS num_ddd_contato_2_fam,
    CAST(num_tel_contato_2_fam AS STRING) AS num_tel_contato_2_fam,
    CAST(ic_tipo_contato_2_fam AS STRING) AS ic_tipo_contato_2_fam,
    CAST(ic_envo_sms_contato_2_fam AS STRING) AS ic_envo_sms_contato_2_fam,
    CAST(ic_tipo_email_fam AS STRING) AS ic_tipo_email_fam,
    CAST(email_fam AS STRING) AS email_fam,
    CAST(ic_envio_email_fam AS STRING) AS ic_envio_email_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.09_0609_test`

