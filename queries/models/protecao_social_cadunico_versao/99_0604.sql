
{{
    config(
        materialized='incremental',
        partition_by={
            "field": "data_particao",
            "data_type": "date",
            "granularity": "month",
        }
    )

}}

SELECT
    SUBSTRING(text,1,37) AS vazio,
    SUBSTRING(text,38,2) AS num_reg_arquivo,
    SUBSTRING(text,40,9) AS qtd_reg_00_tlr,
    SUBSTRING(text,49,9) AS qtd_reg_01_tlr,
    SUBSTRING(text,58,9) AS qtd_reg_02_tlr,
    SUBSTRING(text,67,9) AS qtd_reg_03_tlr,
    SUBSTRING(text,76,9) AS qtd_reg_04_tlr,
    SUBSTRING(text,85,9) AS qtd_reg_05_tlr,
    SUBSTRING(text,94,9) AS qtd_reg_06_tlr,
    SUBSTRING(text,103,9) AS qtd_reg_07_tlr,
    SUBSTRING(text,112,9) AS qtd_reg_08_tlr,
    SUBSTRING(text,121,9) AS qtd_reg_09_tlr,
    SUBSTRING(text,130,9) AS qtd_reg_10_tlr,
    SUBSTRING(text,139,9) AS qtd_reg_11_tlr,
    SUBSTRING(text,148,9) AS qtd_reg_12_tlr,
    SUBSTRING(text,157,9) AS qtd_reg_13_tlr,
    SUBSTRING(text,166,9) AS qtd_reg_14_tlr,
    SUBSTRING(text,175,9) AS qtd_reg_15_tlr,
    SUBSTRING(text,184,9) AS qtd_reg_16_tlr,
    SUBSTRING(text,193,9) AS qtd_reg_17_tlr,
    SUBSTRING(text,202,9) AS qtd_reg_18_tlr,
    SUBSTRING(text,211,9) AS qtd_reg_19_tlr,
    SUBSTRING(text,220,9) AS qtd_reg_20_tlr,
    SUBSTRING(text,229,9) AS qtd_reg_98_tlr,
    SUBSTRING(text,238,9) AS qtd_reg_99_tlr,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_solical_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '99'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
