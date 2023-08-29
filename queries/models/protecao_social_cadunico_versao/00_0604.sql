
{{
    config(
        materialized= "incremental" if run_query("SELECT COUNT(*) FROM {{ this }} WHERE data_particao > (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) FROM " ~ this ~ " WHERE versao_layout_particao = 0604)").columns[0].values()[0] > 0 else "ephemeral",
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
    SUBSTRING(text,40,30) AS nom_arquivo_hdr,
    SUBSTRING(text,70,5) AS cod_versao_layout_hdr,
    SUBSTRING(text,75,8) AS dta_posicao_cadastro_hdr,
    SUBSTRING(text,83,8) AS dta_extracao_dados_hdr,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '00'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
