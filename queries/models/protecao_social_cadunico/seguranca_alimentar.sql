
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
        WHEN REGEXP_CONTAINS(ind_sesan_vende_leite_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_vende_leite_fam)  AS STRING)
    END AS sesan_vende_leite,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_leite_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_leite_fam)  AS STRING)
    END AS sesan_recebe_leite,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_vende_alim_paa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_vende_alim_paa_fam)  AS STRING)
    END AS sesan_vende_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_alim_paa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_alim_paa_fam)  AS STRING)
    END AS sesan_recebe_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_cesta_basica_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_cesta_basica_fam)  AS STRING)
    END AS sesan_recebe_cesta_basica,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_refei_restau_popular_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_refei_restau_popular_fam)  AS STRING)
    END AS sesan_refeicao_restaurante_popular,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_refei_cozinha_comum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_refei_cozinha_comum_fam)  AS STRING)
    END AS sesan_refeicao_cozinha_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_partic_alim_nutricao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_partic_alim_nutricao_fam)  AS STRING)
    END AS sesan_participou_curso_alimentacao_nutricao,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_capit_agua_chuva_prod_alim_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_capit_agua_chuva_prod_alim_fam)  AS STRING)
    END AS sesan_capitacao_agua_chuva_producao_alimentos,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_cisterna_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_cisterna_fam)  AS STRING)
    END AS sesan_cisterna,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_horta_comum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_horta_comum_fam)  AS STRING)
    END AS sesan_horta_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_proj_cart_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_proj_cart_indigena_fam)  AS STRING)
    END AS sesan_projeto_carteira_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_feira_pop_mds_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_feira_pop_mds_fam)  AS STRING)
    END AS sesan_vende_feira_popular_mds,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_nenhum_fam)  AS STRING)
    END AS sesan_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_errad_trab_escravo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_errad_trab_escravo_fam)  AS STRING)
    END AS id_trabalho_escravo,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_tarifa_soc_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_tarifa_soc_fam)  AS STRING)
    END AS energia_tarifa_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_elet_doacao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_elet_doacao_fam)  AS STRING)
    END AS enegia_doacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_luz_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_luz_fam)  AS STRING)
    END AS nao_pagou_instalacao_energia,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_nenhum_fam)  AS STRING)
    END AS energia_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_cta_energ_ordem_pessoa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cta_energ_ordem_pessoa_fam)  AS STRING)
    END AS id_conta_energia_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(cod_cta_energ_unid_consum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cta_energ_unid_consum_fam)  AS STRING)
    END AS id_conta_energia_unidade_consumidora,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_bpc_deficiente_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_bpc_deficiente_fam)  AS STRING)
    END AS snas_bpc_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_bpc_idoso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_bpc_idoso_fam)  AS STRING)
    END AS snas_bpc_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_paif_fam__, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_paif_fam__)  AS STRING)
    END AS snas_programa_atencao_integram_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_crianca_0_6_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_crianca_0_6_anos_fam)  AS STRING)
    END AS snas_crianca_0_6_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_grupos_idosos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_grupos_idosos_fam)  AS STRING)
    END AS snas_gtupos_idosos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_mulher_vitima_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_mulher_vitima_fam)  AS STRING)
    END AS snas_abrigo_mulher_vitima_violencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_crianca_adoles_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_crianca_adoles_fam)  AS STRING)
    END AS snas_abrigo_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_idosos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_idosos_fam)  AS STRING)
    END AS snas_abrigo_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_adultos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_adultos_fam)  AS STRING)
    END AS snas_abrigo_adultos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_popul_adulta_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_popul_adulta_fam)  AS STRING)
    END AS snas_abrigo_populacao_adulta,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_adolescente_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_adolescente_fam)  AS STRING)
    END AS snas_projovem_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_urbano_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_urbano_fam)  AS STRING)
    END AS snas_projovem_urbano,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_campo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_campo_fam)  AS STRING)
    END AS snas_projovem_campo,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_trabalhador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_trabalhador_fam)  AS STRING)
    END AS snas_projovem_trabalhador,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_habilit_reabilit_deficiencia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_habilit_reabilit_deficiencia_fam)  AS STRING)
    END AS snas_habilitacao_reabilitacao_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_enfrenta_violencia_crianca_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_enfrenta_violencia_crianca_fam)  AS STRING)
    END AS snas_enfrenta_violencia_crianca,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_acomp_social_liberdade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_acomp_social_liberdade_fam)  AS STRING)
    END AS snas_adolescente_liberdade_assistida,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_acomp_social_liberdade_comunidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_acomp_social_liberdade_comunidade_fam)  AS STRING)
    END AS snas_adolescente_liberdade_servico_comunitario,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_orientacao_especial_criancas_adol_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_orientacao_especial_criancas_adol_fam)  AS STRING)
    END AS snas_orientacao_especial_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_centro_dia_idoso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_centro_dia_idoso_fam)  AS STRING)
    END AS snas_centro_dia_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_atend_domic_idosos_defic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_atend_domic_idosos_defic_fam)  AS STRING)
    END AS snas_atendimento_domiciliar_idoso_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_inclusao_produtiva_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_inclusao_produtiva_fam)  AS STRING)
    END AS snas_inclusao_produtiva,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_peti_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_peti_fam)  AS STRING)
    END AS snas_programa_erradicacao_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_nenhum_fam)  AS STRING)
    END AS snas_nunhum,
    CASE
        WHEN REGEXP_CONTAINS(ind_prog_prohab_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_prog_prohab_fam)  AS STRING)
    END AS nao_beneficiaria_programa_ministerio_cidades,
    CASE
        WHEN REGEXP_CONTAINS(ind_parc_mds_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_parc_mds_fam)  AS STRING)
    END AS ind_parc_mds_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.seguranca_alimentar_0601`

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
        WHEN REGEXP_CONTAINS(ind_sesan_vende_leite_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_vende_leite_fam)  AS STRING)
    END AS sesan_vende_leite,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_leite_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_leite_fam)  AS STRING)
    END AS sesan_recebe_leite,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_vende_alim_paa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_vende_alim_paa_fam)  AS STRING)
    END AS sesan_vende_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_alim_paa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_alim_paa_fam)  AS STRING)
    END AS sesan_recebe_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_cesta_basica_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_cesta_basica_fam)  AS STRING)
    END AS sesan_recebe_cesta_basica,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_refei_restau_popular_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_refei_restau_popular_fam)  AS STRING)
    END AS sesan_refeicao_restaurante_popular,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_refei_cozinha_comum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_refei_cozinha_comum_fam)  AS STRING)
    END AS sesan_refeicao_cozinha_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_partic_alim_nutricao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_partic_alim_nutricao_fam)  AS STRING)
    END AS sesan_participou_curso_alimentacao_nutricao,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_capit_agua_chuva_prod_alim_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_capit_agua_chuva_prod_alim_fam)  AS STRING)
    END AS sesan_capitacao_agua_chuva_producao_alimentos,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_cisterna_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_cisterna_fam)  AS STRING)
    END AS sesan_cisterna,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_horta_comum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_horta_comum_fam)  AS STRING)
    END AS sesan_horta_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_proj_cart_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_proj_cart_indigena_fam)  AS STRING)
    END AS sesan_projeto_carteira_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_feira_pop_mds_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_feira_pop_mds_fam)  AS STRING)
    END AS sesan_vende_feira_popular_mds,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_nenhum_fam)  AS STRING)
    END AS sesan_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_errad_trab_escravo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_errad_trab_escravo_fam)  AS STRING)
    END AS id_trabalho_escravo,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_tarifa_soc_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_tarifa_soc_fam)  AS STRING)
    END AS energia_tarifa_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_elet_doacao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_elet_doacao_fam)  AS STRING)
    END AS enegia_doacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_luz_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_luz_fam)  AS STRING)
    END AS nao_pagou_instalacao_energia,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_nenhum_fam)  AS STRING)
    END AS energia_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_cta_energ_ordem_pessoa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cta_energ_ordem_pessoa_fam)  AS STRING)
    END AS id_conta_energia_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(cod_cta_energ_unid_consum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cta_energ_unid_consum_fam)  AS STRING)
    END AS id_conta_energia_unidade_consumidora,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_bpc_deficiente_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_bpc_deficiente_fam)  AS STRING)
    END AS snas_bpc_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_bpc_idoso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_bpc_idoso_fam)  AS STRING)
    END AS snas_bpc_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_paif_fam__, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_paif_fam__)  AS STRING)
    END AS snas_programa_atencao_integram_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_crianca_0_6_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_crianca_0_6_anos_fam)  AS STRING)
    END AS snas_crianca_0_6_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_grupos_idosos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_grupos_idosos_fam)  AS STRING)
    END AS snas_gtupos_idosos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_mulher_vitima_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_mulher_vitima_fam)  AS STRING)
    END AS snas_abrigo_mulher_vitima_violencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_crianca_adoles_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_crianca_adoles_fam)  AS STRING)
    END AS snas_abrigo_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_idosos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_idosos_fam)  AS STRING)
    END AS snas_abrigo_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_adultos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_adultos_fam)  AS STRING)
    END AS snas_abrigo_adultos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_popul_adulta_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_popul_adulta_fam)  AS STRING)
    END AS snas_abrigo_populacao_adulta,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_adolescente_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_adolescente_fam)  AS STRING)
    END AS snas_projovem_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_urbano_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_urbano_fam)  AS STRING)
    END AS snas_projovem_urbano,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_campo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_campo_fam)  AS STRING)
    END AS snas_projovem_campo,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_trabalhador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_trabalhador_fam)  AS STRING)
    END AS snas_projovem_trabalhador,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_habilit_reabilit_deficiencia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_habilit_reabilit_deficiencia_fam)  AS STRING)
    END AS snas_habilitacao_reabilitacao_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_enfrenta_violencia_crianca_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_enfrenta_violencia_crianca_fam)  AS STRING)
    END AS snas_enfrenta_violencia_crianca,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_acomp_social_liberdade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_acomp_social_liberdade_fam)  AS STRING)
    END AS snas_adolescente_liberdade_assistida,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_acomp_social_liberdade_comunidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_acomp_social_liberdade_comunidade_fam)  AS STRING)
    END AS snas_adolescente_liberdade_servico_comunitario,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_orientacao_especial_criancas_adol_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_orientacao_especial_criancas_adol_fam)  AS STRING)
    END AS snas_orientacao_especial_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_centro_dia_idoso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_centro_dia_idoso_fam)  AS STRING)
    END AS snas_centro_dia_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_atend_domic_idosos_defic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_atend_domic_idosos_defic_fam)  AS STRING)
    END AS snas_atendimento_domiciliar_idoso_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_inclusao_produtiva_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_inclusao_produtiva_fam)  AS STRING)
    END AS snas_inclusao_produtiva,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_peti_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_peti_fam)  AS STRING)
    END AS snas_programa_erradicacao_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_nenhum_fam)  AS STRING)
    END AS snas_nunhum,
    CASE
        WHEN REGEXP_CONTAINS(ind_prog_prohab_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_prog_prohab_fam)  AS STRING)
    END AS nao_beneficiaria_programa_ministerio_cidades,
    CASE
        WHEN REGEXP_CONTAINS(ind_parc_mds_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_parc_mds_fam)  AS STRING)
    END AS ind_parc_mds_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.seguranca_alimentar_0603`

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
        WHEN REGEXP_CONTAINS(ind_sesan_vende_leite_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_vende_leite_fam)  AS STRING)
    END AS sesan_vende_leite,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_leite_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_leite_fam)  AS STRING)
    END AS sesan_recebe_leite,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_vende_alim_paa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_vende_alim_paa_fam)  AS STRING)
    END AS sesan_vende_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_alim_paa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_alim_paa_fam)  AS STRING)
    END AS sesan_recebe_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_cesta_basica_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_cesta_basica_fam)  AS STRING)
    END AS sesan_recebe_cesta_basica,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_refei_restau_popular_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_refei_restau_popular_fam)  AS STRING)
    END AS sesan_refeicao_restaurante_popular,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_refei_cozinha_comum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_refei_cozinha_comum_fam)  AS STRING)
    END AS sesan_refeicao_cozinha_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_partic_alim_nutricao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_partic_alim_nutricao_fam)  AS STRING)
    END AS sesan_participou_curso_alimentacao_nutricao,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_capit_agua_chuva_prod_alim_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_capit_agua_chuva_prod_alim_fam)  AS STRING)
    END AS sesan_capitacao_agua_chuva_producao_alimentos,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_cisterna_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_cisterna_fam)  AS STRING)
    END AS sesan_cisterna,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_horta_comum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_horta_comum_fam)  AS STRING)
    END AS sesan_horta_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_proj_cart_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_proj_cart_indigena_fam)  AS STRING)
    END AS sesan_projeto_carteira_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_feira_pop_mds_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_feira_pop_mds_fam)  AS STRING)
    END AS sesan_vende_feira_popular_mds,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_nenhum_fam)  AS STRING)
    END AS sesan_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_errad_trab_escravo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_errad_trab_escravo_fam)  AS STRING)
    END AS id_trabalho_escravo,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_tarifa_soc_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_tarifa_soc_fam)  AS STRING)
    END AS energia_tarifa_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_elet_doacao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_elet_doacao_fam)  AS STRING)
    END AS enegia_doacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_luz_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_luz_fam)  AS STRING)
    END AS nao_pagou_instalacao_energia,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_nenhum_fam)  AS STRING)
    END AS energia_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_cta_energ_ordem_pessoa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cta_energ_ordem_pessoa_fam)  AS STRING)
    END AS id_conta_energia_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(cod_cta_energ_unid_consum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cta_energ_unid_consum_fam)  AS STRING)
    END AS id_conta_energia_unidade_consumidora,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_bpc_deficiente_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_bpc_deficiente_fam)  AS STRING)
    END AS snas_bpc_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_bpc_idoso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_bpc_idoso_fam)  AS STRING)
    END AS snas_bpc_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_paif_fam__, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_paif_fam__)  AS STRING)
    END AS snas_programa_atencao_integram_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_crianca_0_6_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_crianca_0_6_anos_fam)  AS STRING)
    END AS snas_crianca_0_6_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_grupos_idosos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_grupos_idosos_fam)  AS STRING)
    END AS snas_gtupos_idosos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_mulher_vitima_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_mulher_vitima_fam)  AS STRING)
    END AS snas_abrigo_mulher_vitima_violencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_crianca_adoles_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_crianca_adoles_fam)  AS STRING)
    END AS snas_abrigo_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_idosos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_idosos_fam)  AS STRING)
    END AS snas_abrigo_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_adultos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_adultos_fam)  AS STRING)
    END AS snas_abrigo_adultos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_popul_adulta_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_popul_adulta_fam)  AS STRING)
    END AS snas_abrigo_populacao_adulta,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_adolescente_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_adolescente_fam)  AS STRING)
    END AS snas_projovem_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_urbano_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_urbano_fam)  AS STRING)
    END AS snas_projovem_urbano,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_campo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_campo_fam)  AS STRING)
    END AS snas_projovem_campo,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_trabalhador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_trabalhador_fam)  AS STRING)
    END AS snas_projovem_trabalhador,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_habilit_reabilit_deficiencia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_habilit_reabilit_deficiencia_fam)  AS STRING)
    END AS snas_habilitacao_reabilitacao_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_enfrenta_violencia_crianca_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_enfrenta_violencia_crianca_fam)  AS STRING)
    END AS snas_enfrenta_violencia_crianca,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_acomp_social_liberdade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_acomp_social_liberdade_fam)  AS STRING)
    END AS snas_adolescente_liberdade_assistida,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_acomp_social_liberdade_comunidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_acomp_social_liberdade_comunidade_fam)  AS STRING)
    END AS snas_adolescente_liberdade_servico_comunitario,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_orientacao_especial_criancas_adol_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_orientacao_especial_criancas_adol_fam)  AS STRING)
    END AS snas_orientacao_especial_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_centro_dia_idoso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_centro_dia_idoso_fam)  AS STRING)
    END AS snas_centro_dia_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_atend_domic_idosos_defic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_atend_domic_idosos_defic_fam)  AS STRING)
    END AS snas_atendimento_domiciliar_idoso_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_inclusao_produtiva_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_inclusao_produtiva_fam)  AS STRING)
    END AS snas_inclusao_produtiva,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_peti_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_peti_fam)  AS STRING)
    END AS snas_programa_erradicacao_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_nenhum_fam)  AS STRING)
    END AS snas_nunhum,
    CASE
        WHEN REGEXP_CONTAINS(ind_prog_prohab_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_prog_prohab_fam)  AS STRING)
    END AS nao_beneficiaria_programa_ministerio_cidades,
    CASE
        WHEN REGEXP_CONTAINS(ind_parc_mds_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_parc_mds_fam)  AS STRING)
    END AS ind_parc_mds_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.seguranca_alimentar_0604`

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
        WHEN REGEXP_CONTAINS(ind_sesan_vende_leite_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_vende_leite_fam)  AS STRING)
    END AS sesan_vende_leite,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_leite_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_leite_fam)  AS STRING)
    END AS sesan_recebe_leite,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_vende_alim_paa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_vende_alim_paa_fam)  AS STRING)
    END AS sesan_vende_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_alim_paa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_alim_paa_fam)  AS STRING)
    END AS sesan_recebe_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_cesta_basica_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_cesta_basica_fam)  AS STRING)
    END AS sesan_recebe_cesta_basica,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_refei_restau_popular_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_refei_restau_popular_fam)  AS STRING)
    END AS sesan_refeicao_restaurante_popular,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_refei_cozinha_comum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_refei_cozinha_comum_fam)  AS STRING)
    END AS sesan_refeicao_cozinha_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_partic_alim_nutricao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_partic_alim_nutricao_fam)  AS STRING)
    END AS sesan_participou_curso_alimentacao_nutricao,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_capit_agua_chuva_prod_alim_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_capit_agua_chuva_prod_alim_fam)  AS STRING)
    END AS sesan_capitacao_agua_chuva_producao_alimentos,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_cisterna_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_cisterna_fam)  AS STRING)
    END AS sesan_cisterna,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_horta_comum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_horta_comum_fam)  AS STRING)
    END AS sesan_horta_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_proj_cart_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_proj_cart_indigena_fam)  AS STRING)
    END AS sesan_projeto_carteira_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_feira_pop_mds_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_feira_pop_mds_fam)  AS STRING)
    END AS sesan_vende_feira_popular_mds,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_nenhum_fam)  AS STRING)
    END AS sesan_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_errad_trab_escravo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_errad_trab_escravo_fam)  AS STRING)
    END AS id_trabalho_escravo,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_tarifa_soc_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_tarifa_soc_fam)  AS STRING)
    END AS energia_tarifa_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_elet_doacao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_elet_doacao_fam)  AS STRING)
    END AS enegia_doacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_luz_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_luz_fam)  AS STRING)
    END AS nao_pagou_instalacao_energia,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_nenhum_fam)  AS STRING)
    END AS energia_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_cta_energ_ordem_pessoa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cta_energ_ordem_pessoa_fam)  AS STRING)
    END AS id_conta_energia_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(cod_cta_energ_unid_consum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cta_energ_unid_consum_fam)  AS STRING)
    END AS id_conta_energia_unidade_consumidora,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_bpc_deficiente_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_bpc_deficiente_fam)  AS STRING)
    END AS snas_bpc_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_bpc_idoso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_bpc_idoso_fam)  AS STRING)
    END AS snas_bpc_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_paif_fam__, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_paif_fam__)  AS STRING)
    END AS snas_programa_atencao_integram_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_crianca_0_6_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_crianca_0_6_anos_fam)  AS STRING)
    END AS snas_crianca_0_6_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_grupos_idosos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_grupos_idosos_fam)  AS STRING)
    END AS snas_gtupos_idosos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_mulher_vitima_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_mulher_vitima_fam)  AS STRING)
    END AS snas_abrigo_mulher_vitima_violencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_crianca_adoles_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_crianca_adoles_fam)  AS STRING)
    END AS snas_abrigo_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_idosos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_idosos_fam)  AS STRING)
    END AS snas_abrigo_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_adultos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_adultos_fam)  AS STRING)
    END AS snas_abrigo_adultos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_popul_adulta_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_popul_adulta_fam)  AS STRING)
    END AS snas_abrigo_populacao_adulta,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_adolescente_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_adolescente_fam)  AS STRING)
    END AS snas_projovem_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_urbano_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_urbano_fam)  AS STRING)
    END AS snas_projovem_urbano,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_campo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_campo_fam)  AS STRING)
    END AS snas_projovem_campo,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_trabalhador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_trabalhador_fam)  AS STRING)
    END AS snas_projovem_trabalhador,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_habilit_reabilit_deficiencia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_habilit_reabilit_deficiencia_fam)  AS STRING)
    END AS snas_habilitacao_reabilitacao_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_enfrenta_violencia_crianca_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_enfrenta_violencia_crianca_fam)  AS STRING)
    END AS snas_enfrenta_violencia_crianca,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_acomp_social_liberdade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_acomp_social_liberdade_fam)  AS STRING)
    END AS snas_adolescente_liberdade_assistida,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_acomp_social_liberdade_comunidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_acomp_social_liberdade_comunidade_fam)  AS STRING)
    END AS snas_adolescente_liberdade_servico_comunitario,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_orientacao_especial_criancas_adol_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_orientacao_especial_criancas_adol_fam)  AS STRING)
    END AS snas_orientacao_especial_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_centro_dia_idoso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_centro_dia_idoso_fam)  AS STRING)
    END AS snas_centro_dia_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_atend_domic_idosos_defic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_atend_domic_idosos_defic_fam)  AS STRING)
    END AS snas_atendimento_domiciliar_idoso_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_inclusao_produtiva_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_inclusao_produtiva_fam)  AS STRING)
    END AS snas_inclusao_produtiva,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_peti_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_peti_fam)  AS STRING)
    END AS snas_programa_erradicacao_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_nenhum_fam)  AS STRING)
    END AS snas_nunhum,
    CASE
        WHEN REGEXP_CONTAINS(ind_prog_prohab_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_prog_prohab_fam)  AS STRING)
    END AS nao_beneficiaria_programa_ministerio_cidades,
    CASE
        WHEN REGEXP_CONTAINS(ind_parc_mds_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_parc_mds_fam)  AS STRING)
    END AS ind_parc_mds_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.seguranca_alimentar_0609`

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
        WHEN REGEXP_CONTAINS(ind_sesan_vende_leite_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_vende_leite_fam)  AS STRING)
    END AS sesan_vende_leite,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_leite_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_leite_fam)  AS STRING)
    END AS sesan_recebe_leite,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_vende_alim_paa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_vende_alim_paa_fam)  AS STRING)
    END AS sesan_vende_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_alim_paa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_alim_paa_fam)  AS STRING)
    END AS sesan_recebe_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_cesta_basica_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_cesta_basica_fam)  AS STRING)
    END AS sesan_recebe_cesta_basica,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_refei_restau_popular_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_refei_restau_popular_fam)  AS STRING)
    END AS sesan_refeicao_restaurante_popular,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_refei_cozinha_comum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_refei_cozinha_comum_fam)  AS STRING)
    END AS sesan_refeicao_cozinha_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_partic_alim_nutricao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_partic_alim_nutricao_fam)  AS STRING)
    END AS sesan_participou_curso_alimentacao_nutricao,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_capit_agua_chuva_prod_alim_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_capit_agua_chuva_prod_alim_fam)  AS STRING)
    END AS sesan_capitacao_agua_chuva_producao_alimentos,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_cisterna_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_cisterna_fam)  AS STRING)
    END AS sesan_cisterna,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_horta_comum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_horta_comum_fam)  AS STRING)
    END AS sesan_horta_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_proj_cart_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_proj_cart_indigena_fam)  AS STRING)
    END AS sesan_projeto_carteira_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_feira_pop_mds_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_feira_pop_mds_fam)  AS STRING)
    END AS sesan_vende_feira_popular_mds,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_nenhum_fam)  AS STRING)
    END AS sesan_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_errad_trab_escravo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_errad_trab_escravo_fam)  AS STRING)
    END AS id_trabalho_escravo,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_tarifa_soc_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_tarifa_soc_fam)  AS STRING)
    END AS energia_tarifa_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_elet_doacao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_elet_doacao_fam)  AS STRING)
    END AS enegia_doacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_luz_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_luz_fam)  AS STRING)
    END AS nao_pagou_instalacao_energia,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_nenhum_fam)  AS STRING)
    END AS energia_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_cta_energ_ordem_pessoa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cta_energ_ordem_pessoa_fam)  AS STRING)
    END AS id_conta_energia_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(cod_cta_energ_unid_consum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cta_energ_unid_consum_fam)  AS STRING)
    END AS id_conta_energia_unidade_consumidora,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_bpc_deficiente_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_bpc_deficiente_fam)  AS STRING)
    END AS snas_bpc_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_bpc_idoso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_bpc_idoso_fam)  AS STRING)
    END AS snas_bpc_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_paif_fam__, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_paif_fam__)  AS STRING)
    END AS snas_programa_atencao_integram_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_crianca_0_6_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_crianca_0_6_anos_fam)  AS STRING)
    END AS snas_crianca_0_6_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_grupos_idosos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_grupos_idosos_fam)  AS STRING)
    END AS snas_gtupos_idosos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_mulher_vitima_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_mulher_vitima_fam)  AS STRING)
    END AS snas_abrigo_mulher_vitima_violencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_crianca_adoles_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_crianca_adoles_fam)  AS STRING)
    END AS snas_abrigo_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_idosos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_idosos_fam)  AS STRING)
    END AS snas_abrigo_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_adultos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_adultos_fam)  AS STRING)
    END AS snas_abrigo_adultos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_popul_adulta_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_popul_adulta_fam)  AS STRING)
    END AS snas_abrigo_populacao_adulta,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_adolescente_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_adolescente_fam)  AS STRING)
    END AS snas_projovem_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_urbano_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_urbano_fam)  AS STRING)
    END AS snas_projovem_urbano,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_campo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_campo_fam)  AS STRING)
    END AS snas_projovem_campo,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_trabalhador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_trabalhador_fam)  AS STRING)
    END AS snas_projovem_trabalhador,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_habilit_reabilit_deficiencia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_habilit_reabilit_deficiencia_fam)  AS STRING)
    END AS snas_habilitacao_reabilitacao_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_enfrenta_violencia_crianca_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_enfrenta_violencia_crianca_fam)  AS STRING)
    END AS snas_enfrenta_violencia_crianca,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_acomp_social_liberdade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_acomp_social_liberdade_fam)  AS STRING)
    END AS snas_adolescente_liberdade_assistida,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_acomp_social_liberdade_comunidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_acomp_social_liberdade_comunidade_fam)  AS STRING)
    END AS snas_adolescente_liberdade_servico_comunitario,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_orientacao_especial_criancas_adol_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_orientacao_especial_criancas_adol_fam)  AS STRING)
    END AS snas_orientacao_especial_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_centro_dia_idoso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_centro_dia_idoso_fam)  AS STRING)
    END AS snas_centro_dia_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_atend_domic_idosos_defic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_atend_domic_idosos_defic_fam)  AS STRING)
    END AS snas_atendimento_domiciliar_idoso_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_inclusao_produtiva_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_inclusao_produtiva_fam)  AS STRING)
    END AS snas_inclusao_produtiva,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_peti_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_peti_fam)  AS STRING)
    END AS snas_programa_erradicacao_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_nenhum_fam)  AS STRING)
    END AS snas_nunhum,
    CASE
        WHEN REGEXP_CONTAINS(ind_prog_prohab_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_prog_prohab_fam)  AS STRING)
    END AS nao_beneficiaria_programa_ministerio_cidades,
    CASE
        WHEN REGEXP_CONTAINS(ind_parc_mds_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_parc_mds_fam)  AS STRING)
    END AS ind_parc_mds_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.seguranca_alimentar_0612`

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
        WHEN REGEXP_CONTAINS(ind_sesan_vende_leite_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_vende_leite_fam)  AS STRING)
    END AS sesan_vende_leite,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_leite_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_leite_fam)  AS STRING)
    END AS sesan_recebe_leite,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_vende_alim_paa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_vende_alim_paa_fam)  AS STRING)
    END AS sesan_vende_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_alim_paa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_alim_paa_fam)  AS STRING)
    END AS sesan_recebe_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_receb_cesta_basica_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_receb_cesta_basica_fam)  AS STRING)
    END AS sesan_recebe_cesta_basica,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_refei_restau_popular_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_refei_restau_popular_fam)  AS STRING)
    END AS sesan_refeicao_restaurante_popular,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_refei_cozinha_comum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_refei_cozinha_comum_fam)  AS STRING)
    END AS sesan_refeicao_cozinha_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_partic_alim_nutricao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_partic_alim_nutricao_fam)  AS STRING)
    END AS sesan_participou_curso_alimentacao_nutricao,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_capit_agua_chuva_prod_alim_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_capit_agua_chuva_prod_alim_fam)  AS STRING)
    END AS sesan_capitacao_agua_chuva_producao_alimentos,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_cisterna_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_cisterna_fam)  AS STRING)
    END AS sesan_cisterna,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_horta_comum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_horta_comum_fam)  AS STRING)
    END AS sesan_horta_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_proj_cart_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_proj_cart_indigena_fam)  AS STRING)
    END AS sesan_projeto_carteira_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_feira_pop_mds_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_feira_pop_mds_fam)  AS STRING)
    END AS sesan_vende_feira_popular_mds,
    CASE
        WHEN REGEXP_CONTAINS(ind_sesan_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_sesan_nenhum_fam)  AS STRING)
    END AS sesan_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_errad_trab_escravo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_errad_trab_escravo_fam)  AS STRING)
    END AS id_trabalho_escravo,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_tarifa_soc_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_tarifa_soc_fam)  AS STRING)
    END AS energia_tarifa_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_elet_doacao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_elet_doacao_fam)  AS STRING)
    END AS enegia_doacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_luz_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_luz_fam)  AS STRING)
    END AS nao_pagou_instalacao_energia,
    CASE
        WHEN REGEXP_CONTAINS(ind_min_energ_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_min_energ_nenhum_fam)  AS STRING)
    END AS energia_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_cta_energ_ordem_pessoa_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cta_energ_ordem_pessoa_fam)  AS STRING)
    END AS id_conta_energia_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(cod_cta_energ_unid_consum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_cta_energ_unid_consum_fam)  AS STRING)
    END AS id_conta_energia_unidade_consumidora,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_bpc_deficiente_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_bpc_deficiente_fam)  AS STRING)
    END AS snas_bpc_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_bpc_idoso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_bpc_idoso_fam)  AS STRING)
    END AS snas_bpc_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_paif_fam__, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_paif_fam__)  AS STRING)
    END AS snas_programa_atencao_integram_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_crianca_0_6_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_crianca_0_6_anos_fam)  AS STRING)
    END AS snas_crianca_0_6_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_grupos_idosos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_grupos_idosos_fam)  AS STRING)
    END AS snas_gtupos_idosos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_mulher_vitima_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_mulher_vitima_fam)  AS STRING)
    END AS snas_abrigo_mulher_vitima_violencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_crianca_adoles_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_crianca_adoles_fam)  AS STRING)
    END AS snas_abrigo_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_idosos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_idosos_fam)  AS STRING)
    END AS snas_abrigo_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_adultos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_adultos_fam)  AS STRING)
    END AS snas_abrigo_adultos,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_abrigo_popul_adulta_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_abrigo_popul_adulta_fam)  AS STRING)
    END AS snas_abrigo_populacao_adulta,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_adolescente_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_adolescente_fam)  AS STRING)
    END AS snas_projovem_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_urbano_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_urbano_fam)  AS STRING)
    END AS snas_projovem_urbano,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_campo_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_campo_fam)  AS STRING)
    END AS snas_projovem_campo,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_projovem_trabalhador_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_projovem_trabalhador_fam)  AS STRING)
    END AS snas_projovem_trabalhador,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_habilit_reabilit_deficiencia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_habilit_reabilit_deficiencia_fam)  AS STRING)
    END AS snas_habilitacao_reabilitacao_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_enfrenta_violencia_crianca_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_enfrenta_violencia_crianca_fam)  AS STRING)
    END AS snas_enfrenta_violencia_crianca,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_acomp_social_liberdade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_acomp_social_liberdade_fam)  AS STRING)
    END AS snas_adolescente_liberdade_assistida,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_acomp_social_liberdade_comunidade_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_acomp_social_liberdade_comunidade_fam)  AS STRING)
    END AS snas_adolescente_liberdade_servico_comunitario,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_orientacao_especial_criancas_adol_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_orientacao_especial_criancas_adol_fam)  AS STRING)
    END AS snas_orientacao_especial_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_centro_dia_idoso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_centro_dia_idoso_fam)  AS STRING)
    END AS snas_centro_dia_idoso,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_atend_domic_idosos_defic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_atend_domic_idosos_defic_fam)  AS STRING)
    END AS snas_atendimento_domiciliar_idoso_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_inclusao_produtiva_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_inclusao_produtiva_fam)  AS STRING)
    END AS snas_inclusao_produtiva,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_peti_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_peti_fam)  AS STRING)
    END AS snas_programa_erradicacao_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(ind_snas_nenhum_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_snas_nenhum_fam)  AS STRING)
    END AS snas_nunhum,
    CASE
        WHEN REGEXP_CONTAINS(ind_prog_prohab_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_prog_prohab_fam)  AS STRING)
    END AS nao_beneficiaria_programa_ministerio_cidades,
    CASE
        WHEN REGEXP_CONTAINS(ind_parc_mds_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_parc_mds_fam)  AS STRING)
    END AS ind_parc_mds_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.seguranca_alimentar_0615`

