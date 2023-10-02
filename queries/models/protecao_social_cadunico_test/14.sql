
SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(ind_ptab_desat_inep_memb AS STRING) AS ind_ptab_desat_inep_memb,
    CAST(ind_pmig_cpo_obr_memb AS STRING) AS ind_pmig_cpo_obr_memb,
    CAST(ind_pmig_sem_doc_memb AS STRING) AS ind_pmig_sem_doc_memb,
    CAST(ind_pmig_rf_cpf_eleitor_memb AS STRING) AS ind_pmig_rf_cpf_eleitor_memb,
    CAST(ind_pmig_rf_cpf_inv_memb AS STRING) AS ind_pmig_rf_cpf_inv_memb,
    CAST(ind_pmig_rf_cpf_mult_memb AS STRING) AS ind_pmig_rf_cpf_mult_memb,
    CAST(ind_pmig_memb_cpf_mult_memb AS STRING) AS ind_pmig_memb_cpf_mult_memb,
    CAST(ind_pmig_rf_cpf_titular_memb AS STRING) AS ind_pmig_rf_cpf_titular_memb,
    CAST(ind_pmig_memb_cpf_titular_memb AS STRING) AS ind_pmig_memb_cpf_titular_memb,
    CAST(ind_pmig_rf_eleitor_inv_memb AS STRING) AS ind_pmig_rf_eleitor_inv_memb,
    CAST(ind_pmig_rf_eleitor_mult_memb AS STRING) AS ind_pmig_rf_eleitor_mult_memb,
    CAST(ind_pmig_memb_cpf_inv_memb AS STRING) AS ind_pmig_memb_cpf_inv_memb,
    CAST(ind_pmig_memb_eleitor_mult_memb AS STRING) AS ind_pmig_memb_eleitor_mult_memb,
    CAST(ind_pmig_rf_idade_16_memb AS STRING) AS ind_pmig_rf_idade_16_memb,
    CAST(ind_ptrn_memb_inep_memb AS STRING) AS ind_ptrn_memb_inep_memb,
    CAST(ind_ptrn_memb_parente_memb AS STRING) AS ind_ptrn_memb_parente_memb,
    CAST(ind_paud_cpo_obr_memb AS STRING) AS ind_paud_cpo_obr_memb,
    CAST(ind_paud_rf_cpf_eleitor_memb AS STRING) AS ind_paud_rf_cpf_eleitor_memb,
    CAST(ind_paud_rf_cpf_inv_memb AS STRING) AS ind_paud_rf_cpf_inv_memb,
    CAST(ind_paud_rf_cpf_mult_memb AS STRING) AS ind_paud_rf_cpf_mult_memb,
    CAST(ind_paud_memb_cpf_mult_memb AS STRING) AS ind_paud_memb_cpf_mult_memb,
    CAST(ind_paud_rf_cpf_titular_memb AS STRING) AS ind_paud_rf_cpf_titular_memb,
    CAST(ind_paud_memb_cpf_titular_memb AS STRING) AS ind_paud_memb_cpf_titular_memb,
    CAST(ind_paud_memb_cpf_inv_memb AS STRING) AS ind_paud_memb_cpf_inv_memb,
    CAST(ind_paud_memb_eleitor_inv_memb AS STRING) AS ind_paud_memb_eleitor_inv_memb,
    CAST(ind_paud_rf_eleitor_inv_memb AS STRING) AS ind_paud_rf_eleitor_inv_memb,
    CAST(ind_paud_memb_eleitor_mult_memb AS STRING) AS ind_paud_memb_eleitor_mult_memb,
    CAST(ind_paud_rf_idade_16_memb AS STRING) AS ind_paud_rf_idade_16_memb,
    CAST(ind_paud_rejei_memb AS STRING) AS ind_paud_rejei_memb,
    CAST(ind_otrn_outro_mun_pes AS STRING) AS ind_otrn_outro_mun_pes,
    CAST(ind_otrn_nova_pes AS STRING) AS ind_otrn_nova_pes,
    CAST(ind_otrn_exist_pes AS STRING) AS ind_otrn_exist_pes,
    CAST(ind_otrn_outra_pes AS STRING) AS ind_otrn_outra_pes,
    CAST(ind_osrg_sem_certidao_pes AS STRING) AS ind_osrg_sem_certidao_pes,
    CAST(ind_osrg_sem_registro_pes AS STRING) AS ind_osrg_sem_registro_pes,
    CAST(ind_osrg_nao_sabe_pes AS STRING) AS ind_osrg_nao_sabe_pes,
    CAST(ind_paud_mbo_cad_com_cert_obit AS STRING) AS ind_paud_mbo_cad_com_cert_obit,
    CAST(ind_oaud_memb_ind_obto_neg AS STRING) AS ind_oaud_memb_ind_obto_neg,
    CAST(ind_paud_rf_eleitor_mult_memb AS STRING) AS ind_paud_rf_eleitor_mult_memb,
    CAST(ind_oaud_memb_mult_ctps AS STRING) AS ind_oaud_memb_mult_ctps,
    CAST(ind_oaud_memb_mult_rcn AS STRING) AS ind_oaud_memb_mult_rcn,
    CAST(ind_oaud_memb_mult_rg AS STRING) AS ind_oaud_memb_mult_rg,
    CAST(ind_paud_cpf_susp_receita AS STRING) AS ind_paud_cpf_susp_receita,
    CAST(ind_paud_cpf_cancel_receita AS STRING) AS ind_paud_cpf_cancel_receita,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.14_0601_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(ind_ptab_desat_inep_memb AS STRING) AS ind_ptab_desat_inep_memb,
    CAST(ind_pmig_cpo_obr_memb AS STRING) AS ind_pmig_cpo_obr_memb,
    CAST(ind_pmig_sem_doc_memb AS STRING) AS ind_pmig_sem_doc_memb,
    CAST(ind_pmig_rf_cpf_eleitor_memb AS STRING) AS ind_pmig_rf_cpf_eleitor_memb,
    CAST(ind_pmig_rf_cpf_inv_memb AS STRING) AS ind_pmig_rf_cpf_inv_memb,
    CAST(ind_pmig_rf_cpf_mult_memb AS STRING) AS ind_pmig_rf_cpf_mult_memb,
    CAST(ind_pmig_memb_cpf_mult_memb AS STRING) AS ind_pmig_memb_cpf_mult_memb,
    CAST(ind_pmig_rf_cpf_titular_memb AS STRING) AS ind_pmig_rf_cpf_titular_memb,
    CAST(ind_pmig_memb_cpf_titular_memb AS STRING) AS ind_pmig_memb_cpf_titular_memb,
    CAST(ind_pmig_rf_eleitor_inv_memb AS STRING) AS ind_pmig_rf_eleitor_inv_memb,
    CAST(ind_pmig_rf_eleitor_mult_memb AS STRING) AS ind_pmig_rf_eleitor_mult_memb,
    CAST(ind_pmig_memb_cpf_inv_memb AS STRING) AS ind_pmig_memb_cpf_inv_memb,
    CAST(ind_pmig_memb_eleitor_mult_memb AS STRING) AS ind_pmig_memb_eleitor_mult_memb,
    CAST(ind_pmig_rf_idade_16_memb AS STRING) AS ind_pmig_rf_idade_16_memb,
    CAST(ind_ptrn_memb_inep_memb AS STRING) AS ind_ptrn_memb_inep_memb,
    CAST(ind_ptrn_memb_parente_memb AS STRING) AS ind_ptrn_memb_parente_memb,
    CAST(ind_paud_cpo_obr_memb AS STRING) AS ind_paud_cpo_obr_memb,
    CAST(ind_paud_rf_cpf_eleitor_memb AS STRING) AS ind_paud_rf_cpf_eleitor_memb,
    CAST(ind_paud_rf_cpf_inv_memb AS STRING) AS ind_paud_rf_cpf_inv_memb,
    CAST(ind_paud_rf_cpf_mult_memb AS STRING) AS ind_paud_rf_cpf_mult_memb,
    CAST(ind_paud_memb_cpf_mult_memb AS STRING) AS ind_paud_memb_cpf_mult_memb,
    CAST(ind_paud_rf_cpf_titular_memb AS STRING) AS ind_paud_rf_cpf_titular_memb,
    CAST(ind_paud_memb_cpf_titular_memb AS STRING) AS ind_paud_memb_cpf_titular_memb,
    CAST(ind_paud_memb_cpf_inv_memb AS STRING) AS ind_paud_memb_cpf_inv_memb,
    CAST(ind_paud_memb_eleitor_inv_memb AS STRING) AS ind_paud_memb_eleitor_inv_memb,
    CAST(ind_paud_rf_eleitor_inv_memb AS STRING) AS ind_paud_rf_eleitor_inv_memb,
    CAST(ind_paud_memb_eleitor_mult_memb AS STRING) AS ind_paud_memb_eleitor_mult_memb,
    CAST(ind_paud_rf_idade_16_memb AS STRING) AS ind_paud_rf_idade_16_memb,
    CAST(ind_paud_rejei_memb AS STRING) AS ind_paud_rejei_memb,
    CAST(ind_otrn_outro_mun_pes AS STRING) AS ind_otrn_outro_mun_pes,
    CAST(ind_otrn_nova_pes AS STRING) AS ind_otrn_nova_pes,
    CAST(ind_otrn_exist_pes AS STRING) AS ind_otrn_exist_pes,
    CAST(ind_otrn_outra_pes AS STRING) AS ind_otrn_outra_pes,
    CAST(ind_osrg_sem_certidao_pes AS STRING) AS ind_osrg_sem_certidao_pes,
    CAST(ind_osrg_sem_registro_pes AS STRING) AS ind_osrg_sem_registro_pes,
    CAST(ind_osrg_nao_sabe_pes AS STRING) AS ind_osrg_nao_sabe_pes,
    CAST(ind_paud_mbo_cad_com_cert_obit AS STRING) AS ind_paud_mbo_cad_com_cert_obit,
    CAST(ind_oaud_memb_ind_obto_neg AS STRING) AS ind_oaud_memb_ind_obto_neg,
    CAST(ind_paud_rf_eleitor_mult_memb AS STRING) AS ind_paud_rf_eleitor_mult_memb,
    CAST(ind_oaud_memb_mult_ctps AS STRING) AS ind_oaud_memb_mult_ctps,
    CAST(ind_oaud_memb_mult_rcn AS STRING) AS ind_oaud_memb_mult_rcn,
    CAST(ind_oaud_memb_mult_rg AS STRING) AS ind_oaud_memb_mult_rg,
    CAST(ind_paud_cpf_cancel_receita AS STRING) AS ind_paud_cpf_cancel_receita,
    CAST(ind_paud_cpf_susp_receita AS STRING) AS ind_paud_cpf_susp_receita,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.14_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(ind_ptab_desat_inep_memb AS STRING) AS ind_ptab_desat_inep_memb,
    CAST(ind_pmig_cpo_obr_memb AS STRING) AS ind_pmig_cpo_obr_memb,
    CAST(ind_pmig_sem_doc_memb AS STRING) AS ind_pmig_sem_doc_memb,
    CAST(ind_pmig_rf_cpf_eleitor_memb AS STRING) AS ind_pmig_rf_cpf_eleitor_memb,
    CAST(ind_pmig_rf_cpf_inv_memb AS STRING) AS ind_pmig_rf_cpf_inv_memb,
    CAST(ind_pmig_rf_cpf_mult_memb AS STRING) AS ind_pmig_rf_cpf_mult_memb,
    CAST(ind_pmig_memb_cpf_mult_memb AS STRING) AS ind_pmig_memb_cpf_mult_memb,
    CAST(ind_pmig_rf_cpf_titular_memb AS STRING) AS ind_pmig_rf_cpf_titular_memb,
    CAST(ind_pmig_memb_cpf_titular_memb AS STRING) AS ind_pmig_memb_cpf_titular_memb,
    CAST(ind_pmig_rf_eleitor_inv_memb AS STRING) AS ind_pmig_rf_eleitor_inv_memb,
    CAST(ind_pmig_rf_eleitor_mult_memb AS STRING) AS ind_pmig_rf_eleitor_mult_memb,
    CAST(ind_pmig_memb_cpf_inv_memb AS STRING) AS ind_pmig_memb_cpf_inv_memb,
    CAST(ind_pmig_memb_eleitor_mult_memb AS STRING) AS ind_pmig_memb_eleitor_mult_memb,
    CAST(ind_pmig_rf_idade_16_memb AS STRING) AS ind_pmig_rf_idade_16_memb,
    CAST(ind_ptrn_memb_inep_memb AS STRING) AS ind_ptrn_memb_inep_memb,
    CAST(ind_ptrn_memb_parente_memb AS STRING) AS ind_ptrn_memb_parente_memb,
    CAST(ind_paud_cpo_obr_memb AS STRING) AS ind_paud_cpo_obr_memb,
    CAST(ind_paud_rf_cpf_eleitor_memb AS STRING) AS ind_paud_rf_cpf_eleitor_memb,
    CAST(ind_paud_rf_cpf_inv_memb AS STRING) AS ind_paud_rf_cpf_inv_memb,
    CAST(ind_paud_rf_cpf_mult_memb AS STRING) AS ind_paud_rf_cpf_mult_memb,
    CAST(ind_paud_memb_cpf_mult_memb AS STRING) AS ind_paud_memb_cpf_mult_memb,
    CAST(ind_paud_rf_cpf_titular_memb AS STRING) AS ind_paud_rf_cpf_titular_memb,
    CAST(ind_paud_memb_cpf_titular_memb AS STRING) AS ind_paud_memb_cpf_titular_memb,
    CAST(ind_paud_memb_cpf_inv_memb AS STRING) AS ind_paud_memb_cpf_inv_memb,
    CAST(ind_paud_memb_eleitor_inv_memb AS STRING) AS ind_paud_memb_eleitor_inv_memb,
    CAST(ind_paud_rf_eleitor_inv_memb AS STRING) AS ind_paud_rf_eleitor_inv_memb,
    CAST(ind_paud_memb_eleitor_mult_memb AS STRING) AS ind_paud_memb_eleitor_mult_memb,
    CAST(ind_paud_rf_idade_16_memb AS STRING) AS ind_paud_rf_idade_16_memb,
    CAST(ind_paud_rejei_memb AS STRING) AS ind_paud_rejei_memb,
    CAST(ind_otrn_outro_mun_pes AS STRING) AS ind_otrn_outro_mun_pes,
    CAST(ind_otrn_nova_pes AS STRING) AS ind_otrn_nova_pes,
    CAST(ind_otrn_exist_pes AS STRING) AS ind_otrn_exist_pes,
    CAST(ind_otrn_outra_pes AS STRING) AS ind_otrn_outra_pes,
    CAST(ind_osrg_sem_certidao_pes AS STRING) AS ind_osrg_sem_certidao_pes,
    CAST(ind_osrg_sem_registro_pes AS STRING) AS ind_osrg_sem_registro_pes,
    CAST(ind_osrg_nao_sabe_pes AS STRING) AS ind_osrg_nao_sabe_pes,
    CAST(ind_paud_mbo_cad_com_cert_obit AS STRING) AS ind_paud_mbo_cad_com_cert_obit,
    CAST(ind_oaud_memb_ind_obto_neg AS STRING) AS ind_oaud_memb_ind_obto_neg,
    CAST(ind_paud_rf_eleitor_mult_memb AS STRING) AS ind_paud_rf_eleitor_mult_memb,
    CAST(ind_oaud_memb_mult_ctps AS STRING) AS ind_oaud_memb_mult_ctps,
    CAST(ind_oaud_memb_mult_rcn AS STRING) AS ind_oaud_memb_mult_rcn,
    CAST(ind_oaud_memb_mult_rg AS STRING) AS ind_oaud_memb_mult_rg,
    CAST(ind_paud_cpf_cancel_receita AS STRING) AS ind_paud_cpf_cancel_receita,
    CAST(ind_paud_cpf_susp_receita AS STRING) AS ind_paud_cpf_susp_receita,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.14_0609_test`

