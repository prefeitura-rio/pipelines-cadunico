
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
    SUBSTRING(text,40,1) AS ind_dormir_rua_memb,
    SUBSTRING(text,41,1) AS qtd_dormir_freq_rua_memb,
    SUBSTRING(text,42,1) AS ind_dormir_albergue_memb,
    SUBSTRING(text,43,1) AS qtd_dormir_freq_albergue_memb,
    SUBSTRING(text,44,1) AS ind_dormir_dom_part_memb,
    SUBSTRING(text,45,1) AS qtd_dormir_freq_dom_part_memb,
    SUBSTRING(text,46,1) AS ind_outro_memb,
    SUBSTRING(text,47,1) AS qtd_freq_outro_memb,
    SUBSTRING(text,48,1) AS cod_tempo_rua_memb,
    SUBSTRING(text,49,1) AS ind_motivo_perda_memb,
    SUBSTRING(text,50,1) AS ind_motivo_ameaca_memb,
    SUBSTRING(text,51,1) AS ind_motivo_probs_fam_memb,
    SUBSTRING(text,52,1) AS ind_motivo_alcool_memb,
    SUBSTRING(text,53,1) AS ind_motivo_desemprego_memb,
    SUBSTRING(text,54,1) AS ind_motivo_trabalho_memb,
    SUBSTRING(text,55,1) AS ind_motivo_saude_memb,
    SUBSTRING(text,56,1) AS ind_motivo_pref_memb,
    SUBSTRING(text,57,1) AS ind_motivo_outro_memb,
    SUBSTRING(text,58,1) AS ind_motivo_nao_sabe_memb,
    SUBSTRING(text,59,1) AS ind_motivo_nao_resp_memb,
    SUBSTRING(text,60,1) AS cod_tempo_cidade_memb,
    SUBSTRING(text,61,1) AS cod_vive_fam_rua_memb,
    SUBSTRING(text,62,1) AS cod_contato_parente_memb,
    SUBSTRING(text,63,1) AS ind_ativ_com_escola_memb,
    SUBSTRING(text,64,1) AS ind_ativ_com_associacao_memb,
    SUBSTRING(text,65,1) AS ind_ativ_com_coop_memb,
    SUBSTRING(text,66,1) AS ind_ativ_com_mov_soc_memb,
    SUBSTRING(text,67,1) AS ind_ativ_com_nao_sabe_memb,
    SUBSTRING(text,68,1) AS ind_ativ_com_nao_resp_memb,
    SUBSTRING(text,69,1) AS ind_atend_cras_memb,
    SUBSTRING(text,70,1) AS ind_atend_creas_memb,
    SUBSTRING(text,71,1) AS ind_atend_centro_ref_rua_memb,
    SUBSTRING(text,72,1) AS ind_atend_inst_gov_memb,
    SUBSTRING(text,73,1) AS ind_atend_inst_nao_gov_memb,
    SUBSTRING(text,74,1) AS ind_atend_hospital_geral_memb,
    SUBSTRING(text,75,1) AS ind_atend_nenhum_memb,
    SUBSTRING(text,76,1) AS cod_cart_assinada_memb,
    SUBSTRING(text,77,1) AS ind_dinh_const_memb,
    SUBSTRING(text,78,1) AS ind_dinh_flanelhinha_memb,
    SUBSTRING(text,79,1) AS ind_dinh_carregador_memb,
    SUBSTRING(text,80,1) AS ind_dinh_catador_memb,
    SUBSTRING(text,81,1) AS ind_dinh_servs_gerais_memb,
    SUBSTRING(text,82,1) AS ind_dinh_pede_memb,
    SUBSTRING(text,83,1) AS ind_dinh_vendas_memb,
    SUBSTRING(text,84,1) AS ind_dinh_outro_memb,
    SUBSTRING(text,85,1) AS ind_dinh_nao_resp_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '12'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
