
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
    SUBSTRING(text,1,13) AS chv_natural_prefeitura_famt,
    SUBSTRING(text,14,11) AS cod_familiar_famt,
    SUBSTRING(text,25,13) AS vazio,
    SUBSTRING(text,38,2) AS num_reg_arquivo_famt,
    SUBSTRING(text,40,8) AS dat_transferencia_famt,
    SUBSTRING(text,48,1) AS cod_est_cadastral_atual_famt,
    SUBSTRING(text,49,2) AS cod_munic_ibge_origem_2_famt,
    SUBSTRING(text,51,5) AS cod_munic_ibge_origem_5_famt,
    SUBSTRING(text,56,13) AS cod_destino_prefeitura_famt,
    SUBSTRING(text,69,11) AS cod_destino_familia_famt,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.test_versao_staging.test`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '16'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
