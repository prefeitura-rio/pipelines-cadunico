
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
    SUBSTRING(text,1,13) AS chv_natural_prefeitura_fam,
    SUBSTRING(text,14,11) AS cod_familiar_fam,
    SUBSTRING(text,25,13) AS vazio,
    SUBSTRING(text,38,2) AS num_reg_arquivo,
    SUBSTRING(text,40,1) AS cod_local_domic_fam,
    SUBSTRING(text,41,1) AS cod_especie_domic_fam,
    SUBSTRING(text,42,2) AS qtd_comodos_domic_fam,
    SUBSTRING(text,44,2) AS qtd_comodos_dormitorio_fam,
    SUBSTRING(text,46,1) AS cod_material_piso_fam,
    SUBSTRING(text,47,1) AS cod_material_domic_fam,
    SUBSTRING(text,48,1) AS cod_agua_canalizada_fam,
    SUBSTRING(text,49,1) AS cod_abaste_agua_domic_fam,
    SUBSTRING(text,50,1) AS cod_banheiro_domic_fam,
    SUBSTRING(text,51,1) AS cod_escoa_sanitario_domic_fam,
    SUBSTRING(text,52,1) AS cod_destino_lixo_domic_fam,
    SUBSTRING(text,53,1) AS cod_iluminacao_domic_fam,
    SUBSTRING(text,54,1) AS cod_calcamento_domic_fam,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia` 
WHERE SUBSTRING(text,38,2) = '02' AND
    SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
