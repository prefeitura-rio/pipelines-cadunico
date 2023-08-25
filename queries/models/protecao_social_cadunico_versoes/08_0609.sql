
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
    SUBSTRING(text,25,11) AS num_membro_fmla,
    SUBSTRING(text,36,2) AS vazio,
    SUBSTRING(text,38,2) AS num_reg_arquivo,
    SUBSTRING(text,40,1) AS cod_trabalhou_memb,
    SUBSTRING(text,41,1) AS cod_afastado_trab_memb,
    SUBSTRING(text,42,1) AS cod_agricultura_trab_memb,
    SUBSTRING(text,43,2) AS cod_principal_trab_memb,
    SUBSTRING(text,45,6) AS val_remuner_emprego_memb,
    SUBSTRING(text,51,1) AS ind_val_remuner_emprego_memb,
    SUBSTRING(text,52,1) AS cod_trabalho_12_meses_memb,
    SUBSTRING(text,53,2) AS qtd_meses_12_meses_memb,
    SUBSTRING(text,55,6) AS val_renda_bruta_12_meses_memb,
    SUBSTRING(text,61,6) AS val_renda_doacao_memb,
    SUBSTRING(text,67,1) AS ind_val_renda_doacao_memb,
    SUBSTRING(text,68,6) AS val_renda_aposent_memb,
    SUBSTRING(text,74,1) AS ind_val_renda_aposent_memb,
    SUBSTRING(text,75,6) AS val_renda_seguro_desemp_memb,
    SUBSTRING(text,81,1) AS ind_val_renda_seguro_desemp_memb,
    SUBSTRING(text,82,6) AS val_renda_pensao_alimen_memb,
    SUBSTRING(text,88,1) AS ind_val_renda_pensao_alimen_memb,
    SUBSTRING(text,89,6) AS val_outras_rendas_memb,
    SUBSTRING(text,95,1) AS ind_val_outras_rendas_memb,
    SUBSTRING(text,96,1) AS cod_orgm_vlr_rndmo_mes_passado,
    SUBSTRING(text,97,1) AS cod_orgm_vlr_rndmo_bruto_prdo,
    SUBSTRING(text,98,1) AS cod_origem_valor_ajuda_doacao,
    SUBSTRING(text,99,1) AS cod_origem_valor_aposentadoria,
    SUBSTRING(text,100,1) AS cod_orgm_vlr_seguro_desemprego,
    SUBSTRING(text,101,1) AS cod_orgm_vlr_pensao_ali,
    SUBSTRING(text,102,1) AS cod_orgm_vlr_outra_fonte_renda,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_solical_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '08'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
