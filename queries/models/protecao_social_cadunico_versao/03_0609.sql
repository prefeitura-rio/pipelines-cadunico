
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
    SUBSTRING(text,25,13) AS vazio,
    SUBSTRING(text,38,2) AS num_reg_arquivo,
    SUBSTRING(text,40,1) AS cod_familia_indigena_fam,
    SUBSTRING(text,41,3) AS cod_povo_indigena_fam,
    SUBSTRING(text,44,70) AS nom_povo_indigena_fam,
    SUBSTRING(text,114,1) AS vazio2,
    SUBSTRING(text,115,1) AS cod_indigena_reside_fam,
    SUBSTRING(text,116,6) AS cod_reserva_indigena_fam,
    SUBSTRING(text,122,70) AS nom_reserva_indigena_fam,
    SUBSTRING(text,192,1) AS ind_reserva_indigena_fam,
    SUBSTRING(text,193,1) AS ind_familia_quilombola_fam,
    SUBSTRING(text,194,4) AS cod_comunidade_quilombola_fam,
    SUBSTRING(text,198,120) AS nom_comunidade_quilombola_fam,
    SUBSTRING(text,318,1) AS ind_comunidade_quilombola_fam,
    SUBSTRING(text,319,2) AS qtd_pessoas_domic_fam,
    SUBSTRING(text,321,2) AS qtd_familias_domic_fam,
    SUBSTRING(text,323,2) AS qtd_pessoa_inter_0_17_anos_fam,
    SUBSTRING(text,325,1) AS ind_pessoa_inter_0_17_anos_fam,
    SUBSTRING(text,326,2) AS qtd_pessoa_inter_18_59_anos_fam,
    SUBSTRING(text,328,1) AS ind_pessoa_inter_18_59_anos_fam,
    SUBSTRING(text,329,2) AS qtd_pessoa_inter_60_anos_fam,
    SUBSTRING(text,331,1) AS ind_pessoa_inter_60_anos_fam,
    SUBSTRING(text,332,5) AS val_desp_energia_fam,
    SUBSTRING(text,337,1) AS ind_desp_energia_fam,
    SUBSTRING(text,338,5) AS val_desp_agua_esgoto_fam,
    SUBSTRING(text,343,1) AS ind_desp_agua_esgoto_fam,
    SUBSTRING(text,344,5) AS val_desp_gas_fam,
    SUBSTRING(text,349,1) AS ind_desp_gas_fam,
    SUBSTRING(text,350,5) AS val_desp_alimentacao_fam,
    SUBSTRING(text,355,1) AS ind_desp_alimentacao_fam,
    SUBSTRING(text,356,5) AS val_desp_transpor_fam,
    SUBSTRING(text,361,1) AS ind_desp_transpor_fam,
    SUBSTRING(text,362,5) AS val_desp_aluguel_fam,
    SUBSTRING(text,367,1) AS ind_desp_aluguel_fam,
    SUBSTRING(text,368,5) AS val_desp_medicamentos_fam,
    SUBSTRING(text,373,1) AS ind_desp_medicamentos_fam,
    SUBSTRING(text,374,70) AS nom_estab_assist_saude_fam,
    SUBSTRING(text,444,12) AS nu_estbo_saude,
    SUBSTRING(text,456,70) AS nom_centro_assist_fam,
    SUBSTRING(text,526,12) AS cod_centro_assist_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '03'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
