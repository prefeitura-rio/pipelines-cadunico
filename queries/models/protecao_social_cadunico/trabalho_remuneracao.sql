
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
        WHEN REGEXP_CONTAINS(cod_trabalhou_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_trabalhou_memb  AS STRING)
    END AS id_trabalho_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(cod_afastado_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_afastado_trab_memb  AS STRING)
    END AS id_afastado_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(cod_agricultura_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_agricultura_trab_memb  AS STRING)
    END AS id_atividade_extravista,
    CASE
        WHEN REGEXP_CONTAINS(cod_principal_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_principal_trab_memb  AS STRING)
    END AS id_funcao_principal_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(val_remuner_emprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_remuner_emprego_memb  AS INT64)
    END AS remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_remuner_emprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_remuner_emprego_memb  AS STRING)
    END AS nao_recebe_remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(cod_trabalho_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_trabalho_12_meses_memb  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,
    CASE
        WHEN REGEXP_CONTAINS(qtd_meses_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_meses_12_meses_memb  AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_bruta_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_bruta_12_meses_memb  AS INT64)
    END AS remuneracao_bruta,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_doacao_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_doacao_memb  AS INT64)
    END AS doacoes,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_doacao_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_doacao_memb  AS STRING)
    END AS nao_recebe_doacao,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_aposent_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_aposent_memb  AS INT64)
    END AS aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_aposent_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_aposent_memb  AS STRING)
    END AS nao_recebe_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_seguro_desemp_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_seguro_desemp_memb  AS INT64)
    END AS seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_seguro_desemp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_seguro_desemp_memb  AS STRING)
    END AS nao_recebe_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_pensao_alimen_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_pensao_alimen_memb  AS INT64)
    END AS pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_pensao_alimen_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_pensao_alimen_memb  AS STRING)
    END AS nao_recebe_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(val_outras_rendas_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_outras_rendas_memb  AS INT64)
    END AS outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_outras_rendas_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_outras_rendas_memb  AS STRING)
    END AS nao_recebe_outras_fontes,
    NULL AS id_origem_valor_rendimento_mes_passado, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_rendimento_bruto, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_ajuda_doacao, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_aposentadoria, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_seguro_desemprego, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_pensao_alimenticia, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_outra_fonte, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.trabalho_remuneracao_0601`

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
        WHEN REGEXP_CONTAINS(cod_trabalhou_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_trabalhou_memb  AS STRING)
    END AS id_trabalho_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(cod_afastado_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_afastado_trab_memb  AS STRING)
    END AS id_afastado_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(cod_agricultura_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_agricultura_trab_memb  AS STRING)
    END AS id_atividade_extravista,
    CASE
        WHEN REGEXP_CONTAINS(cod_principal_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_principal_trab_memb  AS STRING)
    END AS id_funcao_principal_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(val_remuner_emprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_remuner_emprego_memb  AS INT64)
    END AS remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_remuner_emprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_remuner_emprego_memb  AS STRING)
    END AS nao_recebe_remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(cod_trabalho_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_trabalho_12_meses_memb  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,
    CASE
        WHEN REGEXP_CONTAINS(qtd_meses_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_meses_12_meses_memb  AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_bruta_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_bruta_12_meses_memb  AS INT64)
    END AS remuneracao_bruta,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_doacao_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_doacao_memb  AS INT64)
    END AS doacoes,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_doacao_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_doacao_memb  AS STRING)
    END AS nao_recebe_doacao,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_aposent_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_aposent_memb  AS INT64)
    END AS aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_aposent_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_aposent_memb  AS STRING)
    END AS nao_recebe_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_seguro_desemp_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_seguro_desemp_memb  AS INT64)
    END AS seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_seguro_desemp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_seguro_desemp_memb  AS STRING)
    END AS nao_recebe_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_pensao_alimen_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_pensao_alimen_memb  AS INT64)
    END AS pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_pensao_alimen_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_pensao_alimen_memb  AS STRING)
    END AS nao_recebe_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(val_outras_rendas_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_outras_rendas_memb  AS INT64)
    END AS outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_outras_rendas_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_outras_rendas_memb  AS STRING)
    END AS nao_recebe_outras_fontes,
    NULL AS id_origem_valor_rendimento_mes_passado, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_rendimento_bruto, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_ajuda_doacao, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_aposentadoria, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_seguro_desemprego, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_pensao_alimenticia, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_outra_fonte, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.trabalho_remuneracao_0603`

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
        WHEN REGEXP_CONTAINS(cod_trabalhou_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_trabalhou_memb  AS STRING)
    END AS id_trabalho_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(cod_afastado_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_afastado_trab_memb  AS STRING)
    END AS id_afastado_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(cod_agricultura_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_agricultura_trab_memb  AS STRING)
    END AS id_atividade_extravista,
    CASE
        WHEN REGEXP_CONTAINS(cod_principal_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_principal_trab_memb  AS STRING)
    END AS id_funcao_principal_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(val_remuner_emprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_remuner_emprego_memb  AS INT64)
    END AS remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_remuner_emprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_remuner_emprego_memb  AS STRING)
    END AS nao_recebe_remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(cod_trabalho_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_trabalho_12_meses_memb  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,
    CASE
        WHEN REGEXP_CONTAINS(qtd_meses_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_meses_12_meses_memb  AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_bruta_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_bruta_12_meses_memb  AS INT64)
    END AS remuneracao_bruta,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_doacao_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_doacao_memb  AS INT64)
    END AS doacoes,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_doacao_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_doacao_memb  AS STRING)
    END AS nao_recebe_doacao,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_aposent_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_aposent_memb  AS INT64)
    END AS aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_aposent_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_aposent_memb  AS STRING)
    END AS nao_recebe_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_seguro_desemp_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_seguro_desemp_memb  AS INT64)
    END AS seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_seguro_desemp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_seguro_desemp_memb  AS STRING)
    END AS nao_recebe_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_pensao_alimen_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_pensao_alimen_memb  AS INT64)
    END AS pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_pensao_alimen_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_pensao_alimen_memb  AS STRING)
    END AS nao_recebe_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(val_outras_rendas_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_outras_rendas_memb  AS INT64)
    END AS outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_outras_rendas_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_outras_rendas_memb  AS STRING)
    END AS nao_recebe_outras_fontes,
    NULL AS id_origem_valor_rendimento_mes_passado, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_rendimento_bruto, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_ajuda_doacao, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_aposentadoria, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_seguro_desemprego, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_pensao_alimenticia, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_outra_fonte, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.trabalho_remuneracao_0604`

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
        WHEN REGEXP_CONTAINS(cod_trabalhou_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_trabalhou_memb  AS STRING)
    END AS id_trabalho_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(cod_afastado_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_afastado_trab_memb  AS STRING)
    END AS id_afastado_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(cod_agricultura_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_agricultura_trab_memb  AS STRING)
    END AS id_atividade_extravista,
    CASE
        WHEN REGEXP_CONTAINS(cod_principal_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_principal_trab_memb  AS STRING)
    END AS id_funcao_principal_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(val_remuner_emprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_remuner_emprego_memb  AS INT64)
    END AS remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_remuner_emprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_remuner_emprego_memb  AS STRING)
    END AS nao_recebe_remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(cod_trabalho_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_trabalho_12_meses_memb  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,
    CASE
        WHEN REGEXP_CONTAINS(qtd_meses_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_meses_12_meses_memb  AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_bruta_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_bruta_12_meses_memb  AS INT64)
    END AS remuneracao_bruta,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_doacao_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_doacao_memb  AS INT64)
    END AS doacoes,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_doacao_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_doacao_memb  AS STRING)
    END AS nao_recebe_doacao,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_aposent_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_aposent_memb  AS INT64)
    END AS aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_aposent_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_aposent_memb  AS STRING)
    END AS nao_recebe_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_seguro_desemp_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_seguro_desemp_memb  AS INT64)
    END AS seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_seguro_desemp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_seguro_desemp_memb  AS STRING)
    END AS nao_recebe_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_pensao_alimen_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_pensao_alimen_memb  AS INT64)
    END AS pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_pensao_alimen_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_pensao_alimen_memb  AS STRING)
    END AS nao_recebe_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(val_outras_rendas_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_outras_rendas_memb  AS INT64)
    END AS outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_outras_rendas_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_outras_rendas_memb  AS STRING)
    END AS nao_recebe_outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(cod_orgm_vlr_rndmo_mes_passado, r'^\s*$') THEN NULL
        ELSE CAST( cod_orgm_vlr_rndmo_mes_passado  AS STRING)
    END AS id_origem_valor_rendimento_mes_passado,
    CASE
        WHEN REGEXP_CONTAINS(cod_orgm_vlr_rndmo_bruto_prdo, r'^\s*$') THEN NULL
        ELSE CAST( cod_orgm_vlr_rndmo_bruto_prdo  AS STRING)
    END AS id_origem_valor_rendimento_bruto,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_valor_ajuda_doacao, r'^\s*$') THEN NULL
        ELSE CAST( cod_origem_valor_ajuda_doacao  AS STRING)
    END AS id_origem_valor_ajuda_doacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_valor_aposentadoria, r'^\s*$') THEN NULL
        ELSE CAST( cod_origem_valor_aposentadoria  AS STRING)
    END AS id_origem_valor_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(cod_orgm_vlr_seguro_desemprego, r'^\s*$') THEN NULL
        ELSE CAST( cod_orgm_vlr_seguro_desemprego  AS STRING)
    END AS id_origem_valor_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(cod_orgm_vlr_pensao_ali, r'^\s*$') THEN NULL
        ELSE CAST( cod_orgm_vlr_pensao_ali  AS STRING)
    END AS id_origem_valor_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(cod_orgm_vlr_outra_fonte_renda, r'^\s*$') THEN NULL
        ELSE CAST( cod_orgm_vlr_outra_fonte_renda  AS STRING)
    END AS id_origem_valor_outra_fonte,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.trabalho_remuneracao_0609`

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
        WHEN REGEXP_CONTAINS(cod_trabalhou_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_trabalhou_memb  AS STRING)
    END AS id_trabalho_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(cod_afastado_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_afastado_trab_memb  AS STRING)
    END AS id_afastado_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(cod_agricultura_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_agricultura_trab_memb  AS STRING)
    END AS id_atividade_extravista,
    CASE
        WHEN REGEXP_CONTAINS(cod_principal_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_principal_trab_memb  AS STRING)
    END AS id_funcao_principal_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(val_remuner_emprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_remuner_emprego_memb  AS INT64)
    END AS remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_remuner_emprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_remuner_emprego_memb  AS STRING)
    END AS nao_recebe_remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(cod_trabalho_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_trabalho_12_meses_memb  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,
    CASE
        WHEN REGEXP_CONTAINS(qtd_meses_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( qtd_meses_12_meses_memb  AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_bruta_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_bruta_12_meses_memb  AS INT64)
    END AS remuneracao_bruta,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_doacao_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_doacao_memb  AS INT64)
    END AS doacoes,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_doacao_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_doacao_memb  AS STRING)
    END AS nao_recebe_doacao,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_aposent_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_aposent_memb  AS INT64)
    END AS aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_aposent_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_aposent_memb  AS STRING)
    END AS nao_recebe_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_seguro_desemp_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_seguro_desemp_memb  AS INT64)
    END AS seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_seguro_desemp_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_seguro_desemp_memb  AS STRING)
    END AS nao_recebe_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(val_renda_pensao_alimen_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_renda_pensao_alimen_memb  AS INT64)
    END AS pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_renda_pensao_alimen_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_renda_pensao_alimen_memb  AS STRING)
    END AS nao_recebe_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(val_outras_rendas_memb, r'^\s*$') THEN NULL
        ELSE CAST( val_outras_rendas_memb  AS INT64)
    END AS outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_outras_rendas_memb, r'^\s*$') THEN NULL
        ELSE CAST( ind_val_outras_rendas_memb  AS STRING)
    END AS nao_recebe_outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(cod_orgm_vlr_rndmo_mes_passado, r'^\s*$') THEN NULL
        ELSE CAST( cod_orgm_vlr_rndmo_mes_passado  AS STRING)
    END AS id_origem_valor_rendimento_mes_passado,
    CASE
        WHEN REGEXP_CONTAINS(cod_orgm_vlr_rndmo_bruto_prdo, r'^\s*$') THEN NULL
        ELSE CAST( cod_orgm_vlr_rndmo_bruto_prdo  AS STRING)
    END AS id_origem_valor_rendimento_bruto,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_valor_ajuda_doacao, r'^\s*$') THEN NULL
        ELSE CAST( cod_origem_valor_ajuda_doacao  AS STRING)
    END AS id_origem_valor_ajuda_doacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_valor_aposentadoria, r'^\s*$') THEN NULL
        ELSE CAST( cod_origem_valor_aposentadoria  AS STRING)
    END AS id_origem_valor_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(cod_orgm_vlr_seguro_desemprego, r'^\s*$') THEN NULL
        ELSE CAST( cod_orgm_vlr_seguro_desemprego  AS STRING)
    END AS id_origem_valor_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(cod_orgm_vlr_pensao_ali, r'^\s*$') THEN NULL
        ELSE CAST( cod_orgm_vlr_pensao_ali  AS STRING)
    END AS id_origem_valor_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(cod_orgm_vlr_outra_fonte_renda, r'^\s*$') THEN NULL
        ELSE CAST( cod_orgm_vlr_outra_fonte_renda  AS STRING)
    END AS id_origem_valor_outra_fonte,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.trabalho_remuneracao_0612`

