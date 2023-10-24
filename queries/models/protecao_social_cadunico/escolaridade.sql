
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
        WHEN REGEXP_CONTAINS(cod_sabe_ler_escrever_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_sabe_ler_escrever_memb)  AS STRING)
    END AS id_sabe_ler_escrever,
    CASE
        WHEN REGEXP_CONTAINS(ind_frequenta_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_frequenta_escola_memb)  AS STRING)
    END AS frequenta_escola,
    CASE
        WHEN REGEXP_CONTAINS(nom_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_escola_memb)  AS STRING)
    END AS escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_escola_local_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_escola_local_memb)  AS STRING)
    END AS id_escola_localizada_municipio,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_escola_memb)  AS STRING)
    END AS sigla_uf_escola,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_munic_escola_memb)  AS STRING)
    END AS municipio_escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_escola_memb)  AS STRING)
    END AS id_municipio_escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_censo_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_censo_inep_memb)  AS STRING)
    END AS id_inep_escola,
    CASE
        WHEN REGEXP_CONTAINS(ind_censo_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_censo_inep_memb)  AS STRING)
    END AS escola_nao_tem_inep,
    CASE
        WHEN REGEXP_CONTAINS(cod_curso_frequenta_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_curso_frequenta_memb)  AS STRING)
    END AS id_curso_frequenta,
    CASE
        WHEN REGEXP_CONTAINS(cod_ano_serie_frequenta_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ano_serie_frequenta_memb)  AS STRING)
    END AS id_ano_serie_frequenta,
    CASE
        WHEN REGEXP_CONTAINS(cod_curso_frequentou_pessoa_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_curso_frequentou_pessoa_memb)  AS STRING)
    END AS id_curso_mais_elevado_frequentou,
    CASE
        WHEN REGEXP_CONTAINS(cod_ano_serie_frequentou_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ano_serie_frequentou_memb)  AS STRING)
    END AS id_ultimo_ano_serie_frequentou,
    CASE
        WHEN REGEXP_CONTAINS(cod_concluiu_frequentou_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_concluiu_frequentou_memb)  AS STRING)
    END AS id_concluiu_curso_frequentado,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.escolaridade_0601`

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
        WHEN REGEXP_CONTAINS(cod_sabe_ler_escrever_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_sabe_ler_escrever_memb)  AS STRING)
    END AS id_sabe_ler_escrever,
    CASE
        WHEN REGEXP_CONTAINS(ind_frequenta_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_frequenta_escola_memb)  AS STRING)
    END AS frequenta_escola,
    CASE
        WHEN REGEXP_CONTAINS(nom_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_escola_memb)  AS STRING)
    END AS escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_escola_local_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_escola_local_memb)  AS STRING)
    END AS id_escola_localizada_municipio,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_escola_memb)  AS STRING)
    END AS sigla_uf_escola,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_munic_escola_memb)  AS STRING)
    END AS municipio_escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_escola_memb)  AS STRING)
    END AS id_municipio_escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_censo_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_censo_inep_memb)  AS STRING)
    END AS id_inep_escola,
    CASE
        WHEN REGEXP_CONTAINS(ind_censo_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_censo_inep_memb)  AS STRING)
    END AS escola_nao_tem_inep,
    CASE
        WHEN REGEXP_CONTAINS(cod_curso_frequenta_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_curso_frequenta_memb)  AS STRING)
    END AS id_curso_frequenta,
    CASE
        WHEN REGEXP_CONTAINS(cod_ano_serie_frequenta_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ano_serie_frequenta_memb)  AS STRING)
    END AS id_ano_serie_frequenta,
    CASE
        WHEN REGEXP_CONTAINS(cod_curso_frequentou_pessoa_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_curso_frequentou_pessoa_memb)  AS STRING)
    END AS id_curso_mais_elevado_frequentou,
    CASE
        WHEN REGEXP_CONTAINS(cod_ano_serie_frequentou_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ano_serie_frequentou_memb)  AS STRING)
    END AS id_ultimo_ano_serie_frequentou,
    CASE
        WHEN REGEXP_CONTAINS(cod_concluiu_frequentou_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_concluiu_frequentou_memb)  AS STRING)
    END AS id_concluiu_curso_frequentado,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.escolaridade_0603`

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
        WHEN REGEXP_CONTAINS(cod_sabe_ler_escrever_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_sabe_ler_escrever_memb)  AS STRING)
    END AS id_sabe_ler_escrever,
    CASE
        WHEN REGEXP_CONTAINS(ind_frequenta_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_frequenta_escola_memb)  AS STRING)
    END AS frequenta_escola,
    CASE
        WHEN REGEXP_CONTAINS(nom_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_escola_memb)  AS STRING)
    END AS escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_escola_local_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_escola_local_memb)  AS STRING)
    END AS id_escola_localizada_municipio,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_escola_memb)  AS STRING)
    END AS sigla_uf_escola,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_munic_escola_memb)  AS STRING)
    END AS municipio_escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_escola_memb)  AS STRING)
    END AS id_municipio_escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_censo_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_censo_inep_memb)  AS STRING)
    END AS id_inep_escola,
    CASE
        WHEN REGEXP_CONTAINS(ind_censo_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_censo_inep_memb)  AS STRING)
    END AS escola_nao_tem_inep,
    CASE
        WHEN REGEXP_CONTAINS(cod_curso_frequenta_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_curso_frequenta_memb)  AS STRING)
    END AS id_curso_frequenta,
    CASE
        WHEN REGEXP_CONTAINS(cod_ano_serie_frequenta_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ano_serie_frequenta_memb)  AS STRING)
    END AS id_ano_serie_frequenta,
    CASE
        WHEN REGEXP_CONTAINS(cod_curso_frequentou_pessoa_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_curso_frequentou_pessoa_memb)  AS STRING)
    END AS id_curso_mais_elevado_frequentou,
    CASE
        WHEN REGEXP_CONTAINS(cod_ano_serie_frequentou_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ano_serie_frequentou_memb)  AS STRING)
    END AS id_ultimo_ano_serie_frequentou,
    CASE
        WHEN REGEXP_CONTAINS(cod_concluiu_frequentou_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_concluiu_frequentou_memb)  AS STRING)
    END AS id_concluiu_curso_frequentado,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.escolaridade_0604`

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
        WHEN REGEXP_CONTAINS(cod_sabe_ler_escrever_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_sabe_ler_escrever_memb)  AS STRING)
    END AS id_sabe_ler_escrever,
    CASE
        WHEN REGEXP_CONTAINS(ind_frequenta_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_frequenta_escola_memb)  AS STRING)
    END AS frequenta_escola,
    CASE
        WHEN REGEXP_CONTAINS(nom_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_escola_memb)  AS STRING)
    END AS escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_escola_local_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_escola_local_memb)  AS STRING)
    END AS id_escola_localizada_municipio,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_escola_memb)  AS STRING)
    END AS sigla_uf_escola,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_munic_escola_memb)  AS STRING)
    END AS municipio_escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_escola_memb)  AS STRING)
    END AS id_municipio_escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_censo_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_censo_inep_memb)  AS STRING)
    END AS id_inep_escola,
    CASE
        WHEN REGEXP_CONTAINS(ind_censo_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_censo_inep_memb)  AS STRING)
    END AS escola_nao_tem_inep,
    CASE
        WHEN REGEXP_CONTAINS(cod_curso_frequenta_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_curso_frequenta_memb)  AS STRING)
    END AS id_curso_frequenta,
    CASE
        WHEN REGEXP_CONTAINS(cod_ano_serie_frequenta_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ano_serie_frequenta_memb)  AS STRING)
    END AS id_ano_serie_frequenta,
    CASE
        WHEN REGEXP_CONTAINS(cod_curso_frequentou_pessoa_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_curso_frequentou_pessoa_memb)  AS STRING)
    END AS id_curso_mais_elevado_frequentou,
    CASE
        WHEN REGEXP_CONTAINS(cod_ano_serie_frequentou_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ano_serie_frequentou_memb)  AS STRING)
    END AS id_ultimo_ano_serie_frequentou,
    CASE
        WHEN REGEXP_CONTAINS(cod_concluiu_frequentou_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_concluiu_frequentou_memb)  AS STRING)
    END AS id_concluiu_curso_frequentado,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.escolaridade_0609`

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
        WHEN REGEXP_CONTAINS(cod_sabe_ler_escrever_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_sabe_ler_escrever_memb)  AS STRING)
    END AS id_sabe_ler_escrever,
    CASE
        WHEN REGEXP_CONTAINS(ind_frequenta_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_frequenta_escola_memb)  AS STRING)
    END AS frequenta_escola,
    CASE
        WHEN REGEXP_CONTAINS(nom_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_escola_memb)  AS STRING)
    END AS escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_escola_local_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_escola_local_memb)  AS STRING)
    END AS id_escola_localizada_municipio,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_escola_memb)  AS STRING)
    END AS sigla_uf_escola,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_munic_escola_memb)  AS STRING)
    END AS municipio_escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_escola_memb)  AS STRING)
    END AS id_municipio_escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_censo_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_censo_inep_memb)  AS STRING)
    END AS id_inep_escola,
    CASE
        WHEN REGEXP_CONTAINS(ind_censo_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_censo_inep_memb)  AS STRING)
    END AS escola_nao_tem_inep,
    CASE
        WHEN REGEXP_CONTAINS(cod_curso_frequenta_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_curso_frequenta_memb)  AS STRING)
    END AS id_curso_frequenta,
    CASE
        WHEN REGEXP_CONTAINS(cod_ano_serie_frequenta_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ano_serie_frequenta_memb)  AS STRING)
    END AS id_ano_serie_frequenta,
    CASE
        WHEN REGEXP_CONTAINS(cod_curso_frequentou_pessoa_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_curso_frequentou_pessoa_memb)  AS STRING)
    END AS id_curso_mais_elevado_frequentou,
    CASE
        WHEN REGEXP_CONTAINS(cod_ano_serie_frequentou_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ano_serie_frequentou_memb)  AS STRING)
    END AS id_ultimo_ano_serie_frequentou,
    CASE
        WHEN REGEXP_CONTAINS(cod_concluiu_frequentou_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_concluiu_frequentou_memb)  AS STRING)
    END AS id_concluiu_curso_frequentado,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.escolaridade_0612`

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
        WHEN REGEXP_CONTAINS(cod_sabe_ler_escrever_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_sabe_ler_escrever_memb)  AS STRING)
    END AS id_sabe_ler_escrever,
    CASE
        WHEN REGEXP_CONTAINS(ind_frequenta_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_frequenta_escola_memb)  AS STRING)
    END AS frequenta_escola,
    CASE
        WHEN REGEXP_CONTAINS(nom_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_escola_memb)  AS STRING)
    END AS escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_escola_local_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_escola_local_memb)  AS STRING)
    END AS id_escola_localizada_municipio,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_escola_memb)  AS STRING)
    END AS sigla_uf_escola,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_munic_escola_memb)  AS STRING)
    END AS municipio_escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_escola_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_escola_memb)  AS STRING)
    END AS id_municipio_escola,
    CASE
        WHEN REGEXP_CONTAINS(cod_censo_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_censo_inep_memb)  AS STRING)
    END AS id_inep_escola,
    CASE
        WHEN REGEXP_CONTAINS(ind_censo_inep_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_censo_inep_memb)  AS STRING)
    END AS escola_nao_tem_inep,
    CASE
        WHEN REGEXP_CONTAINS(cod_curso_frequenta_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_curso_frequenta_memb)  AS STRING)
    END AS id_curso_frequenta,
    CASE
        WHEN REGEXP_CONTAINS(cod_ano_serie_frequenta_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ano_serie_frequenta_memb)  AS STRING)
    END AS id_ano_serie_frequenta,
    CASE
        WHEN REGEXP_CONTAINS(cod_curso_frequentou_pessoa_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_curso_frequentou_pessoa_memb)  AS STRING)
    END AS id_curso_mais_elevado_frequentou,
    CASE
        WHEN REGEXP_CONTAINS(cod_ano_serie_frequentou_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ano_serie_frequentou_memb)  AS STRING)
    END AS id_ultimo_ano_serie_frequentou,
    CASE
        WHEN REGEXP_CONTAINS(cod_concluiu_frequentou_memb, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_concluiu_frequentou_memb)  AS STRING)
    END AS id_concluiu_curso_frequentado,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.escolaridade_0615`

