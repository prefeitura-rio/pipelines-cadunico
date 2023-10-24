
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
    END AS id_local_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_especie_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,42,2)) AS INT64)
    END AS quantidade_comodos_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,44,2)) AS INT64)
    END AS quantidade_comodos_dormitorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS id_material_piso_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS id_material_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_possui_agua_encanada_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS id_forma_abatecimento_agua_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS id_possui_banheiro_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS id_escoamento_sanitario_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS id_destino_lixo_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS id_iluminacao_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0601`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '02'
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
    END AS id_local_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_especie_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,42,2)) AS INT64)
    END AS quantidade_comodos_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,44,2)) AS INT64)
    END AS quantidade_comodos_dormitorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS id_material_piso_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS id_material_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_possui_agua_encanada_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS id_forma_abatecimento_agua_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS id_possui_banheiro_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS id_escoamento_sanitario_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS id_destino_lixo_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS id_iluminacao_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0603`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '02'
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
    END AS id_local_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_especie_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,42,2)) AS INT64)
    END AS quantidade_comodos_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,44,2)) AS INT64)
    END AS quantidade_comodos_dormitorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS id_material_piso_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS id_material_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_possui_agua_encanada_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS id_forma_abatecimento_agua_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS id_possui_banheiro_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS id_escoamento_sanitario_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS id_destino_lixo_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS id_iluminacao_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0604`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '02'
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
    END AS id_local_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_especie_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,42,2)) AS INT64)
    END AS quantidade_comodos_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,44,2)) AS INT64)
    END AS quantidade_comodos_dormitorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS id_material_piso_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS id_material_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_possui_agua_encanada_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS id_forma_abatecimento_agua_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS id_possui_banheiro_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS id_escoamento_sanitario_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS id_destino_lixo_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS id_iluminacao_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0609`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '02'
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
    END AS id_local_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_especie_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,42,2)) AS INT64)
    END AS quantidade_comodos_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,44,2)) AS INT64)
    END AS quantidade_comodos_dormitorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS id_material_piso_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS id_material_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_possui_agua_encanada_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS id_forma_abatecimento_agua_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS id_possui_banheiro_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS id_escoamento_sanitario_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS id_destino_lixo_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS id_iluminacao_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0612`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '02'
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
    END AS id_local_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS id_especie_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,42,2)) AS INT64)
    END AS quantidade_comodos_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,44,2), r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(SUBSTRING(text,44,2)) AS INT64)
    END AS quantidade_comodos_dormitorio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,46,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,46,1))  AS STRING)
    END AS id_material_piso_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,47,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,47,1))  AS STRING)
    END AS id_material_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,48,1))  AS STRING)
    END AS id_possui_agua_encanada_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,49,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,49,1))  AS STRING)
    END AS id_forma_abatecimento_agua_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,50,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,50,1))  AS STRING)
    END AS id_possui_banheiro_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,51,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,51,1))  AS STRING)
    END AS id_escoamento_sanitario_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,52,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,52,1))  AS STRING)
    END AS id_destino_lixo_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,53,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,53,1))  AS STRING)
    END AS id_iluminacao_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,54,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,54,1))  AS STRING)
    END AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
-- FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0615`
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '02'
