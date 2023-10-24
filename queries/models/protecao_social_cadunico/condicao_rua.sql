
{{
    config(
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

    --column: cod_cart_assinada_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS id_carteira_assinada,

    --column: cod_contato_parente_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS condicao_rua_contato_parente,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_tempo_cidade_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS id_tempo_municipio,

    --column: cod_tempo_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_tempo_rua,

    --column: cod_vive_fam_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS condicao_rua_vive_familia,

    --column: ind_atend_centro_ref_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,

    --column: ind_atend_cras_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS atendido_cras,

    --column: ind_atend_creas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS atendido_creas,

    --column: ind_atend_hospital_geral_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS atendido_hospital_geral,

    --column: ind_atend_inst_gov_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS atendido_instituicao_governamental,

    --column: ind_atend_inst_nao_gov_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS atendido_instituicao_nao_governamental,

    --column: ind_atend_nenhum_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS atendido_nenhum,

    --column: ind_ativ_com_associacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS atividade_comunitaria_associacao,

    --column: ind_ativ_com_coop_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS atividade_comunitaria_cooperativa,

    --column: ind_ativ_com_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS atividade_comunitaria_escola,

    --column: ind_ativ_com_mov_soc_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS atibidade_comunitaria_movimento_social,

    --column: ind_ativ_com_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,

    --column: ind_ativ_com_nao_sabe_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS atividade_comunitaria_nao_sabe,

    --column: ind_dinh_carregador_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS ganha_dinheiro_carregador,

    --column: ind_dinh_catador_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS ganha_dinheiro_catador,

    --column: ind_dinh_const_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS ganha_dinheiro_construcao_civil,

    --column: ind_dinh_flanelhinha_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS ganha_dinheiro_flanelinha,

    --column: ind_dinh_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,

    --column: ind_dinh_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS ganha_dinheiro_outro,

    --column: ind_dinh_pede_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS ganha_dinheiro_pedinte,

    --column: ind_dinh_servs_gerais_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,

    --column: ind_dinh_vendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS ganha_dinheiro_vendas,

    --column: ind_dormir_albergue_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS dorme_albergue,

    --column: ind_dormir_dom_part_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS dorme_domicilio_particular,

    --column: ind_dormir_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS dorme_rua,

    --column: ind_motivo_alcool_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS condicao_rua_alcool,

    --column: ind_motivo_ameaca_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS condicao_rua_ameaca,

    --column: ind_motivo_desemprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS condicao_rua_desemprego,

    --column: ind_motivo_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS condicao_rua_nao_respondeu,

    --column: ind_motivo_nao_sabe_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS condicao_rua_nao_sabe,

    --column: ind_motivo_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS condicao_rua_outro,

    --column: ind_motivo_perda_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS condicao_rua_perda_moradia,

    --column: ind_motivo_pref_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS condicao_rua_preferencia,

    --column: ind_motivo_probs_fam_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS condicao_rua_problemas_familiares,

    --column: ind_motivo_saude_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS condicao_rua_saude,

    --column: ind_motivo_trabalho_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS condicao_rua_trabalho,

    --column: ind_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS dorme_outro,

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

    --column: qtd_dormir_freq_albergue_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,43,1)) AS INT64)
    END AS dorme_albergue_vezes_semana,

    --column: qtd_dormir_freq_dom_part_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,1)) AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,

    --column: qtd_dormir_freq_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,41,1)) AS INT64)
    END AS dorme_rua_vezes_semana,

    --column: qtd_freq_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,47,1)) AS INT64)
    END AS dorme_outro_vezes_semana,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '12'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_cart_assinada_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS id_carteira_assinada,

    --column: cod_contato_parente_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS condicao_rua_contato_parente,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_tempo_cidade_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS id_tempo_municipio,

    --column: cod_tempo_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_tempo_rua,

    --column: cod_vive_fam_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS condicao_rua_vive_familia,

    --column: ind_atend_centro_ref_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,

    --column: ind_atend_cras_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS atendido_cras,

    --column: ind_atend_creas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS atendido_creas,

    --column: ind_atend_hospital_geral_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS atendido_hospital_geral,

    --column: ind_atend_inst_gov_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS atendido_instituicao_governamental,

    --column: ind_atend_inst_nao_gov_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS atendido_instituicao_nao_governamental,

    --column: ind_atend_nenhum_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS atendido_nenhum,

    --column: ind_ativ_com_associacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS atividade_comunitaria_associacao,

    --column: ind_ativ_com_coop_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS atividade_comunitaria_cooperativa,

    --column: ind_ativ_com_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS atividade_comunitaria_escola,

    --column: ind_ativ_com_mov_soc_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS atibidade_comunitaria_movimento_social,

    --column: ind_ativ_com_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,

    --column: ind_ativ_com_nao_sabe_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS atividade_comunitaria_nao_sabe,

    --column: ind_dinh_carregador_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS ganha_dinheiro_carregador,

    --column: ind_dinh_catador_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS ganha_dinheiro_catador,

    --column: ind_dinh_const_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS ganha_dinheiro_construcao_civil,

    --column: ind_dinh_flanelhinha_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS ganha_dinheiro_flanelinha,

    --column: ind_dinh_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,

    --column: ind_dinh_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS ganha_dinheiro_outro,

    --column: ind_dinh_pede_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS ganha_dinheiro_pedinte,

    --column: ind_dinh_servs_gerais_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,

    --column: ind_dinh_vendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS ganha_dinheiro_vendas,

    --column: ind_dormir_albergue_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS dorme_albergue,

    --column: ind_dormir_dom_part_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS dorme_domicilio_particular,

    --column: ind_dormir_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS dorme_rua,

    --column: ind_motivo_alcool_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS condicao_rua_alcool,

    --column: ind_motivo_ameaca_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS condicao_rua_ameaca,

    --column: ind_motivo_desemprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS condicao_rua_desemprego,

    --column: ind_motivo_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS condicao_rua_nao_respondeu,

    --column: ind_motivo_nao_sabe_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS condicao_rua_nao_sabe,

    --column: ind_motivo_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS condicao_rua_outro,

    --column: ind_motivo_perda_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS condicao_rua_perda_moradia,

    --column: ind_motivo_pref_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS condicao_rua_preferencia,

    --column: ind_motivo_probs_fam_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS condicao_rua_problemas_familiares,

    --column: ind_motivo_saude_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS condicao_rua_saude,

    --column: ind_motivo_trabalho_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS condicao_rua_trabalho,

    --column: ind_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS dorme_outro,

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

    --column: qtd_dormir_freq_albergue_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,43,1)) AS INT64)
    END AS dorme_albergue_vezes_semana,

    --column: qtd_dormir_freq_dom_part_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,1)) AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,

    --column: qtd_dormir_freq_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,41,1)) AS INT64)
    END AS dorme_rua_vezes_semana,

    --column: qtd_freq_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,47,1)) AS INT64)
    END AS dorme_outro_vezes_semana,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '12'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_cart_assinada_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS id_carteira_assinada,

    --column: cod_contato_parente_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS condicao_rua_contato_parente,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_tempo_cidade_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS id_tempo_municipio,

    --column: cod_tempo_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_tempo_rua,

    --column: cod_vive_fam_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS condicao_rua_vive_familia,

    --column: ind_atend_centro_ref_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,

    --column: ind_atend_cras_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS atendido_cras,

    --column: ind_atend_creas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS atendido_creas,

    --column: ind_atend_hospital_geral_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS atendido_hospital_geral,

    --column: ind_atend_inst_gov_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS atendido_instituicao_governamental,

    --column: ind_atend_inst_nao_gov_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS atendido_instituicao_nao_governamental,

    --column: ind_atend_nenhum_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS atendido_nenhum,

    --column: ind_ativ_com_associacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS atividade_comunitaria_associacao,

    --column: ind_ativ_com_coop_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS atividade_comunitaria_cooperativa,

    --column: ind_ativ_com_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS atividade_comunitaria_escola,

    --column: ind_ativ_com_mov_soc_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS atibidade_comunitaria_movimento_social,

    --column: ind_ativ_com_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,

    --column: ind_ativ_com_nao_sabe_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS atividade_comunitaria_nao_sabe,

    --column: ind_dinh_carregador_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS ganha_dinheiro_carregador,

    --column: ind_dinh_catador_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS ganha_dinheiro_catador,

    --column: ind_dinh_const_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS ganha_dinheiro_construcao_civil,

    --column: ind_dinh_flanelhinha_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS ganha_dinheiro_flanelinha,

    --column: ind_dinh_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,

    --column: ind_dinh_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS ganha_dinheiro_outro,

    --column: ind_dinh_pede_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS ganha_dinheiro_pedinte,

    --column: ind_dinh_servs_gerais_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,

    --column: ind_dinh_vendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS ganha_dinheiro_vendas,

    --column: ind_dormir_albergue_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS dorme_albergue,

    --column: ind_dormir_dom_part_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS dorme_domicilio_particular,

    --column: ind_dormir_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS dorme_rua,

    --column: ind_motivo_alcool_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS condicao_rua_alcool,

    --column: ind_motivo_ameaca_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS condicao_rua_ameaca,

    --column: ind_motivo_desemprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS condicao_rua_desemprego,

    --column: ind_motivo_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS condicao_rua_nao_respondeu,

    --column: ind_motivo_nao_sabe_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS condicao_rua_nao_sabe,

    --column: ind_motivo_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS condicao_rua_outro,

    --column: ind_motivo_perda_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS condicao_rua_perda_moradia,

    --column: ind_motivo_pref_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS condicao_rua_preferencia,

    --column: ind_motivo_probs_fam_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS condicao_rua_problemas_familiares,

    --column: ind_motivo_saude_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS condicao_rua_saude,

    --column: ind_motivo_trabalho_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS condicao_rua_trabalho,

    --column: ind_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS dorme_outro,

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

    --column: qtd_dormir_freq_albergue_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,43,1)) AS INT64)
    END AS dorme_albergue_vezes_semana,

    --column: qtd_dormir_freq_dom_part_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,1)) AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,

    --column: qtd_dormir_freq_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,41,1)) AS INT64)
    END AS dorme_rua_vezes_semana,

    --column: qtd_freq_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,47,1)) AS INT64)
    END AS dorme_outro_vezes_semana,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '12'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_cart_assinada_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS id_carteira_assinada,

    --column: cod_contato_parente_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS condicao_rua_contato_parente,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_tempo_cidade_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS id_tempo_municipio,

    --column: cod_tempo_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_tempo_rua,

    --column: cod_vive_fam_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS condicao_rua_vive_familia,

    --column: ind_atend_centro_ref_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,

    --column: ind_atend_cras_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS atendido_cras,

    --column: ind_atend_creas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS atendido_creas,

    --column: ind_atend_hospital_geral_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS atendido_hospital_geral,

    --column: ind_atend_inst_gov_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS atendido_instituicao_governamental,

    --column: ind_atend_inst_nao_gov_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS atendido_instituicao_nao_governamental,

    --column: ind_atend_nenhum_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS atendido_nenhum,

    --column: ind_ativ_com_associacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS atividade_comunitaria_associacao,

    --column: ind_ativ_com_coop_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS atividade_comunitaria_cooperativa,

    --column: ind_ativ_com_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS atividade_comunitaria_escola,

    --column: ind_ativ_com_mov_soc_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS atibidade_comunitaria_movimento_social,

    --column: ind_ativ_com_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,

    --column: ind_ativ_com_nao_sabe_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS atividade_comunitaria_nao_sabe,

    --column: ind_dinh_carregador_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS ganha_dinheiro_carregador,

    --column: ind_dinh_catador_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS ganha_dinheiro_catador,

    --column: ind_dinh_const_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS ganha_dinheiro_construcao_civil,

    --column: ind_dinh_flanelhinha_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS ganha_dinheiro_flanelinha,

    --column: ind_dinh_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,

    --column: ind_dinh_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS ganha_dinheiro_outro,

    --column: ind_dinh_pede_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS ganha_dinheiro_pedinte,

    --column: ind_dinh_servs_gerais_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,

    --column: ind_dinh_vendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS ganha_dinheiro_vendas,

    --column: ind_dormir_albergue_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS dorme_albergue,

    --column: ind_dormir_dom_part_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS dorme_domicilio_particular,

    --column: ind_dormir_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS dorme_rua,

    --column: ind_motivo_alcool_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS condicao_rua_alcool,

    --column: ind_motivo_ameaca_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS condicao_rua_ameaca,

    --column: ind_motivo_desemprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS condicao_rua_desemprego,

    --column: ind_motivo_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS condicao_rua_nao_respondeu,

    --column: ind_motivo_nao_sabe_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS condicao_rua_nao_sabe,

    --column: ind_motivo_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS condicao_rua_outro,

    --column: ind_motivo_perda_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS condicao_rua_perda_moradia,

    --column: ind_motivo_pref_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS condicao_rua_preferencia,

    --column: ind_motivo_probs_fam_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS condicao_rua_problemas_familiares,

    --column: ind_motivo_saude_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS condicao_rua_saude,

    --column: ind_motivo_trabalho_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS condicao_rua_trabalho,

    --column: ind_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS dorme_outro,

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

    --column: qtd_dormir_freq_albergue_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,43,1)) AS INT64)
    END AS dorme_albergue_vezes_semana,

    --column: qtd_dormir_freq_dom_part_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,1)) AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,

    --column: qtd_dormir_freq_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,41,1)) AS INT64)
    END AS dorme_rua_vezes_semana,

    --column: qtd_freq_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,47,1)) AS INT64)
    END AS dorme_outro_vezes_semana,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '12'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_cart_assinada_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS id_carteira_assinada,

    --column: cod_contato_parente_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS condicao_rua_contato_parente,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_tempo_cidade_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS id_tempo_municipio,

    --column: cod_tempo_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_tempo_rua,

    --column: cod_vive_fam_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS condicao_rua_vive_familia,

    --column: ind_atend_centro_ref_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,

    --column: ind_atend_cras_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS atendido_cras,

    --column: ind_atend_creas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS atendido_creas,

    --column: ind_atend_hospital_geral_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS atendido_hospital_geral,

    --column: ind_atend_inst_gov_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS atendido_instituicao_governamental,

    --column: ind_atend_inst_nao_gov_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS atendido_instituicao_nao_governamental,

    --column: ind_atend_nenhum_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS atendido_nenhum,

    --column: ind_ativ_com_associacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS atividade_comunitaria_associacao,

    --column: ind_ativ_com_coop_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS atividade_comunitaria_cooperativa,

    --column: ind_ativ_com_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS atividade_comunitaria_escola,

    --column: ind_ativ_com_mov_soc_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS atibidade_comunitaria_movimento_social,

    --column: ind_ativ_com_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,

    --column: ind_ativ_com_nao_sabe_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS atividade_comunitaria_nao_sabe,

    --column: ind_dinh_carregador_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS ganha_dinheiro_carregador,

    --column: ind_dinh_catador_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS ganha_dinheiro_catador,

    --column: ind_dinh_const_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS ganha_dinheiro_construcao_civil,

    --column: ind_dinh_flanelhinha_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS ganha_dinheiro_flanelinha,

    --column: ind_dinh_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,

    --column: ind_dinh_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS ganha_dinheiro_outro,

    --column: ind_dinh_pede_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS ganha_dinheiro_pedinte,

    --column: ind_dinh_servs_gerais_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,

    --column: ind_dinh_vendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS ganha_dinheiro_vendas,

    --column: ind_dormir_albergue_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS dorme_albergue,

    --column: ind_dormir_dom_part_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS dorme_domicilio_particular,

    --column: ind_dormir_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS dorme_rua,

    --column: ind_motivo_alcool_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS condicao_rua_alcool,

    --column: ind_motivo_ameaca_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS condicao_rua_ameaca,

    --column: ind_motivo_desemprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS condicao_rua_desemprego,

    --column: ind_motivo_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS condicao_rua_nao_respondeu,

    --column: ind_motivo_nao_sabe_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS condicao_rua_nao_sabe,

    --column: ind_motivo_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS condicao_rua_outro,

    --column: ind_motivo_perda_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS condicao_rua_perda_moradia,

    --column: ind_motivo_pref_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS condicao_rua_preferencia,

    --column: ind_motivo_probs_fam_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS condicao_rua_problemas_familiares,

    --column: ind_motivo_saude_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS condicao_rua_saude,

    --column: ind_motivo_trabalho_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS condicao_rua_trabalho,

    --column: ind_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS dorme_outro,

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

    --column: qtd_dormir_freq_albergue_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,43,1)) AS INT64)
    END AS dorme_albergue_vezes_semana,

    --column: qtd_dormir_freq_dom_part_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,1)) AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,

    --column: qtd_dormir_freq_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,41,1)) AS INT64)
    END AS dorme_rua_vezes_semana,

    --column: qtd_freq_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,47,1)) AS INT64)
    END AS dorme_outro_vezes_semana,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '12'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_cart_assinada_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS id_carteira_assinada,

    --column: cod_contato_parente_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS condicao_rua_contato_parente,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_tempo_cidade_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS id_tempo_municipio,

    --column: cod_tempo_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_tempo_rua,

    --column: cod_vive_fam_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS condicao_rua_vive_familia,

    --column: ind_atend_centro_ref_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,

    --column: ind_atend_cras_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS atendido_cras,

    --column: ind_atend_creas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS atendido_creas,

    --column: ind_atend_hospital_geral_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS atendido_hospital_geral,

    --column: ind_atend_inst_gov_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS atendido_instituicao_governamental,

    --column: ind_atend_inst_nao_gov_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS atendido_instituicao_nao_governamental,

    --column: ind_atend_nenhum_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS atendido_nenhum,

    --column: ind_ativ_com_associacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS atividade_comunitaria_associacao,

    --column: ind_ativ_com_coop_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS atividade_comunitaria_cooperativa,

    --column: ind_ativ_com_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS atividade_comunitaria_escola,

    --column: ind_ativ_com_mov_soc_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS atibidade_comunitaria_movimento_social,

    --column: ind_ativ_com_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,

    --column: ind_ativ_com_nao_sabe_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS atividade_comunitaria_nao_sabe,

    --column: ind_dinh_carregador_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS ganha_dinheiro_carregador,

    --column: ind_dinh_catador_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS ganha_dinheiro_catador,

    --column: ind_dinh_const_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS ganha_dinheiro_construcao_civil,

    --column: ind_dinh_flanelhinha_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS ganha_dinheiro_flanelinha,

    --column: ind_dinh_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,

    --column: ind_dinh_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS ganha_dinheiro_outro,

    --column: ind_dinh_pede_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS ganha_dinheiro_pedinte,

    --column: ind_dinh_servs_gerais_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,

    --column: ind_dinh_vendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS ganha_dinheiro_vendas,

    --column: ind_dormir_albergue_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS dorme_albergue,

    --column: ind_dormir_dom_part_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS dorme_domicilio_particular,

    --column: ind_dormir_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS dorme_rua,

    --column: ind_motivo_alcool_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS condicao_rua_alcool,

    --column: ind_motivo_ameaca_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS condicao_rua_ameaca,

    --column: ind_motivo_desemprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS condicao_rua_desemprego,

    --column: ind_motivo_nao_resp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS condicao_rua_nao_respondeu,

    --column: ind_motivo_nao_sabe_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS condicao_rua_nao_sabe,

    --column: ind_motivo_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS condicao_rua_outro,

    --column: ind_motivo_perda_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS condicao_rua_perda_moradia,

    --column: ind_motivo_pref_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS condicao_rua_preferencia,

    --column: ind_motivo_probs_fam_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS condicao_rua_problemas_familiares,

    --column: ind_motivo_saude_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS condicao_rua_saude,

    --column: ind_motivo_trabalho_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS condicao_rua_trabalho,

    --column: ind_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS dorme_outro,

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

    --column: qtd_dormir_freq_albergue_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,43,1)) AS INT64)
    END AS dorme_albergue_vezes_semana,

    --column: qtd_dormir_freq_dom_part_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,1)) AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,

    --column: qtd_dormir_freq_rua_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,41,1)) AS INT64)
    END AS dorme_rua_vezes_semana,

    --column: qtd_freq_outro_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,47,1)) AS INT64)
    END AS dorme_outro_vezes_semana,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '12'

