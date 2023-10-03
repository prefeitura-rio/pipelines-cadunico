
SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(num_membro_fmla AS int64) AS membros_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_deficiencia_memb AS string) AS id_tem_deficiencia,
    CAST(ind_def_cegueira_memb AS string) AS deficiencia_cegueira,
    CAST(ind_def_baixa_visao_memb AS string) AS deficiencia_baixa_visao,
    CAST(ind_def_surdez_profunda_memb AS string) AS deficiencia_surdez_profunda,
    CAST(ind_def_surdez_leve_memb AS string) AS deficiencia_surdez_leve,
    CAST(ind_def_fisica_memb AS string) AS deficiencia_fisica,
    CAST(ind_def_mental_memb AS string) AS deficiencia_mental,
    CAST(ind_def_sindrome_down_memb AS string) AS deficiencia_sindrome_down,
    CAST(ind_def_transtorno_mental_memb AS string) AS deficiencia_transtorno_mental,
    CAST(ind_ajuda_nao_memb AS string) AS nao_recebe_ajuda,
    CAST(ind_ajuda_familia_memb AS string) AS ajuda_familia,
    CAST(ind_ajuda_especializado_memb AS string) AS ajuda_especializada,
    CAST(ind_ajuda_vizinho_memb AS string) AS ajuda_vizinhos,
    CAST(ind_ajuda_instituicao_memb AS string) AS ajuda_instituicao_social,
    CAST(ind_ajuda_outra_memb AS string) AS ajuda_terceiros,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.06_0601_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(num_membro_fmla AS int64) AS membros_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_deficiencia_memb AS string) AS id_tem_deficiencia,
    CAST(ind_def_cegueira_memb AS string) AS deficiencia_cegueira,
    CAST(ind_def_baixa_visao_memb AS string) AS deficiencia_baixa_visao,
    CAST(ind_def_surdez_profunda_memb AS string) AS deficiencia_surdez_profunda,
    CAST(ind_def_surdez_leve_memb AS string) AS deficiencia_surdez_leve,
    CAST(ind_def_fisica_memb AS string) AS deficiencia_fisica,
    CAST(ind_def_mental_memb AS string) AS deficiencia_mental,
    CAST(ind_def_sindrome_down_memb AS string) AS deficiencia_sindrome_down,
    CAST(ind_def_transtorno_mental_memb AS string) AS deficiencia_transtorno_mental,
    CAST(ind_ajuda_nao_memb AS string) AS nao_recebe_ajuda,
    CAST(ind_ajuda_familia_memb AS string) AS ajuda_familia,
    CAST(ind_ajuda_especializado_memb AS string) AS ajuda_especializada,
    CAST(ind_ajuda_vizinho_memb AS string) AS ajuda_vizinhos,
    CAST(ind_ajuda_instituicao_memb AS string) AS ajuda_instituicao_social,
    CAST(ind_ajuda_outra_memb AS string) AS ajuda_terceiros,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.06_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(num_membro_fmla AS int64) AS membros_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_deficiencia_memb AS string) AS id_tem_deficiencia,
    CAST(ind_def_cegueira_memb AS string) AS deficiencia_cegueira,
    CAST(ind_def_baixa_visao_memb AS string) AS deficiencia_baixa_visao,
    CAST(ind_def_surdez_profunda_memb AS string) AS deficiencia_surdez_profunda,
    CAST(ind_def_surdez_leve_memb AS string) AS deficiencia_surdez_leve,
    CAST(ind_def_fisica_memb AS string) AS deficiencia_fisica,
    CAST(ind_def_mental_memb AS string) AS deficiencia_mental,
    CAST(ind_def_sindrome_down_memb AS string) AS deficiencia_sindrome_down,
    CAST(ind_def_transtorno_mental_memb AS string) AS deficiencia_transtorno_mental,
    CAST(ind_ajuda_nao_memb AS string) AS nao_recebe_ajuda,
    CAST(ind_ajuda_familia_memb AS string) AS ajuda_familia,
    CAST(ind_ajuda_especializado_memb AS string) AS ajuda_especializada,
    CAST(ind_ajuda_vizinho_memb AS string) AS ajuda_vizinhos,
    CAST(ind_ajuda_instituicao_memb AS string) AS ajuda_instituicao_social,
    CAST(ind_ajuda_outra_memb AS string) AS ajuda_terceiros,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.06_0609_test`

