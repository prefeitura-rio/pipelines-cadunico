
{{
    config(
        materialized="table",
        partition_by={
            "field": "data_particao",
            "data_type": "date",
            "granularity": "month",
        }
    )
}}


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

    --column: ind_oaud_memb_ind_obto_neg
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS oaud_indicativo_obito,

    --column: ind_oaud_memb_mult_ctps
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,

    --column: ind_oaud_memb_mult_rcn
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,

    --column: ind_oaud_memb_mult_rg
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS oaud_rg_multiplicidade,

    --column: ind_osrg_nao_sabe_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,

    --column: ind_osrg_sem_certidao_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,

    --column: ind_osrg_sem_registro_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS osrg_nao_registrada_cartorio,

    --column: ind_otrn_exist_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,

    --column: ind_otrn_nova_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,

    --column: ind_otrn_outra_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS otrn_transferida_outra_familia,

    --column: ind_otrn_outro_mun_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS otrn_transferida_outro_municipio,

    --column: ind_paud_cpf_cancel_receita
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,

    --column: ind_paud_cpf_susp_receita
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,

    --column: ind_paud_cpo_obr_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,

    --column: ind_paud_mbo_cad_com_cert_obit
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,

    --column: ind_paud_memb_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS paud_cpf_invalido,

    --column: ind_paud_memb_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS paud_cpf_multiplicidade,

    --column: ind_paud_memb_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS paud_cpf_divergencia_titularidade,

    --column: ind_paud_memb_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS paud_titulo_eleitor_invalido,

    --column: ind_paud_memb_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,

    --column: ind_paud_rejei_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,

    --column: ind_paud_rf_cpf_eleitor_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,

    --column: ind_paud_rf_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS paud_responsavel_cpf_invalido,

    --column: ind_paud_rf_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,

    --column: ind_paud_rf_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,

    --column: ind_paud_rf_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,

    --column: ind_paud_rf_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,

    --column: ind_paud_rf_idade_16_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,

    --column: ind_pmig_cpo_obr_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,

    --column: ind_pmig_memb_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS pmig_cpf_invalido,

    --column: ind_pmig_memb_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_cpf_multiplicidade,

    --column: ind_pmig_memb_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,

    --column: ind_pmig_memb_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,

    --column: ind_pmig_rf_cpf_eleitor_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,

    --column: ind_pmig_rf_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_responsavel_cpf_invalido,

    --column: ind_pmig_rf_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,

    --column: ind_pmig_rf_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,

    --column: ind_pmig_rf_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,

    --column: ind_pmig_rf_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,

    --column: ind_pmig_rf_idade_16_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,

    --column: ind_pmig_sem_doc_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,

    --column: ind_ptab_desat_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS ptab_desativacao_inep,

    --column: ind_ptrn_memb_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS ptrn_verficacao_dados_inep,

    --column: ind_ptrn_memb_parente_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS ptrn_sem_relacao_parentesco,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '14'

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

    --column: ind_oaud_memb_ind_obto_neg
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS oaud_indicativo_obito,

    --column: ind_oaud_memb_mult_ctps
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,

    --column: ind_oaud_memb_mult_rcn
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,

    --column: ind_oaud_memb_mult_rg
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS oaud_rg_multiplicidade,

    --column: ind_osrg_nao_sabe_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,

    --column: ind_osrg_sem_certidao_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,

    --column: ind_osrg_sem_registro_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS osrg_nao_registrada_cartorio,

    --column: ind_otrn_exist_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,

    --column: ind_otrn_nova_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,

    --column: ind_otrn_outra_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS otrn_transferida_outra_familia,

    --column: ind_otrn_outro_mun_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS otrn_transferida_outro_municipio,

    --column: ind_paud_cpf_cancel_receita
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,

    --column: ind_paud_cpf_susp_receita
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,

    --column: ind_paud_cpo_obr_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,

    --column: ind_paud_mbo_cad_com_cert_obit
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,

    --column: ind_paud_memb_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS paud_cpf_invalido,

    --column: ind_paud_memb_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS paud_cpf_multiplicidade,

    --column: ind_paud_memb_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS paud_cpf_divergencia_titularidade,

    --column: ind_paud_memb_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS paud_titulo_eleitor_invalido,

    --column: ind_paud_memb_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,

    --column: ind_paud_rejei_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,

    --column: ind_paud_rf_cpf_eleitor_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,

    --column: ind_paud_rf_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS paud_responsavel_cpf_invalido,

    --column: ind_paud_rf_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,

    --column: ind_paud_rf_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,

    --column: ind_paud_rf_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,

    --column: ind_paud_rf_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,

    --column: ind_paud_rf_idade_16_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,

    --column: ind_pmig_cpo_obr_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,

    --column: ind_pmig_memb_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS pmig_cpf_invalido,

    --column: ind_pmig_memb_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_cpf_multiplicidade,

    --column: ind_pmig_memb_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,

    --column: ind_pmig_memb_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,

    --column: ind_pmig_rf_cpf_eleitor_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,

    --column: ind_pmig_rf_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_responsavel_cpf_invalido,

    --column: ind_pmig_rf_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,

    --column: ind_pmig_rf_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,

    --column: ind_pmig_rf_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,

    --column: ind_pmig_rf_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,

    --column: ind_pmig_rf_idade_16_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,

    --column: ind_pmig_sem_doc_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,

    --column: ind_ptab_desat_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS ptab_desativacao_inep,

    --column: ind_ptrn_memb_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS ptrn_verficacao_dados_inep,

    --column: ind_ptrn_memb_parente_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS ptrn_sem_relacao_parentesco,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '14'

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

    --column: ind_oaud_memb_ind_obto_neg
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS oaud_indicativo_obito,

    --column: ind_oaud_memb_mult_ctps
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,

    --column: ind_oaud_memb_mult_rcn
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,

    --column: ind_oaud_memb_mult_rg
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS oaud_rg_multiplicidade,

    --column: ind_osrg_nao_sabe_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,

    --column: ind_osrg_sem_certidao_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,

    --column: ind_osrg_sem_registro_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS osrg_nao_registrada_cartorio,

    --column: ind_otrn_exist_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,

    --column: ind_otrn_nova_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,

    --column: ind_otrn_outra_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS otrn_transferida_outra_familia,

    --column: ind_otrn_outro_mun_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS otrn_transferida_outro_municipio,

    --column: ind_paud_cpf_cancel_receita
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,

    --column: ind_paud_cpf_susp_receita
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,

    --column: ind_paud_cpo_obr_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,

    --column: ind_paud_mbo_cad_com_cert_obit
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,

    --column: ind_paud_memb_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS paud_cpf_invalido,

    --column: ind_paud_memb_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS paud_cpf_multiplicidade,

    --column: ind_paud_memb_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS paud_cpf_divergencia_titularidade,

    --column: ind_paud_memb_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS paud_titulo_eleitor_invalido,

    --column: ind_paud_memb_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,

    --column: ind_paud_rejei_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,

    --column: ind_paud_rf_cpf_eleitor_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,

    --column: ind_paud_rf_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS paud_responsavel_cpf_invalido,

    --column: ind_paud_rf_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,

    --column: ind_paud_rf_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,

    --column: ind_paud_rf_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,

    --column: ind_paud_rf_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,

    --column: ind_paud_rf_idade_16_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,

    --column: ind_pmig_cpo_obr_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,

    --column: ind_pmig_memb_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS pmig_cpf_invalido,

    --column: ind_pmig_memb_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_cpf_multiplicidade,

    --column: ind_pmig_memb_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,

    --column: ind_pmig_memb_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,

    --column: ind_pmig_rf_cpf_eleitor_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,

    --column: ind_pmig_rf_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_responsavel_cpf_invalido,

    --column: ind_pmig_rf_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,

    --column: ind_pmig_rf_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,

    --column: ind_pmig_rf_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,

    --column: ind_pmig_rf_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,

    --column: ind_pmig_rf_idade_16_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,

    --column: ind_pmig_sem_doc_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,

    --column: ind_ptab_desat_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS ptab_desativacao_inep,

    --column: ind_ptrn_memb_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS ptrn_verficacao_dados_inep,

    --column: ind_ptrn_memb_parente_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS ptrn_sem_relacao_parentesco,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '14'

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

    --column: ind_oaud_memb_ind_obto_neg
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS oaud_indicativo_obito,

    --column: ind_oaud_memb_mult_ctps
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,

    --column: ind_oaud_memb_mult_rcn
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,

    --column: ind_oaud_memb_mult_rg
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS oaud_rg_multiplicidade,

    --column: ind_osrg_nao_sabe_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,

    --column: ind_osrg_sem_certidao_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,

    --column: ind_osrg_sem_registro_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS osrg_nao_registrada_cartorio,

    --column: ind_otrn_exist_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,

    --column: ind_otrn_nova_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,

    --column: ind_otrn_outra_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS otrn_transferida_outra_familia,

    --column: ind_otrn_outro_mun_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS otrn_transferida_outro_municipio,

    --column: ind_paud_cpf_cancel_receita
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,

    --column: ind_paud_cpf_susp_receita
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,

    --column: ind_paud_cpo_obr_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,

    --column: ind_paud_mbo_cad_com_cert_obit
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,

    --column: ind_paud_memb_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS paud_cpf_invalido,

    --column: ind_paud_memb_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS paud_cpf_multiplicidade,

    --column: ind_paud_memb_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS paud_cpf_divergencia_titularidade,

    --column: ind_paud_memb_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS paud_titulo_eleitor_invalido,

    --column: ind_paud_memb_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,

    --column: ind_paud_rejei_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,

    --column: ind_paud_rf_cpf_eleitor_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,

    --column: ind_paud_rf_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS paud_responsavel_cpf_invalido,

    --column: ind_paud_rf_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,

    --column: ind_paud_rf_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,

    --column: ind_paud_rf_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,

    --column: ind_paud_rf_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,

    --column: ind_paud_rf_idade_16_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,

    --column: ind_pmig_cpo_obr_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,

    --column: ind_pmig_memb_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS pmig_cpf_invalido,

    --column: ind_pmig_memb_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_cpf_multiplicidade,

    --column: ind_pmig_memb_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,

    --column: ind_pmig_memb_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,

    --column: ind_pmig_rf_cpf_eleitor_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,

    --column: ind_pmig_rf_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_responsavel_cpf_invalido,

    --column: ind_pmig_rf_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,

    --column: ind_pmig_rf_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,

    --column: ind_pmig_rf_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,

    --column: ind_pmig_rf_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,

    --column: ind_pmig_rf_idade_16_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,

    --column: ind_pmig_sem_doc_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,

    --column: ind_ptab_desat_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS ptab_desativacao_inep,

    --column: ind_ptrn_memb_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS ptrn_verficacao_dados_inep,

    --column: ind_ptrn_memb_parente_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS ptrn_sem_relacao_parentesco,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '14'

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

    --column: ind_oaud_memb_ind_obto_neg
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS oaud_indicativo_obito,

    --column: ind_oaud_memb_mult_ctps
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,

    --column: ind_oaud_memb_mult_rcn
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,

    --column: ind_oaud_memb_mult_rg
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS oaud_rg_multiplicidade,

    --column: ind_osrg_nao_sabe_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,

    --column: ind_osrg_sem_certidao_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,

    --column: ind_osrg_sem_registro_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS osrg_nao_registrada_cartorio,

    --column: ind_otrn_exist_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,

    --column: ind_otrn_nova_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,

    --column: ind_otrn_outra_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS otrn_transferida_outra_familia,

    --column: ind_otrn_outro_mun_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS otrn_transferida_outro_municipio,

    --column: ind_paud_cpf_cancel_receita
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,

    --column: ind_paud_cpf_susp_receita
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,

    --column: ind_paud_cpo_obr_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,

    --column: ind_paud_mbo_cad_com_cert_obit
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,

    --column: ind_paud_memb_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS paud_cpf_invalido,

    --column: ind_paud_memb_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS paud_cpf_multiplicidade,

    --column: ind_paud_memb_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS paud_cpf_divergencia_titularidade,

    --column: ind_paud_memb_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS paud_titulo_eleitor_invalido,

    --column: ind_paud_memb_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,

    --column: ind_paud_rejei_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,

    --column: ind_paud_rf_cpf_eleitor_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,

    --column: ind_paud_rf_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS paud_responsavel_cpf_invalido,

    --column: ind_paud_rf_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,

    --column: ind_paud_rf_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,

    --column: ind_paud_rf_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,

    --column: ind_paud_rf_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,

    --column: ind_paud_rf_idade_16_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,

    --column: ind_pmig_cpo_obr_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,

    --column: ind_pmig_memb_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS pmig_cpf_invalido,

    --column: ind_pmig_memb_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_cpf_multiplicidade,

    --column: ind_pmig_memb_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,

    --column: ind_pmig_memb_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,

    --column: ind_pmig_rf_cpf_eleitor_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,

    --column: ind_pmig_rf_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_responsavel_cpf_invalido,

    --column: ind_pmig_rf_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,

    --column: ind_pmig_rf_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,

    --column: ind_pmig_rf_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,

    --column: ind_pmig_rf_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,

    --column: ind_pmig_rf_idade_16_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,

    --column: ind_pmig_sem_doc_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,

    --column: ind_ptab_desat_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS ptab_desativacao_inep,

    --column: ind_ptrn_memb_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS ptrn_verficacao_dados_inep,

    --column: ind_ptrn_memb_parente_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS ptrn_sem_relacao_parentesco,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '14'

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

    --column: ind_oaud_memb_ind_obto_neg
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS oaud_indicativo_obito,

    --column: ind_oaud_memb_mult_ctps
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,

    --column: ind_oaud_memb_mult_rcn
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,

    --column: ind_oaud_memb_mult_rg
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS oaud_rg_multiplicidade,

    --column: ind_osrg_nao_sabe_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,

    --column: ind_osrg_sem_certidao_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,

    --column: ind_osrg_sem_registro_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS osrg_nao_registrada_cartorio,

    --column: ind_otrn_exist_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,

    --column: ind_otrn_nova_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,

    --column: ind_otrn_outra_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS otrn_transferida_outra_familia,

    --column: ind_otrn_outro_mun_pes
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS otrn_transferida_outro_municipio,

    --column: ind_paud_cpf_cancel_receita
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,

    --column: ind_paud_cpf_susp_receita
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,

    --column: ind_paud_cpo_obr_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,

    --column: ind_paud_mbo_cad_com_cert_obit
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,

    --column: ind_paud_memb_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS paud_cpf_invalido,

    --column: ind_paud_memb_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS paud_cpf_multiplicidade,

    --column: ind_paud_memb_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS paud_cpf_divergencia_titularidade,

    --column: ind_paud_memb_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS paud_titulo_eleitor_invalido,

    --column: ind_paud_memb_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,

    --column: ind_paud_rejei_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,

    --column: ind_paud_rf_cpf_eleitor_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,

    --column: ind_paud_rf_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS paud_responsavel_cpf_invalido,

    --column: ind_paud_rf_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,

    --column: ind_paud_rf_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,

    --column: ind_paud_rf_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,

    --column: ind_paud_rf_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,

    --column: ind_paud_rf_idade_16_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,

    --column: ind_pmig_cpo_obr_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,

    --column: ind_pmig_memb_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS pmig_cpf_invalido,

    --column: ind_pmig_memb_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_cpf_multiplicidade,

    --column: ind_pmig_memb_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,

    --column: ind_pmig_memb_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,

    --column: ind_pmig_rf_cpf_eleitor_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,

    --column: ind_pmig_rf_cpf_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_responsavel_cpf_invalido,

    --column: ind_pmig_rf_cpf_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,

    --column: ind_pmig_rf_cpf_titular_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,

    --column: ind_pmig_rf_eleitor_inv_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,

    --column: ind_pmig_rf_eleitor_mult_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,

    --column: ind_pmig_rf_idade_16_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,

    --column: ind_pmig_sem_doc_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,

    --column: ind_ptab_desat_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS ptab_desativacao_inep,

    --column: ind_ptrn_memb_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS ptrn_verficacao_dados_inep,

    --column: ind_ptrn_memb_parente_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS ptrn_sem_relacao_parentesco,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '14'

