
SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_sabe_ler_escrever_memb AS STRING) AS cod_sabe_ler_escrever_memb,
    CAST(ind_frequenta_escola_memb AS STRING) AS ind_frequenta_escola_memb,
    CAST(nom_escola_memb AS STRING) AS nom_escola_memb,
    CAST(cod_escola_local_memb AS STRING) AS cod_escola_local_memb,
    CAST(sig_uf_escola_memb AS STRING) AS sig_uf_escola_memb,
    CAST(nom_munic_escola_memb AS STRING) AS nom_munic_escola_memb,
    CAST(cod_ibge_munic_escola_memb AS STRING) AS cod_ibge_munic_escola_memb,
    CAST(cod_censo_inep_memb AS STRING) AS cod_censo_inep_memb,
    CAST(ind_censo_inep_memb AS STRING) AS ind_censo_inep_memb,
    CAST(cod_curso_frequenta_memb AS STRING) AS cod_curso_frequenta_memb,
    CAST(cod_ano_serie_frequenta_memb AS STRING) AS cod_ano_serie_frequenta_memb,
    CAST(cod_curso_frequentou_pessoa_memb AS STRING) AS cod_curso_frequentou_pessoa_memb,
    CAST(cod_ano_serie_frequentou_memb AS STRING) AS cod_ano_serie_frequentou_memb,
    CAST(cod_concluiu_frequentou_memb AS STRING) AS cod_concluiu_frequentou_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.07_0601`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_sabe_ler_escrever_memb AS STRING) AS cod_sabe_ler_escrever_memb,
    CAST(ind_frequenta_escola_memb AS STRING) AS ind_frequenta_escola_memb,
    CAST(nom_escola_memb AS STRING) AS nom_escola_memb,
    CAST(cod_escola_local_memb AS STRING) AS cod_escola_local_memb,
    CAST(sig_uf_escola_memb AS STRING) AS sig_uf_escola_memb,
    CAST(nom_munic_escola_memb AS STRING) AS nom_munic_escola_memb,
    CAST(cod_ibge_munic_escola_memb AS STRING) AS cod_ibge_munic_escola_memb,
    CAST(cod_censo_inep_memb AS STRING) AS cod_censo_inep_memb,
    CAST(ind_censo_inep_memb AS STRING) AS ind_censo_inep_memb,
    CAST(cod_curso_frequenta_memb AS STRING) AS cod_curso_frequenta_memb,
    CAST(cod_ano_serie_frequenta_memb AS STRING) AS cod_ano_serie_frequenta_memb,
    CAST(cod_curso_frequentou_pessoa_memb AS STRING) AS cod_curso_frequentou_pessoa_memb,
    CAST(cod_ano_serie_frequentou_memb AS STRING) AS cod_ano_serie_frequentou_memb,
    CAST(cod_concluiu_frequentou_memb AS STRING) AS cod_concluiu_frequentou_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.07_0603`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_sabe_ler_escrever_memb AS STRING) AS cod_sabe_ler_escrever_memb,
    CAST(ind_frequenta_escola_memb AS STRING) AS ind_frequenta_escola_memb,
    CAST(nom_escola_memb AS STRING) AS nom_escola_memb,
    CAST(cod_escola_local_memb AS STRING) AS cod_escola_local_memb,
    CAST(sig_uf_escola_memb AS STRING) AS sig_uf_escola_memb,
    CAST(nom_munic_escola_memb AS STRING) AS nom_munic_escola_memb,
    CAST(cod_ibge_munic_escola_memb AS STRING) AS cod_ibge_munic_escola_memb,
    CAST(cod_censo_inep_memb AS STRING) AS cod_censo_inep_memb,
    CAST(ind_censo_inep_memb AS STRING) AS ind_censo_inep_memb,
    CAST(cod_curso_frequenta_memb AS STRING) AS cod_curso_frequenta_memb,
    CAST(cod_ano_serie_frequenta_memb AS STRING) AS cod_ano_serie_frequenta_memb,
    CAST(cod_curso_frequentou_pessoa_memb AS STRING) AS cod_curso_frequentou_pessoa_memb,
    CAST(cod_ano_serie_frequentou_memb AS STRING) AS cod_ano_serie_frequentou_memb,
    CAST(cod_concluiu_frequentou_memb AS STRING) AS cod_concluiu_frequentou_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.07_0604`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_sabe_ler_escrever_memb AS STRING) AS cod_sabe_ler_escrever_memb,
    CAST(ind_frequenta_escola_memb AS STRING) AS ind_frequenta_escola_memb,
    CAST(nom_escola_memb AS STRING) AS nom_escola_memb,
    CAST(cod_escola_local_memb AS STRING) AS cod_escola_local_memb,
    CAST(sig_uf_escola_memb AS STRING) AS sig_uf_escola_memb,
    CAST(nom_munic_escola_memb AS STRING) AS nom_munic_escola_memb,
    CAST(cod_ibge_munic_escola_memb AS STRING) AS cod_ibge_munic_escola_memb,
    CAST(cod_censo_inep_memb AS STRING) AS cod_censo_inep_memb,
    CAST(ind_censo_inep_memb AS STRING) AS ind_censo_inep_memb,
    CAST(cod_curso_frequenta_memb AS STRING) AS cod_curso_frequenta_memb,
    CAST(cod_ano_serie_frequenta_memb AS STRING) AS cod_ano_serie_frequenta_memb,
    CAST(cod_curso_frequentou_pessoa_memb AS STRING) AS cod_curso_frequentou_pessoa_memb,
    CAST(cod_ano_serie_frequentou_memb AS STRING) AS cod_ano_serie_frequentou_memb,
    CAST(cod_concluiu_frequentou_memb AS STRING) AS cod_concluiu_frequentou_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.07_0609`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS STRING) AS chv_natural_prefeitura_fam,
    CAST(cod_familiar_fam AS STRING) AS cod_familiar_fam,
    CAST(num_membro_fmla AS STRING) AS num_membro_fmla,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(cod_sabe_ler_escrever_memb AS STRING) AS cod_sabe_ler_escrever_memb,
    CAST(ind_frequenta_escola_memb AS STRING) AS ind_frequenta_escola_memb,
    CAST(nom_escola_memb AS STRING) AS nom_escola_memb,
    CAST(cod_escola_local_memb AS STRING) AS cod_escola_local_memb,
    CAST(sig_uf_escola_memb AS STRING) AS sig_uf_escola_memb,
    CAST(nom_munic_escola_memb AS STRING) AS nom_munic_escola_memb,
    CAST(cod_ibge_munic_escola_memb AS STRING) AS cod_ibge_munic_escola_memb,
    CAST(cod_censo_inep_memb AS STRING) AS cod_censo_inep_memb,
    CAST(ind_censo_inep_memb AS STRING) AS ind_censo_inep_memb,
    CAST(cod_curso_frequenta_memb AS STRING) AS cod_curso_frequenta_memb,
    CAST(cod_ano_serie_frequenta_memb AS STRING) AS cod_ano_serie_frequenta_memb,
    CAST(cod_curso_frequentou_pessoa_memb AS STRING) AS cod_curso_frequentou_pessoa_memb,
    CAST(cod_ano_serie_frequentou_memb AS STRING) AS cod_ano_serie_frequentou_memb,
    CAST(cod_concluiu_frequentou_memb AS STRING) AS cod_concluiu_frequentou_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.07_0612`

