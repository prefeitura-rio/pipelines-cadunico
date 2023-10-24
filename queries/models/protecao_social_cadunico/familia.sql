
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_familia_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,3))  AS STRING)
    END AS id_povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,70))  AS STRING)
    END AS povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,115,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,115,1))  AS STRING)
    END AS id_indigena_residente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,116,6), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,116,6))  AS STRING)
    END AS id_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,122,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,122,70))  AS STRING)
    END AS reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,192,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,192,1))  AS STRING)
    END AS nao_sabe_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,193,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,193,1))  AS STRING)
    END AS familia_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,194,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,194,4))  AS STRING)
    END AS id_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,120), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,120))  AS STRING)
    END AS comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,318,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,318,1))  AS STRING)
    END AS nao_sabe_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,319,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,319,2)) AS INT64)
    END AS pessoas_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,321,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,321,2)) AS INT64)
    END AS familias_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,323,2)) AS INT64)
    END AS pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,325,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,325,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,326,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,326,2)) AS INT64)
    END AS pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,329,2)) AS INT64)
    END AS pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,331,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,331,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,332,5)) AS INT64)
    END AS despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,337,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,337,1))  AS STRING)
    END AS nao_tem_despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,338,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,338,5)) AS INT64)
    END AS despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,1))  AS STRING)
    END AS nao_tem_despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,344,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,344,5)) AS INT64)
    END AS despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,349,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,349,1))  AS STRING)
    END AS nao_tem_despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,350,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,350,5)) AS INT64)
    END AS despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,355,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,355,1))  AS STRING)
    END AS nao_tem_despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,356,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,356,5)) AS INT64)
    END AS despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,361,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,361,1))  AS STRING)
    END AS nao_tem_despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,362,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,362,5)) AS INT64)
    END AS despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,367,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,367,1))  AS STRING)
    END AS nao_tem_despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,368,5)) AS INT64)
    END AS despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,373,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,373,1))  AS STRING)
    END AS nao_tem_despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,374,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,374,70))  AS STRING)
    END AS estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,12), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,12))  AS STRING)
    END AS id_estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,456,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,456,70))  AS STRING)
    END AS cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,526,12), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,526,12))  AS STRING)
    END AS id_cras_creas,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.familia_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '03'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_familia_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,3))  AS STRING)
    END AS id_povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,70))  AS STRING)
    END AS povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,115,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,115,1))  AS STRING)
    END AS id_indigena_residente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,116,6), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,116,6))  AS STRING)
    END AS id_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,122,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,122,70))  AS STRING)
    END AS reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,192,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,192,1))  AS STRING)
    END AS nao_sabe_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,193,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,193,1))  AS STRING)
    END AS familia_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,194,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,194,4))  AS STRING)
    END AS id_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,120), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,120))  AS STRING)
    END AS comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,318,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,318,1))  AS STRING)
    END AS nao_sabe_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,319,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,319,2)) AS INT64)
    END AS pessoas_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,321,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,321,2)) AS INT64)
    END AS familias_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,323,2)) AS INT64)
    END AS pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,325,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,325,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,326,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,326,2)) AS INT64)
    END AS pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,329,2)) AS INT64)
    END AS pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,331,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,331,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,332,5)) AS INT64)
    END AS despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,337,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,337,1))  AS STRING)
    END AS nao_tem_despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,338,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,338,5)) AS INT64)
    END AS despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,1))  AS STRING)
    END AS nao_tem_despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,344,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,344,5)) AS INT64)
    END AS despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,349,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,349,1))  AS STRING)
    END AS nao_tem_despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,350,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,350,5)) AS INT64)
    END AS despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,355,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,355,1))  AS STRING)
    END AS nao_tem_despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,356,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,356,5)) AS INT64)
    END AS despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,361,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,361,1))  AS STRING)
    END AS nao_tem_despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,362,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,362,5)) AS INT64)
    END AS despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,367,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,367,1))  AS STRING)
    END AS nao_tem_despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,368,5)) AS INT64)
    END AS despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,373,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,373,1))  AS STRING)
    END AS nao_tem_despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,374,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,374,70))  AS STRING)
    END AS estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,12), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,12))  AS STRING)
    END AS id_estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,456,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,456,70))  AS STRING)
    END AS cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,526,12), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,526,12))  AS STRING)
    END AS id_cras_creas,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.familia_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '03'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_familia_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,3))  AS STRING)
    END AS id_povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,70))  AS STRING)
    END AS povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,115,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,115,1))  AS STRING)
    END AS id_indigena_residente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,116,6), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,116,6))  AS STRING)
    END AS id_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,122,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,122,70))  AS STRING)
    END AS reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,192,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,192,1))  AS STRING)
    END AS nao_sabe_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,193,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,193,1))  AS STRING)
    END AS familia_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,194,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,194,4))  AS STRING)
    END AS id_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,120), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,120))  AS STRING)
    END AS comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,318,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,318,1))  AS STRING)
    END AS nao_sabe_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,319,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,319,2)) AS INT64)
    END AS pessoas_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,321,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,321,2)) AS INT64)
    END AS familias_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,323,2)) AS INT64)
    END AS pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,325,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,325,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,326,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,326,2)) AS INT64)
    END AS pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,329,2)) AS INT64)
    END AS pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,331,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,331,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,332,5)) AS INT64)
    END AS despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,337,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,337,1))  AS STRING)
    END AS nao_tem_despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,338,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,338,5)) AS INT64)
    END AS despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,1))  AS STRING)
    END AS nao_tem_despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,344,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,344,5)) AS INT64)
    END AS despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,349,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,349,1))  AS STRING)
    END AS nao_tem_despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,350,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,350,5)) AS INT64)
    END AS despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,355,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,355,1))  AS STRING)
    END AS nao_tem_despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,356,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,356,5)) AS INT64)
    END AS despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,361,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,361,1))  AS STRING)
    END AS nao_tem_despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,362,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,362,5)) AS INT64)
    END AS despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,367,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,367,1))  AS STRING)
    END AS nao_tem_despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,368,5)) AS INT64)
    END AS despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,373,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,373,1))  AS STRING)
    END AS nao_tem_despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,374,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,374,70))  AS STRING)
    END AS estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,12), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,12))  AS STRING)
    END AS id_estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,456,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,456,70))  AS STRING)
    END AS cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,526,12), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,526,12))  AS STRING)
    END AS id_cras_creas,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.familia_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '03'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_familia_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,3))  AS STRING)
    END AS id_povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,70))  AS STRING)
    END AS povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,115,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,115,1))  AS STRING)
    END AS id_indigena_residente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,116,6), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,116,6))  AS STRING)
    END AS id_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,122,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,122,70))  AS STRING)
    END AS reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,192,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,192,1))  AS STRING)
    END AS nao_sabe_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,193,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,193,1))  AS STRING)
    END AS familia_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,194,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,194,4))  AS STRING)
    END AS id_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,120), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,120))  AS STRING)
    END AS comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,318,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,318,1))  AS STRING)
    END AS nao_sabe_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,319,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,319,2)) AS INT64)
    END AS pessoas_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,321,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,321,2)) AS INT64)
    END AS familias_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,323,2)) AS INT64)
    END AS pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,325,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,325,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,326,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,326,2)) AS INT64)
    END AS pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,329,2)) AS INT64)
    END AS pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,331,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,331,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,332,5)) AS INT64)
    END AS despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,337,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,337,1))  AS STRING)
    END AS nao_tem_despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,338,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,338,5)) AS INT64)
    END AS despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,1))  AS STRING)
    END AS nao_tem_despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,344,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,344,5)) AS INT64)
    END AS despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,349,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,349,1))  AS STRING)
    END AS nao_tem_despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,350,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,350,5)) AS INT64)
    END AS despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,355,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,355,1))  AS STRING)
    END AS nao_tem_despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,356,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,356,5)) AS INT64)
    END AS despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,361,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,361,1))  AS STRING)
    END AS nao_tem_despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,362,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,362,5)) AS INT64)
    END AS despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,367,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,367,1))  AS STRING)
    END AS nao_tem_despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,368,5)) AS INT64)
    END AS despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,373,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,373,1))  AS STRING)
    END AS nao_tem_despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,374,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,374,70))  AS STRING)
    END AS estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,12), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,12))  AS STRING)
    END AS id_estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,456,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,456,70))  AS STRING)
    END AS cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,526,12), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,526,12))  AS STRING)
    END AS id_cras_creas,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.familia_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '03'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_familia_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,3))  AS STRING)
    END AS id_povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,70))  AS STRING)
    END AS povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,115,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,115,1))  AS STRING)
    END AS id_indigena_residente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,116,6), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,116,6))  AS STRING)
    END AS id_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,122,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,122,70))  AS STRING)
    END AS reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,192,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,192,1))  AS STRING)
    END AS nao_sabe_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,193,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,193,1))  AS STRING)
    END AS familia_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,194,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,194,4))  AS STRING)
    END AS id_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,120), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,120))  AS STRING)
    END AS comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,318,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,318,1))  AS STRING)
    END AS nao_sabe_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,319,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,319,2)) AS INT64)
    END AS pessoas_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,321,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,321,2)) AS INT64)
    END AS familias_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,323,2)) AS INT64)
    END AS pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,325,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,325,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,326,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,326,2)) AS INT64)
    END AS pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,329,2)) AS INT64)
    END AS pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,331,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,331,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,332,5)) AS INT64)
    END AS despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,337,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,337,1))  AS STRING)
    END AS nao_tem_despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,338,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,338,5)) AS INT64)
    END AS despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,1))  AS STRING)
    END AS nao_tem_despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,344,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,344,5)) AS INT64)
    END AS despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,349,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,349,1))  AS STRING)
    END AS nao_tem_despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,350,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,350,5)) AS INT64)
    END AS despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,355,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,355,1))  AS STRING)
    END AS nao_tem_despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,356,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,356,5)) AS INT64)
    END AS despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,361,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,361,1))  AS STRING)
    END AS nao_tem_despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,362,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,362,5)) AS INT64)
    END AS despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,367,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,367,1))  AS STRING)
    END AS nao_tem_despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,368,5)) AS INT64)
    END AS despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,373,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,373,1))  AS STRING)
    END AS nao_tem_despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,374,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,374,70))  AS STRING)
    END AS estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,12), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,12))  AS STRING)
    END AS id_estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,456,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,456,70))  AS STRING)
    END AS cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,526,12), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,526,12))  AS STRING)
    END AS id_cras_creas,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.familia_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '03'
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
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_familia_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,3), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,3))  AS STRING)
    END AS id_povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,70))  AS STRING)
    END AS povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,115,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,115,1))  AS STRING)
    END AS id_indigena_residente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,116,6), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,116,6))  AS STRING)
    END AS id_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,122,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,122,70))  AS STRING)
    END AS reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,192,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,192,1))  AS STRING)
    END AS nao_sabe_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,193,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,193,1))  AS STRING)
    END AS familia_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,194,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,194,4))  AS STRING)
    END AS id_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,198,120), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,198,120))  AS STRING)
    END AS comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,318,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,318,1))  AS STRING)
    END AS nao_sabe_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,319,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,319,2)) AS INT64)
    END AS pessoas_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,321,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,321,2)) AS INT64)
    END AS familias_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,323,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,323,2)) AS INT64)
    END AS pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,325,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,325,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,326,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,326,2)) AS INT64)
    END AS pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,329,2)) AS INT64)
    END AS pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,331,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,331,1))  AS STRING)
    END AS nao_tem_pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,332,5)) AS INT64)
    END AS despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,337,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,337,1))  AS STRING)
    END AS nao_tem_despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,338,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,338,5)) AS INT64)
    END AS despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,343,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,343,1))  AS STRING)
    END AS nao_tem_despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,344,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,344,5)) AS INT64)
    END AS despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,349,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,349,1))  AS STRING)
    END AS nao_tem_despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,350,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,350,5)) AS INT64)
    END AS despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,355,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,355,1))  AS STRING)
    END AS nao_tem_despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,356,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,356,5)) AS INT64)
    END AS despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,361,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,361,1))  AS STRING)
    END AS nao_tem_despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,362,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,362,5)) AS INT64)
    END AS despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,367,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,367,1))  AS STRING)
    END AS nao_tem_despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,5), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,368,5)) AS INT64)
    END AS despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,373,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,373,1))  AS STRING)
    END AS nao_tem_despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,374,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,374,70))  AS STRING)
    END AS estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,12), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,12))  AS STRING)
    END AS id_estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,456,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,456,70))  AS STRING)
    END AS cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,526,12), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,526,12))  AS STRING)
    END AS id_cras_creas,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.familia_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '03'
