
SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_afastado_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_afastado_semana_passada,

    --column: cod_agricultura_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS id_atividade_extravista,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_orgm_vlr_outra_fonte_renda
    NULL AS id_origem_valor_outra_fonte, --Essa coluna não esta na versao posterior

    --column: cod_orgm_vlr_pensao_ali
    NULL AS id_origem_valor_pensao_alimenticia, --Essa coluna não esta na versao posterior

    --column: cod_orgm_vlr_rndmo_bruto_prdo
    NULL AS id_origem_valor_rendimento_bruto, --Essa coluna não esta na versao posterior

    --column: cod_orgm_vlr_rndmo_mes_passado
    NULL AS id_origem_valor_rendimento_mes_passado, --Essa coluna não esta na versao posterior

    --column: cod_orgm_vlr_seguro_desemprego
    NULL AS id_origem_valor_seguro_desemprego, --Essa coluna não esta na versao posterior

    --column: cod_origem_valor_ajuda_doacao
    NULL AS id_origem_valor_ajuda_doacao, --Essa coluna não esta na versao posterior

    --column: cod_origem_valor_aposentadoria
    NULL AS id_origem_valor_aposentadoria, --Essa coluna não esta na versao posterior

    --column: cod_principal_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,2))  AS STRING)
    END AS id_funcao_principal_trabalho,

    --column: cod_trabalho_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,

    --column: cod_trabalhou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_trabalho_semana_passada,

    --column: dt_intgo_vlr_aposentadoria
    NULL AS data_integracao_aposentadoria, --Essa coluna não esta na versao posterior

    --column: dt_intgo_vlr_outra_fonte_rnda
    NULL AS data_integracao_outras_fonte, --Essa coluna não esta na versao posterior

    --column: dt_intgo_vlr_rndmo_bruto
    NULL AS data_integracao_renda_bruta_12_meses, --Essa coluna não esta na versao posterior

    --column: dt_intgo_vlr_rndmo_mes_passado
    NULL AS data_integracao_emprego_ultimo_mes, --Essa coluna não esta na versao posterior

    --column: ind_val_outras_rendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS nao_recebe_outras_fontes,

    --column: ind_val_remuner_emprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS nao_recebe_remuneracao,

    --column: ind_val_renda_aposent_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS nao_recebe_aposentadoria,

    --column: ind_val_renda_doacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS nao_recebe_doacao,

    --column: ind_val_renda_pensao_alimen_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS nao_recebe_pensao_alimenticia,

    --column: ind_val_renda_seguro_desemp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS nao_recebe_seguro_desemprego,

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

    --column: qtd_meses_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,52,2)) AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,

    --column: val_outras_rendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,83,5)) AS INT64)
    END AS outras_fontes,

    --column: val_remuner_emprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,5)) AS INT64)
    END AS remuneracao,

    --column: val_renda_aposent_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,65,5)) AS INT64)
    END AS aposentadoria,

    --column: val_renda_bruta_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,54,5)) AS INT64)
    END AS remuneracao_bruta,

    --column: val_renda_doacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,5)) AS INT64)
    END AS doacoes,

    --column: val_renda_pensao_alimen_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,77,5)) AS INT64)
    END AS pensao_alimenticia,

    --column: val_renda_seguro_desemp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,71,5)) AS INT64)
    END AS seguro_desemprego,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '08'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_afastado_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_afastado_semana_passada,

    --column: cod_agricultura_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS id_atividade_extravista,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_orgm_vlr_outra_fonte_renda
    NULL AS id_origem_valor_outra_fonte, --Essa coluna não esta na versao posterior

    --column: cod_orgm_vlr_pensao_ali
    NULL AS id_origem_valor_pensao_alimenticia, --Essa coluna não esta na versao posterior

    --column: cod_orgm_vlr_rndmo_bruto_prdo
    NULL AS id_origem_valor_rendimento_bruto, --Essa coluna não esta na versao posterior

    --column: cod_orgm_vlr_rndmo_mes_passado
    NULL AS id_origem_valor_rendimento_mes_passado, --Essa coluna não esta na versao posterior

    --column: cod_orgm_vlr_seguro_desemprego
    NULL AS id_origem_valor_seguro_desemprego, --Essa coluna não esta na versao posterior

    --column: cod_origem_valor_ajuda_doacao
    NULL AS id_origem_valor_ajuda_doacao, --Essa coluna não esta na versao posterior

    --column: cod_origem_valor_aposentadoria
    NULL AS id_origem_valor_aposentadoria, --Essa coluna não esta na versao posterior

    --column: cod_principal_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,2))  AS STRING)
    END AS id_funcao_principal_trabalho,

    --column: cod_trabalho_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,

    --column: cod_trabalhou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_trabalho_semana_passada,

    --column: dt_intgo_vlr_aposentadoria
    NULL AS data_integracao_aposentadoria, --Essa coluna não esta na versao posterior

    --column: dt_intgo_vlr_outra_fonte_rnda
    NULL AS data_integracao_outras_fonte, --Essa coluna não esta na versao posterior

    --column: dt_intgo_vlr_rndmo_bruto
    NULL AS data_integracao_renda_bruta_12_meses, --Essa coluna não esta na versao posterior

    --column: dt_intgo_vlr_rndmo_mes_passado
    NULL AS data_integracao_emprego_ultimo_mes, --Essa coluna não esta na versao posterior

    --column: ind_val_outras_rendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS nao_recebe_outras_fontes,

    --column: ind_val_remuner_emprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS nao_recebe_remuneracao,

    --column: ind_val_renda_aposent_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS nao_recebe_aposentadoria,

    --column: ind_val_renda_doacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS nao_recebe_doacao,

    --column: ind_val_renda_pensao_alimen_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS nao_recebe_pensao_alimenticia,

    --column: ind_val_renda_seguro_desemp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS nao_recebe_seguro_desemprego,

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

    --column: qtd_meses_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,52,2)) AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,

    --column: val_outras_rendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,83,5)) AS INT64)
    END AS outras_fontes,

    --column: val_remuner_emprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,5)) AS INT64)
    END AS remuneracao,

    --column: val_renda_aposent_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,65,5)) AS INT64)
    END AS aposentadoria,

    --column: val_renda_bruta_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,54,5)) AS INT64)
    END AS remuneracao_bruta,

    --column: val_renda_doacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,5)) AS INT64)
    END AS doacoes,

    --column: val_renda_pensao_alimen_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,77,5)) AS INT64)
    END AS pensao_alimenticia,

    --column: val_renda_seguro_desemp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,71,5)) AS INT64)
    END AS seguro_desemprego,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '08'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_afastado_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_afastado_semana_passada,

    --column: cod_agricultura_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS id_atividade_extravista,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_orgm_vlr_outra_fonte_renda
    NULL AS id_origem_valor_outra_fonte, --Essa coluna não esta na versao posterior

    --column: cod_orgm_vlr_pensao_ali
    NULL AS id_origem_valor_pensao_alimenticia, --Essa coluna não esta na versao posterior

    --column: cod_orgm_vlr_rndmo_bruto_prdo
    NULL AS id_origem_valor_rendimento_bruto, --Essa coluna não esta na versao posterior

    --column: cod_orgm_vlr_rndmo_mes_passado
    NULL AS id_origem_valor_rendimento_mes_passado, --Essa coluna não esta na versao posterior

    --column: cod_orgm_vlr_seguro_desemprego
    NULL AS id_origem_valor_seguro_desemprego, --Essa coluna não esta na versao posterior

    --column: cod_origem_valor_ajuda_doacao
    NULL AS id_origem_valor_ajuda_doacao, --Essa coluna não esta na versao posterior

    --column: cod_origem_valor_aposentadoria
    NULL AS id_origem_valor_aposentadoria, --Essa coluna não esta na versao posterior

    --column: cod_principal_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,2))  AS STRING)
    END AS id_funcao_principal_trabalho,

    --column: cod_trabalho_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,

    --column: cod_trabalhou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_trabalho_semana_passada,

    --column: dt_intgo_vlr_aposentadoria
    NULL AS data_integracao_aposentadoria, --Essa coluna não esta na versao posterior

    --column: dt_intgo_vlr_outra_fonte_rnda
    NULL AS data_integracao_outras_fonte, --Essa coluna não esta na versao posterior

    --column: dt_intgo_vlr_rndmo_bruto
    NULL AS data_integracao_renda_bruta_12_meses, --Essa coluna não esta na versao posterior

    --column: dt_intgo_vlr_rndmo_mes_passado
    NULL AS data_integracao_emprego_ultimo_mes, --Essa coluna não esta na versao posterior

    --column: ind_val_outras_rendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,95,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,95,1))  AS STRING)
    END AS nao_recebe_outras_fontes,

    --column: ind_val_remuner_emprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS nao_recebe_remuneracao,

    --column: ind_val_renda_aposent_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS nao_recebe_aposentadoria,

    --column: ind_val_renda_doacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS nao_recebe_doacao,

    --column: ind_val_renda_pensao_alimen_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS nao_recebe_pensao_alimenticia,

    --column: ind_val_renda_seguro_desemp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS nao_recebe_seguro_desemprego,

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

    --column: qtd_meses_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,53,2)) AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,

    --column: val_outras_rendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,89,6)) AS INT64)
    END AS outras_fontes,

    --column: val_remuner_emprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,6)) AS INT64)
    END AS remuneracao,

    --column: val_renda_aposent_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,68,6)) AS INT64)
    END AS aposentadoria,

    --column: val_renda_bruta_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,55,6)) AS INT64)
    END AS remuneracao_bruta,

    --column: val_renda_doacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,61,6)) AS INT64)
    END AS doacoes,

    --column: val_renda_pensao_alimen_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,82,6)) AS INT64)
    END AS pensao_alimenticia,

    --column: val_renda_seguro_desemp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,75,6)) AS INT64)
    END AS seguro_desemprego,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '08'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_afastado_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_afastado_semana_passada,

    --column: cod_agricultura_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS id_atividade_extravista,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_orgm_vlr_outra_fonte_renda
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,102,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,102,1))  AS STRING)
    END AS id_origem_valor_outra_fonte,

    --column: cod_orgm_vlr_pensao_ali
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,101,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,101,1))  AS STRING)
    END AS id_origem_valor_pensao_alimenticia,

    --column: cod_orgm_vlr_rndmo_bruto_prdo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,97,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,97,1))  AS STRING)
    END AS id_origem_valor_rendimento_bruto,

    --column: cod_orgm_vlr_rndmo_mes_passado
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,96,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,96,1))  AS STRING)
    END AS id_origem_valor_rendimento_mes_passado,

    --column: cod_orgm_vlr_seguro_desemprego
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,100,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,100,1))  AS STRING)
    END AS id_origem_valor_seguro_desemprego,

    --column: cod_origem_valor_ajuda_doacao
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,98,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,98,1))  AS STRING)
    END AS id_origem_valor_ajuda_doacao,

    --column: cod_origem_valor_aposentadoria
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,1))  AS STRING)
    END AS id_origem_valor_aposentadoria,

    --column: cod_principal_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,2))  AS STRING)
    END AS id_funcao_principal_trabalho,

    --column: cod_trabalho_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,

    --column: cod_trabalhou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_trabalho_semana_passada,

    --column: dt_intgo_vlr_aposentadoria
    NULL AS data_integracao_aposentadoria, --Essa coluna não esta na versao posterior

    --column: dt_intgo_vlr_outra_fonte_rnda
    NULL AS data_integracao_outras_fonte, --Essa coluna não esta na versao posterior

    --column: dt_intgo_vlr_rndmo_bruto
    NULL AS data_integracao_renda_bruta_12_meses, --Essa coluna não esta na versao posterior

    --column: dt_intgo_vlr_rndmo_mes_passado
    NULL AS data_integracao_emprego_ultimo_mes, --Essa coluna não esta na versao posterior

    --column: ind_val_outras_rendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,95,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,95,1))  AS STRING)
    END AS nao_recebe_outras_fontes,

    --column: ind_val_remuner_emprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS nao_recebe_remuneracao,

    --column: ind_val_renda_aposent_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS nao_recebe_aposentadoria,

    --column: ind_val_renda_doacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS nao_recebe_doacao,

    --column: ind_val_renda_pensao_alimen_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS nao_recebe_pensao_alimenticia,

    --column: ind_val_renda_seguro_desemp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS nao_recebe_seguro_desemprego,

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

    --column: qtd_meses_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,53,2)) AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,

    --column: val_outras_rendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,89,6)) AS INT64)
    END AS outras_fontes,

    --column: val_remuner_emprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,6)) AS INT64)
    END AS remuneracao,

    --column: val_renda_aposent_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,68,6)) AS INT64)
    END AS aposentadoria,

    --column: val_renda_bruta_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,55,6)) AS INT64)
    END AS remuneracao_bruta,

    --column: val_renda_doacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,61,6)) AS INT64)
    END AS doacoes,

    --column: val_renda_pensao_alimen_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,82,6)) AS INT64)
    END AS pensao_alimenticia,

    --column: val_renda_seguro_desemp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,75,6)) AS INT64)
    END AS seguro_desemprego,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '08'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_afastado_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_afastado_semana_passada,

    --column: cod_agricultura_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS id_atividade_extravista,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_orgm_vlr_outra_fonte_renda
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,102,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,102,1))  AS STRING)
    END AS id_origem_valor_outra_fonte,

    --column: cod_orgm_vlr_pensao_ali
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,101,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,101,1))  AS STRING)
    END AS id_origem_valor_pensao_alimenticia,

    --column: cod_orgm_vlr_rndmo_bruto_prdo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,97,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,97,1))  AS STRING)
    END AS id_origem_valor_rendimento_bruto,

    --column: cod_orgm_vlr_rndmo_mes_passado
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,96,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,96,1))  AS STRING)
    END AS id_origem_valor_rendimento_mes_passado,

    --column: cod_orgm_vlr_seguro_desemprego
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,100,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,100,1))  AS STRING)
    END AS id_origem_valor_seguro_desemprego,

    --column: cod_origem_valor_ajuda_doacao
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,98,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,98,1))  AS STRING)
    END AS id_origem_valor_ajuda_doacao,

    --column: cod_origem_valor_aposentadoria
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,1))  AS STRING)
    END AS id_origem_valor_aposentadoria,

    --column: cod_principal_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,2))  AS STRING)
    END AS id_funcao_principal_trabalho,

    --column: cod_trabalho_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,

    --column: cod_trabalhou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_trabalho_semana_passada,

    --column: dt_intgo_vlr_aposentadoria
    NULL AS data_integracao_aposentadoria, --Essa coluna não esta na versao posterior

    --column: dt_intgo_vlr_outra_fonte_rnda
    NULL AS data_integracao_outras_fonte, --Essa coluna não esta na versao posterior

    --column: dt_intgo_vlr_rndmo_bruto
    NULL AS data_integracao_renda_bruta_12_meses, --Essa coluna não esta na versao posterior

    --column: dt_intgo_vlr_rndmo_mes_passado
    NULL AS data_integracao_emprego_ultimo_mes, --Essa coluna não esta na versao posterior

    --column: ind_val_outras_rendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,95,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,95,1))  AS STRING)
    END AS nao_recebe_outras_fontes,

    --column: ind_val_remuner_emprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS nao_recebe_remuneracao,

    --column: ind_val_renda_aposent_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS nao_recebe_aposentadoria,

    --column: ind_val_renda_doacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS nao_recebe_doacao,

    --column: ind_val_renda_pensao_alimen_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS nao_recebe_pensao_alimenticia,

    --column: ind_val_renda_seguro_desemp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS nao_recebe_seguro_desemprego,

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

    --column: qtd_meses_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,53,2)) AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,

    --column: val_outras_rendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,89,6)) AS INT64)
    END AS outras_fontes,

    --column: val_remuner_emprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,6)) AS INT64)
    END AS remuneracao,

    --column: val_renda_aposent_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,68,6)) AS INT64)
    END AS aposentadoria,

    --column: val_renda_bruta_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,55,6)) AS INT64)
    END AS remuneracao_bruta,

    --column: val_renda_doacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,61,6)) AS INT64)
    END AS doacoes,

    --column: val_renda_pensao_alimen_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,82,6)) AS INT64)
    END AS pensao_alimenticia,

    --column: val_renda_seguro_desemp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,75,6)) AS INT64)
    END AS seguro_desemprego,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '08'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_afastado_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_afastado_semana_passada,

    --column: cod_agricultura_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS id_atividade_extravista,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_orgm_vlr_outra_fonte_renda
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,102,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,102,1))  AS STRING)
    END AS id_origem_valor_outra_fonte,

    --column: cod_orgm_vlr_pensao_ali
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,101,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,101,1))  AS STRING)
    END AS id_origem_valor_pensao_alimenticia,

    --column: cod_orgm_vlr_rndmo_bruto_prdo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,97,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,97,1))  AS STRING)
    END AS id_origem_valor_rendimento_bruto,

    --column: cod_orgm_vlr_rndmo_mes_passado
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,96,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,96,1))  AS STRING)
    END AS id_origem_valor_rendimento_mes_passado,

    --column: cod_orgm_vlr_seguro_desemprego
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,100,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,100,1))  AS STRING)
    END AS id_origem_valor_seguro_desemprego,

    --column: cod_origem_valor_ajuda_doacao
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,98,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,98,1))  AS STRING)
    END AS id_origem_valor_ajuda_doacao,

    --column: cod_origem_valor_aposentadoria
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,99,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,99,1))  AS STRING)
    END AS id_origem_valor_aposentadoria,

    --column: cod_principal_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,2))  AS STRING)
    END AS id_funcao_principal_trabalho,

    --column: cod_trabalho_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,

    --column: cod_trabalhou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_trabalho_semana_passada,

    --column: dt_intgo_vlr_aposentadoria
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,119,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,119,8)))  AS DATE)
    END AS data_integracao_aposentadoria,

    --column: dt_intgo_vlr_outra_fonte_rnda
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,127,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,127,8)))  AS DATE)
    END AS data_integracao_outras_fonte,

    --column: dt_intgo_vlr_rndmo_bruto
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,111,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,111,8)))  AS DATE)
    END AS data_integracao_renda_bruta_12_meses,

    --column: dt_intgo_vlr_rndmo_mes_passado
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,103,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,103,8)))  AS DATE)
    END AS data_integracao_emprego_ultimo_mes,

    --column: ind_val_outras_rendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,95,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,95,1))  AS STRING)
    END AS nao_recebe_outras_fontes,

    --column: ind_val_remuner_emprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS nao_recebe_remuneracao,

    --column: ind_val_renda_aposent_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS nao_recebe_aposentadoria,

    --column: ind_val_renda_doacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS nao_recebe_doacao,

    --column: ind_val_renda_pensao_alimen_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,88,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,88,1))  AS STRING)
    END AS nao_recebe_pensao_alimenticia,

    --column: ind_val_renda_seguro_desemp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS nao_recebe_seguro_desemprego,

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

    --column: qtd_meses_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,53,2)) AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,

    --column: val_outras_rendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,89,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,89,6)) AS INT64)
    END AS outras_fontes,

    --column: val_remuner_emprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,6)) AS INT64)
    END AS remuneracao,

    --column: val_renda_aposent_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,68,6)) AS INT64)
    END AS aposentadoria,

    --column: val_renda_bruta_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,55,6)) AS INT64)
    END AS remuneracao_bruta,

    --column: val_renda_doacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,61,6)) AS INT64)
    END AS doacoes,

    --column: val_renda_pensao_alimen_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,82,6)) AS INT64)
    END AS pensao_alimenticia,

    --column: val_renda_seguro_desemp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,6), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,75,6)) AS INT64)
    END AS seguro_desemprego,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '08'

