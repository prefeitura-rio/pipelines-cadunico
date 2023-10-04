
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
        WHEN REGEXP_CONTAINS(ind_dormir_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dormir_rua_memb  AS STRING)
    END AS dorme_rua,
    CASE
        WHEN REGEXP_CONTAINS(qtd_dormir_freq_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_dormir_freq_rua_memb  AS INT64)
    END AS dorme_rua_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(ind_dormir_albergue_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dormir_albergue_memb  AS STRING)
    END AS dorme_albergue,
    CASE
        WHEN REGEXP_CONTAINS(qtd_dormir_freq_albergue_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_dormir_freq_albergue_memb  AS INT64)
    END AS dorme_albergue_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(ind_dormir_dom_part_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dormir_dom_part_memb  AS STRING)
    END AS dorme_domicilio_particular,
    CASE
        WHEN REGEXP_CONTAINS(qtd_dormir_freq_dom_part_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_dormir_freq_dom_part_memb  AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(ind_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_outro_memb  AS STRING)
    END AS dorme_outro,
    CASE
        WHEN REGEXP_CONTAINS(qtd_freq_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_freq_outro_memb  AS INT64)
    END AS dorme_outro_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(cod_tempo_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_tempo_rua_memb  AS STRING)
    END AS id_tempo_rua,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_perda_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_perda_memb  AS STRING)
    END AS condicao_rua_perda_moradia,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_ameaca_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_ameaca_memb  AS STRING)
    END AS condicao_rua_ameaca,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_probs_fam_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_probs_fam_memb  AS STRING)
    END AS condicao_rua_problemas_familiares,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_alcool_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_alcool_memb  AS STRING)
    END AS condicao_rua_alcool,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_desemprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_desemprego_memb  AS STRING)
    END AS condicao_rua_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_trabalho_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_trabalho_memb  AS STRING)
    END AS condicao_rua_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_saude_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_saude_memb  AS STRING)
    END AS condicao_rua_saude,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_pref_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_pref_memb  AS STRING)
    END AS condicao_rua_preferencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_outro_memb  AS STRING)
    END AS condicao_rua_outro,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_nao_sabe_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_nao_sabe_memb  AS STRING)
    END AS condicao_rua_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_nao_resp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_nao_resp_memb  AS STRING)
    END AS condicao_rua_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(cod_tempo_cidade_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_tempo_cidade_memb  AS STRING)
    END AS id_tempo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(cod_vive_fam_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_vive_fam_rua_memb  AS STRING)
    END AS condicao_rua_vive_familia,
    CASE
        WHEN REGEXP_CONTAINS(cod_contato_parente_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_contato_parente_memb  AS STRING)
    END AS condicao_rua_contato_parente,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_escola_memb  AS STRING)
    END AS atividade_comunitaria_escola,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_associacao_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_associacao_memb  AS STRING)
    END AS atividade_comunitaria_associacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_coop_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_coop_memb  AS STRING)
    END AS atividade_comunitaria_cooperativa,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_mov_soc_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_mov_soc_memb  AS STRING)
    END AS atibidade_comunitaria_movimento_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_nao_sabe_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_nao_sabe_memb  AS STRING)
    END AS atividade_comunitaria_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_nao_resp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_nao_resp_memb  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_cras_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_cras_memb  AS STRING)
    END AS atendido_cras,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_creas_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_creas_memb  AS STRING)
    END AS atendido_creas,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_centro_ref_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_centro_ref_rua_memb  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_inst_gov_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_inst_gov_memb  AS STRING)
    END AS atendido_instituicao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_inst_nao_gov_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_inst_nao_gov_memb  AS STRING)
    END AS atendido_instituicao_nao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_hospital_geral_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_hospital_geral_memb  AS STRING)
    END AS atendido_hospital_geral,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_nenhum_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_nenhum_memb  AS STRING)
    END AS atendido_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_cart_assinada_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_cart_assinada_memb  AS STRING)
    END AS id_carteira_assinada,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_const_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_const_memb  AS STRING)
    END AS ganha_dinheiro_construcao_civil,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_flanelhinha_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_flanelhinha_memb  AS STRING)
    END AS ganha_dinheiro_flanelinha,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_carregador_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_carregador_memb  AS STRING)
    END AS ganha_dinheiro_carregador,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_catador_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_catador_memb  AS STRING)
    END AS ganha_dinheiro_catador,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_servs_gerais_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_servs_gerais_memb  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_pede_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_pede_memb  AS STRING)
    END AS ganha_dinheiro_pedinte,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_vendas_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_vendas_memb  AS STRING)
    END AS ganha_dinheiro_vendas,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_outro_memb  AS STRING)
    END AS ganha_dinheiro_outro,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_nao_resp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_nao_resp_memb  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0601`

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
        WHEN REGEXP_CONTAINS(ind_dormir_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dormir_rua_memb  AS STRING)
    END AS dorme_rua,
    CASE
        WHEN REGEXP_CONTAINS(qtd_dormir_freq_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_dormir_freq_rua_memb  AS INT64)
    END AS dorme_rua_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(ind_dormir_albergue_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dormir_albergue_memb  AS STRING)
    END AS dorme_albergue,
    CASE
        WHEN REGEXP_CONTAINS(qtd_dormir_freq_albergue_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_dormir_freq_albergue_memb  AS INT64)
    END AS dorme_albergue_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(ind_dormir_dom_part_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dormir_dom_part_memb  AS STRING)
    END AS dorme_domicilio_particular,
    CASE
        WHEN REGEXP_CONTAINS(qtd_dormir_freq_dom_part_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_dormir_freq_dom_part_memb  AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(ind_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_outro_memb  AS STRING)
    END AS dorme_outro,
    CASE
        WHEN REGEXP_CONTAINS(qtd_freq_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_freq_outro_memb  AS INT64)
    END AS dorme_outro_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(cod_tempo_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_tempo_rua_memb  AS STRING)
    END AS id_tempo_rua,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_perda_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_perda_memb  AS STRING)
    END AS condicao_rua_perda_moradia,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_ameaca_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_ameaca_memb  AS STRING)
    END AS condicao_rua_ameaca,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_probs_fam_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_probs_fam_memb  AS STRING)
    END AS condicao_rua_problemas_familiares,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_alcool_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_alcool_memb  AS STRING)
    END AS condicao_rua_alcool,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_desemprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_desemprego_memb  AS STRING)
    END AS condicao_rua_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_trabalho_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_trabalho_memb  AS STRING)
    END AS condicao_rua_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_saude_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_saude_memb  AS STRING)
    END AS condicao_rua_saude,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_pref_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_pref_memb  AS STRING)
    END AS condicao_rua_preferencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_outro_memb  AS STRING)
    END AS condicao_rua_outro,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_nao_sabe_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_nao_sabe_memb  AS STRING)
    END AS condicao_rua_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_nao_resp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_nao_resp_memb  AS STRING)
    END AS condicao_rua_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(cod_tempo_cidade_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_tempo_cidade_memb  AS STRING)
    END AS id_tempo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(cod_vive_fam_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_vive_fam_rua_memb  AS STRING)
    END AS condicao_rua_vive_familia,
    CASE
        WHEN REGEXP_CONTAINS(cod_contato_parente_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_contato_parente_memb  AS STRING)
    END AS condicao_rua_contato_parente,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_escola_memb  AS STRING)
    END AS atividade_comunitaria_escola,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_associacao_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_associacao_memb  AS STRING)
    END AS atividade_comunitaria_associacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_coop_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_coop_memb  AS STRING)
    END AS atividade_comunitaria_cooperativa,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_mov_soc_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_mov_soc_memb  AS STRING)
    END AS atibidade_comunitaria_movimento_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_nao_sabe_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_nao_sabe_memb  AS STRING)
    END AS atividade_comunitaria_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_nao_resp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_nao_resp_memb  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_cras_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_cras_memb  AS STRING)
    END AS atendido_cras,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_creas_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_creas_memb  AS STRING)
    END AS atendido_creas,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_centro_ref_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_centro_ref_rua_memb  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_inst_gov_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_inst_gov_memb  AS STRING)
    END AS atendido_instituicao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_inst_nao_gov_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_inst_nao_gov_memb  AS STRING)
    END AS atendido_instituicao_nao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_hospital_geral_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_hospital_geral_memb  AS STRING)
    END AS atendido_hospital_geral,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_nenhum_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_nenhum_memb  AS STRING)
    END AS atendido_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_cart_assinada_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_cart_assinada_memb  AS STRING)
    END AS id_carteira_assinada,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_const_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_const_memb  AS STRING)
    END AS ganha_dinheiro_construcao_civil,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_flanelhinha_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_flanelhinha_memb  AS STRING)
    END AS ganha_dinheiro_flanelinha,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_carregador_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_carregador_memb  AS STRING)
    END AS ganha_dinheiro_carregador,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_catador_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_catador_memb  AS STRING)
    END AS ganha_dinheiro_catador,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_servs_gerais_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_servs_gerais_memb  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_pede_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_pede_memb  AS STRING)
    END AS ganha_dinheiro_pedinte,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_vendas_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_vendas_memb  AS STRING)
    END AS ganha_dinheiro_vendas,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_outro_memb  AS STRING)
    END AS ganha_dinheiro_outro,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_nao_resp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_nao_resp_memb  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0603`

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
        WHEN REGEXP_CONTAINS(ind_dormir_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dormir_rua_memb  AS STRING)
    END AS dorme_rua,
    CASE
        WHEN REGEXP_CONTAINS(qtd_dormir_freq_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_dormir_freq_rua_memb  AS INT64)
    END AS dorme_rua_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(ind_dormir_albergue_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dormir_albergue_memb  AS STRING)
    END AS dorme_albergue,
    CASE
        WHEN REGEXP_CONTAINS(qtd_dormir_freq_albergue_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_dormir_freq_albergue_memb  AS INT64)
    END AS dorme_albergue_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(ind_dormir_dom_part_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dormir_dom_part_memb  AS STRING)
    END AS dorme_domicilio_particular,
    CASE
        WHEN REGEXP_CONTAINS(qtd_dormir_freq_dom_part_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_dormir_freq_dom_part_memb  AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(ind_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_outro_memb  AS STRING)
    END AS dorme_outro,
    CASE
        WHEN REGEXP_CONTAINS(qtd_freq_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_freq_outro_memb  AS INT64)
    END AS dorme_outro_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(cod_tempo_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_tempo_rua_memb  AS STRING)
    END AS id_tempo_rua,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_perda_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_perda_memb  AS STRING)
    END AS condicao_rua_perda_moradia,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_ameaca_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_ameaca_memb  AS STRING)
    END AS condicao_rua_ameaca,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_probs_fam_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_probs_fam_memb  AS STRING)
    END AS condicao_rua_problemas_familiares,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_alcool_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_alcool_memb  AS STRING)
    END AS condicao_rua_alcool,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_desemprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_desemprego_memb  AS STRING)
    END AS condicao_rua_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_trabalho_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_trabalho_memb  AS STRING)
    END AS condicao_rua_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_saude_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_saude_memb  AS STRING)
    END AS condicao_rua_saude,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_pref_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_pref_memb  AS STRING)
    END AS condicao_rua_preferencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_outro_memb  AS STRING)
    END AS condicao_rua_outro,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_nao_sabe_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_nao_sabe_memb  AS STRING)
    END AS condicao_rua_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_nao_resp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_nao_resp_memb  AS STRING)
    END AS condicao_rua_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(cod_tempo_cidade_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_tempo_cidade_memb  AS STRING)
    END AS id_tempo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(cod_vive_fam_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_vive_fam_rua_memb  AS STRING)
    END AS condicao_rua_vive_familia,
    CASE
        WHEN REGEXP_CONTAINS(cod_contato_parente_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_contato_parente_memb  AS STRING)
    END AS condicao_rua_contato_parente,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_escola_memb  AS STRING)
    END AS atividade_comunitaria_escola,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_associacao_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_associacao_memb  AS STRING)
    END AS atividade_comunitaria_associacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_coop_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_coop_memb  AS STRING)
    END AS atividade_comunitaria_cooperativa,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_mov_soc_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_mov_soc_memb  AS STRING)
    END AS atibidade_comunitaria_movimento_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_nao_sabe_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_nao_sabe_memb  AS STRING)
    END AS atividade_comunitaria_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_nao_resp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_nao_resp_memb  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_cras_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_cras_memb  AS STRING)
    END AS atendido_cras,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_creas_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_creas_memb  AS STRING)
    END AS atendido_creas,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_centro_ref_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_centro_ref_rua_memb  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_inst_gov_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_inst_gov_memb  AS STRING)
    END AS atendido_instituicao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_inst_nao_gov_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_inst_nao_gov_memb  AS STRING)
    END AS atendido_instituicao_nao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_hospital_geral_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_hospital_geral_memb  AS STRING)
    END AS atendido_hospital_geral,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_nenhum_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_nenhum_memb  AS STRING)
    END AS atendido_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_cart_assinada_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_cart_assinada_memb  AS STRING)
    END AS id_carteira_assinada,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_const_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_const_memb  AS STRING)
    END AS ganha_dinheiro_construcao_civil,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_flanelhinha_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_flanelhinha_memb  AS STRING)
    END AS ganha_dinheiro_flanelinha,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_carregador_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_carregador_memb  AS STRING)
    END AS ganha_dinheiro_carregador,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_catador_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_catador_memb  AS STRING)
    END AS ganha_dinheiro_catador,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_servs_gerais_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_servs_gerais_memb  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_pede_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_pede_memb  AS STRING)
    END AS ganha_dinheiro_pedinte,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_vendas_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_vendas_memb  AS STRING)
    END AS ganha_dinheiro_vendas,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_outro_memb  AS STRING)
    END AS ganha_dinheiro_outro,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_nao_resp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_nao_resp_memb  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0604`

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
        WHEN REGEXP_CONTAINS(ind_dormir_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dormir_rua_memb  AS STRING)
    END AS dorme_rua,
    CASE
        WHEN REGEXP_CONTAINS(qtd_dormir_freq_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_dormir_freq_rua_memb  AS INT64)
    END AS dorme_rua_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(ind_dormir_albergue_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dormir_albergue_memb  AS STRING)
    END AS dorme_albergue,
    CASE
        WHEN REGEXP_CONTAINS(qtd_dormir_freq_albergue_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_dormir_freq_albergue_memb  AS INT64)
    END AS dorme_albergue_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(ind_dormir_dom_part_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dormir_dom_part_memb  AS STRING)
    END AS dorme_domicilio_particular,
    CASE
        WHEN REGEXP_CONTAINS(qtd_dormir_freq_dom_part_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_dormir_freq_dom_part_memb  AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(ind_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_outro_memb  AS STRING)
    END AS dorme_outro,
    CASE
        WHEN REGEXP_CONTAINS(qtd_freq_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_freq_outro_memb  AS INT64)
    END AS dorme_outro_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(cod_tempo_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_tempo_rua_memb  AS STRING)
    END AS id_tempo_rua,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_perda_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_perda_memb  AS STRING)
    END AS condicao_rua_perda_moradia,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_ameaca_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_ameaca_memb  AS STRING)
    END AS condicao_rua_ameaca,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_probs_fam_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_probs_fam_memb  AS STRING)
    END AS condicao_rua_problemas_familiares,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_alcool_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_alcool_memb  AS STRING)
    END AS condicao_rua_alcool,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_desemprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_desemprego_memb  AS STRING)
    END AS condicao_rua_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_trabalho_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_trabalho_memb  AS STRING)
    END AS condicao_rua_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_saude_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_saude_memb  AS STRING)
    END AS condicao_rua_saude,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_pref_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_pref_memb  AS STRING)
    END AS condicao_rua_preferencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_outro_memb  AS STRING)
    END AS condicao_rua_outro,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_nao_sabe_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_nao_sabe_memb  AS STRING)
    END AS condicao_rua_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_nao_resp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_nao_resp_memb  AS STRING)
    END AS condicao_rua_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(cod_tempo_cidade_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_tempo_cidade_memb  AS STRING)
    END AS id_tempo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(cod_vive_fam_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_vive_fam_rua_memb  AS STRING)
    END AS condicao_rua_vive_familia,
    CASE
        WHEN REGEXP_CONTAINS(cod_contato_parente_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_contato_parente_memb  AS STRING)
    END AS condicao_rua_contato_parente,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_escola_memb  AS STRING)
    END AS atividade_comunitaria_escola,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_associacao_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_associacao_memb  AS STRING)
    END AS atividade_comunitaria_associacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_coop_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_coop_memb  AS STRING)
    END AS atividade_comunitaria_cooperativa,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_mov_soc_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_mov_soc_memb  AS STRING)
    END AS atibidade_comunitaria_movimento_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_nao_sabe_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_nao_sabe_memb  AS STRING)
    END AS atividade_comunitaria_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_nao_resp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_nao_resp_memb  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_cras_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_cras_memb  AS STRING)
    END AS atendido_cras,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_creas_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_creas_memb  AS STRING)
    END AS atendido_creas,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_centro_ref_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_centro_ref_rua_memb  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_inst_gov_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_inst_gov_memb  AS STRING)
    END AS atendido_instituicao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_inst_nao_gov_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_inst_nao_gov_memb  AS STRING)
    END AS atendido_instituicao_nao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_hospital_geral_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_hospital_geral_memb  AS STRING)
    END AS atendido_hospital_geral,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_nenhum_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_nenhum_memb  AS STRING)
    END AS atendido_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_cart_assinada_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_cart_assinada_memb  AS STRING)
    END AS id_carteira_assinada,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_const_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_const_memb  AS STRING)
    END AS ganha_dinheiro_construcao_civil,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_flanelhinha_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_flanelhinha_memb  AS STRING)
    END AS ganha_dinheiro_flanelinha,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_carregador_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_carregador_memb  AS STRING)
    END AS ganha_dinheiro_carregador,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_catador_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_catador_memb  AS STRING)
    END AS ganha_dinheiro_catador,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_servs_gerais_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_servs_gerais_memb  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_pede_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_pede_memb  AS STRING)
    END AS ganha_dinheiro_pedinte,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_vendas_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_vendas_memb  AS STRING)
    END AS ganha_dinheiro_vendas,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_outro_memb  AS STRING)
    END AS ganha_dinheiro_outro,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_nao_resp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_nao_resp_memb  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0609`

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
        WHEN REGEXP_CONTAINS(ind_dormir_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dormir_rua_memb  AS STRING)
    END AS dorme_rua,
    CASE
        WHEN REGEXP_CONTAINS(qtd_dormir_freq_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_dormir_freq_rua_memb  AS INT64)
    END AS dorme_rua_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(ind_dormir_albergue_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dormir_albergue_memb  AS STRING)
    END AS dorme_albergue,
    CASE
        WHEN REGEXP_CONTAINS(qtd_dormir_freq_albergue_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_dormir_freq_albergue_memb  AS INT64)
    END AS dorme_albergue_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(ind_dormir_dom_part_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dormir_dom_part_memb  AS STRING)
    END AS dorme_domicilio_particular,
    CASE
        WHEN REGEXP_CONTAINS(qtd_dormir_freq_dom_part_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_dormir_freq_dom_part_memb  AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(ind_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_outro_memb  AS STRING)
    END AS dorme_outro,
    CASE
        WHEN REGEXP_CONTAINS(qtd_freq_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_freq_outro_memb  AS INT64)
    END AS dorme_outro_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(cod_tempo_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_tempo_rua_memb  AS STRING)
    END AS id_tempo_rua,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_perda_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_perda_memb  AS STRING)
    END AS condicao_rua_perda_moradia,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_ameaca_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_ameaca_memb  AS STRING)
    END AS condicao_rua_ameaca,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_probs_fam_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_probs_fam_memb  AS STRING)
    END AS condicao_rua_problemas_familiares,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_alcool_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_alcool_memb  AS STRING)
    END AS condicao_rua_alcool,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_desemprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_desemprego_memb  AS STRING)
    END AS condicao_rua_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_trabalho_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_trabalho_memb  AS STRING)
    END AS condicao_rua_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_saude_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_saude_memb  AS STRING)
    END AS condicao_rua_saude,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_pref_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_pref_memb  AS STRING)
    END AS condicao_rua_preferencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_outro_memb  AS STRING)
    END AS condicao_rua_outro,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_nao_sabe_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_nao_sabe_memb  AS STRING)
    END AS condicao_rua_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(ind_motivo_nao_resp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_motivo_nao_resp_memb  AS STRING)
    END AS condicao_rua_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(cod_tempo_cidade_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_tempo_cidade_memb  AS STRING)
    END AS id_tempo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(cod_vive_fam_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_vive_fam_rua_memb  AS STRING)
    END AS condicao_rua_vive_familia,
    CASE
        WHEN REGEXP_CONTAINS(cod_contato_parente_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_contato_parente_memb  AS STRING)
    END AS condicao_rua_contato_parente,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_escola_memb  AS STRING)
    END AS atividade_comunitaria_escola,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_associacao_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_associacao_memb  AS STRING)
    END AS atividade_comunitaria_associacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_coop_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_coop_memb  AS STRING)
    END AS atividade_comunitaria_cooperativa,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_mov_soc_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_mov_soc_memb  AS STRING)
    END AS atibidade_comunitaria_movimento_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_nao_sabe_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_nao_sabe_memb  AS STRING)
    END AS atividade_comunitaria_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(ind_ativ_com_nao_resp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_ativ_com_nao_resp_memb  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_cras_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_cras_memb  AS STRING)
    END AS atendido_cras,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_creas_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_creas_memb  AS STRING)
    END AS atendido_creas,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_centro_ref_rua_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_centro_ref_rua_memb  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_inst_gov_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_inst_gov_memb  AS STRING)
    END AS atendido_instituicao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_inst_nao_gov_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_inst_nao_gov_memb  AS STRING)
    END AS atendido_instituicao_nao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_hospital_geral_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_hospital_geral_memb  AS STRING)
    END AS atendido_hospital_geral,
    CASE
        WHEN REGEXP_CONTAINS(ind_atend_nenhum_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_atend_nenhum_memb  AS STRING)
    END AS atendido_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(cod_cart_assinada_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_cart_assinada_memb  AS STRING)
    END AS id_carteira_assinada,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_const_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_const_memb  AS STRING)
    END AS ganha_dinheiro_construcao_civil,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_flanelhinha_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_flanelhinha_memb  AS STRING)
    END AS ganha_dinheiro_flanelinha,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_carregador_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_carregador_memb  AS STRING)
    END AS ganha_dinheiro_carregador,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_catador_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_catador_memb  AS STRING)
    END AS ganha_dinheiro_catador,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_servs_gerais_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_servs_gerais_memb  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_pede_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_pede_memb  AS STRING)
    END AS ganha_dinheiro_pedinte,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_vendas_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_vendas_memb  AS STRING)
    END AS ganha_dinheiro_vendas,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_outro_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_outro_memb  AS STRING)
    END AS ganha_dinheiro_outro,
    CASE
        WHEN REGEXP_CONTAINS(ind_dinh_nao_resp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_dinh_nao_resp_memb  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0612`

