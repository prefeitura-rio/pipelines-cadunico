
SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_quilomb_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_quilomb_fam)  AS STRING)
    END AS ptab_desativacao_comunidades_quilombolas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_terras_indig_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_terras_indig_fam)  AS STRING)
    END AS ptab_desativacao_terras_indigenas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_cras_creas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_cras_creas_fam)  AS STRING)
    END AS ptab_desativacao_cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_eas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_eas_fam)  AS STRING)
    END AS ptab_desativacao_eas,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_prin_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_cpo_obr_prin_fam)  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_cpo_obr_sup1_fam)  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos_sumeplentar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_sem_rf_fam)  AS STRING)
    END AS pmig_sem_responsavel_familiar_cadastrado,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptrn_sem_rf_fam)  AS STRING)
    END AS ptrn_sem_responsavel_familiar_cadastrado,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_prin_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_cpo_obr_prin_fam)  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_principal,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_cpo_obr_sup1_fam)  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_patl_fam_desatual_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_patl_fam_desatual_fam)  AS STRING)
    END AS patl_dados_desatualizados,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outro_mun_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_outro_mun_fam)  AS STRING)
    END AS transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_nova_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_nova_fam)  AS STRING)
    END AS transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_exist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_exist_fam)  AS STRING)
    END AS transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outra_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_outra_fam)  AS STRING)
    END AS transferida_outra_familia_mesmo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_oend_uterrit_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_oend_uterrit_fam)  AS STRING)
    END AS sem_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_01, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_01)  AS STRING)
    END AS pmds_pendencia_01,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_02, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_02)  AS STRING)
    END AS pmds_pendencia_02,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_03, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_03)  AS STRING)
    END AS pmds_pendencia_03,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_04, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_04)  AS STRING)
    END AS pmds_pendencia_04,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_05, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_05)  AS STRING)
    END AS pmds_pendencia_05,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_06, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_06)  AS STRING)
    END AS pmds_pendencia_06,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_07, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_07)  AS STRING)
    END AS pmds_pendencia_07,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_08, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_08)  AS STRING)
    END AS pmds_pendencia_08,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_09, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_09)  AS STRING)
    END AS pmds_pendencia_09,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_10, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_10)  AS STRING)
    END AS pmds_pendencia_10,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_11, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_11)  AS STRING)
    END AS pmds_pendencia_11,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_12, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_12)  AS STRING)
    END AS pmds_pendencia_12,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_13, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_13)  AS STRING)
    END AS pmds_pendencia_13,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_14, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_14)  AS STRING)
    END AS pmds_pendencia_14,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_15, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_15)  AS STRING)
    END AS pmds_pendencia_15,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_16, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_16)  AS STRING)
    END AS pmds_pendencia_16,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_17, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_17)  AS STRING)
    END AS pmds_pendencia_17,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_18, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_18)  AS STRING)
    END AS pmds_pendencia_18,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_19, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_19)  AS STRING)
    END AS pmds_pendencia_19,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_20, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_20)  AS STRING)
    END AS pmds_pendencia_20,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_21, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_21)  AS STRING)
    END AS pmds_pendencia_21,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_22, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_22)  AS STRING)
    END AS pmds_pendencia_22,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_23, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_23)  AS STRING)
    END AS pmds_pendencia_23,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_24, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_24)  AS STRING)
    END AS pmds_pendencia_24,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_25, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_25)  AS STRING)
    END AS pmds_pendencia_25,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_26, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_26)  AS STRING)
    END AS pmds_pendencia_26,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_27, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_27)  AS STRING)
    END AS pmds_pendencia_27,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_28, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_28)  AS STRING)
    END AS pmds_pendencia_28,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_29, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_29)  AS STRING)
    END AS pmds_pendencia_29,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_30, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_30)  AS STRING)
    END AS pmds_pendencia_30,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_excl_pess_cpf_nulo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_oaud_excl_pess_cpf_nulo)  AS STRING)
    END AS exclusao_pessoa_cpf_nulo,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_sem_rf_fam)  AS STRING)
    END AS paud_sem_responsavel_cadastrado,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.status_familia_0601`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_quilomb_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_quilomb_fam)  AS STRING)
    END AS ptab_desativacao_comunidades_quilombolas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_terras_indig_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_terras_indig_fam)  AS STRING)
    END AS ptab_desativacao_terras_indigenas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_cras_creas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_cras_creas_fam)  AS STRING)
    END AS ptab_desativacao_cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_eas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_eas_fam)  AS STRING)
    END AS ptab_desativacao_eas,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_prin_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_cpo_obr_prin_fam)  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_cpo_obr_sup1_fam)  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos_sumeplentar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_sem_rf_fam)  AS STRING)
    END AS pmig_sem_responsavel_familiar_cadastrado,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptrn_sem_rf_fam)  AS STRING)
    END AS ptrn_sem_responsavel_familiar_cadastrado,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_prin_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_cpo_obr_prin_fam)  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_principal,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_cpo_obr_sup1_fam)  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_patl_fam_desatual_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_patl_fam_desatual_fam)  AS STRING)
    END AS patl_dados_desatualizados,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outro_mun_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_outro_mun_fam)  AS STRING)
    END AS transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_nova_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_nova_fam)  AS STRING)
    END AS transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_exist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_exist_fam)  AS STRING)
    END AS transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outra_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_outra_fam)  AS STRING)
    END AS transferida_outra_familia_mesmo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_oend_uterrit_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_oend_uterrit_fam)  AS STRING)
    END AS sem_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_01, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_01)  AS STRING)
    END AS pmds_pendencia_01,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_02, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_02)  AS STRING)
    END AS pmds_pendencia_02,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_03, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_03)  AS STRING)
    END AS pmds_pendencia_03,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_04, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_04)  AS STRING)
    END AS pmds_pendencia_04,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_05, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_05)  AS STRING)
    END AS pmds_pendencia_05,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_06, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_06)  AS STRING)
    END AS pmds_pendencia_06,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_07, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_07)  AS STRING)
    END AS pmds_pendencia_07,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_08, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_08)  AS STRING)
    END AS pmds_pendencia_08,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_09, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_09)  AS STRING)
    END AS pmds_pendencia_09,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_10, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_10)  AS STRING)
    END AS pmds_pendencia_10,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_11, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_11)  AS STRING)
    END AS pmds_pendencia_11,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_12, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_12)  AS STRING)
    END AS pmds_pendencia_12,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_13, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_13)  AS STRING)
    END AS pmds_pendencia_13,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_14, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_14)  AS STRING)
    END AS pmds_pendencia_14,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_15, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_15)  AS STRING)
    END AS pmds_pendencia_15,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_16, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_16)  AS STRING)
    END AS pmds_pendencia_16,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_17, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_17)  AS STRING)
    END AS pmds_pendencia_17,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_18, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_18)  AS STRING)
    END AS pmds_pendencia_18,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_19, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_19)  AS STRING)
    END AS pmds_pendencia_19,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_20, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_20)  AS STRING)
    END AS pmds_pendencia_20,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_21, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_21)  AS STRING)
    END AS pmds_pendencia_21,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_22, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_22)  AS STRING)
    END AS pmds_pendencia_22,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_23, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_23)  AS STRING)
    END AS pmds_pendencia_23,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_24, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_24)  AS STRING)
    END AS pmds_pendencia_24,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_25, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_25)  AS STRING)
    END AS pmds_pendencia_25,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_26, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_26)  AS STRING)
    END AS pmds_pendencia_26,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_27, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_27)  AS STRING)
    END AS pmds_pendencia_27,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_28, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_28)  AS STRING)
    END AS pmds_pendencia_28,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_29, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_29)  AS STRING)
    END AS pmds_pendencia_29,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_30, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_30)  AS STRING)
    END AS pmds_pendencia_30,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_excl_pess_cpf_nulo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_oaud_excl_pess_cpf_nulo)  AS STRING)
    END AS exclusao_pessoa_cpf_nulo,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_sem_rf_fam)  AS STRING)
    END AS paud_sem_responsavel_cadastrado,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.status_familia_0603`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_quilomb_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_quilomb_fam)  AS STRING)
    END AS ptab_desativacao_comunidades_quilombolas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_terras_indig_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_terras_indig_fam)  AS STRING)
    END AS ptab_desativacao_terras_indigenas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_cras_creas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_cras_creas_fam)  AS STRING)
    END AS ptab_desativacao_cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_eas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_eas_fam)  AS STRING)
    END AS ptab_desativacao_eas,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_prin_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_cpo_obr_prin_fam)  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_cpo_obr_sup1_fam)  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos_sumeplentar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_sem_rf_fam)  AS STRING)
    END AS pmig_sem_responsavel_familiar_cadastrado,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptrn_sem_rf_fam)  AS STRING)
    END AS ptrn_sem_responsavel_familiar_cadastrado,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_prin_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_cpo_obr_prin_fam)  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_principal,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_cpo_obr_sup1_fam)  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_patl_fam_desatual_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_patl_fam_desatual_fam)  AS STRING)
    END AS patl_dados_desatualizados,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outro_mun_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_outro_mun_fam)  AS STRING)
    END AS transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_nova_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_nova_fam)  AS STRING)
    END AS transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_exist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_exist_fam)  AS STRING)
    END AS transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outra_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_outra_fam)  AS STRING)
    END AS transferida_outra_familia_mesmo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_oend_uterrit_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_oend_uterrit_fam)  AS STRING)
    END AS sem_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_01, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_01)  AS STRING)
    END AS pmds_pendencia_01,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_02, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_02)  AS STRING)
    END AS pmds_pendencia_02,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_03, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_03)  AS STRING)
    END AS pmds_pendencia_03,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_04, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_04)  AS STRING)
    END AS pmds_pendencia_04,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_05, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_05)  AS STRING)
    END AS pmds_pendencia_05,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_06, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_06)  AS STRING)
    END AS pmds_pendencia_06,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_07, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_07)  AS STRING)
    END AS pmds_pendencia_07,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_08, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_08)  AS STRING)
    END AS pmds_pendencia_08,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_09, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_09)  AS STRING)
    END AS pmds_pendencia_09,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_10, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_10)  AS STRING)
    END AS pmds_pendencia_10,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_11, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_11)  AS STRING)
    END AS pmds_pendencia_11,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_12, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_12)  AS STRING)
    END AS pmds_pendencia_12,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_13, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_13)  AS STRING)
    END AS pmds_pendencia_13,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_14, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_14)  AS STRING)
    END AS pmds_pendencia_14,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_15, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_15)  AS STRING)
    END AS pmds_pendencia_15,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_16, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_16)  AS STRING)
    END AS pmds_pendencia_16,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_17, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_17)  AS STRING)
    END AS pmds_pendencia_17,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_18, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_18)  AS STRING)
    END AS pmds_pendencia_18,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_19, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_19)  AS STRING)
    END AS pmds_pendencia_19,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_20, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_20)  AS STRING)
    END AS pmds_pendencia_20,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_21, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_21)  AS STRING)
    END AS pmds_pendencia_21,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_22, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_22)  AS STRING)
    END AS pmds_pendencia_22,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_23, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_23)  AS STRING)
    END AS pmds_pendencia_23,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_24, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_24)  AS STRING)
    END AS pmds_pendencia_24,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_25, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_25)  AS STRING)
    END AS pmds_pendencia_25,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_26, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_26)  AS STRING)
    END AS pmds_pendencia_26,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_27, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_27)  AS STRING)
    END AS pmds_pendencia_27,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_28, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_28)  AS STRING)
    END AS pmds_pendencia_28,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_29, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_29)  AS STRING)
    END AS pmds_pendencia_29,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_30, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_30)  AS STRING)
    END AS pmds_pendencia_30,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_excl_pess_cpf_nulo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_oaud_excl_pess_cpf_nulo)  AS STRING)
    END AS exclusao_pessoa_cpf_nulo,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_sem_rf_fam)  AS STRING)
    END AS paud_sem_responsavel_cadastrado,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.status_familia_0604`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_quilomb_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_quilomb_fam)  AS STRING)
    END AS ptab_desativacao_comunidades_quilombolas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_terras_indig_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_terras_indig_fam)  AS STRING)
    END AS ptab_desativacao_terras_indigenas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_cras_creas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_cras_creas_fam)  AS STRING)
    END AS ptab_desativacao_cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_eas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_eas_fam)  AS STRING)
    END AS ptab_desativacao_eas,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_prin_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_cpo_obr_prin_fam)  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_cpo_obr_sup1_fam)  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos_sumeplentar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_sem_rf_fam)  AS STRING)
    END AS pmig_sem_responsavel_familiar_cadastrado,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptrn_sem_rf_fam)  AS STRING)
    END AS ptrn_sem_responsavel_familiar_cadastrado,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_prin_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_cpo_obr_prin_fam)  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_principal,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_cpo_obr_sup1_fam)  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_patl_fam_desatual_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_patl_fam_desatual_fam)  AS STRING)
    END AS patl_dados_desatualizados,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outro_mun_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_outro_mun_fam)  AS STRING)
    END AS transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_nova_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_nova_fam)  AS STRING)
    END AS transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_exist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_exist_fam)  AS STRING)
    END AS transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outra_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_outra_fam)  AS STRING)
    END AS transferida_outra_familia_mesmo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_oend_uterrit_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_oend_uterrit_fam)  AS STRING)
    END AS sem_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_01, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_01)  AS STRING)
    END AS pmds_pendencia_01,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_02, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_02)  AS STRING)
    END AS pmds_pendencia_02,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_03, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_03)  AS STRING)
    END AS pmds_pendencia_03,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_04, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_04)  AS STRING)
    END AS pmds_pendencia_04,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_05, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_05)  AS STRING)
    END AS pmds_pendencia_05,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_06, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_06)  AS STRING)
    END AS pmds_pendencia_06,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_07, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_07)  AS STRING)
    END AS pmds_pendencia_07,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_08, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_08)  AS STRING)
    END AS pmds_pendencia_08,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_09, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_09)  AS STRING)
    END AS pmds_pendencia_09,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_10, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_10)  AS STRING)
    END AS pmds_pendencia_10,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_11, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_11)  AS STRING)
    END AS pmds_pendencia_11,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_12, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_12)  AS STRING)
    END AS pmds_pendencia_12,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_13, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_13)  AS STRING)
    END AS pmds_pendencia_13,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_14, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_14)  AS STRING)
    END AS pmds_pendencia_14,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_15, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_15)  AS STRING)
    END AS pmds_pendencia_15,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_16, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_16)  AS STRING)
    END AS pmds_pendencia_16,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_17, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_17)  AS STRING)
    END AS pmds_pendencia_17,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_18, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_18)  AS STRING)
    END AS pmds_pendencia_18,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_19, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_19)  AS STRING)
    END AS pmds_pendencia_19,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_20, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_20)  AS STRING)
    END AS pmds_pendencia_20,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_21, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_21)  AS STRING)
    END AS pmds_pendencia_21,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_22, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_22)  AS STRING)
    END AS pmds_pendencia_22,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_23, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_23)  AS STRING)
    END AS pmds_pendencia_23,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_24, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_24)  AS STRING)
    END AS pmds_pendencia_24,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_25, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_25)  AS STRING)
    END AS pmds_pendencia_25,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_26, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_26)  AS STRING)
    END AS pmds_pendencia_26,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_27, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_27)  AS STRING)
    END AS pmds_pendencia_27,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_28, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_28)  AS STRING)
    END AS pmds_pendencia_28,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_29, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_29)  AS STRING)
    END AS pmds_pendencia_29,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_30, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_30)  AS STRING)
    END AS pmds_pendencia_30,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_excl_pess_cpf_nulo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_oaud_excl_pess_cpf_nulo)  AS STRING)
    END AS exclusao_pessoa_cpf_nulo,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_sem_rf_fam)  AS STRING)
    END AS paud_sem_responsavel_cadastrado,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.status_familia_0609`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_quilomb_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_quilomb_fam)  AS STRING)
    END AS ptab_desativacao_comunidades_quilombolas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_terras_indig_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_terras_indig_fam)  AS STRING)
    END AS ptab_desativacao_terras_indigenas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_cras_creas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_cras_creas_fam)  AS STRING)
    END AS ptab_desativacao_cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_eas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_eas_fam)  AS STRING)
    END AS ptab_desativacao_eas,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_prin_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_cpo_obr_prin_fam)  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_cpo_obr_sup1_fam)  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos_sumeplentar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_sem_rf_fam)  AS STRING)
    END AS pmig_sem_responsavel_familiar_cadastrado,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptrn_sem_rf_fam)  AS STRING)
    END AS ptrn_sem_responsavel_familiar_cadastrado,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_prin_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_cpo_obr_prin_fam)  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_principal,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_cpo_obr_sup1_fam)  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_patl_fam_desatual_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_patl_fam_desatual_fam)  AS STRING)
    END AS patl_dados_desatualizados,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outro_mun_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_outro_mun_fam)  AS STRING)
    END AS transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_nova_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_nova_fam)  AS STRING)
    END AS transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_exist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_exist_fam)  AS STRING)
    END AS transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outra_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_outra_fam)  AS STRING)
    END AS transferida_outra_familia_mesmo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_oend_uterrit_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_oend_uterrit_fam)  AS STRING)
    END AS sem_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_01, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_01)  AS STRING)
    END AS pmds_pendencia_01,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_02, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_02)  AS STRING)
    END AS pmds_pendencia_02,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_03, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_03)  AS STRING)
    END AS pmds_pendencia_03,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_04, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_04)  AS STRING)
    END AS pmds_pendencia_04,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_05, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_05)  AS STRING)
    END AS pmds_pendencia_05,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_06, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_06)  AS STRING)
    END AS pmds_pendencia_06,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_07, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_07)  AS STRING)
    END AS pmds_pendencia_07,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_08, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_08)  AS STRING)
    END AS pmds_pendencia_08,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_09, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_09)  AS STRING)
    END AS pmds_pendencia_09,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_10, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_10)  AS STRING)
    END AS pmds_pendencia_10,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_11, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_11)  AS STRING)
    END AS pmds_pendencia_11,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_12, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_12)  AS STRING)
    END AS pmds_pendencia_12,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_13, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_13)  AS STRING)
    END AS pmds_pendencia_13,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_14, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_14)  AS STRING)
    END AS pmds_pendencia_14,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_15, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_15)  AS STRING)
    END AS pmds_pendencia_15,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_16, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_16)  AS STRING)
    END AS pmds_pendencia_16,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_17, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_17)  AS STRING)
    END AS pmds_pendencia_17,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_18, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_18)  AS STRING)
    END AS pmds_pendencia_18,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_19, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_19)  AS STRING)
    END AS pmds_pendencia_19,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_20, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_20)  AS STRING)
    END AS pmds_pendencia_20,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_21, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_21)  AS STRING)
    END AS pmds_pendencia_21,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_22, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_22)  AS STRING)
    END AS pmds_pendencia_22,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_23, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_23)  AS STRING)
    END AS pmds_pendencia_23,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_24, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_24)  AS STRING)
    END AS pmds_pendencia_24,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_25, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_25)  AS STRING)
    END AS pmds_pendencia_25,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_26, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_26)  AS STRING)
    END AS pmds_pendencia_26,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_27, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_27)  AS STRING)
    END AS pmds_pendencia_27,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_28, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_28)  AS STRING)
    END AS pmds_pendencia_28,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_29, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_29)  AS STRING)
    END AS pmds_pendencia_29,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_30, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_30)  AS STRING)
    END AS pmds_pendencia_30,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_excl_pess_cpf_nulo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_oaud_excl_pess_cpf_nulo)  AS STRING)
    END AS exclusao_pessoa_cpf_nulo,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_sem_rf_fam)  AS STRING)
    END AS paud_sem_responsavel_cadastrado,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.status_familia_0612`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_quilomb_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_quilomb_fam)  AS STRING)
    END AS ptab_desativacao_comunidades_quilombolas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_terras_indig_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_terras_indig_fam)  AS STRING)
    END AS ptab_desativacao_terras_indigenas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_cras_creas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_cras_creas_fam)  AS STRING)
    END AS ptab_desativacao_cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_eas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptab_desat_eas_fam)  AS STRING)
    END AS ptab_desativacao_eas,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_prin_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_cpo_obr_prin_fam)  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_cpo_obr_sup1_fam)  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos_sumeplentar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmig_sem_rf_fam)  AS STRING)
    END AS pmig_sem_responsavel_familiar_cadastrado,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ptrn_sem_rf_fam)  AS STRING)
    END AS ptrn_sem_responsavel_familiar_cadastrado,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_prin_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_cpo_obr_prin_fam)  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_principal,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_sup1_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_cpo_obr_sup1_fam)  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_suplementar_1,
    CASE
        WHEN REGEXP_CONTAINS(ind_patl_fam_desatual_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_patl_fam_desatual_fam)  AS STRING)
    END AS patl_dados_desatualizados,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outro_mun_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_outro_mun_fam)  AS STRING)
    END AS transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_nova_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_nova_fam)  AS STRING)
    END AS transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_exist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_exist_fam)  AS STRING)
    END AS transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outra_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_otrn_outra_fam)  AS STRING)
    END AS transferida_outra_familia_mesmo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_oend_uterrit_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_oend_uterrit_fam)  AS STRING)
    END AS sem_unidade_territorial,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_01, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_01)  AS STRING)
    END AS pmds_pendencia_01,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_02, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_02)  AS STRING)
    END AS pmds_pendencia_02,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_03, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_03)  AS STRING)
    END AS pmds_pendencia_03,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_04, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_04)  AS STRING)
    END AS pmds_pendencia_04,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_05, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_05)  AS STRING)
    END AS pmds_pendencia_05,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_06, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_06)  AS STRING)
    END AS pmds_pendencia_06,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_07, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_07)  AS STRING)
    END AS pmds_pendencia_07,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_08, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_08)  AS STRING)
    END AS pmds_pendencia_08,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_09, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_09)  AS STRING)
    END AS pmds_pendencia_09,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_10, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_10)  AS STRING)
    END AS pmds_pendencia_10,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_11, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_11)  AS STRING)
    END AS pmds_pendencia_11,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_12, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_12)  AS STRING)
    END AS pmds_pendencia_12,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_13, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_13)  AS STRING)
    END AS pmds_pendencia_13,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_14, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_14)  AS STRING)
    END AS pmds_pendencia_14,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_15, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_15)  AS STRING)
    END AS pmds_pendencia_15,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_16, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_16)  AS STRING)
    END AS pmds_pendencia_16,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_17, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_17)  AS STRING)
    END AS pmds_pendencia_17,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_18, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_18)  AS STRING)
    END AS pmds_pendencia_18,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_19, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_19)  AS STRING)
    END AS pmds_pendencia_19,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_20, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_20)  AS STRING)
    END AS pmds_pendencia_20,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_21, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_21)  AS STRING)
    END AS pmds_pendencia_21,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_22, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_22)  AS STRING)
    END AS pmds_pendencia_22,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_23, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_23)  AS STRING)
    END AS pmds_pendencia_23,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_24, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_24)  AS STRING)
    END AS pmds_pendencia_24,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_25, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_25)  AS STRING)
    END AS pmds_pendencia_25,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_26, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_26)  AS STRING)
    END AS pmds_pendencia_26,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_27, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_27)  AS STRING)
    END AS pmds_pendencia_27,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_28, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_28)  AS STRING)
    END AS pmds_pendencia_28,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_29, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_29)  AS STRING)
    END AS pmds_pendencia_29,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmds_pend_30, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pmds_pend_30)  AS STRING)
    END AS pmds_pendencia_30,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_excl_pess_cpf_nulo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_oaud_excl_pess_cpf_nulo)  AS STRING)
    END AS exclusao_pessoa_cpf_nulo,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_sem_rf_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_paud_sem_rf_fam)  AS STRING)
    END AS paud_sem_responsavel_cadastrado,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.status_familia_0615`

