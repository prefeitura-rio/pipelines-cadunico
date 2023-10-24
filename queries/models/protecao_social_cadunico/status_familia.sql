
SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: ind_oaud_excl_pess_cpf_nulo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS exclusao_pessoa_cpf_nulo,

    --column: ind_oend_uterrit_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS sem_unidade_territorial,

    --column: ind_otrn_exist_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS transferida_este_municipio_familia_existente,

    --column: ind_otrn_nova_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS transferida_este_municipio_nova_familia,

    --column: ind_otrn_outra_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS transferida_outra_familia_mesmo_municipio,

    --column: ind_otrn_outro_mun_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS transferida_outro_municipio,

    --column: ind_patl_fam_desatual_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS patl_dados_desatualizados,

    --column: ind_paud_cpo_obr_prin_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_principal,

    --column: ind_paud_cpo_obr_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_suplementar_1,

    --column: ind_paud_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS paud_sem_responsavel_cadastrado,

    --column: ind_pmds_pend_01
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS pmds_pendencia_01,

    --column: ind_pmds_pend_02
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS pmds_pendencia_02,

    --column: ind_pmds_pend_03
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS pmds_pendencia_03,

    --column: ind_pmds_pend_04
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS pmds_pendencia_04,

    --column: ind_pmds_pend_05
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS pmds_pendencia_05,

    --column: ind_pmds_pend_06
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS pmds_pendencia_06,

    --column: ind_pmds_pend_07
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS pmds_pendencia_07,

    --column: ind_pmds_pend_08
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS pmds_pendencia_08,

    --column: ind_pmds_pend_09
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS pmds_pendencia_09,

    --column: ind_pmds_pend_10
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS pmds_pendencia_10,

    --column: ind_pmds_pend_11
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS pmds_pendencia_11,

    --column: ind_pmds_pend_12
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS pmds_pendencia_12,

    --column: ind_pmds_pend_13
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS pmds_pendencia_13,

    --column: ind_pmds_pend_14
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS pmds_pendencia_14,

    --column: ind_pmds_pend_15
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS pmds_pendencia_15,

    --column: ind_pmds_pend_16
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS pmds_pendencia_16,

    --column: ind_pmds_pend_17
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS pmds_pendencia_17,

    --column: ind_pmds_pend_18
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS pmds_pendencia_18,

    --column: ind_pmds_pend_19
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS pmds_pendencia_19,

    --column: ind_pmds_pend_20
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS pmds_pendencia_20,

    --column: ind_pmds_pend_21
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS pmds_pendencia_21,

    --column: ind_pmds_pend_22
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS pmds_pendencia_22,

    --column: ind_pmds_pend_23
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS pmds_pendencia_23,

    --column: ind_pmds_pend_24
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS pmds_pendencia_24,

    --column: ind_pmds_pend_25
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS pmds_pendencia_25,

    --column: ind_pmds_pend_26
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS pmds_pendencia_26,

    --column: ind_pmds_pend_27
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS pmds_pendencia_27,

    --column: ind_pmds_pend_28
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS pmds_pendencia_28,

    --column: ind_pmds_pend_29
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS pmds_pendencia_29,

    --column: ind_pmds_pend_30
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS pmds_pendencia_30,

    --column: ind_pmig_cpo_obr_prin_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos,

    --column: ind_pmig_cpo_obr_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos_sumeplentar_1,

    --column: ind_pmig_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_sem_responsavel_familiar_cadastrado,

    --column: ind_ptab_desat_cras_creas_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS ptab_desativacao_cras_creas,

    --column: ind_ptab_desat_eas_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS ptab_desativacao_eas,

    --column: ind_ptab_desat_quilomb_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS ptab_desativacao_comunidades_quilombolas,

    --column: ind_ptab_desat_terras_indig_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS ptab_desativacao_terras_indigenas,

    --column: ind_ptrn_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS ptrn_sem_responsavel_familiar_cadastrado,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '13'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: ind_oaud_excl_pess_cpf_nulo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS exclusao_pessoa_cpf_nulo,

    --column: ind_oend_uterrit_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS sem_unidade_territorial,

    --column: ind_otrn_exist_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS transferida_este_municipio_familia_existente,

    --column: ind_otrn_nova_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS transferida_este_municipio_nova_familia,

    --column: ind_otrn_outra_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS transferida_outra_familia_mesmo_municipio,

    --column: ind_otrn_outro_mun_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS transferida_outro_municipio,

    --column: ind_patl_fam_desatual_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS patl_dados_desatualizados,

    --column: ind_paud_cpo_obr_prin_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_principal,

    --column: ind_paud_cpo_obr_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_suplementar_1,

    --column: ind_paud_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS paud_sem_responsavel_cadastrado,

    --column: ind_pmds_pend_01
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS pmds_pendencia_01,

    --column: ind_pmds_pend_02
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS pmds_pendencia_02,

    --column: ind_pmds_pend_03
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS pmds_pendencia_03,

    --column: ind_pmds_pend_04
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS pmds_pendencia_04,

    --column: ind_pmds_pend_05
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS pmds_pendencia_05,

    --column: ind_pmds_pend_06
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS pmds_pendencia_06,

    --column: ind_pmds_pend_07
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS pmds_pendencia_07,

    --column: ind_pmds_pend_08
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS pmds_pendencia_08,

    --column: ind_pmds_pend_09
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS pmds_pendencia_09,

    --column: ind_pmds_pend_10
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS pmds_pendencia_10,

    --column: ind_pmds_pend_11
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS pmds_pendencia_11,

    --column: ind_pmds_pend_12
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS pmds_pendencia_12,

    --column: ind_pmds_pend_13
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS pmds_pendencia_13,

    --column: ind_pmds_pend_14
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS pmds_pendencia_14,

    --column: ind_pmds_pend_15
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS pmds_pendencia_15,

    --column: ind_pmds_pend_16
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS pmds_pendencia_16,

    --column: ind_pmds_pend_17
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS pmds_pendencia_17,

    --column: ind_pmds_pend_18
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS pmds_pendencia_18,

    --column: ind_pmds_pend_19
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS pmds_pendencia_19,

    --column: ind_pmds_pend_20
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS pmds_pendencia_20,

    --column: ind_pmds_pend_21
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS pmds_pendencia_21,

    --column: ind_pmds_pend_22
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS pmds_pendencia_22,

    --column: ind_pmds_pend_23
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS pmds_pendencia_23,

    --column: ind_pmds_pend_24
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS pmds_pendencia_24,

    --column: ind_pmds_pend_25
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS pmds_pendencia_25,

    --column: ind_pmds_pend_26
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS pmds_pendencia_26,

    --column: ind_pmds_pend_27
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS pmds_pendencia_27,

    --column: ind_pmds_pend_28
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS pmds_pendencia_28,

    --column: ind_pmds_pend_29
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS pmds_pendencia_29,

    --column: ind_pmds_pend_30
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS pmds_pendencia_30,

    --column: ind_pmig_cpo_obr_prin_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos,

    --column: ind_pmig_cpo_obr_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos_sumeplentar_1,

    --column: ind_pmig_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_sem_responsavel_familiar_cadastrado,

    --column: ind_ptab_desat_cras_creas_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS ptab_desativacao_cras_creas,

    --column: ind_ptab_desat_eas_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS ptab_desativacao_eas,

    --column: ind_ptab_desat_quilomb_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS ptab_desativacao_comunidades_quilombolas,

    --column: ind_ptab_desat_terras_indig_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS ptab_desativacao_terras_indigenas,

    --column: ind_ptrn_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS ptrn_sem_responsavel_familiar_cadastrado,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '13'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: ind_oaud_excl_pess_cpf_nulo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS exclusao_pessoa_cpf_nulo,

    --column: ind_oend_uterrit_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS sem_unidade_territorial,

    --column: ind_otrn_exist_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS transferida_este_municipio_familia_existente,

    --column: ind_otrn_nova_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS transferida_este_municipio_nova_familia,

    --column: ind_otrn_outra_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS transferida_outra_familia_mesmo_municipio,

    --column: ind_otrn_outro_mun_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS transferida_outro_municipio,

    --column: ind_patl_fam_desatual_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS patl_dados_desatualizados,

    --column: ind_paud_cpo_obr_prin_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_principal,

    --column: ind_paud_cpo_obr_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_suplementar_1,

    --column: ind_paud_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS paud_sem_responsavel_cadastrado,

    --column: ind_pmds_pend_01
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS pmds_pendencia_01,

    --column: ind_pmds_pend_02
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS pmds_pendencia_02,

    --column: ind_pmds_pend_03
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS pmds_pendencia_03,

    --column: ind_pmds_pend_04
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS pmds_pendencia_04,

    --column: ind_pmds_pend_05
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS pmds_pendencia_05,

    --column: ind_pmds_pend_06
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS pmds_pendencia_06,

    --column: ind_pmds_pend_07
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS pmds_pendencia_07,

    --column: ind_pmds_pend_08
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS pmds_pendencia_08,

    --column: ind_pmds_pend_09
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS pmds_pendencia_09,

    --column: ind_pmds_pend_10
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS pmds_pendencia_10,

    --column: ind_pmds_pend_11
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS pmds_pendencia_11,

    --column: ind_pmds_pend_12
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS pmds_pendencia_12,

    --column: ind_pmds_pend_13
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS pmds_pendencia_13,

    --column: ind_pmds_pend_14
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS pmds_pendencia_14,

    --column: ind_pmds_pend_15
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS pmds_pendencia_15,

    --column: ind_pmds_pend_16
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS pmds_pendencia_16,

    --column: ind_pmds_pend_17
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS pmds_pendencia_17,

    --column: ind_pmds_pend_18
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS pmds_pendencia_18,

    --column: ind_pmds_pend_19
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS pmds_pendencia_19,

    --column: ind_pmds_pend_20
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS pmds_pendencia_20,

    --column: ind_pmds_pend_21
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS pmds_pendencia_21,

    --column: ind_pmds_pend_22
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS pmds_pendencia_22,

    --column: ind_pmds_pend_23
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS pmds_pendencia_23,

    --column: ind_pmds_pend_24
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS pmds_pendencia_24,

    --column: ind_pmds_pend_25
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS pmds_pendencia_25,

    --column: ind_pmds_pend_26
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS pmds_pendencia_26,

    --column: ind_pmds_pend_27
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS pmds_pendencia_27,

    --column: ind_pmds_pend_28
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS pmds_pendencia_28,

    --column: ind_pmds_pend_29
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS pmds_pendencia_29,

    --column: ind_pmds_pend_30
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS pmds_pendencia_30,

    --column: ind_pmig_cpo_obr_prin_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos,

    --column: ind_pmig_cpo_obr_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos_sumeplentar_1,

    --column: ind_pmig_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_sem_responsavel_familiar_cadastrado,

    --column: ind_ptab_desat_cras_creas_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS ptab_desativacao_cras_creas,

    --column: ind_ptab_desat_eas_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS ptab_desativacao_eas,

    --column: ind_ptab_desat_quilomb_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS ptab_desativacao_comunidades_quilombolas,

    --column: ind_ptab_desat_terras_indig_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS ptab_desativacao_terras_indigenas,

    --column: ind_ptrn_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS ptrn_sem_responsavel_familiar_cadastrado,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '13'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: ind_oaud_excl_pess_cpf_nulo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS exclusao_pessoa_cpf_nulo,

    --column: ind_oend_uterrit_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS sem_unidade_territorial,

    --column: ind_otrn_exist_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS transferida_este_municipio_familia_existente,

    --column: ind_otrn_nova_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS transferida_este_municipio_nova_familia,

    --column: ind_otrn_outra_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS transferida_outra_familia_mesmo_municipio,

    --column: ind_otrn_outro_mun_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS transferida_outro_municipio,

    --column: ind_patl_fam_desatual_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS patl_dados_desatualizados,

    --column: ind_paud_cpo_obr_prin_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_principal,

    --column: ind_paud_cpo_obr_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_suplementar_1,

    --column: ind_paud_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS paud_sem_responsavel_cadastrado,

    --column: ind_pmds_pend_01
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS pmds_pendencia_01,

    --column: ind_pmds_pend_02
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS pmds_pendencia_02,

    --column: ind_pmds_pend_03
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS pmds_pendencia_03,

    --column: ind_pmds_pend_04
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS pmds_pendencia_04,

    --column: ind_pmds_pend_05
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS pmds_pendencia_05,

    --column: ind_pmds_pend_06
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS pmds_pendencia_06,

    --column: ind_pmds_pend_07
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS pmds_pendencia_07,

    --column: ind_pmds_pend_08
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS pmds_pendencia_08,

    --column: ind_pmds_pend_09
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS pmds_pendencia_09,

    --column: ind_pmds_pend_10
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS pmds_pendencia_10,

    --column: ind_pmds_pend_11
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS pmds_pendencia_11,

    --column: ind_pmds_pend_12
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS pmds_pendencia_12,

    --column: ind_pmds_pend_13
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS pmds_pendencia_13,

    --column: ind_pmds_pend_14
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS pmds_pendencia_14,

    --column: ind_pmds_pend_15
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS pmds_pendencia_15,

    --column: ind_pmds_pend_16
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS pmds_pendencia_16,

    --column: ind_pmds_pend_17
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS pmds_pendencia_17,

    --column: ind_pmds_pend_18
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS pmds_pendencia_18,

    --column: ind_pmds_pend_19
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS pmds_pendencia_19,

    --column: ind_pmds_pend_20
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS pmds_pendencia_20,

    --column: ind_pmds_pend_21
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS pmds_pendencia_21,

    --column: ind_pmds_pend_22
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS pmds_pendencia_22,

    --column: ind_pmds_pend_23
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS pmds_pendencia_23,

    --column: ind_pmds_pend_24
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS pmds_pendencia_24,

    --column: ind_pmds_pend_25
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS pmds_pendencia_25,

    --column: ind_pmds_pend_26
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS pmds_pendencia_26,

    --column: ind_pmds_pend_27
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS pmds_pendencia_27,

    --column: ind_pmds_pend_28
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS pmds_pendencia_28,

    --column: ind_pmds_pend_29
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS pmds_pendencia_29,

    --column: ind_pmds_pend_30
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS pmds_pendencia_30,

    --column: ind_pmig_cpo_obr_prin_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos,

    --column: ind_pmig_cpo_obr_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos_sumeplentar_1,

    --column: ind_pmig_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_sem_responsavel_familiar_cadastrado,

    --column: ind_ptab_desat_cras_creas_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS ptab_desativacao_cras_creas,

    --column: ind_ptab_desat_eas_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS ptab_desativacao_eas,

    --column: ind_ptab_desat_quilomb_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS ptab_desativacao_comunidades_quilombolas,

    --column: ind_ptab_desat_terras_indig_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS ptab_desativacao_terras_indigenas,

    --column: ind_ptrn_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS ptrn_sem_responsavel_familiar_cadastrado,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '13'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: ind_oaud_excl_pess_cpf_nulo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS exclusao_pessoa_cpf_nulo,

    --column: ind_oend_uterrit_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS sem_unidade_territorial,

    --column: ind_otrn_exist_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS transferida_este_municipio_familia_existente,

    --column: ind_otrn_nova_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS transferida_este_municipio_nova_familia,

    --column: ind_otrn_outra_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS transferida_outra_familia_mesmo_municipio,

    --column: ind_otrn_outro_mun_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS transferida_outro_municipio,

    --column: ind_patl_fam_desatual_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS patl_dados_desatualizados,

    --column: ind_paud_cpo_obr_prin_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_principal,

    --column: ind_paud_cpo_obr_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_suplementar_1,

    --column: ind_paud_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS paud_sem_responsavel_cadastrado,

    --column: ind_pmds_pend_01
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS pmds_pendencia_01,

    --column: ind_pmds_pend_02
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS pmds_pendencia_02,

    --column: ind_pmds_pend_03
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS pmds_pendencia_03,

    --column: ind_pmds_pend_04
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS pmds_pendencia_04,

    --column: ind_pmds_pend_05
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS pmds_pendencia_05,

    --column: ind_pmds_pend_06
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS pmds_pendencia_06,

    --column: ind_pmds_pend_07
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS pmds_pendencia_07,

    --column: ind_pmds_pend_08
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS pmds_pendencia_08,

    --column: ind_pmds_pend_09
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS pmds_pendencia_09,

    --column: ind_pmds_pend_10
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS pmds_pendencia_10,

    --column: ind_pmds_pend_11
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS pmds_pendencia_11,

    --column: ind_pmds_pend_12
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS pmds_pendencia_12,

    --column: ind_pmds_pend_13
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS pmds_pendencia_13,

    --column: ind_pmds_pend_14
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS pmds_pendencia_14,

    --column: ind_pmds_pend_15
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS pmds_pendencia_15,

    --column: ind_pmds_pend_16
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS pmds_pendencia_16,

    --column: ind_pmds_pend_17
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS pmds_pendencia_17,

    --column: ind_pmds_pend_18
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS pmds_pendencia_18,

    --column: ind_pmds_pend_19
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS pmds_pendencia_19,

    --column: ind_pmds_pend_20
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS pmds_pendencia_20,

    --column: ind_pmds_pend_21
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS pmds_pendencia_21,

    --column: ind_pmds_pend_22
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS pmds_pendencia_22,

    --column: ind_pmds_pend_23
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS pmds_pendencia_23,

    --column: ind_pmds_pend_24
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS pmds_pendencia_24,

    --column: ind_pmds_pend_25
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS pmds_pendencia_25,

    --column: ind_pmds_pend_26
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS pmds_pendencia_26,

    --column: ind_pmds_pend_27
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS pmds_pendencia_27,

    --column: ind_pmds_pend_28
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS pmds_pendencia_28,

    --column: ind_pmds_pend_29
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS pmds_pendencia_29,

    --column: ind_pmds_pend_30
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS pmds_pendencia_30,

    --column: ind_pmig_cpo_obr_prin_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos,

    --column: ind_pmig_cpo_obr_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos_sumeplentar_1,

    --column: ind_pmig_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_sem_responsavel_familiar_cadastrado,

    --column: ind_ptab_desat_cras_creas_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS ptab_desativacao_cras_creas,

    --column: ind_ptab_desat_eas_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS ptab_desativacao_eas,

    --column: ind_ptab_desat_quilomb_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS ptab_desativacao_comunidades_quilombolas,

    --column: ind_ptab_desat_terras_indig_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS ptab_desativacao_terras_indigenas,

    --column: ind_ptrn_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS ptrn_sem_responsavel_familiar_cadastrado,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '13'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: ind_oaud_excl_pess_cpf_nulo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS exclusao_pessoa_cpf_nulo,

    --column: ind_oend_uterrit_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS sem_unidade_territorial,

    --column: ind_otrn_exist_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS transferida_este_municipio_familia_existente,

    --column: ind_otrn_nova_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS transferida_este_municipio_nova_familia,

    --column: ind_otrn_outra_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS transferida_outra_familia_mesmo_municipio,

    --column: ind_otrn_outro_mun_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS transferida_outro_municipio,

    --column: ind_patl_fam_desatual_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS patl_dados_desatualizados,

    --column: ind_paud_cpo_obr_prin_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_principal,

    --column: ind_paud_cpo_obr_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido_formulario_suplementar_1,

    --column: ind_paud_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS paud_sem_responsavel_cadastrado,

    --column: ind_pmds_pend_01
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS pmds_pendencia_01,

    --column: ind_pmds_pend_02
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS pmds_pendencia_02,

    --column: ind_pmds_pend_03
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS pmds_pendencia_03,

    --column: ind_pmds_pend_04
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS pmds_pendencia_04,

    --column: ind_pmds_pend_05
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS pmds_pendencia_05,

    --column: ind_pmds_pend_06
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS pmds_pendencia_06,

    --column: ind_pmds_pend_07
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS pmds_pendencia_07,

    --column: ind_pmds_pend_08
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS pmds_pendencia_08,

    --column: ind_pmds_pend_09
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS pmds_pendencia_09,

    --column: ind_pmds_pend_10
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS pmds_pendencia_10,

    --column: ind_pmds_pend_11
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS pmds_pendencia_11,

    --column: ind_pmds_pend_12
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS pmds_pendencia_12,

    --column: ind_pmds_pend_13
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS pmds_pendencia_13,

    --column: ind_pmds_pend_14
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS pmds_pendencia_14,

    --column: ind_pmds_pend_15
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS pmds_pendencia_15,

    --column: ind_pmds_pend_16
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS pmds_pendencia_16,

    --column: ind_pmds_pend_17
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS pmds_pendencia_17,

    --column: ind_pmds_pend_18
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS pmds_pendencia_18,

    --column: ind_pmds_pend_19
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS pmds_pendencia_19,

    --column: ind_pmds_pend_20
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS pmds_pendencia_20,

    --column: ind_pmds_pend_21
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS pmds_pendencia_21,

    --column: ind_pmds_pend_22
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS pmds_pendencia_22,

    --column: ind_pmds_pend_23
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS pmds_pendencia_23,

    --column: ind_pmds_pend_24
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS pmds_pendencia_24,

    --column: ind_pmds_pend_25
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS pmds_pendencia_25,

    --column: ind_pmds_pend_26
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS pmds_pendencia_26,

    --column: ind_pmds_pend_27
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS pmds_pendencia_27,

    --column: ind_pmds_pend_28
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS pmds_pendencia_28,

    --column: ind_pmds_pend_29
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS pmds_pendencia_29,

    --column: ind_pmds_pend_30
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS pmds_pendencia_30,

    --column: ind_pmig_cpo_obr_prin_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos,

    --column: ind_pmig_cpo_obr_sup1_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_campos_obrigatorios_nao_preenchidos_sumeplentar_1,

    --column: ind_pmig_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_sem_responsavel_familiar_cadastrado,

    --column: ind_ptab_desat_cras_creas_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS ptab_desativacao_cras_creas,

    --column: ind_ptab_desat_eas_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS ptab_desativacao_eas,

    --column: ind_ptab_desat_quilomb_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS ptab_desativacao_comunidades_quilombolas,

    --column: ind_ptab_desat_terras_indig_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS ptab_desativacao_terras_indigenas,

    --column: ind_ptrn_sem_rf_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS ptrn_sem_responsavel_familiar_cadastrado,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '13'

