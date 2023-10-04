
SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_fam  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_fam  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( num_membro_fmla  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ptab_desat_inep_memb  AS STRING)
    END AS ptab_desativacao_inep,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_cpo_obr_memb  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_sem_doc_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_sem_doc_memb  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_eleitor_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_eleitor_memb  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_inv_memb  AS STRING)
    END AS pmig_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_mult_memb  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_cpf_mult_memb  AS STRING)
    END AS pmig_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_titular_memb  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_cpf_titular_memb  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_eleitor_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_eleitor_inv_memb  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_eleitor_mult_memb  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_cpf_inv_memb  AS STRING)
    END AS pmig_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_eleitor_mult_memb  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_idade_16_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_idade_16_memb  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_memb_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ptrn_memb_inep_memb  AS STRING)
    END AS ptrn_verficacao_dados_inep,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_memb_parente_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ptrn_memb_parente_memb  AS STRING)
    END AS ptrn_sem_relacao_parentesco,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_cpo_obr_memb  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_eleitor_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_eleitor_memb  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_inv_memb  AS STRING)
    END AS paud_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_mult_memb  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_cpf_mult_memb  AS STRING)
    END AS paud_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_titular_memb  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_cpf_titular_memb  AS STRING)
    END AS paud_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_cpf_inv_memb  AS STRING)
    END AS paud_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_eleitor_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_eleitor_inv_memb  AS STRING)
    END AS paud_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_eleitor_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_eleitor_inv_memb  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_eleitor_mult_memb  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_idade_16_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_idade_16_memb  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rejei_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rejei_memb  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outro_mun_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_outro_mun_pes  AS STRING)
    END AS otrn_transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_nova_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_nova_pes  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_exist_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_exist_pes  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outra_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_outra_pes  AS STRING)
    END AS otrn_transferida_outra_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_osrg_sem_certidao_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_osrg_sem_certidao_pes  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(ind_osrg_sem_registro_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_osrg_sem_registro_pes  AS STRING)
    END AS osrg_nao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(ind_osrg_nao_sabe_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_osrg_nao_sabe_pes  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_mbo_cad_com_cert_obit, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_mbo_cad_com_cert_obit  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_ind_obto_neg, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_ind_obto_neg  AS STRING)
    END AS oaud_indicativo_obito,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_eleitor_mult_memb  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_mult_ctps, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_mult_ctps  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_mult_rcn, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_mult_rcn  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_mult_rg, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_mult_rg  AS STRING)
    END AS oaud_rg_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpf_susp_receita, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_cpf_susp_receita  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpf_cancel_receita, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_cpf_cancel_receita  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.documento_membro_0601`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_fam  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_fam  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( num_membro_fmla  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ptab_desat_inep_memb  AS STRING)
    END AS ptab_desativacao_inep,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_cpo_obr_memb  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_sem_doc_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_sem_doc_memb  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_eleitor_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_eleitor_memb  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_inv_memb  AS STRING)
    END AS pmig_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_mult_memb  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_cpf_mult_memb  AS STRING)
    END AS pmig_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_titular_memb  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_cpf_titular_memb  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_eleitor_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_eleitor_inv_memb  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_eleitor_mult_memb  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_cpf_inv_memb  AS STRING)
    END AS pmig_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_eleitor_mult_memb  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_idade_16_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_idade_16_memb  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_memb_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ptrn_memb_inep_memb  AS STRING)
    END AS ptrn_verficacao_dados_inep,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_memb_parente_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ptrn_memb_parente_memb  AS STRING)
    END AS ptrn_sem_relacao_parentesco,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_cpo_obr_memb  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_eleitor_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_eleitor_memb  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_inv_memb  AS STRING)
    END AS paud_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_mult_memb  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_cpf_mult_memb  AS STRING)
    END AS paud_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_titular_memb  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_cpf_titular_memb  AS STRING)
    END AS paud_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_cpf_inv_memb  AS STRING)
    END AS paud_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_eleitor_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_eleitor_inv_memb  AS STRING)
    END AS paud_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_eleitor_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_eleitor_inv_memb  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_eleitor_mult_memb  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_idade_16_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_idade_16_memb  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rejei_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rejei_memb  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outro_mun_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_outro_mun_pes  AS STRING)
    END AS otrn_transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_nova_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_nova_pes  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_exist_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_exist_pes  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outra_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_outra_pes  AS STRING)
    END AS otrn_transferida_outra_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_osrg_sem_certidao_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_osrg_sem_certidao_pes  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(ind_osrg_sem_registro_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_osrg_sem_registro_pes  AS STRING)
    END AS osrg_nao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(ind_osrg_nao_sabe_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_osrg_nao_sabe_pes  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_mbo_cad_com_cert_obit, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_mbo_cad_com_cert_obit  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_ind_obto_neg, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_ind_obto_neg  AS STRING)
    END AS oaud_indicativo_obito,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_eleitor_mult_memb  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_mult_ctps, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_mult_ctps  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_mult_rcn, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_mult_rcn  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_mult_rg, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_mult_rg  AS STRING)
    END AS oaud_rg_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpf_cancel_receita, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_cpf_cancel_receita  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpf_susp_receita, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_cpf_susp_receita  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.documento_membro_0603`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_fam  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_fam  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( num_membro_fmla  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ptab_desat_inep_memb  AS STRING)
    END AS ptab_desativacao_inep,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_cpo_obr_memb  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_sem_doc_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_sem_doc_memb  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_eleitor_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_eleitor_memb  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_inv_memb  AS STRING)
    END AS pmig_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_mult_memb  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_cpf_mult_memb  AS STRING)
    END AS pmig_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_titular_memb  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_cpf_titular_memb  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_eleitor_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_eleitor_inv_memb  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_eleitor_mult_memb  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_cpf_inv_memb  AS STRING)
    END AS pmig_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_eleitor_mult_memb  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_idade_16_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_idade_16_memb  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_memb_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ptrn_memb_inep_memb  AS STRING)
    END AS ptrn_verficacao_dados_inep,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_memb_parente_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ptrn_memb_parente_memb  AS STRING)
    END AS ptrn_sem_relacao_parentesco,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_cpo_obr_memb  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_eleitor_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_eleitor_memb  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_inv_memb  AS STRING)
    END AS paud_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_mult_memb  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_cpf_mult_memb  AS STRING)
    END AS paud_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_titular_memb  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_cpf_titular_memb  AS STRING)
    END AS paud_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_cpf_inv_memb  AS STRING)
    END AS paud_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_eleitor_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_eleitor_inv_memb  AS STRING)
    END AS paud_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_eleitor_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_eleitor_inv_memb  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_eleitor_mult_memb  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_idade_16_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_idade_16_memb  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rejei_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rejei_memb  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outro_mun_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_outro_mun_pes  AS STRING)
    END AS otrn_transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_nova_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_nova_pes  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_exist_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_exist_pes  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outra_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_outra_pes  AS STRING)
    END AS otrn_transferida_outra_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_osrg_sem_certidao_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_osrg_sem_certidao_pes  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(ind_osrg_sem_registro_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_osrg_sem_registro_pes  AS STRING)
    END AS osrg_nao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(ind_osrg_nao_sabe_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_osrg_nao_sabe_pes  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_mbo_cad_com_cert_obit, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_mbo_cad_com_cert_obit  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_ind_obto_neg, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_ind_obto_neg  AS STRING)
    END AS oaud_indicativo_obito,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_eleitor_mult_memb  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_mult_ctps, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_mult_ctps  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_mult_rcn, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_mult_rcn  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_mult_rg, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_mult_rg  AS STRING)
    END AS oaud_rg_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpf_cancel_receita, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_cpf_cancel_receita  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpf_susp_receita, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_cpf_susp_receita  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.documento_membro_0604`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_fam  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_fam  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( num_membro_fmla  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ptab_desat_inep_memb  AS STRING)
    END AS ptab_desativacao_inep,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_cpo_obr_memb  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_sem_doc_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_sem_doc_memb  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_eleitor_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_eleitor_memb  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_inv_memb  AS STRING)
    END AS pmig_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_mult_memb  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_cpf_mult_memb  AS STRING)
    END AS pmig_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_titular_memb  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_cpf_titular_memb  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_eleitor_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_eleitor_inv_memb  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_eleitor_mult_memb  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_cpf_inv_memb  AS STRING)
    END AS pmig_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_eleitor_mult_memb  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_idade_16_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_idade_16_memb  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_memb_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ptrn_memb_inep_memb  AS STRING)
    END AS ptrn_verficacao_dados_inep,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_memb_parente_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ptrn_memb_parente_memb  AS STRING)
    END AS ptrn_sem_relacao_parentesco,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_cpo_obr_memb  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_eleitor_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_eleitor_memb  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_inv_memb  AS STRING)
    END AS paud_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_mult_memb  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_cpf_mult_memb  AS STRING)
    END AS paud_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_titular_memb  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_cpf_titular_memb  AS STRING)
    END AS paud_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_cpf_inv_memb  AS STRING)
    END AS paud_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_eleitor_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_eleitor_inv_memb  AS STRING)
    END AS paud_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_eleitor_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_eleitor_inv_memb  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_eleitor_mult_memb  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_idade_16_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_idade_16_memb  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rejei_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rejei_memb  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outro_mun_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_outro_mun_pes  AS STRING)
    END AS otrn_transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_nova_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_nova_pes  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_exist_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_exist_pes  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outra_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_outra_pes  AS STRING)
    END AS otrn_transferida_outra_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_osrg_sem_certidao_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_osrg_sem_certidao_pes  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(ind_osrg_sem_registro_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_osrg_sem_registro_pes  AS STRING)
    END AS osrg_nao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(ind_osrg_nao_sabe_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_osrg_nao_sabe_pes  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_mbo_cad_com_cert_obit, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_mbo_cad_com_cert_obit  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_ind_obto_neg, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_ind_obto_neg  AS STRING)
    END AS oaud_indicativo_obito,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_eleitor_mult_memb  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_mult_ctps, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_mult_ctps  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_mult_rcn, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_mult_rcn  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_mult_rg, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_mult_rg  AS STRING)
    END AS oaud_rg_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpf_cancel_receita, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_cpf_cancel_receita  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpf_susp_receita, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_cpf_susp_receita  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.documento_membro_0609`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_fam  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_fam  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( num_membro_fmla  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptab_desat_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ptab_desat_inep_memb  AS STRING)
    END AS ptab_desativacao_inep,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_cpo_obr_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_cpo_obr_memb  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_sem_doc_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_sem_doc_memb  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_eleitor_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_eleitor_memb  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_inv_memb  AS STRING)
    END AS pmig_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_mult_memb  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_cpf_mult_memb  AS STRING)
    END AS pmig_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_cpf_titular_memb  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_cpf_titular_memb  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_eleitor_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_eleitor_inv_memb  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_eleitor_mult_memb  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_cpf_inv_memb  AS STRING)
    END AS pmig_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_memb_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_memb_eleitor_mult_memb  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_pmig_rf_idade_16_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_pmig_rf_idade_16_memb  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_memb_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ptrn_memb_inep_memb  AS STRING)
    END AS ptrn_verficacao_dados_inep,
    CASE
        WHEN REGEXP_CONTAINS(ind_ptrn_memb_parente_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ptrn_memb_parente_memb  AS STRING)
    END AS ptrn_sem_relacao_parentesco,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpo_obr_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_cpo_obr_memb  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_eleitor_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_eleitor_memb  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_inv_memb  AS STRING)
    END AS paud_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_mult_memb  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_cpf_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_cpf_mult_memb  AS STRING)
    END AS paud_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_cpf_titular_memb  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_cpf_titular_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_cpf_titular_memb  AS STRING)
    END AS paud_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_cpf_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_cpf_inv_memb  AS STRING)
    END AS paud_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_eleitor_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_eleitor_inv_memb  AS STRING)
    END AS paud_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_eleitor_inv_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_eleitor_inv_memb  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_memb_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_memb_eleitor_mult_memb  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_idade_16_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_idade_16_memb  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rejei_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rejei_memb  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outro_mun_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_outro_mun_pes  AS STRING)
    END AS otrn_transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_nova_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_nova_pes  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_exist_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_exist_pes  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(ind_otrn_outra_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_otrn_outra_pes  AS STRING)
    END AS otrn_transferida_outra_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_osrg_sem_certidao_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_osrg_sem_certidao_pes  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(ind_osrg_sem_registro_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_osrg_sem_registro_pes  AS STRING)
    END AS osrg_nao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(ind_osrg_nao_sabe_pes, r'^\s*$') THEN NULL
        ELSE CAST( ind_osrg_nao_sabe_pes  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_mbo_cad_com_cert_obit, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_mbo_cad_com_cert_obit  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_ind_obto_neg, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_ind_obto_neg  AS STRING)
    END AS oaud_indicativo_obito,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_rf_eleitor_mult_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_rf_eleitor_mult_memb  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_mult_ctps, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_mult_ctps  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_mult_rcn, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_mult_rcn  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_oaud_memb_mult_rg, r'^\s*$') THEN NULL
        ELSE CAST( ind_oaud_memb_mult_rg  AS STRING)
    END AS oaud_rg_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpf_cancel_receita, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_cpf_cancel_receita  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,
    CASE
        WHEN REGEXP_CONTAINS(ind_paud_cpf_susp_receita, r'^\s*$') THEN NULL
        ELSE CAST( ind_paud_cpf_susp_receita  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.documento_membro_0612`

