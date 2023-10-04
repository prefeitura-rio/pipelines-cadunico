
SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(cod_prog_prohab_memb AS STRING) AS programa_pro_habitacao,
    CAST(cod_natureza_prohab_memb AS STRING) AS natureza_pro_habitacao,
    CAST(cod_contrato_prohab_memb AS STRING) AS contrato_pro_habitacao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.habitacao_0601`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(cod_prog_prohab_memb AS STRING) AS programa_pro_habitacao,
    CAST(cod_natureza_prohab_memb AS STRING) AS natureza_pro_habitacao,
    CAST(cod_contrato_prohab_memb AS STRING) AS contrato_pro_habitacao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.habitacao_0603`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(cod_prog_prohab_memb AS STRING) AS programa_pro_habitacao,
    CAST(cod_natureza_prohab_memb AS STRING) AS natureza_pro_habitacao,
    CAST(cod_contrato_prohab_memb AS STRING) AS contrato_pro_habitacao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.habitacao_0604`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(cod_prog_prohab_memb AS STRING) AS programa_pro_habitacao,
    CAST(cod_natureza_prohab_memb AS STRING) AS natureza_pro_habitacao,
    CAST(cod_contrato_prohab_memb AS STRING) AS contrato_pro_habitacao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.habitacao_0609`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(cod_prog_prohab_memb AS STRING) AS programa_pro_habitacao,
    CAST(cod_natureza_prohab_memb AS STRING) AS natureza_pro_habitacao,
    CAST(cod_contrato_prohab_memb AS STRING) AS contrato_pro_habitacao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.habitacao_0612`

