
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
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_local_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_local_domic_fam)  AS STRING)
    END AS id_local_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_especie_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_especie_domic_fam)  AS STRING)
    END AS id_especie_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_comodos_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_comodos_domic_fam) AS INT64)
    END AS quantidade_comodos_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_comodos_dormitorio_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_comodos_dormitorio_fam) AS INT64)
    END AS quantidade_comodos_dormitorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_material_piso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_material_piso_fam)  AS STRING)
    END AS id_material_piso_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_material_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_material_domic_fam)  AS STRING)
    END AS id_material_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_agua_canalizada_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_agua_canalizada_fam)  AS STRING)
    END AS id_possui_agua_encanada_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_abaste_agua_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_abaste_agua_domic_fam)  AS STRING)
    END AS id_forma_abatecimento_agua_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_banheiro_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_banheiro_domic_fam)  AS STRING)
    END AS id_possui_banheiro_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_escoa_sanitario_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_escoa_sanitario_domic_fam)  AS STRING)
    END AS id_escoamento_sanitario_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_lixo_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_lixo_domic_fam)  AS STRING)
    END AS id_destino_lixo_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_iluminacao_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_iluminacao_domic_fam)  AS STRING)
    END AS id_iluminacao_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_calcamento_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_calcamento_domic_fam)  AS STRING)
    END AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0601`

UNION ALL


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
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_local_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_local_domic_fam)  AS STRING)
    END AS id_local_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_especie_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_especie_domic_fam)  AS STRING)
    END AS id_especie_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_comodos_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_comodos_domic_fam) AS INT64)
    END AS quantidade_comodos_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_comodos_dormitorio_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_comodos_dormitorio_fam) AS INT64)
    END AS quantidade_comodos_dormitorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_material_piso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_material_piso_fam)  AS STRING)
    END AS id_material_piso_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_material_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_material_domic_fam)  AS STRING)
    END AS id_material_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_agua_canalizada_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_agua_canalizada_fam)  AS STRING)
    END AS id_possui_agua_encanada_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_abaste_agua_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_abaste_agua_domic_fam)  AS STRING)
    END AS id_forma_abatecimento_agua_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_banheiro_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_banheiro_domic_fam)  AS STRING)
    END AS id_possui_banheiro_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_escoa_sanitario_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_escoa_sanitario_domic_fam)  AS STRING)
    END AS id_escoamento_sanitario_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_lixo_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_lixo_domic_fam)  AS STRING)
    END AS id_destino_lixo_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_iluminacao_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_iluminacao_domic_fam)  AS STRING)
    END AS id_iluminacao_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_calcamento_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_calcamento_domic_fam)  AS STRING)
    END AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0603`

UNION ALL


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
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_local_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_local_domic_fam)  AS STRING)
    END AS id_local_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_especie_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_especie_domic_fam)  AS STRING)
    END AS id_especie_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_comodos_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_comodos_domic_fam) AS INT64)
    END AS quantidade_comodos_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_comodos_dormitorio_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_comodos_dormitorio_fam) AS INT64)
    END AS quantidade_comodos_dormitorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_material_piso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_material_piso_fam)  AS STRING)
    END AS id_material_piso_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_material_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_material_domic_fam)  AS STRING)
    END AS id_material_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_agua_canalizada_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_agua_canalizada_fam)  AS STRING)
    END AS id_possui_agua_encanada_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_abaste_agua_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_abaste_agua_domic_fam)  AS STRING)
    END AS id_forma_abatecimento_agua_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_banheiro_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_banheiro_domic_fam)  AS STRING)
    END AS id_possui_banheiro_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_escoa_sanitario_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_escoa_sanitario_domic_fam)  AS STRING)
    END AS id_escoamento_sanitario_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_lixo_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_lixo_domic_fam)  AS STRING)
    END AS id_destino_lixo_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_iluminacao_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_iluminacao_domic_fam)  AS STRING)
    END AS id_iluminacao_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_calcamento_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_calcamento_domic_fam)  AS STRING)
    END AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0604`

UNION ALL


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
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_local_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_local_domic_fam)  AS STRING)
    END AS id_local_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_especie_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_especie_domic_fam)  AS STRING)
    END AS id_especie_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_comodos_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_comodos_domic_fam) AS INT64)
    END AS quantidade_comodos_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_comodos_dormitorio_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_comodos_dormitorio_fam) AS INT64)
    END AS quantidade_comodos_dormitorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_material_piso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_material_piso_fam)  AS STRING)
    END AS id_material_piso_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_material_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_material_domic_fam)  AS STRING)
    END AS id_material_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_agua_canalizada_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_agua_canalizada_fam)  AS STRING)
    END AS id_possui_agua_encanada_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_abaste_agua_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_abaste_agua_domic_fam)  AS STRING)
    END AS id_forma_abatecimento_agua_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_banheiro_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_banheiro_domic_fam)  AS STRING)
    END AS id_possui_banheiro_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_escoa_sanitario_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_escoa_sanitario_domic_fam)  AS STRING)
    END AS id_escoamento_sanitario_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_lixo_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_lixo_domic_fam)  AS STRING)
    END AS id_destino_lixo_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_iluminacao_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_iluminacao_domic_fam)  AS STRING)
    END AS id_iluminacao_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_calcamento_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_calcamento_domic_fam)  AS STRING)
    END AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0609`

