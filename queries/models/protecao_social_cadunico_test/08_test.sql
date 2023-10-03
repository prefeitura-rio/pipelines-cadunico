
SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_trabalhou_memb AS STRING) AS cod_trabalhou_memb,
    CAST(cod_afastado_trab_memb AS STRING) AS cod_afastado_trab_memb,
    CAST(cod_agricultura_trab_memb AS STRING) AS cod_agricultura_trab_memb,
    CAST(cod_principal_trab_memb AS STRING) AS cod_principal_trab_memb,
    CAST(val_remuner_emprego_memb AS STRING) AS val_remuner_emprego_memb,
    CAST(ind_val_remuner_emprego_memb AS STRING) AS ind_val_remuner_emprego_memb,
    CAST(cod_trabalho_12_meses_memb AS STRING) AS cod_trabalho_12_meses_memb,
    CAST(qtd_meses_12_meses_memb AS STRING) AS qtd_meses_12_meses_memb,
    CAST(val_renda_bruta_12_meses_memb AS STRING) AS val_renda_bruta_12_meses_memb,
    CAST(val_renda_doacao_memb AS STRING) AS val_renda_doacao_memb,
    CAST(ind_val_renda_doacao_memb AS STRING) AS ind_val_renda_doacao_memb,
    CAST(val_renda_aposent_memb AS STRING) AS val_renda_aposent_memb,
    CAST(ind_val_renda_aposent_memb AS STRING) AS ind_val_renda_aposent_memb,
    CAST(val_renda_seguro_desemp_memb AS STRING) AS val_renda_seguro_desemp_memb,
    CAST(ind_val_renda_seguro_desemp_memb AS STRING) AS ind_val_renda_seguro_desemp_memb,
    CAST(val_renda_pensao_alimen_memb AS STRING) AS val_renda_pensao_alimen_memb,
    CAST(ind_val_renda_pensao_alimen_memb AS STRING) AS ind_val_renda_pensao_alimen_memb,
    CAST(val_outras_rendas_memb AS STRING) AS val_outras_rendas_memb,
    CAST(ind_val_outras_rendas_memb AS STRING) AS ind_val_outras_rendas_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.08_0601_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_trabalhou_memb AS STRING) AS cod_trabalhou_memb,
    CAST(cod_afastado_trab_memb AS STRING) AS cod_afastado_trab_memb,
    CAST(cod_agricultura_trab_memb AS STRING) AS cod_agricultura_trab_memb,
    CAST(cod_principal_trab_memb AS STRING) AS cod_principal_trab_memb,
    CAST(val_remuner_emprego_memb AS STRING) AS val_remuner_emprego_memb,
    CAST(ind_val_remuner_emprego_memb AS STRING) AS ind_val_remuner_emprego_memb,
    CAST(cod_trabalho_12_meses_memb AS STRING) AS cod_trabalho_12_meses_memb,
    CAST(qtd_meses_12_meses_memb AS STRING) AS qtd_meses_12_meses_memb,
    CAST(val_renda_bruta_12_meses_memb AS STRING) AS val_renda_bruta_12_meses_memb,
    CAST(val_renda_doacao_memb AS STRING) AS val_renda_doacao_memb,
    CAST(ind_val_renda_doacao_memb AS STRING) AS ind_val_renda_doacao_memb,
    CAST(val_renda_aposent_memb AS STRING) AS val_renda_aposent_memb,
    CAST(ind_val_renda_aposent_memb AS STRING) AS ind_val_renda_aposent_memb,
    CAST(val_renda_seguro_desemp_memb AS STRING) AS val_renda_seguro_desemp_memb,
    CAST(ind_val_renda_seguro_desemp_memb AS STRING) AS ind_val_renda_seguro_desemp_memb,
    CAST(val_renda_pensao_alimen_memb AS STRING) AS val_renda_pensao_alimen_memb,
    CAST(ind_val_renda_pensao_alimen_memb AS STRING) AS ind_val_renda_pensao_alimen_memb,
    CAST(val_outras_rendas_memb AS STRING) AS val_outras_rendas_memb,
    CAST(ind_val_outras_rendas_memb AS STRING) AS ind_val_outras_rendas_memb,
    NULL AS cod_orgm_vlr_rndmo_mes_passado, --Essa coluna não esta na versao posterior
    NULL AS cod_orgm_vlr_rndmo_bruto_prdo, --Essa coluna não esta na versao posterior
    NULL AS cod_origem_valor_ajuda_doacao, --Essa coluna não esta na versao posterior
    NULL AS cod_origem_valor_aposentadoria, --Essa coluna não esta na versao posterior
    NULL AS cod_orgm_vlr_seguro_desemprego, --Essa coluna não esta na versao posterior
    NULL AS cod_orgm_vlr_pensao_ali, --Essa coluna não esta na versao posterior
    NULL AS cod_orgm_vlr_outra_fonte_renda, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.08_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_trabalhou_memb AS STRING) AS cod_trabalhou_memb,
    CAST(cod_afastado_trab_memb AS STRING) AS cod_afastado_trab_memb,
    CAST(cod_agricultura_trab_memb AS STRING) AS cod_agricultura_trab_memb,
    CAST(cod_principal_trab_memb AS STRING) AS cod_principal_trab_memb,
    CAST(val_remuner_emprego_memb AS STRING) AS val_remuner_emprego_memb,
    CAST(ind_val_remuner_emprego_memb AS STRING) AS ind_val_remuner_emprego_memb,
    CAST(cod_trabalho_12_meses_memb AS STRING) AS cod_trabalho_12_meses_memb,
    CAST(qtd_meses_12_meses_memb AS STRING) AS qtd_meses_12_meses_memb,
    CAST(val_renda_bruta_12_meses_memb AS STRING) AS val_renda_bruta_12_meses_memb,
    CAST(val_renda_doacao_memb AS STRING) AS val_renda_doacao_memb,
    CAST(ind_val_renda_doacao_memb AS STRING) AS ind_val_renda_doacao_memb,
    CAST(val_renda_aposent_memb AS STRING) AS val_renda_aposent_memb,
    CAST(ind_val_renda_aposent_memb AS STRING) AS ind_val_renda_aposent_memb,
    CAST(val_renda_seguro_desemp_memb AS STRING) AS val_renda_seguro_desemp_memb,
    CAST(ind_val_renda_seguro_desemp_memb AS STRING) AS ind_val_renda_seguro_desemp_memb,
    CAST(val_renda_pensao_alimen_memb AS STRING) AS val_renda_pensao_alimen_memb,
    CAST(ind_val_renda_pensao_alimen_memb AS STRING) AS ind_val_renda_pensao_alimen_memb,
    CAST(val_outras_rendas_memb AS STRING) AS val_outras_rendas_memb,
    CAST(ind_val_outras_rendas_memb AS STRING) AS ind_val_outras_rendas_memb,
    NULL AS cod_orgm_vlr_rndmo_mes_passado, --Essa coluna não esta na versao posterior
    NULL AS cod_orgm_vlr_rndmo_bruto_prdo, --Essa coluna não esta na versao posterior
    NULL AS cod_origem_valor_ajuda_doacao, --Essa coluna não esta na versao posterior
    NULL AS cod_origem_valor_aposentadoria, --Essa coluna não esta na versao posterior
    NULL AS cod_orgm_vlr_seguro_desemprego, --Essa coluna não esta na versao posterior
    NULL AS cod_orgm_vlr_pensao_ali, --Essa coluna não esta na versao posterior
    NULL AS cod_orgm_vlr_outra_fonte_renda, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.08_0609_test`

