
SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(ind_ptab_desat_quilomb_fam AS STRING) AS ind_ptab_desat_quilomb_fam,
    CAST(ind_ptab_desat_terras_indig_fam AS STRING) AS ind_ptab_desat_terras_indig_fam,
    CAST(ind_ptab_desat_cras_creas_fam AS STRING) AS ind_ptab_desat_cras_creas_fam,
    CAST(ind_ptab_desat_eas_fam AS STRING) AS ind_ptab_desat_eas_fam,
    CAST(ind_pmig_cpo_obr_prin_fam AS STRING) AS ind_pmig_cpo_obr_prin_fam,
    CAST(ind_pmig_cpo_obr_sup1_fam AS STRING) AS ind_pmig_cpo_obr_sup1_fam,
    CAST(ind_pmig_sem_rf_fam AS STRING) AS ind_pmig_sem_rf_fam,
    CAST(ind_ptrn_sem_rf_fam AS STRING) AS ind_ptrn_sem_rf_fam,
    CAST(ind_paud_cpo_obr_prin_fam AS STRING) AS ind_paud_cpo_obr_prin_fam,
    CAST(ind_paud_cpo_obr_sup1_fam AS STRING) AS ind_paud_cpo_obr_sup1_fam,
    CAST(ind_patl_fam_desatual_fam AS STRING) AS ind_patl_fam_desatual_fam,
    CAST(ind_otrn_outro_mun_fam AS STRING) AS ind_otrn_outro_mun_fam,
    CAST(ind_otrn_nova_fam AS STRING) AS ind_otrn_nova_fam,
    CAST(ind_otrn_exist_fam AS STRING) AS ind_otrn_exist_fam,
    CAST(ind_otrn_outra_fam AS STRING) AS ind_otrn_outra_fam,
    CAST(ind_oend_uterrit_fam AS STRING) AS ind_oend_uterrit_fam,
    CAST(ind_pmds_pend_01 AS STRING) AS ind_pmds_pend_01,
    CAST(ind_pmds_pend_02 AS STRING) AS ind_pmds_pend_02,
    CAST(ind_pmds_pend_03 AS STRING) AS ind_pmds_pend_03,
    CAST(ind_pmds_pend_04 AS STRING) AS ind_pmds_pend_04,
    CAST(ind_pmds_pend_05 AS STRING) AS ind_pmds_pend_05,
    CAST(ind_pmds_pend_06 AS STRING) AS ind_pmds_pend_06,
    CAST(ind_pmds_pend_07 AS STRING) AS ind_pmds_pend_07,
    CAST(ind_pmds_pend_08 AS STRING) AS ind_pmds_pend_08,
    CAST(ind_pmds_pend_09 AS STRING) AS ind_pmds_pend_09,
    CAST(ind_pmds_pend_10 AS STRING) AS ind_pmds_pend_10,
    CAST(ind_pmds_pend_11 AS STRING) AS ind_pmds_pend_11,
    CAST(ind_pmds_pend_12 AS STRING) AS ind_pmds_pend_12,
    CAST(ind_pmds_pend_13 AS STRING) AS ind_pmds_pend_13,
    CAST(ind_pmds_pend_14 AS STRING) AS ind_pmds_pend_14,
    CAST(ind_pmds_pend_15 AS STRING) AS ind_pmds_pend_15,
    CAST(ind_pmds_pend_16 AS STRING) AS ind_pmds_pend_16,
    CAST(ind_pmds_pend_17 AS STRING) AS ind_pmds_pend_17,
    CAST(ind_pmds_pend_18 AS STRING) AS ind_pmds_pend_18,
    CAST(ind_pmds_pend_19 AS STRING) AS ind_pmds_pend_19,
    CAST(ind_pmds_pend_20 AS STRING) AS ind_pmds_pend_20,
    CAST(ind_pmds_pend_21 AS STRING) AS ind_pmds_pend_21,
    CAST(ind_pmds_pend_22 AS STRING) AS ind_pmds_pend_22,
    CAST(ind_pmds_pend_23 AS STRING) AS ind_pmds_pend_23,
    CAST(ind_pmds_pend_24 AS STRING) AS ind_pmds_pend_24,
    CAST(ind_pmds_pend_25 AS STRING) AS ind_pmds_pend_25,
    CAST(ind_pmds_pend_26 AS STRING) AS ind_pmds_pend_26,
    CAST(ind_pmds_pend_27 AS STRING) AS ind_pmds_pend_27,
    CAST(ind_pmds_pend_28 AS STRING) AS ind_pmds_pend_28,
    CAST(ind_pmds_pend_29 AS STRING) AS ind_pmds_pend_29,
    CAST(ind_pmds_pend_30 AS STRING) AS ind_pmds_pend_30,
    CAST(ind_oaud_excl_pess_cpf_nulo AS STRING) AS ind_oaud_excl_pess_cpf_nulo,
    CAST(ind_paud_sem_rf_fam AS STRING) AS ind_paud_sem_rf_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.13_0601_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(ind_ptab_desat_quilomb_fam AS STRING) AS ind_ptab_desat_quilomb_fam,
    CAST(ind_ptab_desat_terras_indig_fam AS STRING) AS ind_ptab_desat_terras_indig_fam,
    CAST(ind_ptab_desat_cras_creas_fam AS STRING) AS ind_ptab_desat_cras_creas_fam,
    CAST(ind_ptab_desat_eas_fam AS STRING) AS ind_ptab_desat_eas_fam,
    CAST(ind_pmig_cpo_obr_prin_fam AS STRING) AS ind_pmig_cpo_obr_prin_fam,
    CAST(ind_pmig_cpo_obr_sup1_fam AS STRING) AS ind_pmig_cpo_obr_sup1_fam,
    CAST(ind_pmig_sem_rf_fam AS STRING) AS ind_pmig_sem_rf_fam,
    CAST(ind_ptrn_sem_rf_fam AS STRING) AS ind_ptrn_sem_rf_fam,
    CAST(ind_paud_cpo_obr_prin_fam AS STRING) AS ind_paud_cpo_obr_prin_fam,
    CAST(ind_paud_cpo_obr_sup1_fam AS STRING) AS ind_paud_cpo_obr_sup1_fam,
    CAST(ind_patl_fam_desatual_fam AS STRING) AS ind_patl_fam_desatual_fam,
    CAST(ind_otrn_outro_mun_fam AS STRING) AS ind_otrn_outro_mun_fam,
    CAST(ind_otrn_nova_fam AS STRING) AS ind_otrn_nova_fam,
    CAST(ind_otrn_exist_fam AS STRING) AS ind_otrn_exist_fam,
    CAST(ind_otrn_outra_fam AS STRING) AS ind_otrn_outra_fam,
    CAST(ind_oend_uterrit_fam AS STRING) AS ind_oend_uterrit_fam,
    CAST(ind_pmds_pend_01 AS STRING) AS ind_pmds_pend_01,
    CAST(ind_pmds_pend_02 AS STRING) AS ind_pmds_pend_02,
    CAST(ind_pmds_pend_03 AS STRING) AS ind_pmds_pend_03,
    CAST(ind_pmds_pend_04 AS STRING) AS ind_pmds_pend_04,
    CAST(ind_pmds_pend_05 AS STRING) AS ind_pmds_pend_05,
    CAST(ind_pmds_pend_06 AS STRING) AS ind_pmds_pend_06,
    CAST(ind_pmds_pend_07 AS STRING) AS ind_pmds_pend_07,
    CAST(ind_pmds_pend_08 AS STRING) AS ind_pmds_pend_08,
    CAST(ind_pmds_pend_09 AS STRING) AS ind_pmds_pend_09,
    CAST(ind_pmds_pend_10 AS STRING) AS ind_pmds_pend_10,
    CAST(ind_pmds_pend_11 AS STRING) AS ind_pmds_pend_11,
    CAST(ind_pmds_pend_12 AS STRING) AS ind_pmds_pend_12,
    CAST(ind_pmds_pend_13 AS STRING) AS ind_pmds_pend_13,
    CAST(ind_pmds_pend_14 AS STRING) AS ind_pmds_pend_14,
    CAST(ind_pmds_pend_15 AS STRING) AS ind_pmds_pend_15,
    CAST(ind_pmds_pend_16 AS STRING) AS ind_pmds_pend_16,
    CAST(ind_pmds_pend_17 AS STRING) AS ind_pmds_pend_17,
    CAST(ind_pmds_pend_18 AS STRING) AS ind_pmds_pend_18,
    CAST(ind_pmds_pend_19 AS STRING) AS ind_pmds_pend_19,
    CAST(ind_pmds_pend_20 AS STRING) AS ind_pmds_pend_20,
    CAST(ind_pmds_pend_21 AS STRING) AS ind_pmds_pend_21,
    CAST(ind_pmds_pend_22 AS STRING) AS ind_pmds_pend_22,
    CAST(ind_pmds_pend_23 AS STRING) AS ind_pmds_pend_23,
    CAST(ind_pmds_pend_24 AS STRING) AS ind_pmds_pend_24,
    CAST(ind_pmds_pend_25 AS STRING) AS ind_pmds_pend_25,
    CAST(ind_pmds_pend_26 AS STRING) AS ind_pmds_pend_26,
    CAST(ind_pmds_pend_27 AS STRING) AS ind_pmds_pend_27,
    CAST(ind_pmds_pend_28 AS STRING) AS ind_pmds_pend_28,
    CAST(ind_pmds_pend_29 AS STRING) AS ind_pmds_pend_29,
    CAST(ind_pmds_pend_30 AS STRING) AS ind_pmds_pend_30,
    CAST(ind_oaud_excl_pess_cpf_nulo AS STRING) AS ind_oaud_excl_pess_cpf_nulo,
    CAST(ind_paud_sem_rf_fam AS STRING) AS ind_paud_sem_rf_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.13_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(ind_ptab_desat_quilomb_fam AS STRING) AS ind_ptab_desat_quilomb_fam,
    CAST(ind_ptab_desat_terras_indig_fam AS STRING) AS ind_ptab_desat_terras_indig_fam,
    CAST(ind_ptab_desat_cras_creas_fam AS STRING) AS ind_ptab_desat_cras_creas_fam,
    CAST(ind_ptab_desat_eas_fam AS STRING) AS ind_ptab_desat_eas_fam,
    CAST(ind_pmig_cpo_obr_prin_fam AS STRING) AS ind_pmig_cpo_obr_prin_fam,
    CAST(ind_pmig_cpo_obr_sup1_fam AS STRING) AS ind_pmig_cpo_obr_sup1_fam,
    CAST(ind_pmig_sem_rf_fam AS STRING) AS ind_pmig_sem_rf_fam,
    CAST(ind_ptrn_sem_rf_fam AS STRING) AS ind_ptrn_sem_rf_fam,
    CAST(ind_paud_cpo_obr_prin_fam AS STRING) AS ind_paud_cpo_obr_prin_fam,
    CAST(ind_paud_cpo_obr_sup1_fam AS STRING) AS ind_paud_cpo_obr_sup1_fam,
    CAST(ind_patl_fam_desatual_fam AS STRING) AS ind_patl_fam_desatual_fam,
    CAST(ind_otrn_outro_mun_fam AS STRING) AS ind_otrn_outro_mun_fam,
    CAST(ind_otrn_nova_fam AS STRING) AS ind_otrn_nova_fam,
    CAST(ind_otrn_exist_fam AS STRING) AS ind_otrn_exist_fam,
    CAST(ind_otrn_outra_fam AS STRING) AS ind_otrn_outra_fam,
    CAST(ind_oend_uterrit_fam AS STRING) AS ind_oend_uterrit_fam,
    CAST(ind_pmds_pend_01 AS STRING) AS ind_pmds_pend_01,
    CAST(ind_pmds_pend_02 AS STRING) AS ind_pmds_pend_02,
    CAST(ind_pmds_pend_03 AS STRING) AS ind_pmds_pend_03,
    CAST(ind_pmds_pend_04 AS STRING) AS ind_pmds_pend_04,
    CAST(ind_pmds_pend_05 AS STRING) AS ind_pmds_pend_05,
    CAST(ind_pmds_pend_06 AS STRING) AS ind_pmds_pend_06,
    CAST(ind_pmds_pend_07 AS STRING) AS ind_pmds_pend_07,
    CAST(ind_pmds_pend_08 AS STRING) AS ind_pmds_pend_08,
    CAST(ind_pmds_pend_09 AS STRING) AS ind_pmds_pend_09,
    CAST(ind_pmds_pend_10 AS STRING) AS ind_pmds_pend_10,
    CAST(ind_pmds_pend_11 AS STRING) AS ind_pmds_pend_11,
    CAST(ind_pmds_pend_12 AS STRING) AS ind_pmds_pend_12,
    CAST(ind_pmds_pend_13 AS STRING) AS ind_pmds_pend_13,
    CAST(ind_pmds_pend_14 AS STRING) AS ind_pmds_pend_14,
    CAST(ind_pmds_pend_15 AS STRING) AS ind_pmds_pend_15,
    CAST(ind_pmds_pend_16 AS STRING) AS ind_pmds_pend_16,
    CAST(ind_pmds_pend_17 AS STRING) AS ind_pmds_pend_17,
    CAST(ind_pmds_pend_18 AS STRING) AS ind_pmds_pend_18,
    CAST(ind_pmds_pend_19 AS STRING) AS ind_pmds_pend_19,
    CAST(ind_pmds_pend_20 AS STRING) AS ind_pmds_pend_20,
    CAST(ind_pmds_pend_21 AS STRING) AS ind_pmds_pend_21,
    CAST(ind_pmds_pend_22 AS STRING) AS ind_pmds_pend_22,
    CAST(ind_pmds_pend_23 AS STRING) AS ind_pmds_pend_23,
    CAST(ind_pmds_pend_24 AS STRING) AS ind_pmds_pend_24,
    CAST(ind_pmds_pend_25 AS STRING) AS ind_pmds_pend_25,
    CAST(ind_pmds_pend_26 AS STRING) AS ind_pmds_pend_26,
    CAST(ind_pmds_pend_27 AS STRING) AS ind_pmds_pend_27,
    CAST(ind_pmds_pend_28 AS STRING) AS ind_pmds_pend_28,
    CAST(ind_pmds_pend_29 AS STRING) AS ind_pmds_pend_29,
    CAST(ind_pmds_pend_30 AS STRING) AS ind_pmds_pend_30,
    CAST(ind_oaud_excl_pess_cpf_nulo AS STRING) AS ind_oaud_excl_pess_cpf_nulo,
    CAST(ind_paud_sem_rf_fam AS STRING) AS ind_paud_sem_rf_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.13_0609_test`

