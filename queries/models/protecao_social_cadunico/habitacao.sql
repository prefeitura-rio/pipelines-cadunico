
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
        WHEN REGEXP_CONTAINS(cod_prog_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_prog_prohab_memb)  AS STRING)
    END AS programa_pro_habitacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_natureza_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_natureza_prohab_memb)  AS STRING)
    END AS natureza_pro_habitacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_contrato_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_contrato_prohab_memb)  AS STRING)
    END AS contrato_pro_habitacao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.habitacao_0601`

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
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_prog_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_prog_prohab_memb)  AS STRING)
    END AS programa_pro_habitacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_natureza_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_natureza_prohab_memb)  AS STRING)
    END AS natureza_pro_habitacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_contrato_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_contrato_prohab_memb)  AS STRING)
    END AS contrato_pro_habitacao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.habitacao_0603`

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
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_prog_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_prog_prohab_memb)  AS STRING)
    END AS programa_pro_habitacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_natureza_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_natureza_prohab_memb)  AS STRING)
    END AS natureza_pro_habitacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_contrato_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_contrato_prohab_memb)  AS STRING)
    END AS contrato_pro_habitacao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.habitacao_0604`

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
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_prog_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_prog_prohab_memb)  AS STRING)
    END AS programa_pro_habitacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_natureza_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_natureza_prohab_memb)  AS STRING)
    END AS natureza_pro_habitacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_contrato_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_contrato_prohab_memb)  AS STRING)
    END AS contrato_pro_habitacao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.habitacao_0609`

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
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_prog_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_prog_prohab_memb)  AS STRING)
    END AS programa_pro_habitacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_natureza_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_natureza_prohab_memb)  AS STRING)
    END AS natureza_pro_habitacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_contrato_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_contrato_prohab_memb)  AS STRING)
    END AS contrato_pro_habitacao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.habitacao_0612`

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
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_prog_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_prog_prohab_memb)  AS STRING)
    END AS programa_pro_habitacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_natureza_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_natureza_prohab_memb)  AS STRING)
    END AS natureza_pro_habitacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_contrato_prohab_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_contrato_prohab_memb)  AS STRING)
    END AS contrato_pro_habitacao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.habitacao_0615`

