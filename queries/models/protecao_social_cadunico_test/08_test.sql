
SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(num_membro_fmla AS int64) AS membros_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_trabalhou_memb AS string) AS id_trabalho_semana_passada,
    CAST(cod_afastado_trab_memb AS string) AS id_afastado_semana_passada,
    CAST(cod_agricultura_trab_memb AS string) AS id_atividade_extravista,
    CAST(cod_principal_trab_memb AS string) AS id_funcao_principal_trabalho,
    CAST(val_remuner_emprego_memb AS int64) AS remuneracao,
    CAST(ind_val_remuner_emprego_memb AS string) AS nao_recebe_remuneracao,
    CAST(cod_trabalho_12_meses_memb AS string) AS id_trabalho_remunerado_ultimos_12_meses,
    CAST(qtd_meses_12_meses_memb AS int64) AS meses_trabalhados_nos_ultimos_12,
    CAST(val_renda_bruta_12_meses_memb AS int64) AS remuneracao_bruta,
    CAST(val_renda_doacao_memb AS int64) AS doacoes,
    CAST(ind_val_renda_doacao_memb AS string) AS nao_recebe_doacao,
    CAST(val_renda_aposent_memb AS int64) AS aposentadoria,
    CAST(ind_val_renda_aposent_memb AS string) AS nao_recebe_aposentadoria,
    CAST(val_renda_seguro_desemp_memb AS int64) AS seguro_desemprego,
    CAST(ind_val_renda_seguro_desemp_memb AS string) AS nao_recebe_seguro_desemprego,
    CAST(val_renda_pensao_alimen_memb AS int64) AS pensao_alimenticia,
    CAST(ind_val_renda_pensao_alimen_memb AS string) AS nao_recebe_pensao_alimenticia,
    CAST(val_outras_rendas_memb AS int64) AS outras_fontes,
    CAST(ind_val_outras_rendas_memb AS string) AS nao_recebe_outras_fontes,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.08_0601_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(num_membro_fmla AS int64) AS membros_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_trabalhou_memb AS string) AS id_trabalho_semana_passada,
    CAST(cod_afastado_trab_memb AS string) AS id_afastado_semana_passada,
    CAST(cod_agricultura_trab_memb AS string) AS id_atividade_extravista,
    CAST(cod_principal_trab_memb AS string) AS id_funcao_principal_trabalho,
    CAST(val_remuner_emprego_memb AS int64) AS remuneracao,
    CAST(ind_val_remuner_emprego_memb AS string) AS nao_recebe_remuneracao,
    CAST(cod_trabalho_12_meses_memb AS string) AS id_trabalho_remunerado_ultimos_12_meses,
    CAST(qtd_meses_12_meses_memb AS int64) AS meses_trabalhados_nos_ultimos_12,
    CAST(val_renda_bruta_12_meses_memb AS int64) AS remuneracao_bruta,
    CAST(val_renda_doacao_memb AS int64) AS doacoes,
    CAST(ind_val_renda_doacao_memb AS string) AS nao_recebe_doacao,
    CAST(val_renda_aposent_memb AS int64) AS aposentadoria,
    CAST(ind_val_renda_aposent_memb AS string) AS nao_recebe_aposentadoria,
    CAST(val_renda_seguro_desemp_memb AS int64) AS seguro_desemprego,
    CAST(ind_val_renda_seguro_desemp_memb AS string) AS nao_recebe_seguro_desemprego,
    CAST(val_renda_pensao_alimen_memb AS int64) AS pensao_alimenticia,
    CAST(ind_val_renda_pensao_alimen_memb AS string) AS nao_recebe_pensao_alimenticia,
    CAST(val_outras_rendas_memb AS int64) AS outras_fontes,
    CAST(ind_val_outras_rendas_memb AS string) AS nao_recebe_outras_fontes,
    NULL AS id_origem_valor_rendimento_mes_passado, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_rendimento_bruto, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_ajuda_doacao, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_aposentadoria, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_seguro_desemprego, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_pensao_alimenticia, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_outra_fonte, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.08_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(num_membro_fmla AS int64) AS membros_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_trabalhou_memb AS string) AS id_trabalho_semana_passada,
    CAST(cod_afastado_trab_memb AS string) AS id_afastado_semana_passada,
    CAST(cod_agricultura_trab_memb AS string) AS id_atividade_extravista,
    CAST(cod_principal_trab_memb AS string) AS id_funcao_principal_trabalho,
    CAST(val_remuner_emprego_memb AS int64) AS remuneracao,
    CAST(ind_val_remuner_emprego_memb AS string) AS nao_recebe_remuneracao,
    CAST(cod_trabalho_12_meses_memb AS string) AS id_trabalho_remunerado_ultimos_12_meses,
    CAST(qtd_meses_12_meses_memb AS int64) AS meses_trabalhados_nos_ultimos_12,
    CAST(val_renda_bruta_12_meses_memb AS int64) AS remuneracao_bruta,
    CAST(val_renda_doacao_memb AS int64) AS doacoes,
    CAST(ind_val_renda_doacao_memb AS string) AS nao_recebe_doacao,
    CAST(val_renda_aposent_memb AS int64) AS aposentadoria,
    CAST(ind_val_renda_aposent_memb AS string) AS nao_recebe_aposentadoria,
    CAST(val_renda_seguro_desemp_memb AS int64) AS seguro_desemprego,
    CAST(ind_val_renda_seguro_desemp_memb AS string) AS nao_recebe_seguro_desemprego,
    CAST(val_renda_pensao_alimen_memb AS int64) AS pensao_alimenticia,
    CAST(ind_val_renda_pensao_alimen_memb AS string) AS nao_recebe_pensao_alimenticia,
    CAST(val_outras_rendas_memb AS int64) AS outras_fontes,
    CAST(ind_val_outras_rendas_memb AS string) AS nao_recebe_outras_fontes,
    NULL AS id_origem_valor_rendimento_mes_passado, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_rendimento_bruto, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_ajuda_doacao, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_aposentadoria, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_seguro_desemprego, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_pensao_alimenticia, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_outra_fonte, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.08_0609_test`

