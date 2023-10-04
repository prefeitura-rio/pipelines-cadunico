
SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(cod_deficiencia_memb AS STRING) AS id_tem_deficiencia,
    CAST(ind_def_cegueira_memb AS STRING) AS deficiencia_cegueira,
    CAST(ind_def_baixa_visao_memb AS STRING) AS deficiencia_baixa_visao,
    CAST(ind_def_surdez_profunda_memb AS STRING) AS deficiencia_surdez_profunda,
    CAST(ind_def_surdez_leve_memb AS STRING) AS deficiencia_surdez_leve,
    CAST(ind_def_fisica_memb AS STRING) AS deficiencia_fisica,
    CAST(ind_def_mental_memb AS STRING) AS deficiencia_mental,
    CAST(ind_def_sindrome_down_memb AS STRING) AS deficiencia_sindrome_down,
    CAST(ind_def_transtorno_mental_memb AS STRING) AS deficiencia_transtorno_mental,
    CAST(ind_ajuda_nao_memb AS STRING) AS nao_recebe_ajuda,
    CAST(ind_ajuda_familia_memb AS STRING) AS ajuda_familia,
    CAST(ind_ajuda_especializado_memb AS STRING) AS ajuda_especializada,
    CAST(ind_ajuda_vizinho_memb AS STRING) AS ajuda_vizinhos,
    CAST(ind_ajuda_instituicao_memb AS STRING) AS ajuda_instituicao_social,
    CAST(ind_ajuda_outra_memb AS STRING) AS ajuda_terceiros,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.pessoa_deficiencia_0601`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(cod_deficiencia_memb AS STRING) AS id_tem_deficiencia,
    CAST(ind_def_cegueira_memb AS STRING) AS deficiencia_cegueira,
    CAST(ind_def_baixa_visao_memb AS STRING) AS deficiencia_baixa_visao,
    CAST(ind_def_surdez_profunda_memb AS STRING) AS deficiencia_surdez_profunda,
    CAST(ind_def_surdez_leve_memb AS STRING) AS deficiencia_surdez_leve,
    CAST(ind_def_fisica_memb AS STRING) AS deficiencia_fisica,
    CAST(ind_def_mental_memb AS STRING) AS deficiencia_mental,
    CAST(ind_def_sindrome_down_memb AS STRING) AS deficiencia_sindrome_down,
    CAST(ind_def_transtorno_mental_memb AS STRING) AS deficiencia_transtorno_mental,
    CAST(ind_ajuda_nao_memb AS STRING) AS nao_recebe_ajuda,
    CAST(ind_ajuda_familia_memb AS STRING) AS ajuda_familia,
    CAST(ind_ajuda_especializado_memb AS STRING) AS ajuda_especializada,
    CAST(ind_ajuda_vizinho_memb AS STRING) AS ajuda_vizinhos,
    CAST(ind_ajuda_instituicao_memb AS STRING) AS ajuda_instituicao_social,
    CAST(ind_ajuda_outra_memb AS STRING) AS ajuda_terceiros,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.pessoa_deficiencia_0603`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(cod_deficiencia_memb AS STRING) AS id_tem_deficiencia,
    CAST(ind_def_cegueira_memb AS STRING) AS deficiencia_cegueira,
    CAST(ind_def_baixa_visao_memb AS STRING) AS deficiencia_baixa_visao,
    CAST(ind_def_surdez_profunda_memb AS STRING) AS deficiencia_surdez_profunda,
    CAST(ind_def_surdez_leve_memb AS STRING) AS deficiencia_surdez_leve,
    CAST(ind_def_fisica_memb AS STRING) AS deficiencia_fisica,
    CAST(ind_def_mental_memb AS STRING) AS deficiencia_mental,
    CAST(ind_def_sindrome_down_memb AS STRING) AS deficiencia_sindrome_down,
    CAST(ind_def_transtorno_mental_memb AS STRING) AS deficiencia_transtorno_mental,
    CAST(ind_ajuda_nao_memb AS STRING) AS nao_recebe_ajuda,
    CAST(ind_ajuda_familia_memb AS STRING) AS ajuda_familia,
    CAST(ind_ajuda_especializado_memb AS STRING) AS ajuda_especializada,
    CAST(ind_ajuda_vizinho_memb AS STRING) AS ajuda_vizinhos,
    CAST(ind_ajuda_instituicao_memb AS STRING) AS ajuda_instituicao_social,
    CAST(ind_ajuda_outra_memb AS STRING) AS ajuda_terceiros,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.pessoa_deficiencia_0604`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(cod_deficiencia_memb AS STRING) AS id_tem_deficiencia,
    CAST(ind_def_cegueira_memb AS STRING) AS deficiencia_cegueira,
    CAST(ind_def_baixa_visao_memb AS STRING) AS deficiencia_baixa_visao,
    CAST(ind_def_surdez_profunda_memb AS STRING) AS deficiencia_surdez_profunda,
    CAST(ind_def_surdez_leve_memb AS STRING) AS deficiencia_surdez_leve,
    CAST(ind_def_fisica_memb AS STRING) AS deficiencia_fisica,
    CAST(ind_def_mental_memb AS STRING) AS deficiencia_mental,
    CAST(ind_def_sindrome_down_memb AS STRING) AS deficiencia_sindrome_down,
    CAST(ind_def_transtorno_mental_memb AS STRING) AS deficiencia_transtorno_mental,
    CAST(ind_ajuda_nao_memb AS STRING) AS nao_recebe_ajuda,
    CAST(ind_ajuda_familia_memb AS STRING) AS ajuda_familia,
    CAST(ind_ajuda_especializado_memb AS STRING) AS ajuda_especializada,
    CAST(ind_ajuda_vizinho_memb AS STRING) AS ajuda_vizinhos,
    CAST(ind_ajuda_instituicao_memb AS STRING) AS ajuda_instituicao_social,
    CAST(ind_ajuda_outra_memb AS STRING) AS ajuda_terceiros,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.pessoa_deficiencia_0609`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS id_prefeitura,
    CAST(cod_familiar_fam AS STRING) AS id_familia,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(cod_deficiencia_memb AS STRING) AS id_tem_deficiencia,
    CAST(ind_def_cegueira_memb AS STRING) AS deficiencia_cegueira,
    CAST(ind_def_baixa_visao_memb AS STRING) AS deficiencia_baixa_visao,
    CAST(ind_def_surdez_profunda_memb AS STRING) AS deficiencia_surdez_profunda,
    CAST(ind_def_surdez_leve_memb AS STRING) AS deficiencia_surdez_leve,
    CAST(ind_def_fisica_memb AS STRING) AS deficiencia_fisica,
    CAST(ind_def_mental_memb AS STRING) AS deficiencia_mental,
    CAST(ind_def_sindrome_down_memb AS STRING) AS deficiencia_sindrome_down,
    CAST(ind_def_transtorno_mental_memb AS STRING) AS deficiencia_transtorno_mental,
    CAST(ind_ajuda_nao_memb AS STRING) AS nao_recebe_ajuda,
    CAST(ind_ajuda_familia_memb AS STRING) AS ajuda_familia,
    CAST(ind_ajuda_especializado_memb AS STRING) AS ajuda_especializada,
    CAST(ind_ajuda_vizinho_memb AS STRING) AS ajuda_vizinhos,
    CAST(ind_ajuda_instituicao_memb AS STRING) AS ajuda_instituicao_social,
    CAST(ind_ajuda_outra_memb AS STRING) AS ajuda_terceiros,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.pessoa_deficiencia_0612`

