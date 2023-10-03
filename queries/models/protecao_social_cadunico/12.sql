
SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(ind_dormir_rua_memb AS STRING) AS ind_dormir_rua_memb,
    CAST(qtd_dormir_freq_rua_memb AS STRING) AS qtd_dormir_freq_rua_memb,
    CAST(ind_dormir_albergue_memb AS STRING) AS ind_dormir_albergue_memb,
    CAST(qtd_dormir_freq_albergue_memb AS STRING) AS qtd_dormir_freq_albergue_memb,
    CAST(ind_dormir_dom_part_memb AS STRING) AS ind_dormir_dom_part_memb,
    CAST(qtd_dormir_freq_dom_part_memb AS STRING) AS qtd_dormir_freq_dom_part_memb,
    CAST(ind_outro_memb AS STRING) AS ind_outro_memb,
    CAST(qtd_freq_outro_memb AS STRING) AS qtd_freq_outro_memb,
    CAST(cod_tempo_rua_memb AS STRING) AS cod_tempo_rua_memb,
    CAST(ind_motivo_perda_memb AS STRING) AS ind_motivo_perda_memb,
    CAST(ind_motivo_ameaca_memb AS STRING) AS ind_motivo_ameaca_memb,
    CAST(ind_motivo_probs_fam_memb AS STRING) AS ind_motivo_probs_fam_memb,
    CAST(ind_motivo_alcool_memb AS STRING) AS ind_motivo_alcool_memb,
    CAST(ind_motivo_desemprego_memb AS STRING) AS ind_motivo_desemprego_memb,
    CAST(ind_motivo_trabalho_memb AS STRING) AS ind_motivo_trabalho_memb,
    CAST(ind_motivo_saude_memb AS STRING) AS ind_motivo_saude_memb,
    CAST(ind_motivo_pref_memb AS STRING) AS ind_motivo_pref_memb,
    CAST(ind_motivo_outro_memb AS STRING) AS ind_motivo_outro_memb,
    CAST(ind_motivo_nao_sabe_memb AS STRING) AS ind_motivo_nao_sabe_memb,
    CAST(ind_motivo_nao_resp_memb AS STRING) AS ind_motivo_nao_resp_memb,
    CAST(cod_tempo_cidade_memb AS STRING) AS cod_tempo_cidade_memb,
    CAST(cod_vive_fam_rua_memb AS STRING) AS cod_vive_fam_rua_memb,
    CAST(cod_contato_parente_memb AS STRING) AS cod_contato_parente_memb,
    CAST(ind_ativ_com_escola_memb AS STRING) AS ind_ativ_com_escola_memb,
    CAST(ind_ativ_com_associacao_memb AS STRING) AS ind_ativ_com_associacao_memb,
    CAST(ind_ativ_com_coop_memb AS STRING) AS ind_ativ_com_coop_memb,
    CAST(ind_ativ_com_mov_soc_memb AS STRING) AS ind_ativ_com_mov_soc_memb,
    CAST(ind_ativ_com_nao_sabe_memb AS STRING) AS ind_ativ_com_nao_sabe_memb,
    CAST(ind_ativ_com_nao_resp_memb AS STRING) AS ind_ativ_com_nao_resp_memb,
    CAST(ind_atend_cras_memb AS STRING) AS ind_atend_cras_memb,
    CAST(ind_atend_creas_memb AS STRING) AS ind_atend_creas_memb,
    CAST(ind_atend_centro_ref_rua_memb AS STRING) AS ind_atend_centro_ref_rua_memb,
    CAST(ind_atend_inst_gov_memb AS STRING) AS ind_atend_inst_gov_memb,
    CAST(ind_atend_inst_nao_gov_memb AS STRING) AS ind_atend_inst_nao_gov_memb,
    CAST(ind_atend_hospital_geral_memb AS STRING) AS ind_atend_hospital_geral_memb,
    CAST(ind_atend_nenhum_memb AS STRING) AS ind_atend_nenhum_memb,
    CAST(cod_cart_assinada_memb AS STRING) AS cod_cart_assinada_memb,
    CAST(ind_dinh_const_memb AS STRING) AS ind_dinh_const_memb,
    CAST(ind_dinh_flanelhinha_memb AS STRING) AS ind_dinh_flanelhinha_memb,
    CAST(ind_dinh_carregador_memb AS STRING) AS ind_dinh_carregador_memb,
    CAST(ind_dinh_catador_memb AS STRING) AS ind_dinh_catador_memb,
    CAST(ind_dinh_servs_gerais_memb AS STRING) AS ind_dinh_servs_gerais_memb,
    CAST(ind_dinh_pede_memb AS STRING) AS ind_dinh_pede_memb,
    CAST(ind_dinh_vendas_memb AS STRING) AS ind_dinh_vendas_memb,
    CAST(ind_dinh_outro_memb AS STRING) AS ind_dinh_outro_memb,
    CAST(ind_dinh_nao_resp_memb AS STRING) AS ind_dinh_nao_resp_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.12_0601`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(ind_dormir_rua_memb AS STRING) AS ind_dormir_rua_memb,
    CAST(qtd_dormir_freq_rua_memb AS STRING) AS qtd_dormir_freq_rua_memb,
    CAST(ind_dormir_albergue_memb AS STRING) AS ind_dormir_albergue_memb,
    CAST(qtd_dormir_freq_albergue_memb AS STRING) AS qtd_dormir_freq_albergue_memb,
    CAST(ind_dormir_dom_part_memb AS STRING) AS ind_dormir_dom_part_memb,
    CAST(qtd_dormir_freq_dom_part_memb AS STRING) AS qtd_dormir_freq_dom_part_memb,
    CAST(ind_outro_memb AS STRING) AS ind_outro_memb,
    CAST(qtd_freq_outro_memb AS STRING) AS qtd_freq_outro_memb,
    CAST(cod_tempo_rua_memb AS STRING) AS cod_tempo_rua_memb,
    CAST(ind_motivo_perda_memb AS STRING) AS ind_motivo_perda_memb,
    CAST(ind_motivo_ameaca_memb AS STRING) AS ind_motivo_ameaca_memb,
    CAST(ind_motivo_probs_fam_memb AS STRING) AS ind_motivo_probs_fam_memb,
    CAST(ind_motivo_alcool_memb AS STRING) AS ind_motivo_alcool_memb,
    CAST(ind_motivo_desemprego_memb AS STRING) AS ind_motivo_desemprego_memb,
    CAST(ind_motivo_trabalho_memb AS STRING) AS ind_motivo_trabalho_memb,
    CAST(ind_motivo_saude_memb AS STRING) AS ind_motivo_saude_memb,
    CAST(ind_motivo_pref_memb AS STRING) AS ind_motivo_pref_memb,
    CAST(ind_motivo_outro_memb AS STRING) AS ind_motivo_outro_memb,
    CAST(ind_motivo_nao_sabe_memb AS STRING) AS ind_motivo_nao_sabe_memb,
    CAST(ind_motivo_nao_resp_memb AS STRING) AS ind_motivo_nao_resp_memb,
    CAST(cod_tempo_cidade_memb AS STRING) AS cod_tempo_cidade_memb,
    CAST(cod_vive_fam_rua_memb AS STRING) AS cod_vive_fam_rua_memb,
    CAST(cod_contato_parente_memb AS STRING) AS cod_contato_parente_memb,
    CAST(ind_ativ_com_escola_memb AS STRING) AS ind_ativ_com_escola_memb,
    CAST(ind_ativ_com_associacao_memb AS STRING) AS ind_ativ_com_associacao_memb,
    CAST(ind_ativ_com_coop_memb AS STRING) AS ind_ativ_com_coop_memb,
    CAST(ind_ativ_com_mov_soc_memb AS STRING) AS ind_ativ_com_mov_soc_memb,
    CAST(ind_ativ_com_nao_sabe_memb AS STRING) AS ind_ativ_com_nao_sabe_memb,
    CAST(ind_ativ_com_nao_resp_memb AS STRING) AS ind_ativ_com_nao_resp_memb,
    CAST(ind_atend_cras_memb AS STRING) AS ind_atend_cras_memb,
    CAST(ind_atend_creas_memb AS STRING) AS ind_atend_creas_memb,
    CAST(ind_atend_centro_ref_rua_memb AS STRING) AS ind_atend_centro_ref_rua_memb,
    CAST(ind_atend_inst_gov_memb AS STRING) AS ind_atend_inst_gov_memb,
    CAST(ind_atend_inst_nao_gov_memb AS STRING) AS ind_atend_inst_nao_gov_memb,
    CAST(ind_atend_hospital_geral_memb AS STRING) AS ind_atend_hospital_geral_memb,
    CAST(ind_atend_nenhum_memb AS STRING) AS ind_atend_nenhum_memb,
    CAST(cod_cart_assinada_memb AS STRING) AS cod_cart_assinada_memb,
    CAST(ind_dinh_const_memb AS STRING) AS ind_dinh_const_memb,
    CAST(ind_dinh_flanelhinha_memb AS STRING) AS ind_dinh_flanelhinha_memb,
    CAST(ind_dinh_carregador_memb AS STRING) AS ind_dinh_carregador_memb,
    CAST(ind_dinh_catador_memb AS STRING) AS ind_dinh_catador_memb,
    CAST(ind_dinh_servs_gerais_memb AS STRING) AS ind_dinh_servs_gerais_memb,
    CAST(ind_dinh_pede_memb AS STRING) AS ind_dinh_pede_memb,
    CAST(ind_dinh_vendas_memb AS STRING) AS ind_dinh_vendas_memb,
    CAST(ind_dinh_outro_memb AS STRING) AS ind_dinh_outro_memb,
    CAST(ind_dinh_nao_resp_memb AS STRING) AS ind_dinh_nao_resp_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.12_0603`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(ind_dormir_rua_memb AS STRING) AS ind_dormir_rua_memb,
    CAST(qtd_dormir_freq_rua_memb AS STRING) AS qtd_dormir_freq_rua_memb,
    CAST(ind_dormir_albergue_memb AS STRING) AS ind_dormir_albergue_memb,
    CAST(qtd_dormir_freq_albergue_memb AS STRING) AS qtd_dormir_freq_albergue_memb,
    CAST(ind_dormir_dom_part_memb AS STRING) AS ind_dormir_dom_part_memb,
    CAST(qtd_dormir_freq_dom_part_memb AS STRING) AS qtd_dormir_freq_dom_part_memb,
    CAST(ind_outro_memb AS STRING) AS ind_outro_memb,
    CAST(qtd_freq_outro_memb AS STRING) AS qtd_freq_outro_memb,
    CAST(cod_tempo_rua_memb AS STRING) AS cod_tempo_rua_memb,
    CAST(ind_motivo_perda_memb AS STRING) AS ind_motivo_perda_memb,
    CAST(ind_motivo_ameaca_memb AS STRING) AS ind_motivo_ameaca_memb,
    CAST(ind_motivo_probs_fam_memb AS STRING) AS ind_motivo_probs_fam_memb,
    CAST(ind_motivo_alcool_memb AS STRING) AS ind_motivo_alcool_memb,
    CAST(ind_motivo_desemprego_memb AS STRING) AS ind_motivo_desemprego_memb,
    CAST(ind_motivo_trabalho_memb AS STRING) AS ind_motivo_trabalho_memb,
    CAST(ind_motivo_saude_memb AS STRING) AS ind_motivo_saude_memb,
    CAST(ind_motivo_pref_memb AS STRING) AS ind_motivo_pref_memb,
    CAST(ind_motivo_outro_memb AS STRING) AS ind_motivo_outro_memb,
    CAST(ind_motivo_nao_sabe_memb AS STRING) AS ind_motivo_nao_sabe_memb,
    CAST(ind_motivo_nao_resp_memb AS STRING) AS ind_motivo_nao_resp_memb,
    CAST(cod_tempo_cidade_memb AS STRING) AS cod_tempo_cidade_memb,
    CAST(cod_vive_fam_rua_memb AS STRING) AS cod_vive_fam_rua_memb,
    CAST(cod_contato_parente_memb AS STRING) AS cod_contato_parente_memb,
    CAST(ind_ativ_com_escola_memb AS STRING) AS ind_ativ_com_escola_memb,
    CAST(ind_ativ_com_associacao_memb AS STRING) AS ind_ativ_com_associacao_memb,
    CAST(ind_ativ_com_coop_memb AS STRING) AS ind_ativ_com_coop_memb,
    CAST(ind_ativ_com_mov_soc_memb AS STRING) AS ind_ativ_com_mov_soc_memb,
    CAST(ind_ativ_com_nao_sabe_memb AS STRING) AS ind_ativ_com_nao_sabe_memb,
    CAST(ind_ativ_com_nao_resp_memb AS STRING) AS ind_ativ_com_nao_resp_memb,
    CAST(ind_atend_cras_memb AS STRING) AS ind_atend_cras_memb,
    CAST(ind_atend_creas_memb AS STRING) AS ind_atend_creas_memb,
    CAST(ind_atend_centro_ref_rua_memb AS STRING) AS ind_atend_centro_ref_rua_memb,
    CAST(ind_atend_inst_gov_memb AS STRING) AS ind_atend_inst_gov_memb,
    CAST(ind_atend_inst_nao_gov_memb AS STRING) AS ind_atend_inst_nao_gov_memb,
    CAST(ind_atend_hospital_geral_memb AS STRING) AS ind_atend_hospital_geral_memb,
    CAST(ind_atend_nenhum_memb AS STRING) AS ind_atend_nenhum_memb,
    CAST(cod_cart_assinada_memb AS STRING) AS cod_cart_assinada_memb,
    CAST(ind_dinh_const_memb AS STRING) AS ind_dinh_const_memb,
    CAST(ind_dinh_flanelhinha_memb AS STRING) AS ind_dinh_flanelhinha_memb,
    CAST(ind_dinh_carregador_memb AS STRING) AS ind_dinh_carregador_memb,
    CAST(ind_dinh_catador_memb AS STRING) AS ind_dinh_catador_memb,
    CAST(ind_dinh_servs_gerais_memb AS STRING) AS ind_dinh_servs_gerais_memb,
    CAST(ind_dinh_pede_memb AS STRING) AS ind_dinh_pede_memb,
    CAST(ind_dinh_vendas_memb AS STRING) AS ind_dinh_vendas_memb,
    CAST(ind_dinh_outro_memb AS STRING) AS ind_dinh_outro_memb,
    CAST(ind_dinh_nao_resp_memb AS STRING) AS ind_dinh_nao_resp_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.12_0604`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(ind_dormir_rua_memb AS STRING) AS ind_dormir_rua_memb,
    CAST(qtd_dormir_freq_rua_memb AS STRING) AS qtd_dormir_freq_rua_memb,
    CAST(ind_dormir_albergue_memb AS STRING) AS ind_dormir_albergue_memb,
    CAST(qtd_dormir_freq_albergue_memb AS STRING) AS qtd_dormir_freq_albergue_memb,
    CAST(ind_dormir_dom_part_memb AS STRING) AS ind_dormir_dom_part_memb,
    CAST(qtd_dormir_freq_dom_part_memb AS STRING) AS qtd_dormir_freq_dom_part_memb,
    CAST(ind_outro_memb AS STRING) AS ind_outro_memb,
    CAST(qtd_freq_outro_memb AS STRING) AS qtd_freq_outro_memb,
    CAST(cod_tempo_rua_memb AS STRING) AS cod_tempo_rua_memb,
    CAST(ind_motivo_perda_memb AS STRING) AS ind_motivo_perda_memb,
    CAST(ind_motivo_ameaca_memb AS STRING) AS ind_motivo_ameaca_memb,
    CAST(ind_motivo_probs_fam_memb AS STRING) AS ind_motivo_probs_fam_memb,
    CAST(ind_motivo_alcool_memb AS STRING) AS ind_motivo_alcool_memb,
    CAST(ind_motivo_desemprego_memb AS STRING) AS ind_motivo_desemprego_memb,
    CAST(ind_motivo_trabalho_memb AS STRING) AS ind_motivo_trabalho_memb,
    CAST(ind_motivo_saude_memb AS STRING) AS ind_motivo_saude_memb,
    CAST(ind_motivo_pref_memb AS STRING) AS ind_motivo_pref_memb,
    CAST(ind_motivo_outro_memb AS STRING) AS ind_motivo_outro_memb,
    CAST(ind_motivo_nao_sabe_memb AS STRING) AS ind_motivo_nao_sabe_memb,
    CAST(ind_motivo_nao_resp_memb AS STRING) AS ind_motivo_nao_resp_memb,
    CAST(cod_tempo_cidade_memb AS STRING) AS cod_tempo_cidade_memb,
    CAST(cod_vive_fam_rua_memb AS STRING) AS cod_vive_fam_rua_memb,
    CAST(cod_contato_parente_memb AS STRING) AS cod_contato_parente_memb,
    CAST(ind_ativ_com_escola_memb AS STRING) AS ind_ativ_com_escola_memb,
    CAST(ind_ativ_com_associacao_memb AS STRING) AS ind_ativ_com_associacao_memb,
    CAST(ind_ativ_com_coop_memb AS STRING) AS ind_ativ_com_coop_memb,
    CAST(ind_ativ_com_mov_soc_memb AS STRING) AS ind_ativ_com_mov_soc_memb,
    CAST(ind_ativ_com_nao_sabe_memb AS STRING) AS ind_ativ_com_nao_sabe_memb,
    CAST(ind_ativ_com_nao_resp_memb AS STRING) AS ind_ativ_com_nao_resp_memb,
    CAST(ind_atend_cras_memb AS STRING) AS ind_atend_cras_memb,
    CAST(ind_atend_creas_memb AS STRING) AS ind_atend_creas_memb,
    CAST(ind_atend_centro_ref_rua_memb AS STRING) AS ind_atend_centro_ref_rua_memb,
    CAST(ind_atend_inst_gov_memb AS STRING) AS ind_atend_inst_gov_memb,
    CAST(ind_atend_inst_nao_gov_memb AS STRING) AS ind_atend_inst_nao_gov_memb,
    CAST(ind_atend_hospital_geral_memb AS STRING) AS ind_atend_hospital_geral_memb,
    CAST(ind_atend_nenhum_memb AS STRING) AS ind_atend_nenhum_memb,
    CAST(cod_cart_assinada_memb AS STRING) AS cod_cart_assinada_memb,
    CAST(ind_dinh_const_memb AS STRING) AS ind_dinh_const_memb,
    CAST(ind_dinh_flanelhinha_memb AS STRING) AS ind_dinh_flanelhinha_memb,
    CAST(ind_dinh_carregador_memb AS STRING) AS ind_dinh_carregador_memb,
    CAST(ind_dinh_catador_memb AS STRING) AS ind_dinh_catador_memb,
    CAST(ind_dinh_servs_gerais_memb AS STRING) AS ind_dinh_servs_gerais_memb,
    CAST(ind_dinh_pede_memb AS STRING) AS ind_dinh_pede_memb,
    CAST(ind_dinh_vendas_memb AS STRING) AS ind_dinh_vendas_memb,
    CAST(ind_dinh_outro_memb AS STRING) AS ind_dinh_outro_memb,
    CAST(ind_dinh_nao_resp_memb AS STRING) AS ind_dinh_nao_resp_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.12_0609`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(ind_dormir_rua_memb AS STRING) AS ind_dormir_rua_memb,
    CAST(qtd_dormir_freq_rua_memb AS STRING) AS qtd_dormir_freq_rua_memb,
    CAST(ind_dormir_albergue_memb AS STRING) AS ind_dormir_albergue_memb,
    CAST(qtd_dormir_freq_albergue_memb AS STRING) AS qtd_dormir_freq_albergue_memb,
    CAST(ind_dormir_dom_part_memb AS STRING) AS ind_dormir_dom_part_memb,
    CAST(qtd_dormir_freq_dom_part_memb AS STRING) AS qtd_dormir_freq_dom_part_memb,
    CAST(ind_outro_memb AS STRING) AS ind_outro_memb,
    CAST(qtd_freq_outro_memb AS STRING) AS qtd_freq_outro_memb,
    CAST(cod_tempo_rua_memb AS STRING) AS cod_tempo_rua_memb,
    CAST(ind_motivo_perda_memb AS STRING) AS ind_motivo_perda_memb,
    CAST(ind_motivo_ameaca_memb AS STRING) AS ind_motivo_ameaca_memb,
    CAST(ind_motivo_probs_fam_memb AS STRING) AS ind_motivo_probs_fam_memb,
    CAST(ind_motivo_alcool_memb AS STRING) AS ind_motivo_alcool_memb,
    CAST(ind_motivo_desemprego_memb AS STRING) AS ind_motivo_desemprego_memb,
    CAST(ind_motivo_trabalho_memb AS STRING) AS ind_motivo_trabalho_memb,
    CAST(ind_motivo_saude_memb AS STRING) AS ind_motivo_saude_memb,
    CAST(ind_motivo_pref_memb AS STRING) AS ind_motivo_pref_memb,
    CAST(ind_motivo_outro_memb AS STRING) AS ind_motivo_outro_memb,
    CAST(ind_motivo_nao_sabe_memb AS STRING) AS ind_motivo_nao_sabe_memb,
    CAST(ind_motivo_nao_resp_memb AS STRING) AS ind_motivo_nao_resp_memb,
    CAST(cod_tempo_cidade_memb AS STRING) AS cod_tempo_cidade_memb,
    CAST(cod_vive_fam_rua_memb AS STRING) AS cod_vive_fam_rua_memb,
    CAST(cod_contato_parente_memb AS STRING) AS cod_contato_parente_memb,
    CAST(ind_ativ_com_escola_memb AS STRING) AS ind_ativ_com_escola_memb,
    CAST(ind_ativ_com_associacao_memb AS STRING) AS ind_ativ_com_associacao_memb,
    CAST(ind_ativ_com_coop_memb AS STRING) AS ind_ativ_com_coop_memb,
    CAST(ind_ativ_com_mov_soc_memb AS STRING) AS ind_ativ_com_mov_soc_memb,
    CAST(ind_ativ_com_nao_sabe_memb AS STRING) AS ind_ativ_com_nao_sabe_memb,
    CAST(ind_ativ_com_nao_resp_memb AS STRING) AS ind_ativ_com_nao_resp_memb,
    CAST(ind_atend_cras_memb AS STRING) AS ind_atend_cras_memb,
    CAST(ind_atend_creas_memb AS STRING) AS ind_atend_creas_memb,
    CAST(ind_atend_centro_ref_rua_memb AS STRING) AS ind_atend_centro_ref_rua_memb,
    CAST(ind_atend_inst_gov_memb AS STRING) AS ind_atend_inst_gov_memb,
    CAST(ind_atend_inst_nao_gov_memb AS STRING) AS ind_atend_inst_nao_gov_memb,
    CAST(ind_atend_hospital_geral_memb AS STRING) AS ind_atend_hospital_geral_memb,
    CAST(ind_atend_nenhum_memb AS STRING) AS ind_atend_nenhum_memb,
    CAST(cod_cart_assinada_memb AS STRING) AS cod_cart_assinada_memb,
    CAST(ind_dinh_const_memb AS STRING) AS ind_dinh_const_memb,
    CAST(ind_dinh_flanelhinha_memb AS STRING) AS ind_dinh_flanelhinha_memb,
    CAST(ind_dinh_carregador_memb AS STRING) AS ind_dinh_carregador_memb,
    CAST(ind_dinh_catador_memb AS STRING) AS ind_dinh_catador_memb,
    CAST(ind_dinh_servs_gerais_memb AS STRING) AS ind_dinh_servs_gerais_memb,
    CAST(ind_dinh_pede_memb AS STRING) AS ind_dinh_pede_memb,
    CAST(ind_dinh_vendas_memb AS STRING) AS ind_dinh_vendas_memb,
    CAST(ind_dinh_outro_memb AS STRING) AS ind_dinh_outro_memb,
    CAST(ind_dinh_nao_resp_memb AS STRING) AS ind_dinh_nao_resp_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.12_0612`

