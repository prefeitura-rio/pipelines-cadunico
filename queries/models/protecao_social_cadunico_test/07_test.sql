
SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(num_membro_fmla AS int64) AS membros_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_sabe_ler_escrever_memb AS string) AS id_sabe_ler_escrever,
    CAST(ind_frequenta_escola_memb AS string) AS frequenta_escola,
    CAST(nom_escola_memb AS string) AS escola,
    CAST(cod_escola_local_memb AS string) AS id_escola_localizada_municipio,
    CAST(sig_uf_escola_memb AS string) AS sigla_uf_escola,
    CAST(nom_munic_escola_memb AS string) AS municipio_escola,
    CAST(cod_ibge_munic_escola_memb AS string) AS id_municipio_escola,
    CAST(cod_censo_inep_memb AS string) AS id_inep_escola,
    CAST(ind_censo_inep_memb AS string) AS escola_nao_tem_inep,
    CAST(cod_curso_frequenta_memb AS string) AS id_curso_frequenta,
    CAST(cod_ano_serie_frequenta_memb AS string) AS id_ano_serie_frequenta,
    CAST(cod_curso_frequentou_pessoa_memb AS string) AS id_curso_mais_elevado_frequentou,
    CAST(cod_ano_serie_frequentou_memb AS string) AS id_ultimo_ano_serie_frequentou,
    CAST(cod_concluiu_frequentou_memb AS string) AS id_concluiu_curso_frequentado,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.07_0601_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(num_membro_fmla AS int64) AS membros_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_sabe_ler_escrever_memb AS string) AS id_sabe_ler_escrever,
    CAST(ind_frequenta_escola_memb AS string) AS frequenta_escola,
    CAST(nom_escola_memb AS string) AS escola,
    CAST(cod_escola_local_memb AS string) AS id_escola_localizada_municipio,
    CAST(sig_uf_escola_memb AS string) AS sigla_uf_escola,
    CAST(nom_munic_escola_memb AS string) AS municipio_escola,
    CAST(cod_ibge_munic_escola_memb AS string) AS id_municipio_escola,
    CAST(cod_censo_inep_memb AS string) AS id_inep_escola,
    CAST(ind_censo_inep_memb AS string) AS escola_nao_tem_inep,
    CAST(cod_curso_frequenta_memb AS string) AS id_curso_frequenta,
    CAST(cod_ano_serie_frequenta_memb AS string) AS id_ano_serie_frequenta,
    CAST(cod_curso_frequentou_pessoa_memb AS string) AS id_curso_mais_elevado_frequentou,
    CAST(cod_ano_serie_frequentou_memb AS string) AS id_ultimo_ano_serie_frequentou,
    CAST(cod_concluiu_frequentou_memb AS string) AS id_concluiu_curso_frequentado,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.07_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(num_membro_fmla AS int64) AS membros_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_sabe_ler_escrever_memb AS string) AS id_sabe_ler_escrever,
    CAST(ind_frequenta_escola_memb AS string) AS frequenta_escola,
    CAST(nom_escola_memb AS string) AS escola,
    CAST(cod_escola_local_memb AS string) AS id_escola_localizada_municipio,
    CAST(sig_uf_escola_memb AS string) AS sigla_uf_escola,
    CAST(nom_munic_escola_memb AS string) AS municipio_escola,
    CAST(cod_ibge_munic_escola_memb AS string) AS id_municipio_escola,
    CAST(cod_censo_inep_memb AS string) AS id_inep_escola,
    CAST(ind_censo_inep_memb AS string) AS escola_nao_tem_inep,
    CAST(cod_curso_frequenta_memb AS string) AS id_curso_frequenta,
    CAST(cod_ano_serie_frequenta_memb AS string) AS id_ano_serie_frequenta,
    CAST(cod_curso_frequentou_pessoa_memb AS string) AS id_curso_mais_elevado_frequentou,
    CAST(cod_ano_serie_frequentou_memb AS string) AS id_ultimo_ano_serie_frequentou,
    CAST(cod_concluiu_frequentou_memb AS string) AS id_concluiu_curso_frequentado,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.07_0609_test`

