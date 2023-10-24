
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
    END AS dorme_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,41,1)) AS INT64)
    END AS dorme_rua_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS dorme_albergue,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,43,1)) AS INT64)
    END AS dorme_albergue_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS dorme_domicilio_particular,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,1)) AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS dorme_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,47,1)) AS INT64)
    END AS dorme_outro_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_tempo_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS condicao_rua_perda_moradia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS condicao_rua_ameaca,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS condicao_rua_problemas_familiares,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS condicao_rua_alcool,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS condicao_rua_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS condicao_rua_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS condicao_rua_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS condicao_rua_preferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS condicao_rua_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS condicao_rua_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS condicao_rua_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS id_tempo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS condicao_rua_vive_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS condicao_rua_contato_parente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS atividade_comunitaria_escola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS atividade_comunitaria_associacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS atividade_comunitaria_cooperativa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS atibidade_comunitaria_movimento_social,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS atividade_comunitaria_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS atendido_cras,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS atendido_creas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS atendido_instituicao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS atendido_instituicao_nao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS atendido_hospital_geral,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS atendido_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS id_carteira_assinada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS ganha_dinheiro_construcao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS ganha_dinheiro_flanelinha,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS ganha_dinheiro_carregador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS ganha_dinheiro_catador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS ganha_dinheiro_pedinte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS ganha_dinheiro_vendas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS ganha_dinheiro_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '12'
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
    END AS dorme_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,41,1)) AS INT64)
    END AS dorme_rua_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS dorme_albergue,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,43,1)) AS INT64)
    END AS dorme_albergue_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS dorme_domicilio_particular,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,1)) AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS dorme_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,47,1)) AS INT64)
    END AS dorme_outro_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_tempo_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS condicao_rua_perda_moradia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS condicao_rua_ameaca,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS condicao_rua_problemas_familiares,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS condicao_rua_alcool,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS condicao_rua_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS condicao_rua_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS condicao_rua_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS condicao_rua_preferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS condicao_rua_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS condicao_rua_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS condicao_rua_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS id_tempo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS condicao_rua_vive_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS condicao_rua_contato_parente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS atividade_comunitaria_escola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS atividade_comunitaria_associacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS atividade_comunitaria_cooperativa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS atibidade_comunitaria_movimento_social,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS atividade_comunitaria_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS atendido_cras,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS atendido_creas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS atendido_instituicao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS atendido_instituicao_nao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS atendido_hospital_geral,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS atendido_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS id_carteira_assinada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS ganha_dinheiro_construcao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS ganha_dinheiro_flanelinha,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS ganha_dinheiro_carregador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS ganha_dinheiro_catador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS ganha_dinheiro_pedinte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS ganha_dinheiro_vendas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS ganha_dinheiro_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '12'
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
    END AS dorme_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,41,1)) AS INT64)
    END AS dorme_rua_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS dorme_albergue,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,43,1)) AS INT64)
    END AS dorme_albergue_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS dorme_domicilio_particular,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,1)) AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS dorme_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,47,1)) AS INT64)
    END AS dorme_outro_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_tempo_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS condicao_rua_perda_moradia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS condicao_rua_ameaca,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS condicao_rua_problemas_familiares,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS condicao_rua_alcool,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS condicao_rua_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS condicao_rua_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS condicao_rua_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS condicao_rua_preferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS condicao_rua_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS condicao_rua_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS condicao_rua_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS id_tempo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS condicao_rua_vive_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS condicao_rua_contato_parente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS atividade_comunitaria_escola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS atividade_comunitaria_associacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS atividade_comunitaria_cooperativa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS atibidade_comunitaria_movimento_social,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS atividade_comunitaria_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS atendido_cras,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS atendido_creas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS atendido_instituicao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS atendido_instituicao_nao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS atendido_hospital_geral,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS atendido_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS id_carteira_assinada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS ganha_dinheiro_construcao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS ganha_dinheiro_flanelinha,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS ganha_dinheiro_carregador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS ganha_dinheiro_catador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS ganha_dinheiro_pedinte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS ganha_dinheiro_vendas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS ganha_dinheiro_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '12'
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
    END AS dorme_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,41,1)) AS INT64)
    END AS dorme_rua_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS dorme_albergue,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,43,1)) AS INT64)
    END AS dorme_albergue_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS dorme_domicilio_particular,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,1)) AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS dorme_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,47,1)) AS INT64)
    END AS dorme_outro_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_tempo_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS condicao_rua_perda_moradia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS condicao_rua_ameaca,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS condicao_rua_problemas_familiares,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS condicao_rua_alcool,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS condicao_rua_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS condicao_rua_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS condicao_rua_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS condicao_rua_preferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS condicao_rua_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS condicao_rua_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS condicao_rua_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS id_tempo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS condicao_rua_vive_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS condicao_rua_contato_parente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS atividade_comunitaria_escola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS atividade_comunitaria_associacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS atividade_comunitaria_cooperativa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS atibidade_comunitaria_movimento_social,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS atividade_comunitaria_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS atendido_cras,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS atendido_creas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS atendido_instituicao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS atendido_instituicao_nao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS atendido_hospital_geral,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS atendido_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS id_carteira_assinada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS ganha_dinheiro_construcao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS ganha_dinheiro_flanelinha,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS ganha_dinheiro_carregador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS ganha_dinheiro_catador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS ganha_dinheiro_pedinte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS ganha_dinheiro_vendas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS ganha_dinheiro_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '12'
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
    END AS dorme_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,41,1)) AS INT64)
    END AS dorme_rua_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS dorme_albergue,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,43,1)) AS INT64)
    END AS dorme_albergue_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS dorme_domicilio_particular,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,1)) AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS dorme_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,47,1)) AS INT64)
    END AS dorme_outro_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_tempo_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS condicao_rua_perda_moradia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS condicao_rua_ameaca,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS condicao_rua_problemas_familiares,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS condicao_rua_alcool,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS condicao_rua_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS condicao_rua_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS condicao_rua_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS condicao_rua_preferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS condicao_rua_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS condicao_rua_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS condicao_rua_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS id_tempo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS condicao_rua_vive_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS condicao_rua_contato_parente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS atividade_comunitaria_escola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS atividade_comunitaria_associacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS atividade_comunitaria_cooperativa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS atibidade_comunitaria_movimento_social,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS atividade_comunitaria_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS atendido_cras,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS atendido_creas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS atendido_instituicao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS atendido_instituicao_nao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS atendido_hospital_geral,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS atendido_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS id_carteira_assinada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS ganha_dinheiro_construcao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS ganha_dinheiro_flanelinha,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS ganha_dinheiro_carregador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS ganha_dinheiro_catador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS ganha_dinheiro_pedinte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS ganha_dinheiro_vendas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS ganha_dinheiro_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '12'
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
    END AS dorme_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,41,1)) AS INT64)
    END AS dorme_rua_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS dorme_albergue,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,43,1)) AS INT64)
    END AS dorme_albergue_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS dorme_domicilio_particular,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,45,1)) AS INT64)
    END AS dorme_domicilio_particular_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS dorme_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,47,1)) AS INT64)
    END AS dorme_outro_vezes_semana,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_tempo_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS condicao_rua_perda_moradia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS condicao_rua_ameaca,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS condicao_rua_problemas_familiares,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS condicao_rua_alcool,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS condicao_rua_desemprego,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS condicao_rua_trabalho,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS condicao_rua_saude,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS condicao_rua_preferencia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS condicao_rua_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS condicao_rua_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS condicao_rua_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS id_tempo_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS condicao_rua_vive_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS condicao_rua_contato_parente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS atividade_comunitaria_escola,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS atividade_comunitaria_associacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS atividade_comunitaria_cooperativa,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS atibidade_comunitaria_movimento_social,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS atividade_comunitaria_nao_sabe,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS atividade_comunitaria_nao_respondeu,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS atendido_cras,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS atendido_creas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS atendido_crentro_referencia_populacao_rua,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS atendido_instituicao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS atendido_instituicao_nao_governamental,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS atendido_hospital_geral,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS atendido_nenhum,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS id_carteira_assinada,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS ganha_dinheiro_construcao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS ganha_dinheiro_flanelinha,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS ganha_dinheiro_carregador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS ganha_dinheiro_catador,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS ganha_dinheiro_sevicos_gerais,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS ganha_dinheiro_pedinte,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS ganha_dinheiro_vendas,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,84,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,84,1))  AS STRING)
    END AS ganha_dinheiro_outro,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,85,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,85,1))  AS STRING)
    END AS ganha_dinheiro_nao_respondeu,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.condicao_rua_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '12'
