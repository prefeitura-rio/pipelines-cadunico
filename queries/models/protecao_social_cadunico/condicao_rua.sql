
SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(ind_dormir_rua_memb AS STRING) AS dorme_rua,
    CAST(qtd_dormir_freq_rua_memb AS INT64) AS dorme_rua_vezes_semana,
    CAST(ind_dormir_albergue_memb AS STRING) AS dorme_albergue,
    CAST(qtd_dormir_freq_albergue_memb AS INT64) AS dorme_albergue_vezes_semana,
    CAST(ind_dormir_dom_part_memb AS STRING) AS dorme_domicilio_particular,
    CAST(qtd_dormir_freq_dom_part_memb AS INT64) AS dorme_domicilio_particular_vezes_semana,
    CAST(ind_outro_memb AS STRING) AS dorme_outro,
    CAST(qtd_freq_outro_memb AS INT64) AS dorme_outro_vezes_semana,
    CAST(cod_tempo_rua_memb AS STRING) AS id_tempo_rua,
    CAST(ind_motivo_perda_memb AS STRING) AS condicao_rua_perda_moradia,
    CAST(ind_motivo_ameaca_memb AS STRING) AS condicao_rua_ameaca,
    CAST(ind_motivo_probs_fam_memb AS STRING) AS condicao_rua_problemas_familiares,
    CAST(ind_motivo_alcool_memb AS STRING) AS condicao_rua_alcool,
    CAST(ind_motivo_desemprego_memb AS STRING) AS condicao_rua_desemprego,
    CAST(ind_motivo_trabalho_memb AS STRING) AS condicao_rua_trabalho,
    CAST(ind_motivo_saude_memb AS STRING) AS condicao_rua_saude,
    CAST(ind_motivo_pref_memb AS STRING) AS condicao_rua_preferencia,
    CAST(ind_motivo_outro_memb AS STRING) AS condicao_rua_outro,
    CAST(ind_motivo_nao_sabe_memb AS STRING) AS condicao_rua_nao_sabe,
    CAST(ind_motivo_nao_resp_memb AS STRING) AS condicao_rua_nao_respondeu,
    CAST(cod_tempo_cidade_memb AS STRING) AS id_tempo_municipio,
    CAST(cod_vive_fam_rua_memb AS STRING) AS condicao_rua_vive_familia,
    CAST(cod_contato_parente_memb AS STRING) AS condicao_rua_contato_parente,
    CAST(ind_ativ_com_escola_memb AS STRING) AS atividade_comunitaria_escola,
    CAST(ind_ativ_com_associacao_memb AS STRING) AS atividade_comunitaria_associacao,
    CAST(ind_ativ_com_coop_memb AS STRING) AS atividade_comunitaria_cooperativa,
    CAST(ind_ativ_com_mov_soc_memb AS STRING) AS atibidade_comunitaria_movimento_social,
    CAST(ind_ativ_com_nao_sabe_memb AS STRING) AS atividade_comunitaria_nao_sabe,
    CAST(ind_ativ_com_nao_resp_memb AS STRING) AS atividade_comunitaria_nao_respondeu,
    CAST(ind_atend_cras_memb AS STRING) AS atendido_cras,
    CAST(ind_atend_creas_memb AS STRING) AS atendido_creas,
    CAST(ind_atend_centro_ref_rua_memb AS STRING) AS atendido_crentro_referencia_populacao_rua,
    CAST(ind_atend_inst_gov_memb AS STRING) AS atendido_instituicao_governamental,
    CAST(ind_atend_inst_nao_gov_memb AS STRING) AS atendido_instituicao_nao_governamental,
    CAST(ind_atend_hospital_geral_memb AS STRING) AS atendido_hospital_geral,
    CAST(ind_atend_nenhum_memb AS STRING) AS atendido_nenhum,
    CAST(cod_cart_assinada_memb AS STRING) AS id_carteira_assinada,
    CAST(ind_dinh_const_memb AS STRING) AS ganha_dinheiro_construcao_civil,
    CAST(ind_dinh_flanelhinha_memb AS STRING) AS ganha_dinheiro_flanelinha,
    CAST(ind_dinh_carregador_memb AS STRING) AS ganha_dinheiro_carregador,
    CAST(ind_dinh_catador_memb AS STRING) AS ganha_dinheiro_catador,
    CAST(ind_dinh_servs_gerais_memb AS STRING) AS ganha_dinheiro_sevicos_gerais,
    CAST(ind_dinh_pede_memb AS STRING) AS ganha_dinheiro_pedinte,
    CAST(ind_dinh_vendas_memb AS STRING) AS ganha_dinheiro_vendas,
    CAST(ind_dinh_outro_memb AS STRING) AS ganha_dinheiro_outro,
    CAST(ind_dinh_nao_resp_memb AS STRING) AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0601`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(ind_dormir_rua_memb AS STRING) AS dorme_rua,
    CAST(qtd_dormir_freq_rua_memb AS INT64) AS dorme_rua_vezes_semana,
    CAST(ind_dormir_albergue_memb AS STRING) AS dorme_albergue,
    CAST(qtd_dormir_freq_albergue_memb AS INT64) AS dorme_albergue_vezes_semana,
    CAST(ind_dormir_dom_part_memb AS STRING) AS dorme_domicilio_particular,
    CAST(qtd_dormir_freq_dom_part_memb AS INT64) AS dorme_domicilio_particular_vezes_semana,
    CAST(ind_outro_memb AS STRING) AS dorme_outro,
    CAST(qtd_freq_outro_memb AS INT64) AS dorme_outro_vezes_semana,
    CAST(cod_tempo_rua_memb AS STRING) AS id_tempo_rua,
    CAST(ind_motivo_perda_memb AS STRING) AS condicao_rua_perda_moradia,
    CAST(ind_motivo_ameaca_memb AS STRING) AS condicao_rua_ameaca,
    CAST(ind_motivo_probs_fam_memb AS STRING) AS condicao_rua_problemas_familiares,
    CAST(ind_motivo_alcool_memb AS STRING) AS condicao_rua_alcool,
    CAST(ind_motivo_desemprego_memb AS STRING) AS condicao_rua_desemprego,
    CAST(ind_motivo_trabalho_memb AS STRING) AS condicao_rua_trabalho,
    CAST(ind_motivo_saude_memb AS STRING) AS condicao_rua_saude,
    CAST(ind_motivo_pref_memb AS STRING) AS condicao_rua_preferencia,
    CAST(ind_motivo_outro_memb AS STRING) AS condicao_rua_outro,
    CAST(ind_motivo_nao_sabe_memb AS STRING) AS condicao_rua_nao_sabe,
    CAST(ind_motivo_nao_resp_memb AS STRING) AS condicao_rua_nao_respondeu,
    CAST(cod_tempo_cidade_memb AS STRING) AS id_tempo_municipio,
    CAST(cod_vive_fam_rua_memb AS STRING) AS condicao_rua_vive_familia,
    CAST(cod_contato_parente_memb AS STRING) AS condicao_rua_contato_parente,
    CAST(ind_ativ_com_escola_memb AS STRING) AS atividade_comunitaria_escola,
    CAST(ind_ativ_com_associacao_memb AS STRING) AS atividade_comunitaria_associacao,
    CAST(ind_ativ_com_coop_memb AS STRING) AS atividade_comunitaria_cooperativa,
    CAST(ind_ativ_com_mov_soc_memb AS STRING) AS atibidade_comunitaria_movimento_social,
    CAST(ind_ativ_com_nao_sabe_memb AS STRING) AS atividade_comunitaria_nao_sabe,
    CAST(ind_ativ_com_nao_resp_memb AS STRING) AS atividade_comunitaria_nao_respondeu,
    CAST(ind_atend_cras_memb AS STRING) AS atendido_cras,
    CAST(ind_atend_creas_memb AS STRING) AS atendido_creas,
    CAST(ind_atend_centro_ref_rua_memb AS STRING) AS atendido_crentro_referencia_populacao_rua,
    CAST(ind_atend_inst_gov_memb AS STRING) AS atendido_instituicao_governamental,
    CAST(ind_atend_inst_nao_gov_memb AS STRING) AS atendido_instituicao_nao_governamental,
    CAST(ind_atend_hospital_geral_memb AS STRING) AS atendido_hospital_geral,
    CAST(ind_atend_nenhum_memb AS STRING) AS atendido_nenhum,
    CAST(cod_cart_assinada_memb AS STRING) AS id_carteira_assinada,
    CAST(ind_dinh_const_memb AS STRING) AS ganha_dinheiro_construcao_civil,
    CAST(ind_dinh_flanelhinha_memb AS STRING) AS ganha_dinheiro_flanelinha,
    CAST(ind_dinh_carregador_memb AS STRING) AS ganha_dinheiro_carregador,
    CAST(ind_dinh_catador_memb AS STRING) AS ganha_dinheiro_catador,
    CAST(ind_dinh_servs_gerais_memb AS STRING) AS ganha_dinheiro_sevicos_gerais,
    CAST(ind_dinh_pede_memb AS STRING) AS ganha_dinheiro_pedinte,
    CAST(ind_dinh_vendas_memb AS STRING) AS ganha_dinheiro_vendas,
    CAST(ind_dinh_outro_memb AS STRING) AS ganha_dinheiro_outro,
    CAST(ind_dinh_nao_resp_memb AS STRING) AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0603`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(ind_dormir_rua_memb AS STRING) AS dorme_rua,
    CAST(qtd_dormir_freq_rua_memb AS INT64) AS dorme_rua_vezes_semana,
    CAST(ind_dormir_albergue_memb AS STRING) AS dorme_albergue,
    CAST(qtd_dormir_freq_albergue_memb AS INT64) AS dorme_albergue_vezes_semana,
    CAST(ind_dormir_dom_part_memb AS STRING) AS dorme_domicilio_particular,
    CAST(qtd_dormir_freq_dom_part_memb AS INT64) AS dorme_domicilio_particular_vezes_semana,
    CAST(ind_outro_memb AS STRING) AS dorme_outro,
    CAST(qtd_freq_outro_memb AS INT64) AS dorme_outro_vezes_semana,
    CAST(cod_tempo_rua_memb AS STRING) AS id_tempo_rua,
    CAST(ind_motivo_perda_memb AS STRING) AS condicao_rua_perda_moradia,
    CAST(ind_motivo_ameaca_memb AS STRING) AS condicao_rua_ameaca,
    CAST(ind_motivo_probs_fam_memb AS STRING) AS condicao_rua_problemas_familiares,
    CAST(ind_motivo_alcool_memb AS STRING) AS condicao_rua_alcool,
    CAST(ind_motivo_desemprego_memb AS STRING) AS condicao_rua_desemprego,
    CAST(ind_motivo_trabalho_memb AS STRING) AS condicao_rua_trabalho,
    CAST(ind_motivo_saude_memb AS STRING) AS condicao_rua_saude,
    CAST(ind_motivo_pref_memb AS STRING) AS condicao_rua_preferencia,
    CAST(ind_motivo_outro_memb AS STRING) AS condicao_rua_outro,
    CAST(ind_motivo_nao_sabe_memb AS STRING) AS condicao_rua_nao_sabe,
    CAST(ind_motivo_nao_resp_memb AS STRING) AS condicao_rua_nao_respondeu,
    CAST(cod_tempo_cidade_memb AS STRING) AS id_tempo_municipio,
    CAST(cod_vive_fam_rua_memb AS STRING) AS condicao_rua_vive_familia,
    CAST(cod_contato_parente_memb AS STRING) AS condicao_rua_contato_parente,
    CAST(ind_ativ_com_escola_memb AS STRING) AS atividade_comunitaria_escola,
    CAST(ind_ativ_com_associacao_memb AS STRING) AS atividade_comunitaria_associacao,
    CAST(ind_ativ_com_coop_memb AS STRING) AS atividade_comunitaria_cooperativa,
    CAST(ind_ativ_com_mov_soc_memb AS STRING) AS atibidade_comunitaria_movimento_social,
    CAST(ind_ativ_com_nao_sabe_memb AS STRING) AS atividade_comunitaria_nao_sabe,
    CAST(ind_ativ_com_nao_resp_memb AS STRING) AS atividade_comunitaria_nao_respondeu,
    CAST(ind_atend_cras_memb AS STRING) AS atendido_cras,
    CAST(ind_atend_creas_memb AS STRING) AS atendido_creas,
    CAST(ind_atend_centro_ref_rua_memb AS STRING) AS atendido_crentro_referencia_populacao_rua,
    CAST(ind_atend_inst_gov_memb AS STRING) AS atendido_instituicao_governamental,
    CAST(ind_atend_inst_nao_gov_memb AS STRING) AS atendido_instituicao_nao_governamental,
    CAST(ind_atend_hospital_geral_memb AS STRING) AS atendido_hospital_geral,
    CAST(ind_atend_nenhum_memb AS STRING) AS atendido_nenhum,
    CAST(cod_cart_assinada_memb AS STRING) AS id_carteira_assinada,
    CAST(ind_dinh_const_memb AS STRING) AS ganha_dinheiro_construcao_civil,
    CAST(ind_dinh_flanelhinha_memb AS STRING) AS ganha_dinheiro_flanelinha,
    CAST(ind_dinh_carregador_memb AS STRING) AS ganha_dinheiro_carregador,
    CAST(ind_dinh_catador_memb AS STRING) AS ganha_dinheiro_catador,
    CAST(ind_dinh_servs_gerais_memb AS STRING) AS ganha_dinheiro_sevicos_gerais,
    CAST(ind_dinh_pede_memb AS STRING) AS ganha_dinheiro_pedinte,
    CAST(ind_dinh_vendas_memb AS STRING) AS ganha_dinheiro_vendas,
    CAST(ind_dinh_outro_memb AS STRING) AS ganha_dinheiro_outro,
    CAST(ind_dinh_nao_resp_memb AS STRING) AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0604`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(ind_dormir_rua_memb AS STRING) AS dorme_rua,
    CAST(qtd_dormir_freq_rua_memb AS INT64) AS dorme_rua_vezes_semana,
    CAST(ind_dormir_albergue_memb AS STRING) AS dorme_albergue,
    CAST(qtd_dormir_freq_albergue_memb AS INT64) AS dorme_albergue_vezes_semana,
    CAST(ind_dormir_dom_part_memb AS STRING) AS dorme_domicilio_particular,
    CAST(qtd_dormir_freq_dom_part_memb AS INT64) AS dorme_domicilio_particular_vezes_semana,
    CAST(ind_outro_memb AS STRING) AS dorme_outro,
    CAST(qtd_freq_outro_memb AS INT64) AS dorme_outro_vezes_semana,
    CAST(cod_tempo_rua_memb AS STRING) AS id_tempo_rua,
    CAST(ind_motivo_perda_memb AS STRING) AS condicao_rua_perda_moradia,
    CAST(ind_motivo_ameaca_memb AS STRING) AS condicao_rua_ameaca,
    CAST(ind_motivo_probs_fam_memb AS STRING) AS condicao_rua_problemas_familiares,
    CAST(ind_motivo_alcool_memb AS STRING) AS condicao_rua_alcool,
    CAST(ind_motivo_desemprego_memb AS STRING) AS condicao_rua_desemprego,
    CAST(ind_motivo_trabalho_memb AS STRING) AS condicao_rua_trabalho,
    CAST(ind_motivo_saude_memb AS STRING) AS condicao_rua_saude,
    CAST(ind_motivo_pref_memb AS STRING) AS condicao_rua_preferencia,
    CAST(ind_motivo_outro_memb AS STRING) AS condicao_rua_outro,
    CAST(ind_motivo_nao_sabe_memb AS STRING) AS condicao_rua_nao_sabe,
    CAST(ind_motivo_nao_resp_memb AS STRING) AS condicao_rua_nao_respondeu,
    CAST(cod_tempo_cidade_memb AS STRING) AS id_tempo_municipio,
    CAST(cod_vive_fam_rua_memb AS STRING) AS condicao_rua_vive_familia,
    CAST(cod_contato_parente_memb AS STRING) AS condicao_rua_contato_parente,
    CAST(ind_ativ_com_escola_memb AS STRING) AS atividade_comunitaria_escola,
    CAST(ind_ativ_com_associacao_memb AS STRING) AS atividade_comunitaria_associacao,
    CAST(ind_ativ_com_coop_memb AS STRING) AS atividade_comunitaria_cooperativa,
    CAST(ind_ativ_com_mov_soc_memb AS STRING) AS atibidade_comunitaria_movimento_social,
    CAST(ind_ativ_com_nao_sabe_memb AS STRING) AS atividade_comunitaria_nao_sabe,
    CAST(ind_ativ_com_nao_resp_memb AS STRING) AS atividade_comunitaria_nao_respondeu,
    CAST(ind_atend_cras_memb AS STRING) AS atendido_cras,
    CAST(ind_atend_creas_memb AS STRING) AS atendido_creas,
    CAST(ind_atend_centro_ref_rua_memb AS STRING) AS atendido_crentro_referencia_populacao_rua,
    CAST(ind_atend_inst_gov_memb AS STRING) AS atendido_instituicao_governamental,
    CAST(ind_atend_inst_nao_gov_memb AS STRING) AS atendido_instituicao_nao_governamental,
    CAST(ind_atend_hospital_geral_memb AS STRING) AS atendido_hospital_geral,
    CAST(ind_atend_nenhum_memb AS STRING) AS atendido_nenhum,
    CAST(cod_cart_assinada_memb AS STRING) AS id_carteira_assinada,
    CAST(ind_dinh_const_memb AS STRING) AS ganha_dinheiro_construcao_civil,
    CAST(ind_dinh_flanelhinha_memb AS STRING) AS ganha_dinheiro_flanelinha,
    CAST(ind_dinh_carregador_memb AS STRING) AS ganha_dinheiro_carregador,
    CAST(ind_dinh_catador_memb AS STRING) AS ganha_dinheiro_catador,
    CAST(ind_dinh_servs_gerais_memb AS STRING) AS ganha_dinheiro_sevicos_gerais,
    CAST(ind_dinh_pede_memb AS STRING) AS ganha_dinheiro_pedinte,
    CAST(ind_dinh_vendas_memb AS STRING) AS ganha_dinheiro_vendas,
    CAST(ind_dinh_outro_memb AS STRING) AS ganha_dinheiro_outro,
    CAST(ind_dinh_nao_resp_memb AS STRING) AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0609`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(ind_dormir_rua_memb AS STRING) AS dorme_rua,
    CAST(qtd_dormir_freq_rua_memb AS INT64) AS dorme_rua_vezes_semana,
    CAST(ind_dormir_albergue_memb AS STRING) AS dorme_albergue,
    CAST(qtd_dormir_freq_albergue_memb AS INT64) AS dorme_albergue_vezes_semana,
    CAST(ind_dormir_dom_part_memb AS STRING) AS dorme_domicilio_particular,
    CAST(qtd_dormir_freq_dom_part_memb AS INT64) AS dorme_domicilio_particular_vezes_semana,
    CAST(ind_outro_memb AS STRING) AS dorme_outro,
    CAST(qtd_freq_outro_memb AS INT64) AS dorme_outro_vezes_semana,
    CAST(cod_tempo_rua_memb AS STRING) AS id_tempo_rua,
    CAST(ind_motivo_perda_memb AS STRING) AS condicao_rua_perda_moradia,
    CAST(ind_motivo_ameaca_memb AS STRING) AS condicao_rua_ameaca,
    CAST(ind_motivo_probs_fam_memb AS STRING) AS condicao_rua_problemas_familiares,
    CAST(ind_motivo_alcool_memb AS STRING) AS condicao_rua_alcool,
    CAST(ind_motivo_desemprego_memb AS STRING) AS condicao_rua_desemprego,
    CAST(ind_motivo_trabalho_memb AS STRING) AS condicao_rua_trabalho,
    CAST(ind_motivo_saude_memb AS STRING) AS condicao_rua_saude,
    CAST(ind_motivo_pref_memb AS STRING) AS condicao_rua_preferencia,
    CAST(ind_motivo_outro_memb AS STRING) AS condicao_rua_outro,
    CAST(ind_motivo_nao_sabe_memb AS STRING) AS condicao_rua_nao_sabe,
    CAST(ind_motivo_nao_resp_memb AS STRING) AS condicao_rua_nao_respondeu,
    CAST(cod_tempo_cidade_memb AS STRING) AS id_tempo_municipio,
    CAST(cod_vive_fam_rua_memb AS STRING) AS condicao_rua_vive_familia,
    CAST(cod_contato_parente_memb AS STRING) AS condicao_rua_contato_parente,
    CAST(ind_ativ_com_escola_memb AS STRING) AS atividade_comunitaria_escola,
    CAST(ind_ativ_com_associacao_memb AS STRING) AS atividade_comunitaria_associacao,
    CAST(ind_ativ_com_coop_memb AS STRING) AS atividade_comunitaria_cooperativa,
    CAST(ind_ativ_com_mov_soc_memb AS STRING) AS atibidade_comunitaria_movimento_social,
    CAST(ind_ativ_com_nao_sabe_memb AS STRING) AS atividade_comunitaria_nao_sabe,
    CAST(ind_ativ_com_nao_resp_memb AS STRING) AS atividade_comunitaria_nao_respondeu,
    CAST(ind_atend_cras_memb AS STRING) AS atendido_cras,
    CAST(ind_atend_creas_memb AS STRING) AS atendido_creas,
    CAST(ind_atend_centro_ref_rua_memb AS STRING) AS atendido_crentro_referencia_populacao_rua,
    CAST(ind_atend_inst_gov_memb AS STRING) AS atendido_instituicao_governamental,
    CAST(ind_atend_inst_nao_gov_memb AS STRING) AS atendido_instituicao_nao_governamental,
    CAST(ind_atend_hospital_geral_memb AS STRING) AS atendido_hospital_geral,
    CAST(ind_atend_nenhum_memb AS STRING) AS atendido_nenhum,
    CAST(cod_cart_assinada_memb AS STRING) AS id_carteira_assinada,
    CAST(ind_dinh_const_memb AS STRING) AS ganha_dinheiro_construcao_civil,
    CAST(ind_dinh_flanelhinha_memb AS STRING) AS ganha_dinheiro_flanelinha,
    CAST(ind_dinh_carregador_memb AS STRING) AS ganha_dinheiro_carregador,
    CAST(ind_dinh_catador_memb AS STRING) AS ganha_dinheiro_catador,
    CAST(ind_dinh_servs_gerais_memb AS STRING) AS ganha_dinheiro_sevicos_gerais,
    CAST(ind_dinh_pede_memb AS STRING) AS ganha_dinheiro_pedinte,
    CAST(ind_dinh_vendas_memb AS STRING) AS ganha_dinheiro_vendas,
    CAST(ind_dinh_outro_memb AS STRING) AS ganha_dinheiro_outro,
    CAST(ind_dinh_nao_resp_memb AS STRING) AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0612`

