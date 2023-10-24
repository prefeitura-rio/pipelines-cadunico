
SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS sesan_vende_leite,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS sesan_recebe_leite,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS sesan_vende_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS sesan_recebe_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS sesan_recebe_cesta_basica,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS sesan_refeicao_restaurante_popular,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS sesan_refeicao_cozinha_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS sesan_participou_curso_alimentacao_nutricao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS sesan_capitacao_agua_chuva_producao_alimentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS sesan_cisterna,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS sesan_horta_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS sesan_projeto_carteira_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS sesan_vende_feira_popular_mds,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS sesan_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS id_trabalho_escravo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS energia_tarifa_social,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS enegia_doacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS nao_pagou_instalacao_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS energia_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS id_conta_energia_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,20))  AS STRING)
    END AS id_conta_energia_unidade_consumidora,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS snas_bpc_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS snas_bpc_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS snas_programa_atencao_integram_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS snas_crianca_0_6_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS snas_gtupos_idosos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS snas_abrigo_mulher_vitima_violencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS snas_abrigo_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS snas_abrigo_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS snas_abrigo_adultos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS snas_abrigo_populacao_adulta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,91,1))  AS STRING)
    END AS snas_projovem_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,92,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,92,1))  AS STRING)
    END AS snas_projovem_urbano,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,93,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,93,1))  AS STRING)
    END AS snas_projovem_campo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,94,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,94,1))  AS STRING)
    END AS snas_projovem_trabalhador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,95,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,95,1))  AS STRING)
    END AS snas_habilitacao_reabilitacao_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,96,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,96,1))  AS STRING)
    END AS snas_enfrenta_violencia_crianca,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,97,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,97,1))  AS STRING)
    END AS snas_adolescente_liberdade_assistida,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,98,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,98,1))  AS STRING)
    END AS snas_adolescente_liberdade_servico_comunitario,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,1))  AS STRING)
    END AS snas_orientacao_especial_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,100,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,100,1))  AS STRING)
    END AS snas_centro_dia_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,101,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,101,1))  AS STRING)
    END AS snas_atendimento_domiciliar_idoso_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,102,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,102,1))  AS STRING)
    END AS snas_inclusao_produtiva,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,103,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,103,1))  AS STRING)
    END AS snas_programa_erradicacao_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,104,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,104,1))  AS STRING)
    END AS snas_nunhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,105,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,105,1))  AS STRING)
    END AS nao_beneficiaria_programa_ministerio_cidades,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,106,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,106,3))  AS STRING)
    END AS ind_parc_mds_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.seguranca_alimentar_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '11'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS sesan_vende_leite,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS sesan_recebe_leite,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS sesan_vende_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS sesan_recebe_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS sesan_recebe_cesta_basica,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS sesan_refeicao_restaurante_popular,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS sesan_refeicao_cozinha_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS sesan_participou_curso_alimentacao_nutricao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS sesan_capitacao_agua_chuva_producao_alimentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS sesan_cisterna,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS sesan_horta_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS sesan_projeto_carteira_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS sesan_vende_feira_popular_mds,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS sesan_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS id_trabalho_escravo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS energia_tarifa_social,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS enegia_doacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS nao_pagou_instalacao_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS energia_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS id_conta_energia_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,20))  AS STRING)
    END AS id_conta_energia_unidade_consumidora,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS snas_bpc_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS snas_bpc_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS snas_programa_atencao_integram_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS snas_crianca_0_6_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS snas_gtupos_idosos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS snas_abrigo_mulher_vitima_violencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS snas_abrigo_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS snas_abrigo_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS snas_abrigo_adultos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS snas_abrigo_populacao_adulta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,91,1))  AS STRING)
    END AS snas_projovem_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,92,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,92,1))  AS STRING)
    END AS snas_projovem_urbano,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,93,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,93,1))  AS STRING)
    END AS snas_projovem_campo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,94,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,94,1))  AS STRING)
    END AS snas_projovem_trabalhador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,95,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,95,1))  AS STRING)
    END AS snas_habilitacao_reabilitacao_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,96,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,96,1))  AS STRING)
    END AS snas_enfrenta_violencia_crianca,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,97,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,97,1))  AS STRING)
    END AS snas_adolescente_liberdade_assistida,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,98,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,98,1))  AS STRING)
    END AS snas_adolescente_liberdade_servico_comunitario,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,1))  AS STRING)
    END AS snas_orientacao_especial_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,100,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,100,1))  AS STRING)
    END AS snas_centro_dia_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,101,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,101,1))  AS STRING)
    END AS snas_atendimento_domiciliar_idoso_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,102,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,102,1))  AS STRING)
    END AS snas_inclusao_produtiva,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,103,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,103,1))  AS STRING)
    END AS snas_programa_erradicacao_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,104,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,104,1))  AS STRING)
    END AS snas_nunhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,105,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,105,1))  AS STRING)
    END AS nao_beneficiaria_programa_ministerio_cidades,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,106,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,106,3))  AS STRING)
    END AS ind_parc_mds_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.seguranca_alimentar_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '11'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS sesan_vende_leite,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS sesan_recebe_leite,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS sesan_vende_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS sesan_recebe_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS sesan_recebe_cesta_basica,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS sesan_refeicao_restaurante_popular,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS sesan_refeicao_cozinha_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS sesan_participou_curso_alimentacao_nutricao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS sesan_capitacao_agua_chuva_producao_alimentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS sesan_cisterna,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS sesan_horta_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS sesan_projeto_carteira_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS sesan_vende_feira_popular_mds,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS sesan_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS id_trabalho_escravo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS energia_tarifa_social,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS enegia_doacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS nao_pagou_instalacao_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS energia_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS id_conta_energia_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,20))  AS STRING)
    END AS id_conta_energia_unidade_consumidora,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS snas_bpc_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS snas_bpc_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS snas_programa_atencao_integram_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS snas_crianca_0_6_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS snas_gtupos_idosos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS snas_abrigo_mulher_vitima_violencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS snas_abrigo_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS snas_abrigo_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS snas_abrigo_adultos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS snas_abrigo_populacao_adulta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,91,1))  AS STRING)
    END AS snas_projovem_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,92,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,92,1))  AS STRING)
    END AS snas_projovem_urbano,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,93,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,93,1))  AS STRING)
    END AS snas_projovem_campo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,94,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,94,1))  AS STRING)
    END AS snas_projovem_trabalhador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,95,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,95,1))  AS STRING)
    END AS snas_habilitacao_reabilitacao_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,96,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,96,1))  AS STRING)
    END AS snas_enfrenta_violencia_crianca,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,97,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,97,1))  AS STRING)
    END AS snas_adolescente_liberdade_assistida,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,98,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,98,1))  AS STRING)
    END AS snas_adolescente_liberdade_servico_comunitario,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,1))  AS STRING)
    END AS snas_orientacao_especial_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,100,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,100,1))  AS STRING)
    END AS snas_centro_dia_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,101,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,101,1))  AS STRING)
    END AS snas_atendimento_domiciliar_idoso_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,102,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,102,1))  AS STRING)
    END AS snas_inclusao_produtiva,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,103,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,103,1))  AS STRING)
    END AS snas_programa_erradicacao_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,104,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,104,1))  AS STRING)
    END AS snas_nunhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,105,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,105,1))  AS STRING)
    END AS nao_beneficiaria_programa_ministerio_cidades,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,106,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,106,3))  AS STRING)
    END AS ind_parc_mds_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.seguranca_alimentar_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '11'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS sesan_vende_leite,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS sesan_recebe_leite,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS sesan_vende_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS sesan_recebe_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS sesan_recebe_cesta_basica,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS sesan_refeicao_restaurante_popular,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS sesan_refeicao_cozinha_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS sesan_participou_curso_alimentacao_nutricao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS sesan_capitacao_agua_chuva_producao_alimentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS sesan_cisterna,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS sesan_horta_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS sesan_projeto_carteira_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS sesan_vende_feira_popular_mds,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS sesan_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS id_trabalho_escravo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS energia_tarifa_social,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS enegia_doacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS nao_pagou_instalacao_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS energia_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS id_conta_energia_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,20))  AS STRING)
    END AS id_conta_energia_unidade_consumidora,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS snas_bpc_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS snas_bpc_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS snas_programa_atencao_integram_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS snas_crianca_0_6_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS snas_gtupos_idosos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS snas_abrigo_mulher_vitima_violencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS snas_abrigo_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS snas_abrigo_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS snas_abrigo_adultos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS snas_abrigo_populacao_adulta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,91,1))  AS STRING)
    END AS snas_projovem_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,92,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,92,1))  AS STRING)
    END AS snas_projovem_urbano,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,93,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,93,1))  AS STRING)
    END AS snas_projovem_campo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,94,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,94,1))  AS STRING)
    END AS snas_projovem_trabalhador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,95,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,95,1))  AS STRING)
    END AS snas_habilitacao_reabilitacao_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,96,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,96,1))  AS STRING)
    END AS snas_enfrenta_violencia_crianca,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,97,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,97,1))  AS STRING)
    END AS snas_adolescente_liberdade_assistida,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,98,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,98,1))  AS STRING)
    END AS snas_adolescente_liberdade_servico_comunitario,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,1))  AS STRING)
    END AS snas_orientacao_especial_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,100,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,100,1))  AS STRING)
    END AS snas_centro_dia_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,101,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,101,1))  AS STRING)
    END AS snas_atendimento_domiciliar_idoso_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,102,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,102,1))  AS STRING)
    END AS snas_inclusao_produtiva,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,103,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,103,1))  AS STRING)
    END AS snas_programa_erradicacao_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,104,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,104,1))  AS STRING)
    END AS snas_nunhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,105,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,105,1))  AS STRING)
    END AS nao_beneficiaria_programa_ministerio_cidades,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,106,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,106,3))  AS STRING)
    END AS ind_parc_mds_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.seguranca_alimentar_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '11'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS sesan_vende_leite,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS sesan_recebe_leite,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS sesan_vende_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS sesan_recebe_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS sesan_recebe_cesta_basica,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS sesan_refeicao_restaurante_popular,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS sesan_refeicao_cozinha_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS sesan_participou_curso_alimentacao_nutricao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS sesan_capitacao_agua_chuva_producao_alimentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS sesan_cisterna,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS sesan_horta_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS sesan_projeto_carteira_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS sesan_vende_feira_popular_mds,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS sesan_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS id_trabalho_escravo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS energia_tarifa_social,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS enegia_doacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS nao_pagou_instalacao_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS energia_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS id_conta_energia_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,20))  AS STRING)
    END AS id_conta_energia_unidade_consumidora,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS snas_bpc_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS snas_bpc_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS snas_programa_atencao_integram_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS snas_crianca_0_6_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS snas_gtupos_idosos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS snas_abrigo_mulher_vitima_violencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS snas_abrigo_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS snas_abrigo_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS snas_abrigo_adultos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS snas_abrigo_populacao_adulta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,91,1))  AS STRING)
    END AS snas_projovem_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,92,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,92,1))  AS STRING)
    END AS snas_projovem_urbano,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,93,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,93,1))  AS STRING)
    END AS snas_projovem_campo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,94,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,94,1))  AS STRING)
    END AS snas_projovem_trabalhador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,95,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,95,1))  AS STRING)
    END AS snas_habilitacao_reabilitacao_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,96,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,96,1))  AS STRING)
    END AS snas_enfrenta_violencia_crianca,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,97,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,97,1))  AS STRING)
    END AS snas_adolescente_liberdade_assistida,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,98,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,98,1))  AS STRING)
    END AS snas_adolescente_liberdade_servico_comunitario,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,1))  AS STRING)
    END AS snas_orientacao_especial_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,100,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,100,1))  AS STRING)
    END AS snas_centro_dia_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,101,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,101,1))  AS STRING)
    END AS snas_atendimento_domiciliar_idoso_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,102,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,102,1))  AS STRING)
    END AS snas_inclusao_produtiva,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,103,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,103,1))  AS STRING)
    END AS snas_programa_erradicacao_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,104,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,104,1))  AS STRING)
    END AS snas_nunhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,105,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,105,1))  AS STRING)
    END AS nao_beneficiaria_programa_ministerio_cidades,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,106,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,106,3))  AS STRING)
    END AS ind_parc_mds_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.seguranca_alimentar_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '11'
UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS sesan_vende_leite,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS sesan_recebe_leite,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS sesan_vende_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS sesan_recebe_alimento_paa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS sesan_recebe_cesta_basica,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS sesan_refeicao_restaurante_popular,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS sesan_refeicao_cozinha_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS sesan_participou_curso_alimentacao_nutricao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS sesan_capitacao_agua_chuva_producao_alimentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS sesan_cisterna,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS sesan_horta_comunitaria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS sesan_projeto_carteira_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS sesan_vende_feira_popular_mds,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS sesan_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS id_trabalho_escravo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS energia_tarifa_social,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS enegia_doacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS nao_pagou_instalacao_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS energia_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,2))  AS STRING)
    END AS id_conta_energia_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,20), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,20))  AS STRING)
    END AS id_conta_energia_unidade_consumidora,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS snas_bpc_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS snas_bpc_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS snas_programa_atencao_integram_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS snas_crianca_0_6_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS snas_gtupos_idosos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,86,1))  AS STRING)
    END AS snas_abrigo_mulher_vitima_violencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,87,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,87,1))  AS STRING)
    END AS snas_abrigo_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS snas_abrigo_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,89,1))  AS STRING)
    END AS snas_abrigo_adultos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,90,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,90,1))  AS STRING)
    END AS snas_abrigo_populacao_adulta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,91,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,91,1))  AS STRING)
    END AS snas_projovem_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,92,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,92,1))  AS STRING)
    END AS snas_projovem_urbano,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,93,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,93,1))  AS STRING)
    END AS snas_projovem_campo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,94,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,94,1))  AS STRING)
    END AS snas_projovem_trabalhador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,95,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,95,1))  AS STRING)
    END AS snas_habilitacao_reabilitacao_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,96,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,96,1))  AS STRING)
    END AS snas_enfrenta_violencia_crianca,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,97,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,97,1))  AS STRING)
    END AS snas_adolescente_liberdade_assistida,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,98,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,98,1))  AS STRING)
    END AS snas_adolescente_liberdade_servico_comunitario,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,1))  AS STRING)
    END AS snas_orientacao_especial_crianca_adolescente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,100,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,100,1))  AS STRING)
    END AS snas_centro_dia_idoso,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,101,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,101,1))  AS STRING)
    END AS snas_atendimento_domiciliar_idoso_deficiente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,102,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,102,1))  AS STRING)
    END AS snas_inclusao_produtiva,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,103,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,103,1))  AS STRING)
    END AS snas_programa_erradicacao_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,104,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,104,1))  AS STRING)
    END AS snas_nunhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,105,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,105,1))  AS STRING)
    END AS nao_beneficiaria_programa_ministerio_cidades,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,106,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,106,3))  AS STRING)
    END AS ind_parc_mds_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.seguranca_alimentar_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '11'
