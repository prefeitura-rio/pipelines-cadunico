
SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(num_membro_fmla AS int64) AS membros_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_prog_prohab_memb AS string) AS programa_pro_habitacao,
    CAST(cod_natureza_prohab_memb AS string) AS natureza_pro_habitacao,
    CAST(cod_contrato_prohab_memb AS string) AS contrato_pro_habitacao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.habitacao_test_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(num_membro_fmla AS int64) AS membros_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_prog_prohab_memb AS string) AS programa_pro_habitacao,
    CAST(cod_natureza_prohab_memb AS string) AS natureza_pro_habitacao,
    CAST(cod_contrato_prohab_memb AS string) AS contrato_pro_habitacao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.habitacao_test_0609_test`

