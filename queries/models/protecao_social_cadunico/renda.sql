
SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_trabalhou_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_trabalhou_memb)  AS STRING)
    END AS id_trabalho_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(cod_afastado_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_afastado_trab_memb)  AS STRING)
    END AS id_afastado_semana_passada,
    CASE
        WHEN REGEXP_CONTAINS(cod_agricultura_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_agricultura_trab_memb)  AS STRING)
    END AS id_atividade_extravista,
    CASE
        WHEN REGEXP_CONTAINS(cod_principal_trab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_principal_trab_memb)  AS STRING)
    END AS id_funcao_principal_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(fx_rnd_val_remuner_emprego_memb, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(fx_rnd_val_remuner_emprego_memb) AS INT64)
    END AS renda_emprego_ultimo_mes,
    CASE
        WHEN REGEXP_CONTAINS(ind_val_remuner_emprego_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_val_remuner_emprego_memb)  AS STRING)
    END AS nao_recebe_remuneracao,
    CASE
        WHEN REGEXP_CONTAINS(cod_trabalho_12_meses_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_trabalho_12_meses_memb)  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,
    CASE
        WHEN REGEXP_CONTAINS(qtd_meses_12_meses_memb, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_meses_12_meses_memb) AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,
    CASE
        WHEN REGEXP_CONTAINS(fx_rnd_val_renda_bruta_12_meses_memb, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(fx_rnd_val_renda_bruta_12_meses_memb) AS INT64)
    END AS renda_bruta_12_meses,
    CASE
        WHEN REGEXP_CONTAINS(fx_rnd_val_renda_doacao_memb, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(fx_rnd_val_renda_doacao_memb) AS INT64)
    END AS renda_doacao,
    CASE
        WHEN REGEXP_CONTAINS(fx_rnd_val_renda_aposent_memb, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(fx_rnd_val_renda_aposent_memb) AS INT64)
    END AS renda_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(fx_rnd_val_renda_seguro_desemp_memb, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(fx_rnd_val_renda_seguro_desemp_memb) AS INT64)
    END AS renda_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(fx_rnd_val_renda_pensao_alimen_memb, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(fx_rnd_val_renda_pensao_alimen_memb) AS INT64)
    END AS renda_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(fx_rnd_val_outras_rendas_memb, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(fx_rnd_val_outras_rendas_memb) AS INT64)
    END AS renda_outras_rendas,
    CASE
        WHEN REGEXP_CONTAINS(cod_orgm_vlr_rndmo_mes_passado, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_orgm_vlr_rndmo_mes_passado)  AS STRING)
    END AS id_origem_valor_rendimento_mes_passado,
    CASE
        WHEN REGEXP_CONTAINS(cod_orgm_vlr_rndmo_bruto_prdo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_orgm_vlr_rndmo_bruto_prdo)  AS STRING)
    END AS id_origem_valor_rendimento_bruto,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_valor_ajuda_doacao, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_origem_valor_ajuda_doacao)  AS STRING)
    END AS id_origem_valor_ajuda_doacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_valor_aposentadoria, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_origem_valor_aposentadoria)  AS STRING)
    END AS id_origem_valor_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(cod_orgm_vlr_seguro_desemprego, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_orgm_vlr_seguro_desemprego)  AS STRING)
    END AS id_origem_valor_seguro_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(cod_orgm_vlr_pensao_ali, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_orgm_vlr_pensao_ali)  AS STRING)
    END AS id_origem_valor_pensao_alimenticia,
    CASE
        WHEN REGEXP_CONTAINS(cod_orgm_vlr_outra_fonte_renda, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_orgm_vlr_outra_fonte_renda)  AS STRING)
    END AS id_origem_valor_outra_fonte,
    CASE
        WHEN REGEXP_CONTAINS(dt_intgo_vlr_rndmo_mes_passado, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dt_intgo_vlr_rndmo_mes_passado))  AS DATE)
    END AS data_integracao_emprego_ultimo_mes,
    CASE
        WHEN REGEXP_CONTAINS(dt_intgo_vlr_rndmo_bruto, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dt_intgo_vlr_rndmo_bruto))  AS DATE)
    END AS data_integracao_renda_bruta_12_meses,
    CASE
        WHEN REGEXP_CONTAINS(dt_intgo_vlr_aposentadoria, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dt_intgo_vlr_aposentadoria))  AS DATE)
    END AS data_integracao_aposentadoria,
    CASE
        WHEN REGEXP_CONTAINS(dt_intgo_vlr_outra_fonte_rnda, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dt_intgo_vlr_outra_fonte_rnda))  AS DATE)
    END AS data_integracao_outras_fonte,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.renda_0615`

