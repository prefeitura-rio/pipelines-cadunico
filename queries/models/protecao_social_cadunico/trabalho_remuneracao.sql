
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_trabalho_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_afastado_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS id_atividade_extravista,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,2))  AS STRING)
    END AS id_funcao_principal_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,5)) AS INT64)
    END AS remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS nao_recebe_remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,52,2)) AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,54,5)) AS INT64)
    END AS remuneracao_bruta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,5)) AS INT64)
    END AS doacoes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS nao_recebe_doacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,65,5)) AS INT64)
    END AS aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS nao_recebe_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,71,5)) AS INT64)
    END AS seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS nao_recebe_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,77,5)) AS INT64)
    END AS pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS nao_recebe_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,83,5)) AS INT64)
    END AS outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS nao_recebe_outras_fontes,
    NULL AS id_origem_valor_rendimento_mes_passado, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_rendimento_bruto, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_ajuda_doacao, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_aposentadoria, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_seguro_desemprego, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_pensao_alimenticia, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_outra_fonte, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_emprego_ultimo_mes, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_renda_bruta_12_meses, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_aposentadoria, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_outras_fonte, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.trabalho_remuneracao_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '08'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_trabalho_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_afastado_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS id_atividade_extravista,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,2))  AS STRING)
    END AS id_funcao_principal_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,5)) AS INT64)
    END AS remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS nao_recebe_remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,52,2)) AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,54,5)) AS INT64)
    END AS remuneracao_bruta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,5)) AS INT64)
    END AS doacoes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS nao_recebe_doacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,65,5)) AS INT64)
    END AS aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS nao_recebe_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,71,5)) AS INT64)
    END AS seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS nao_recebe_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,77,5)) AS INT64)
    END AS pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS nao_recebe_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,83,5)) AS INT64)
    END AS outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS nao_recebe_outras_fontes,
    NULL AS id_origem_valor_rendimento_mes_passado, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_rendimento_bruto, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_ajuda_doacao, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_aposentadoria, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_seguro_desemprego, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_pensao_alimenticia, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_outra_fonte, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_emprego_ultimo_mes, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_renda_bruta_12_meses, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_aposentadoria, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_outras_fonte, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.trabalho_remuneracao_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '08'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_trabalho_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_afastado_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS id_atividade_extravista,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,2))  AS STRING)
    END AS id_funcao_principal_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,6)) AS INT64)
    END AS remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS nao_recebe_remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,53,2)) AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,55,6)) AS INT64)
    END AS remuneracao_bruta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,61,6)) AS INT64)
    END AS doacoes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS nao_recebe_doacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,68,6)) AS INT64)
    END AS aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS nao_recebe_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,75,6)) AS INT64)
    END AS seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS nao_recebe_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,82,6)) AS INT64)
    END AS pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS nao_recebe_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,89,6)) AS INT64)
    END AS outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,95,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,95,1))  AS STRING)
    END AS nao_recebe_outras_fontes,
    NULL AS id_origem_valor_rendimento_mes_passado, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_rendimento_bruto, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_ajuda_doacao, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_aposentadoria, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_seguro_desemprego, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_pensao_alimenticia, --Essa coluna não esta na versao posterior
    NULL AS id_origem_valor_outra_fonte, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_emprego_ultimo_mes, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_renda_bruta_12_meses, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_aposentadoria, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_outras_fonte, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.trabalho_remuneracao_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '08'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_trabalho_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_afastado_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS id_atividade_extravista,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,2))  AS STRING)
    END AS id_funcao_principal_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,6)) AS INT64)
    END AS remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS nao_recebe_remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,53,2)) AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,55,6)) AS INT64)
    END AS remuneracao_bruta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,61,6)) AS INT64)
    END AS doacoes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS nao_recebe_doacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,68,6)) AS INT64)
    END AS aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS nao_recebe_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,75,6)) AS INT64)
    END AS seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS nao_recebe_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,82,6)) AS INT64)
    END AS pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS nao_recebe_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,89,6)) AS INT64)
    END AS outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,95,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,95,1))  AS STRING)
    END AS nao_recebe_outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,96,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,96,1))  AS STRING)
    END AS id_origem_valor_rendimento_mes_passado,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,97,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,97,1))  AS STRING)
    END AS id_origem_valor_rendimento_bruto,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,98,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,98,1))  AS STRING)
    END AS id_origem_valor_ajuda_doacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,1))  AS STRING)
    END AS id_origem_valor_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,100,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,100,1))  AS STRING)
    END AS id_origem_valor_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,101,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,101,1))  AS STRING)
    END AS id_origem_valor_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,102,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,102,1))  AS STRING)
    END AS id_origem_valor_outra_fonte,
    NULL AS data_integracao_emprego_ultimo_mes, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_renda_bruta_12_meses, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_aposentadoria, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_outras_fonte, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.trabalho_remuneracao_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '08'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_trabalho_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_afastado_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS id_atividade_extravista,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,2))  AS STRING)
    END AS id_funcao_principal_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,6)) AS INT64)
    END AS remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS nao_recebe_remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,53,2)) AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,55,6)) AS INT64)
    END AS remuneracao_bruta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,61,6)) AS INT64)
    END AS doacoes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS nao_recebe_doacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,68,6)) AS INT64)
    END AS aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS nao_recebe_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,75,6)) AS INT64)
    END AS seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS nao_recebe_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,82,6)) AS INT64)
    END AS pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS nao_recebe_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,89,6)) AS INT64)
    END AS outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,95,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,95,1))  AS STRING)
    END AS nao_recebe_outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,96,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,96,1))  AS STRING)
    END AS id_origem_valor_rendimento_mes_passado,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,97,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,97,1))  AS STRING)
    END AS id_origem_valor_rendimento_bruto,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,98,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,98,1))  AS STRING)
    END AS id_origem_valor_ajuda_doacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,1))  AS STRING)
    END AS id_origem_valor_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,100,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,100,1))  AS STRING)
    END AS id_origem_valor_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,101,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,101,1))  AS STRING)
    END AS id_origem_valor_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,102,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,102,1))  AS STRING)
    END AS id_origem_valor_outra_fonte,
    NULL AS data_integracao_emprego_ultimo_mes, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_renda_bruta_12_meses, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_aposentadoria, --Essa coluna não esta na versao posterior
    NULL AS data_integracao_outras_fonte, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.trabalho_remuneracao_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '08'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_trabalho_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_afastado_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS id_atividade_extravista,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,2))  AS STRING)
    END AS id_funcao_principal_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,6)) AS INT64)
    END AS remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS nao_recebe_remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,53,2)) AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,55,6)) AS INT64)
    END AS remuneracao_bruta,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,61,6)) AS INT64)
    END AS doacoes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS nao_recebe_doacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,68,6)) AS INT64)
    END AS aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS nao_recebe_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,75,6)) AS INT64)
    END AS seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS nao_recebe_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,82,6)) AS INT64)
    END AS pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS nao_recebe_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,89,6)) AS INT64)
    END AS outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,95,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,95,1))  AS STRING)
    END AS nao_recebe_outras_fontes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,96,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,96,1))  AS STRING)
    END AS id_origem_valor_rendimento_mes_passado,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,97,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,97,1))  AS STRING)
    END AS id_origem_valor_rendimento_bruto,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,98,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,98,1))  AS STRING)
    END AS id_origem_valor_ajuda_doacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,1))  AS STRING)
    END AS id_origem_valor_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,100,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,100,1))  AS STRING)
    END AS id_origem_valor_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,101,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,101,1))  AS STRING)
    END AS id_origem_valor_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,102,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,102,1))  AS STRING)
    END AS id_origem_valor_outra_fonte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,103,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,103,8)))  AS DATE)
    END AS data_integracao_emprego_ultimo_mes,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,111,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,111,8)))  AS DATE)
    END AS data_integracao_renda_bruta_12_meses,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,119,8)))  AS DATE)
    END AS data_integracao_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,127,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,127,8)))  AS DATE)
    END AS data_integracao_outras_fonte,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.trabalho_remuneracao_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '08'
