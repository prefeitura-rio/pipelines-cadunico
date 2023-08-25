
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
SUBSTRING(text,1,13) AS chv_natural_prefeitura_fam_exc,
    SUBSTRING(text,14,11) AS cod_familiar_fam_exc,
    SUBSTRING(text,25,13) AS vazio,
    SUBSTRING(text,38,2) AS num_reg_arquivo,
    SUBSTRING(text,40,8) AS data_exc,
    SUBSTRING(text,48,11) AS cpf_oper_exc,
    SUBSTRING(text,59,2) AS motivo_exc,
    SUBSTRING(text,61,10) AS num_pgmcu,
    SUBSTRING(text,71,8) AS dat_emi_pgmcu,
    SUBSTRING(text,79,70) AS nom_servd_pbco_pgmcu,
    SUBSTRING(text,149,11) AS cpf_servd_pbco_pgmcu_pgmcu,
    SUBSTRING(text,160,2) AS uf_pgmcu,
    SUBSTRING(text,162,7) AS mun_pgmcu,
    SUBSTRING(text,169,255) AS desc_mot_exc,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo') AND
    versao_layout_particao = '0609' AND
    SUBSTRING(text,38,2) = '18'


{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
