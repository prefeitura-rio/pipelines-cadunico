
SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_deficiencia_memb AS STRING) AS cod_deficiencia_memb,
    CAST(ind_def_cegueira_memb AS STRING) AS ind_def_cegueira_memb,
    CAST(ind_def_baixa_visao_memb AS STRING) AS ind_def_baixa_visao_memb,
    CAST(ind_def_surdez_profunda_memb AS STRING) AS ind_def_surdez_profunda_memb,
    CAST(ind_def_surdez_leve_memb AS STRING) AS ind_def_surdez_leve_memb,
    CAST(ind_def_fisica_memb AS STRING) AS ind_def_fisica_memb,
    CAST(ind_def_mental_memb AS STRING) AS ind_def_mental_memb,
    CAST(ind_def_sindrome_down_memb AS STRING) AS ind_def_sindrome_down_memb,
    CAST(ind_def_transtorno_mental_memb AS STRING) AS ind_def_transtorno_mental_memb,
    CAST(ind_ajuda_nao_memb AS STRING) AS ind_ajuda_nao_memb,
    CAST(ind_ajuda_familia_memb AS STRING) AS ind_ajuda_familia_memb,
    CAST(ind_ajuda_especializado_memb AS STRING) AS ind_ajuda_especializado_memb,
    CAST(ind_ajuda_vizinho_memb AS STRING) AS ind_ajuda_vizinho_memb,
    CAST(ind_ajuda_instituicao_memb AS STRING) AS ind_ajuda_instituicao_memb,
    CAST(ind_ajuda_outra_memb AS STRING) AS ind_ajuda_outra_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.06_0601`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_deficiencia_memb AS STRING) AS cod_deficiencia_memb,
    CAST(ind_def_cegueira_memb AS STRING) AS ind_def_cegueira_memb,
    CAST(ind_def_baixa_visao_memb AS STRING) AS ind_def_baixa_visao_memb,
    CAST(ind_def_surdez_profunda_memb AS STRING) AS ind_def_surdez_profunda_memb,
    CAST(ind_def_surdez_leve_memb AS STRING) AS ind_def_surdez_leve_memb,
    CAST(ind_def_fisica_memb AS STRING) AS ind_def_fisica_memb,
    CAST(ind_def_mental_memb AS STRING) AS ind_def_mental_memb,
    CAST(ind_def_sindrome_down_memb AS STRING) AS ind_def_sindrome_down_memb,
    CAST(ind_def_transtorno_mental_memb AS STRING) AS ind_def_transtorno_mental_memb,
    CAST(ind_ajuda_nao_memb AS STRING) AS ind_ajuda_nao_memb,
    CAST(ind_ajuda_familia_memb AS STRING) AS ind_ajuda_familia_memb,
    CAST(ind_ajuda_especializado_memb AS STRING) AS ind_ajuda_especializado_memb,
    CAST(ind_ajuda_vizinho_memb AS STRING) AS ind_ajuda_vizinho_memb,
    CAST(ind_ajuda_instituicao_memb AS STRING) AS ind_ajuda_instituicao_memb,
    CAST(ind_ajuda_outra_memb AS STRING) AS ind_ajuda_outra_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.06_0603`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_deficiencia_memb AS STRING) AS cod_deficiencia_memb,
    CAST(ind_def_cegueira_memb AS STRING) AS ind_def_cegueira_memb,
    CAST(ind_def_baixa_visao_memb AS STRING) AS ind_def_baixa_visao_memb,
    CAST(ind_def_surdez_profunda_memb AS STRING) AS ind_def_surdez_profunda_memb,
    CAST(ind_def_surdez_leve_memb AS STRING) AS ind_def_surdez_leve_memb,
    CAST(ind_def_fisica_memb AS STRING) AS ind_def_fisica_memb,
    CAST(ind_def_mental_memb AS STRING) AS ind_def_mental_memb,
    CAST(ind_def_sindrome_down_memb AS STRING) AS ind_def_sindrome_down_memb,
    CAST(ind_def_transtorno_mental_memb AS STRING) AS ind_def_transtorno_mental_memb,
    CAST(ind_ajuda_nao_memb AS STRING) AS ind_ajuda_nao_memb,
    CAST(ind_ajuda_familia_memb AS STRING) AS ind_ajuda_familia_memb,
    CAST(ind_ajuda_especializado_memb AS STRING) AS ind_ajuda_especializado_memb,
    CAST(ind_ajuda_vizinho_memb AS STRING) AS ind_ajuda_vizinho_memb,
    CAST(ind_ajuda_instituicao_memb AS STRING) AS ind_ajuda_instituicao_memb,
    CAST(ind_ajuda_outra_memb AS STRING) AS ind_ajuda_outra_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.06_0604`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_deficiencia_memb AS STRING) AS cod_deficiencia_memb,
    CAST(ind_def_cegueira_memb AS STRING) AS ind_def_cegueira_memb,
    CAST(ind_def_baixa_visao_memb AS STRING) AS ind_def_baixa_visao_memb,
    CAST(ind_def_surdez_profunda_memb AS STRING) AS ind_def_surdez_profunda_memb,
    CAST(ind_def_surdez_leve_memb AS STRING) AS ind_def_surdez_leve_memb,
    CAST(ind_def_fisica_memb AS STRING) AS ind_def_fisica_memb,
    CAST(ind_def_mental_memb AS STRING) AS ind_def_mental_memb,
    CAST(ind_def_sindrome_down_memb AS STRING) AS ind_def_sindrome_down_memb,
    CAST(ind_def_transtorno_mental_memb AS STRING) AS ind_def_transtorno_mental_memb,
    CAST(ind_ajuda_nao_memb AS STRING) AS ind_ajuda_nao_memb,
    CAST(ind_ajuda_familia_memb AS STRING) AS ind_ajuda_familia_memb,
    CAST(ind_ajuda_especializado_memb AS STRING) AS ind_ajuda_especializado_memb,
    CAST(ind_ajuda_vizinho_memb AS STRING) AS ind_ajuda_vizinho_memb,
    CAST(ind_ajuda_instituicao_memb AS STRING) AS ind_ajuda_instituicao_memb,
    CAST(ind_ajuda_outra_memb AS STRING) AS ind_ajuda_outra_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.06_0609`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_deficiencia_memb AS STRING) AS cod_deficiencia_memb,
    CAST(ind_def_cegueira_memb AS STRING) AS ind_def_cegueira_memb,
    CAST(ind_def_baixa_visao_memb AS STRING) AS ind_def_baixa_visao_memb,
    CAST(ind_def_surdez_profunda_memb AS STRING) AS ind_def_surdez_profunda_memb,
    CAST(ind_def_surdez_leve_memb AS STRING) AS ind_def_surdez_leve_memb,
    CAST(ind_def_fisica_memb AS STRING) AS ind_def_fisica_memb,
    CAST(ind_def_mental_memb AS STRING) AS ind_def_mental_memb,
    CAST(ind_def_sindrome_down_memb AS STRING) AS ind_def_sindrome_down_memb,
    CAST(ind_def_transtorno_mental_memb AS STRING) AS ind_def_transtorno_mental_memb,
    CAST(ind_ajuda_nao_memb AS STRING) AS ind_ajuda_nao_memb,
    CAST(ind_ajuda_familia_memb AS STRING) AS ind_ajuda_familia_memb,
    CAST(ind_ajuda_especializado_memb AS STRING) AS ind_ajuda_especializado_memb,
    CAST(ind_ajuda_vizinho_memb AS STRING) AS ind_ajuda_vizinho_memb,
    CAST(ind_ajuda_instituicao_memb AS STRING) AS ind_ajuda_instituicao_memb,
    CAST(ind_ajuda_outra_memb AS STRING) AS ind_ajuda_outra_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.06_0612`

