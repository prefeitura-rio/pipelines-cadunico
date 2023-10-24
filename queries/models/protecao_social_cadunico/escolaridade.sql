
{{
    config(
        partition_by={
            "field": "data_particao",
            "data_type": "date",
            "granularity": "month",
        }
    )
}}


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_ano_serie_frequenta_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,168,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,168,2))  AS STRING)
    END AS id_ano_serie_frequenta,

    --column: cod_ano_serie_frequentou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,172,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,172,2))  AS STRING)
    END AS id_ultimo_ano_serie_frequentou,

    --column: cod_censo_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,157,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,157,8))  AS STRING)
    END AS id_inep_escola,

    --column: cod_concluiu_frequentou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,174,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,174,1))  AS STRING)
    END AS id_concluiu_curso_frequentado,

    --column: cod_curso_frequenta_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,166,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,166,2))  AS STRING)
    END AS id_curso_frequenta,

    --column: cod_curso_frequentou_pessoa_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,170,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,170,2))  AS STRING)
    END AS id_curso_mais_elevado_frequentou,

    --column: cod_escola_local_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,112,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,112,1))  AS STRING)
    END AS id_escola_localizada_municipio,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_ibge_munic_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,150,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,150,7))  AS STRING)
    END AS id_municipio_escola,

    --column: cod_sabe_ler_escrever_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_sabe_ler_escrever,

    --column: ind_censo_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,165,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,165,1))  AS STRING)
    END AS escola_nao_tem_inep,

    --column: ind_frequenta_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS frequenta_escola,

    --column: nom_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,70))  AS STRING)
    END AS escola,

    --column: nom_munic_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,115,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,115,35))  AS STRING)
    END AS municipio_escola,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: sig_uf_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,113,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,113,2))  AS STRING)
    END AS sigla_uf_escola,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '07'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_ano_serie_frequenta_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,168,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,168,2))  AS STRING)
    END AS id_ano_serie_frequenta,

    --column: cod_ano_serie_frequentou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,172,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,172,2))  AS STRING)
    END AS id_ultimo_ano_serie_frequentou,

    --column: cod_censo_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,157,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,157,8))  AS STRING)
    END AS id_inep_escola,

    --column: cod_concluiu_frequentou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,174,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,174,1))  AS STRING)
    END AS id_concluiu_curso_frequentado,

    --column: cod_curso_frequenta_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,166,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,166,2))  AS STRING)
    END AS id_curso_frequenta,

    --column: cod_curso_frequentou_pessoa_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,170,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,170,2))  AS STRING)
    END AS id_curso_mais_elevado_frequentou,

    --column: cod_escola_local_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,112,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,112,1))  AS STRING)
    END AS id_escola_localizada_municipio,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_ibge_munic_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,150,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,150,7))  AS STRING)
    END AS id_municipio_escola,

    --column: cod_sabe_ler_escrever_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_sabe_ler_escrever,

    --column: ind_censo_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,165,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,165,1))  AS STRING)
    END AS escola_nao_tem_inep,

    --column: ind_frequenta_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS frequenta_escola,

    --column: nom_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,70))  AS STRING)
    END AS escola,

    --column: nom_munic_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,115,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,115,35))  AS STRING)
    END AS municipio_escola,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: sig_uf_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,113,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,113,2))  AS STRING)
    END AS sigla_uf_escola,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '07'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_ano_serie_frequenta_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,168,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,168,2))  AS STRING)
    END AS id_ano_serie_frequenta,

    --column: cod_ano_serie_frequentou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,172,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,172,2))  AS STRING)
    END AS id_ultimo_ano_serie_frequentou,

    --column: cod_censo_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,157,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,157,8))  AS STRING)
    END AS id_inep_escola,

    --column: cod_concluiu_frequentou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,174,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,174,1))  AS STRING)
    END AS id_concluiu_curso_frequentado,

    --column: cod_curso_frequenta_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,166,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,166,2))  AS STRING)
    END AS id_curso_frequenta,

    --column: cod_curso_frequentou_pessoa_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,170,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,170,2))  AS STRING)
    END AS id_curso_mais_elevado_frequentou,

    --column: cod_escola_local_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,112,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,112,1))  AS STRING)
    END AS id_escola_localizada_municipio,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_ibge_munic_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,150,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,150,7))  AS STRING)
    END AS id_municipio_escola,

    --column: cod_sabe_ler_escrever_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_sabe_ler_escrever,

    --column: ind_censo_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,165,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,165,1))  AS STRING)
    END AS escola_nao_tem_inep,

    --column: ind_frequenta_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS frequenta_escola,

    --column: nom_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,70))  AS STRING)
    END AS escola,

    --column: nom_munic_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,115,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,115,35))  AS STRING)
    END AS municipio_escola,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: sig_uf_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,113,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,113,2))  AS STRING)
    END AS sigla_uf_escola,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '07'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_ano_serie_frequenta_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,168,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,168,2))  AS STRING)
    END AS id_ano_serie_frequenta,

    --column: cod_ano_serie_frequentou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,172,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,172,2))  AS STRING)
    END AS id_ultimo_ano_serie_frequentou,

    --column: cod_censo_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,157,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,157,8))  AS STRING)
    END AS id_inep_escola,

    --column: cod_concluiu_frequentou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,174,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,174,1))  AS STRING)
    END AS id_concluiu_curso_frequentado,

    --column: cod_curso_frequenta_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,166,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,166,2))  AS STRING)
    END AS id_curso_frequenta,

    --column: cod_curso_frequentou_pessoa_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,170,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,170,2))  AS STRING)
    END AS id_curso_mais_elevado_frequentou,

    --column: cod_escola_local_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,112,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,112,1))  AS STRING)
    END AS id_escola_localizada_municipio,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_ibge_munic_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,150,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,150,7))  AS STRING)
    END AS id_municipio_escola,

    --column: cod_sabe_ler_escrever_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_sabe_ler_escrever,

    --column: ind_censo_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,165,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,165,1))  AS STRING)
    END AS escola_nao_tem_inep,

    --column: ind_frequenta_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS frequenta_escola,

    --column: nom_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,70))  AS STRING)
    END AS escola,

    --column: nom_munic_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,115,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,115,35))  AS STRING)
    END AS municipio_escola,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: sig_uf_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,113,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,113,2))  AS STRING)
    END AS sigla_uf_escola,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '07'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_ano_serie_frequenta_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,168,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,168,2))  AS STRING)
    END AS id_ano_serie_frequenta,

    --column: cod_ano_serie_frequentou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,172,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,172,2))  AS STRING)
    END AS id_ultimo_ano_serie_frequentou,

    --column: cod_censo_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,157,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,157,8))  AS STRING)
    END AS id_inep_escola,

    --column: cod_concluiu_frequentou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,174,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,174,1))  AS STRING)
    END AS id_concluiu_curso_frequentado,

    --column: cod_curso_frequenta_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,166,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,166,2))  AS STRING)
    END AS id_curso_frequenta,

    --column: cod_curso_frequentou_pessoa_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,170,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,170,2))  AS STRING)
    END AS id_curso_mais_elevado_frequentou,

    --column: cod_escola_local_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,112,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,112,1))  AS STRING)
    END AS id_escola_localizada_municipio,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_ibge_munic_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,150,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,150,7))  AS STRING)
    END AS id_municipio_escola,

    --column: cod_sabe_ler_escrever_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_sabe_ler_escrever,

    --column: ind_censo_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,165,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,165,1))  AS STRING)
    END AS escola_nao_tem_inep,

    --column: ind_frequenta_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS frequenta_escola,

    --column: nom_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,70))  AS STRING)
    END AS escola,

    --column: nom_munic_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,115,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,115,35))  AS STRING)
    END AS municipio_escola,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: sig_uf_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,113,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,113,2))  AS STRING)
    END AS sigla_uf_escola,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '07'

