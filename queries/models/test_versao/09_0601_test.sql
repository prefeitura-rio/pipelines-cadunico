
{{
    config(
        materialized= "incremental" if run_query("SELECT COUNT(*) FROM {{ this }} WHERE data_particao > (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) FROM " ~ this ~ " WHERE versao_layout_particao = 0601)").columns[0].values()[0] > 0 else "ephemeral",
        partition_by={
            "field": "data_particao",
            "data_type": "date",
            "granularity": "month",
        }
    )

}}

SELECT
    SUBSTRING(text,1,13) AS chv_natural_prefeitura_fam,
    SUBSTRING(text,14,11) AS cod_familiar_fam,
    SUBSTRING(text,25,13) AS vazio,
    SUBSTRING(text,38,2) AS num_reg_arquivo,
    SUBSTRING(text,40,2) AS num_ddd_contato_1_fam,
    SUBSTRING(text,42,10) AS num_tel_contato_1_fam,
    SUBSTRING(text,52,1) AS ic_tipo_contato_1_fam,
    SUBSTRING(text,53,1) AS ic_envo_sms_contato_1_fam,
    SUBSTRING(text,54,2) AS num_ddd_contato_2_fam,
    SUBSTRING(text,56,10) AS num_tel_contato_2_fam,
    SUBSTRING(text,66,1) AS ic_tipo_contato_2_fam,
    SUBSTRING(text,67,1) AS ic_envo_sms_contato_2_fam,
    SUBSTRING(text,68,1) AS ic_tipo_email_fam,
    SUBSTRING(text,69,50) AS email_fam,
    SUBSTRING(text,119,1) AS ic_envio_email_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.test_staging.test`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '09'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
