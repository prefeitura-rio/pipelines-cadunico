
SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_prog_prohab_memb AS STRING) AS cod_prog_prohab_memb,
    CAST(cod_natureza_prohab_memb AS STRING) AS cod_natureza_prohab_memb,
    CAST(cod_contrato_prohab_memb AS STRING) AS cod_contrato_prohab_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.15_0601_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_prog_prohab_memb AS STRING) AS cod_prog_prohab_memb,
    CAST(cod_natureza_prohab_memb AS STRING) AS cod_natureza_prohab_memb,
    CAST(cod_contrato_prohab_memb AS STRING) AS cod_contrato_prohab_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.15_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_prog_prohab_memb AS STRING) AS cod_prog_prohab_memb,
    CAST(cod_natureza_prohab_memb AS STRING) AS cod_natureza_prohab_memb,
    CAST(cod_contrato_prohab_memb AS STRING) AS cod_contrato_prohab_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.15_0609_test`