UNION ALL


SELECT

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_ano_serie_frequenta_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,168,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,168,2))  AS STRING)
    END AS id_ano_serie_frequenta,

    --column: cod_ano_serie_frequentou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,172,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,172,2))  AS STRING)
    END AS id_ultimo_ano_serie_frequentou,

    --column: cod_censo_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,157,8), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,157,8))  AS STRING)
    END AS id_inep_escola,

    --column: cod_concluiu_frequentou_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,174,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,174,1))  AS STRING)
    END AS id_concluiu_curso_frequentado,

    --column: cod_curso_frequenta_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,166,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,166,2))  AS STRING)
    END AS id_curso_frequenta,

    --column: cod_curso_frequentou_pessoa_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,170,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,170,2))  AS STRING)
    END AS id_curso_mais_elevado_frequentou,

    --column: cod_escola_local_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,112,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,112,1))  AS STRING)
    END AS id_escola_localizada_municipio,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_ibge_munic_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,150,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,150,7))  AS STRING)
    END AS id_municipio_escola,

    --column: cod_sabe_ler_escrever_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,40,1))  AS STRING)
    END AS id_sabe_ler_escrever,

    --column: ind_censo_inep_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,165,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,165,1))  AS STRING)
    END AS escola_nao_tem_inep,

    --column: ind_frequenta_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,41,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,41,1))  AS STRING)
    END AS frequenta_escola,

    --column: nom_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,42,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,42,70))  AS STRING)
    END AS escola,

    --column: nom_munic_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,115,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,115,35))  AS STRING)
    END AS municipio_escola,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: sig_uf_escola_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,113,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,113,2))  AS STRING)
    END AS sigla_uf_escola,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '07'

