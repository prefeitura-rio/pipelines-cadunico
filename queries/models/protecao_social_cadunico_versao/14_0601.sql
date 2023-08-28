
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
    SUBSTRING(text,40,1) AS ind_ptab_desat_inep_memb,
    SUBSTRING(text,41,1) AS ind_pmig_cpo_obr_memb,
    SUBSTRING(text,42,1) AS ind_pmig_sem_doc_memb,
    SUBSTRING(text,43,1) AS ind_pmig_rf_cpf_eleitor_memb,
    SUBSTRING(text,44,1) AS ind_pmig_rf_cpf_inv_memb,
    SUBSTRING(text,45,1) AS ind_pmig_rf_cpf_mult_memb,
    SUBSTRING(text,46,1) AS ind_pmig_memb_cpf_mult_memb,
    SUBSTRING(text,47,1) AS ind_pmig_rf_cpf_titular_memb,
    SUBSTRING(text,48,1) AS ind_pmig_memb_cpf_titular_memb,
    SUBSTRING(text,49,1) AS ind_pmig_rf_eleitor_inv_memb,
    SUBSTRING(text,50,1) AS ind_pmig_rf_eleitor_mult_memb,
    SUBSTRING(text,51,1) AS ind_pmig_memb_cpf_inv_memb,
    SUBSTRING(text,52,1) AS ind_pmig_memb_eleitor_mult_memb,
    SUBSTRING(text,53,1) AS ind_pmig_rf_idade_16_memb,
    SUBSTRING(text,54,1) AS ind_ptrn_memb_inep_memb,
    SUBSTRING(text,55,1) AS ind_ptrn_memb_parente_memb,
    SUBSTRING(text,56,1) AS ind_paud_cpo_obr_memb,
    SUBSTRING(text,57,1) AS ind_paud_rf_cpf_eleitor_memb,
    SUBSTRING(text,58,1) AS ind_paud_rf_cpf_inv_memb,
    SUBSTRING(text,59,1) AS ind_paud_rf_cpf_mult_memb,
    SUBSTRING(text,60,1) AS ind_paud_memb_cpf_mult_memb,
    SUBSTRING(text,61,1) AS ind_paud_rf_cpf_titular_memb,
    SUBSTRING(text,62,1) AS ind_paud_memb_cpf_titular_memb,
    SUBSTRING(text,63,1) AS ind_paud_memb_cpf_inv_memb,
    SUBSTRING(text,64,1) AS ind_paud_memb_eleitor_inv_memb,
    SUBSTRING(text,65,1) AS ind_paud_rf_eleitor_inv_memb,
    SUBSTRING(text,66,1) AS ind_paud_memb_eleitor_mult_memb,
    SUBSTRING(text,67,1) AS ind_paud_rf_idade_16_memb,
    SUBSTRING(text,68,1) AS ind_paud_rejei_memb,
    SUBSTRING(text,69,1) AS ind_otrn_outro_mun_pes,
    SUBSTRING(text,70,1) AS ind_otrn_nova_pes,
    SUBSTRING(text,71,1) AS ind_otrn_exist_pes,
    SUBSTRING(text,72,1) AS ind_otrn_outra_pes,
    SUBSTRING(text,73,1) AS ind_osrg_sem_certidao_pes,
    SUBSTRING(text,74,1) AS ind_osrg_sem_registro_pes,
    SUBSTRING(text,75,1) AS ind_osrg_nao_sabe_pes,
    SUBSTRING(text,76,1) AS ind_paud_mbo_cad_com_cert_obit,
    SUBSTRING(text,77,1) AS ind_oaud_memb_ind_obto_neg,
    SUBSTRING(text,78,1) AS ind_paud_rf_eleitor_mult_memb,
    SUBSTRING(text,79,1) AS ind_oaud_memb_mult_ctps,
    SUBSTRING(text,80,1) AS ind_oaud_memb_mult_rcn,
    SUBSTRING(text,81,1) AS ind_oaud_memb_mult_rg,
    SUBSTRING(text,82,1) AS ind_paud_cpf_susp_receita,
    SUBSTRING(text,83,1) AS ind_paud_cpf_cancel_receita,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '14'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
