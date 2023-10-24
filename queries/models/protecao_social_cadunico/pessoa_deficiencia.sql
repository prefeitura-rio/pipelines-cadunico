
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
        WHEN REGEXP_CONTAINS(cod_deficiencia_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_deficiencia_memb)  AS STRING)
    END AS id_tem_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_cegueira_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_cegueira_memb)  AS STRING)
    END AS deficiencia_cegueira,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_baixa_visao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_baixa_visao_memb)  AS STRING)
    END AS deficiencia_baixa_visao,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_surdez_profunda_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_surdez_profunda_memb)  AS STRING)
    END AS deficiencia_surdez_profunda,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_surdez_leve_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_surdez_leve_memb)  AS STRING)
    END AS deficiencia_surdez_leve,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_fisica_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_fisica_memb)  AS STRING)
    END AS deficiencia_fisica,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_mental_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_mental_memb)  AS STRING)
    END AS deficiencia_mental,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_sindrome_down_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_sindrome_down_memb)  AS STRING)
    END AS deficiencia_sindrome_down,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_transtorno_mental_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_transtorno_mental_memb)  AS STRING)
    END AS deficiencia_transtorno_mental,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_nao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_nao_memb)  AS STRING)
    END AS nao_recebe_ajuda,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_familia_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_familia_memb)  AS STRING)
    END AS ajuda_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_especializado_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_especializado_memb)  AS STRING)
    END AS ajuda_especializada,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_vizinho_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_vizinho_memb)  AS STRING)
    END AS ajuda_vizinhos,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_instituicao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_instituicao_memb)  AS STRING)
    END AS ajuda_instituicao_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_outra_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_outra_memb)  AS STRING)
    END AS ajuda_terceiros,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.pessoa_deficiencia_0601`

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
        WHEN REGEXP_CONTAINS(cod_deficiencia_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_deficiencia_memb)  AS STRING)
    END AS id_tem_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_cegueira_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_cegueira_memb)  AS STRING)
    END AS deficiencia_cegueira,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_baixa_visao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_baixa_visao_memb)  AS STRING)
    END AS deficiencia_baixa_visao,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_surdez_profunda_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_surdez_profunda_memb)  AS STRING)
    END AS deficiencia_surdez_profunda,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_surdez_leve_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_surdez_leve_memb)  AS STRING)
    END AS deficiencia_surdez_leve,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_fisica_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_fisica_memb)  AS STRING)
    END AS deficiencia_fisica,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_mental_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_mental_memb)  AS STRING)
    END AS deficiencia_mental,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_sindrome_down_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_sindrome_down_memb)  AS STRING)
    END AS deficiencia_sindrome_down,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_transtorno_mental_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_transtorno_mental_memb)  AS STRING)
    END AS deficiencia_transtorno_mental,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_nao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_nao_memb)  AS STRING)
    END AS nao_recebe_ajuda,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_familia_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_familia_memb)  AS STRING)
    END AS ajuda_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_especializado_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_especializado_memb)  AS STRING)
    END AS ajuda_especializada,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_vizinho_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_vizinho_memb)  AS STRING)
    END AS ajuda_vizinhos,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_instituicao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_instituicao_memb)  AS STRING)
    END AS ajuda_instituicao_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_outra_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_outra_memb)  AS STRING)
    END AS ajuda_terceiros,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.pessoa_deficiencia_0603`

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
        WHEN REGEXP_CONTAINS(cod_deficiencia_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_deficiencia_memb)  AS STRING)
    END AS id_tem_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_cegueira_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_cegueira_memb)  AS STRING)
    END AS deficiencia_cegueira,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_baixa_visao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_baixa_visao_memb)  AS STRING)
    END AS deficiencia_baixa_visao,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_surdez_profunda_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_surdez_profunda_memb)  AS STRING)
    END AS deficiencia_surdez_profunda,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_surdez_leve_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_surdez_leve_memb)  AS STRING)
    END AS deficiencia_surdez_leve,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_fisica_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_fisica_memb)  AS STRING)
    END AS deficiencia_fisica,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_mental_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_mental_memb)  AS STRING)
    END AS deficiencia_mental,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_sindrome_down_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_sindrome_down_memb)  AS STRING)
    END AS deficiencia_sindrome_down,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_transtorno_mental_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_transtorno_mental_memb)  AS STRING)
    END AS deficiencia_transtorno_mental,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_nao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_nao_memb)  AS STRING)
    END AS nao_recebe_ajuda,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_familia_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_familia_memb)  AS STRING)
    END AS ajuda_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_especializado_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_especializado_memb)  AS STRING)
    END AS ajuda_especializada,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_vizinho_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_vizinho_memb)  AS STRING)
    END AS ajuda_vizinhos,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_instituicao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_instituicao_memb)  AS STRING)
    END AS ajuda_instituicao_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_outra_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_outra_memb)  AS STRING)
    END AS ajuda_terceiros,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.pessoa_deficiencia_0604`

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
        WHEN REGEXP_CONTAINS(cod_deficiencia_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_deficiencia_memb)  AS STRING)
    END AS id_tem_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_cegueira_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_cegueira_memb)  AS STRING)
    END AS deficiencia_cegueira,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_baixa_visao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_baixa_visao_memb)  AS STRING)
    END AS deficiencia_baixa_visao,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_surdez_profunda_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_surdez_profunda_memb)  AS STRING)
    END AS deficiencia_surdez_profunda,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_surdez_leve_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_surdez_leve_memb)  AS STRING)
    END AS deficiencia_surdez_leve,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_fisica_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_fisica_memb)  AS STRING)
    END AS deficiencia_fisica,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_mental_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_mental_memb)  AS STRING)
    END AS deficiencia_mental,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_sindrome_down_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_sindrome_down_memb)  AS STRING)
    END AS deficiencia_sindrome_down,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_transtorno_mental_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_transtorno_mental_memb)  AS STRING)
    END AS deficiencia_transtorno_mental,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_nao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_nao_memb)  AS STRING)
    END AS nao_recebe_ajuda,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_familia_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_familia_memb)  AS STRING)
    END AS ajuda_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_especializado_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_especializado_memb)  AS STRING)
    END AS ajuda_especializada,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_vizinho_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_vizinho_memb)  AS STRING)
    END AS ajuda_vizinhos,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_instituicao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_instituicao_memb)  AS STRING)
    END AS ajuda_instituicao_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_outra_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_outra_memb)  AS STRING)
    END AS ajuda_terceiros,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.pessoa_deficiencia_0609`

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
        WHEN REGEXP_CONTAINS(cod_deficiencia_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_deficiencia_memb)  AS STRING)
    END AS id_tem_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_cegueira_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_cegueira_memb)  AS STRING)
    END AS deficiencia_cegueira,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_baixa_visao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_baixa_visao_memb)  AS STRING)
    END AS deficiencia_baixa_visao,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_surdez_profunda_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_surdez_profunda_memb)  AS STRING)
    END AS deficiencia_surdez_profunda,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_surdez_leve_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_surdez_leve_memb)  AS STRING)
    END AS deficiencia_surdez_leve,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_fisica_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_fisica_memb)  AS STRING)
    END AS deficiencia_fisica,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_mental_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_mental_memb)  AS STRING)
    END AS deficiencia_mental,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_sindrome_down_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_sindrome_down_memb)  AS STRING)
    END AS deficiencia_sindrome_down,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_transtorno_mental_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_transtorno_mental_memb)  AS STRING)
    END AS deficiencia_transtorno_mental,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_nao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_nao_memb)  AS STRING)
    END AS nao_recebe_ajuda,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_familia_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_familia_memb)  AS STRING)
    END AS ajuda_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_especializado_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_especializado_memb)  AS STRING)
    END AS ajuda_especializada,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_vizinho_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_vizinho_memb)  AS STRING)
    END AS ajuda_vizinhos,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_instituicao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_instituicao_memb)  AS STRING)
    END AS ajuda_instituicao_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_outra_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_outra_memb)  AS STRING)
    END AS ajuda_terceiros,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.pessoa_deficiencia_0612`

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
        WHEN REGEXP_CONTAINS(cod_deficiencia_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_deficiencia_memb)  AS STRING)
    END AS id_tem_deficiencia,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_cegueira_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_cegueira_memb)  AS STRING)
    END AS deficiencia_cegueira,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_baixa_visao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_baixa_visao_memb)  AS STRING)
    END AS deficiencia_baixa_visao,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_surdez_profunda_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_surdez_profunda_memb)  AS STRING)
    END AS deficiencia_surdez_profunda,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_surdez_leve_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_surdez_leve_memb)  AS STRING)
    END AS deficiencia_surdez_leve,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_fisica_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_fisica_memb)  AS STRING)
    END AS deficiencia_fisica,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_mental_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_mental_memb)  AS STRING)
    END AS deficiencia_mental,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_sindrome_down_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_sindrome_down_memb)  AS STRING)
    END AS deficiencia_sindrome_down,
    CASE
        WHEN REGEXP_CONTAINS(ind_def_transtorno_mental_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_def_transtorno_mental_memb)  AS STRING)
    END AS deficiencia_transtorno_mental,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_nao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_nao_memb)  AS STRING)
    END AS nao_recebe_ajuda,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_familia_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_familia_memb)  AS STRING)
    END AS ajuda_familia,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_especializado_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_especializado_memb)  AS STRING)
    END AS ajuda_especializada,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_vizinho_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_vizinho_memb)  AS STRING)
    END AS ajuda_vizinhos,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_instituicao_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_instituicao_memb)  AS STRING)
    END AS ajuda_instituicao_social,
    CASE
        WHEN REGEXP_CONTAINS(ind_ajuda_outra_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ajuda_outra_memb)  AS STRING)
    END AS ajuda_terceiros,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.pessoa_deficiencia_0615`

