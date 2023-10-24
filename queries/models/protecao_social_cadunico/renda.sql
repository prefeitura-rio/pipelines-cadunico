
{{
    config(
        materialized="table",
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS id_origem_valor_outra_fonte,

    --column: cod_orgm_vlr_pensao_ali
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS id_origem_valor_pensao_alimenticia,

    --column: cod_orgm_vlr_rndmo_bruto_prdo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS id_origem_valor_rendimento_bruto,

    --column: cod_orgm_vlr_rndmo_mes_passado
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS id_origem_valor_rendimento_mes_passado,

    --column: cod_orgm_vlr_seguro_desemprego
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS id_origem_valor_seguro_desemprego,

    --column: cod_origem_valor_ajuda_doacao
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS id_origem_valor_ajuda_doacao,

    --column: cod_origem_valor_aposentadoria
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS id_origem_valor_aposentadoria,

    --column: cod_principal_trab_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,2))  AS STRING)
    END AS id_funcao_principal_trabalho,

    --column: cod_trabalho_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_trabalho_remunerado_ultimos_12_meses,

    --column: cod_trabalhou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_trabalho_semana_passada,

    --column: dt_intgo_vlr_aposentadoria
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,86,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,86,8)))  AS DATE)
    END AS data_integracao_aposentadoria,

    --column: dt_intgo_vlr_outra_fonte_rnda
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,94,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,94,8)))  AS DATE)
    END AS data_integracao_outras_fonte,

    --column: dt_intgo_vlr_rndmo_bruto
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,78,8)))  AS DATE)
    END AS data_integracao_renda_bruta_12_meses,

    --column: dt_intgo_vlr_rndmo_mes_passado
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,70,8)))  AS DATE)
    END AS data_integracao_emprego_ultimo_mes,

    --column: fx_rnd_val_outras_rendas_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,61,2)) AS INT64)
    END AS renda_outras_rendas,

    --column: fx_rnd_val_remuner_emprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,2)) AS INT64)
    END AS renda_emprego_ultimo_mes,

    --column: fx_rnd_val_renda_aposent_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,55,2)) AS INT64)
    END AS renda_aposentadoria,

    --column: fx_rnd_val_renda_bruta_12_meses_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,51,2)) AS INT64)
    END AS renda_bruta_12_meses,

    --column: fx_rnd_val_renda_doacao_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,53,2)) AS INT64)
    END AS renda_doacao,

    --column: fx_rnd_val_renda_pensao_alimen_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,59,2)) AS INT64)
    END AS renda_pensao_alimenticia,

    --column: fx_rnd_val_renda_seguro_desemp_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,57,2)) AS INT64)
    END AS renda_seguro_desemprego,

    --column: ind_val_remuner_emprego_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS nao_recebe_remuneracao,

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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,49,2)) AS INT64)
    END AS meses_trabalhados_nos_ultimos_12,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '21'