UNION ALL


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
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_local_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_local_domic_fam)  AS STRING)
    END AS id_local_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_especie_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_especie_domic_fam)  AS STRING)
    END AS id_especie_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_comodos_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_comodos_domic_fam) AS INT64)
    END AS quantidade_comodos_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_comodos_dormitorio_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_comodos_dormitorio_fam) AS INT64)
    END AS quantidade_comodos_dormitorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_material_piso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_material_piso_fam)  AS STRING)
    END AS id_material_piso_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_material_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_material_domic_fam)  AS STRING)
    END AS id_material_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_agua_canalizada_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_agua_canalizada_fam)  AS STRING)
    END AS id_possui_agua_encanada_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_abaste_agua_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_abaste_agua_domic_fam)  AS STRING)
    END AS id_forma_abatecimento_agua_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_banheiro_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_banheiro_domic_fam)  AS STRING)
    END AS id_possui_banheiro_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_escoa_sanitario_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_escoa_sanitario_domic_fam)  AS STRING)
    END AS id_escoamento_sanitario_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_lixo_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_lixo_domic_fam)  AS STRING)
    END AS id_destino_lixo_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_iluminacao_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_iluminacao_domic_fam)  AS STRING)
    END AS id_iluminacao_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_calcamento_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_calcamento_domic_fam)  AS STRING)
    END AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0612`

UNION ALL


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
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_local_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_local_domic_fam)  AS STRING)
    END AS id_local_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_especie_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_especie_domic_fam)  AS STRING)
    END AS id_especie_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_comodos_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_comodos_domic_fam) AS INT64)
    END AS quantidade_comodos_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_comodos_dormitorio_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_comodos_dormitorio_fam) AS INT64)
    END AS quantidade_comodos_dormitorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_material_piso_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_material_piso_fam)  AS STRING)
    END AS id_material_piso_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_material_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_material_domic_fam)  AS STRING)
    END AS id_material_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_agua_canalizada_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_agua_canalizada_fam)  AS STRING)
    END AS id_possui_agua_encanada_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_abaste_agua_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_abaste_agua_domic_fam)  AS STRING)
    END AS id_forma_abatecimento_agua_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_banheiro_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_banheiro_domic_fam)  AS STRING)
    END AS id_possui_banheiro_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_escoa_sanitario_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_escoa_sanitario_domic_fam)  AS STRING)
    END AS id_escoamento_sanitario_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_lixo_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_lixo_domic_fam)  AS STRING)
    END AS id_destino_lixo_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_iluminacao_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_iluminacao_domic_fam)  AS STRING)
    END AS id_iluminacao_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(cod_calcamento_domic_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_calcamento_domic_fam)  AS STRING)
    END AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0615`

