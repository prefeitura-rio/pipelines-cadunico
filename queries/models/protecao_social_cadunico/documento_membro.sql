
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
    END AS ptab_desativacao_inep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS pmig_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS ptrn_verficacao_dados_inep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS ptrn_sem_relacao_parentesco,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS paud_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS paud_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS paud_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS paud_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS paud_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS otrn_transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS otrn_transferida_outra_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS osrg_nao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS oaud_indicativo_obito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS oaud_rg_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.documento_membro_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '14'
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
    END AS ptab_desativacao_inep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS pmig_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS ptrn_verficacao_dados_inep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS ptrn_sem_relacao_parentesco,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS paud_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS paud_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS paud_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS paud_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS paud_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS otrn_transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS otrn_transferida_outra_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS osrg_nao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS oaud_indicativo_obito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS oaud_rg_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.documento_membro_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '14'
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
    END AS ptab_desativacao_inep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS pmig_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS ptrn_verficacao_dados_inep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS ptrn_sem_relacao_parentesco,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS paud_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS paud_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS paud_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS paud_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS paud_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS otrn_transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS otrn_transferida_outra_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS osrg_nao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS oaud_indicativo_obito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS oaud_rg_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.documento_membro_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '14'
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
    END AS ptab_desativacao_inep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS pmig_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS ptrn_verficacao_dados_inep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS ptrn_sem_relacao_parentesco,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS paud_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS paud_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS paud_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS paud_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS paud_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS otrn_transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS otrn_transferida_outra_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS osrg_nao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS oaud_indicativo_obito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS oaud_rg_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.documento_membro_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '14'
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
    END AS ptab_desativacao_inep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS pmig_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS ptrn_verficacao_dados_inep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS ptrn_sem_relacao_parentesco,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS paud_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS paud_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS paud_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS paud_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS paud_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS otrn_transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS otrn_transferida_outra_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS osrg_nao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS oaud_indicativo_obito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS oaud_rg_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.documento_membro_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '14'
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
    END AS ptab_desativacao_inep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS pmig_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,1))  AS STRING)
    END AS pmig_sem_nunhuma_documentacao,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,43,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,43,1))  AS STRING)
    END AS pmig_responsavel_sem_cpf_titulo_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,44,1))  AS STRING)
    END AS pmig_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,45,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,45,1))  AS STRING)
    END AS pmig_reponsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS pmig_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS pmig_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS pmig_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS pmig_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS pmig_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS pmig_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS pmig_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS ptrn_verficacao_dados_inep,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,55,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,55,1))  AS STRING)
    END AS ptrn_sem_relacao_parentesco,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS paud_campo_obrigatorio_nao_preenchido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS paud_responsavel_sem_cpf_tiluto_eleitor,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,1))  AS STRING)
    END AS paud_responsavel_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,59,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,59,1))  AS STRING)
    END AS paud_responsavel_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,1))  AS STRING)
    END AS paud_cpf_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,61,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,61,1))  AS STRING)
    END AS paud_responsavel_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,62,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,62,1))  AS STRING)
    END AS paud_cpf_divergencia_titularidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,63,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,63,1))  AS STRING)
    END AS paud_cpf_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,64,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,64,1))  AS STRING)
    END AS paud_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,65,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,65,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_invalido,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,66,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,66,1))  AS STRING)
    END AS paud_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,67,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,67,1))  AS STRING)
    END AS paud_responsavel_idade_inferior_16_anos,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,68,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,68,1))  AS STRING)
    END AS paud_rejeicao_inclusao_atualizacao_dados_cadastrais,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,69,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,69,1))  AS STRING)
    END AS otrn_transferida_outro_municipio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,70,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,70,1))  AS STRING)
    END AS otrn_transferida_este_municipio_nova_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,71,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,71,1))  AS STRING)
    END AS otrn_transferida_este_municipio_familia_existente,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,72,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,72,1))  AS STRING)
    END AS otrn_transferida_outra_familia,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,73,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,73,1))  AS STRING)
    END AS osrg_registrada_sem_cetidao_civil,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,74,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,74,1))  AS STRING)
    END AS osrg_nao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,75,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,75,1))  AS STRING)
    END AS osrg_nao_sabe_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,76,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,76,1))  AS STRING)
    END AS paud_cadatrado_com_certidao_obito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,77,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,77,1))  AS STRING)
    END AS oaud_indicativo_obito,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,78,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,78,1))  AS STRING)
    END AS paud_responsavel_titulo_eleitor_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,79,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,79,1))  AS STRING)
    END AS oaud_carteira_trabalho_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,80,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,80,1))  AS STRING)
    END AS oaud_certidao_nascimento_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,81,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,81,1))  AS STRING)
    END AS oaud_rg_multiplicidade,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,82,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,82,1))  AS STRING)
    END AS paud_cpf_cancelado_base_receita_federal,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,83,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,83,1))  AS STRING)
    END AS paud_cpf_suspenso_base_receita_federal,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.documento_membro_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '14'
