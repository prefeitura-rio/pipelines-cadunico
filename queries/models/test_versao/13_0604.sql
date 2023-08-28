
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
    SUBSTRING(text,40,1) AS ind_ptab_desat_quilomb_fam,
    SUBSTRING(text,41,1) AS ind_ptab_desat_terras_indig_fam,
    SUBSTRING(text,42,1) AS ind_ptab_desat_cras_creas_fam,
    SUBSTRING(text,43,1) AS ind_ptab_desat_eas_fam,
    SUBSTRING(text,44,1) AS ind_pmig_cpo_obr_prin_fam,
    SUBSTRING(text,45,1) AS ind_pmig_cpo_obr_sup1_fam,
    SUBSTRING(text,46,1) AS ind_pmig_sem_rf_fam,
    SUBSTRING(text,47,1) AS ind_ptrn_sem_rf_fam,
    SUBSTRING(text,48,1) AS ind_paud_cpo_obr_prin_fam,
    SUBSTRING(text,49,1) AS ind_paud_cpo_obr_sup1_fam,
    SUBSTRING(text,50,1) AS ind_patl_fam_desatual_fam,
    SUBSTRING(text,51,1) AS ind_otrn_outro_mun_fam,
    SUBSTRING(text,52,1) AS ind_otrn_nova_fam,
    SUBSTRING(text,53,1) AS ind_otrn_exist_fam,
    SUBSTRING(text,54,1) AS ind_otrn_outra_fam,
    SUBSTRING(text,55,1) AS ind_oend_uterrit_fam,
    SUBSTRING(text,56,1) AS ind_pmds_pend_01,
    SUBSTRING(text,57,1) AS ind_pmds_pend_02,
    SUBSTRING(text,58,1) AS ind_pmds_pend_03,
    SUBSTRING(text,59,1) AS ind_pmds_pend_04,
    SUBSTRING(text,60,1) AS ind_pmds_pend_05,
    SUBSTRING(text,61,1) AS ind_pmds_pend_06,
    SUBSTRING(text,62,1) AS ind_pmds_pend_07,
    SUBSTRING(text,63,1) AS ind_pmds_pend_08,
    SUBSTRING(text,64,1) AS ind_pmds_pend_09,
    SUBSTRING(text,65,1) AS ind_pmds_pend_10,
    SUBSTRING(text,66,1) AS ind_pmds_pend_11,
    SUBSTRING(text,67,1) AS ind_pmds_pend_12,
    SUBSTRING(text,68,1) AS ind_pmds_pend_13,
    SUBSTRING(text,69,1) AS ind_pmds_pend_14,
    SUBSTRING(text,70,1) AS ind_pmds_pend_15,
    SUBSTRING(text,71,1) AS ind_pmds_pend_16,
    SUBSTRING(text,72,1) AS ind_pmds_pend_17,
    SUBSTRING(text,73,1) AS ind_pmds_pend_18,
    SUBSTRING(text,74,1) AS ind_pmds_pend_19,
    SUBSTRING(text,75,1) AS ind_pmds_pend_20,
    SUBSTRING(text,76,1) AS ind_pmds_pend_21,
    SUBSTRING(text,77,1) AS ind_pmds_pend_22,
    SUBSTRING(text,78,1) AS ind_pmds_pend_23,
    SUBSTRING(text,79,1) AS ind_pmds_pend_24,
    SUBSTRING(text,80,1) AS ind_pmds_pend_25,
    SUBSTRING(text,81,1) AS ind_pmds_pend_26,
    SUBSTRING(text,82,1) AS ind_pmds_pend_27,
    SUBSTRING(text,83,1) AS ind_pmds_pend_28,
    SUBSTRING(text,84,1) AS ind_pmds_pend_29,
    SUBSTRING(text,85,1) AS ind_pmds_pend_30,
    SUBSTRING(text,86,1) AS ind_oaud_excl_pess_cpf_nulo,
    SUBSTRING(text,87,1) AS ind_paud_sem_rf_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.test_staging.test`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '13'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
