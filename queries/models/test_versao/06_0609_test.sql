
{{
    config(
        materialized= "incremental",
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
    SUBSTRING(text,25,11) AS num_membro_fmla,
    SUBSTRING(text,36,2) AS vazio,
    SUBSTRING(text,38,2) AS num_reg_arquivo,
    SUBSTRING(text,40,1) AS cod_deficiencia_memb,
    SUBSTRING(text,41,1) AS ind_def_cegueira_memb,
    SUBSTRING(text,42,1) AS ind_def_baixa_visao_memb,
    SUBSTRING(text,43,1) AS ind_def_surdez_profunda_memb,
    SUBSTRING(text,44,1) AS ind_def_surdez_leve_memb,
    SUBSTRING(text,45,1) AS ind_def_fisica_memb,
    SUBSTRING(text,46,1) AS ind_def_mental_memb,
    SUBSTRING(text,47,1) AS ind_def_sindrome_down_memb,
    SUBSTRING(text,48,1) AS ind_def_transtorno_mental_memb,
    SUBSTRING(text,49,1) AS ind_ajuda_nao_memb,
    SUBSTRING(text,50,1) AS ind_ajuda_familia_memb,
    SUBSTRING(text,51,1) AS ind_ajuda_especializado_memb,
    SUBSTRING(text,52,1) AS ind_ajuda_vizinho_memb,
    SUBSTRING(text,53,1) AS ind_ajuda_instituicao_memb,
    SUBSTRING(text,54,1) AS ind_ajuda_outra_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.test_staging.test`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '06'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
