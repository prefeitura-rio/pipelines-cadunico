
SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam_exc)  AS STRING)
    END AS id_prefeitura_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam_exc)  AS STRING)
    END AS id_familia_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(data_exc, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(data_exc))  AS DATE)
    END AS data_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(cpf_oper_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cpf_oper_exc)  AS STRING)
    END AS cpf_operador_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(motivo_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(motivo_exc)  AS STRING)
    END AS motivo_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(num_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_pgmcu)  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(dat_emi_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_emi_pgmcu))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(nom_servd_pbco_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_servd_pbco_pgmcu)  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(cpf_servd_pbco_pgmcu_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cpf_servd_pbco_pgmcu_pgmcu)  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(uf_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(uf_pgmcu)  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(mun_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(mun_pgmcu)  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(desc_mot_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(desc_mot_exc)  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0601`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam_exc)  AS STRING)
    END AS id_prefeitura_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam_exc)  AS STRING)
    END AS id_familia_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(data_exc, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(data_exc))  AS DATE)
    END AS data_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(cpf_oper_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cpf_oper_exc)  AS STRING)
    END AS cpf_operador_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(motivo_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(motivo_exc)  AS STRING)
    END AS motivo_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(num_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_pgmcu)  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(dat_emi_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_emi_pgmcu))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(nom_servd_pbco_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_servd_pbco_pgmcu)  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(cpf_servd_pbco_pgmcu_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cpf_servd_pbco_pgmcu_pgmcu)  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(uf_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(uf_pgmcu)  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(mun_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(mun_pgmcu)  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(desc_mot_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(desc_mot_exc)  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0603`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam_exc)  AS STRING)
    END AS id_prefeitura_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam_exc)  AS STRING)
    END AS id_familia_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(data_exc, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(data_exc))  AS DATE)
    END AS data_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(cpf_oper_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cpf_oper_exc)  AS STRING)
    END AS cpf_operador_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(motivo_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(motivo_exc)  AS STRING)
    END AS motivo_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(num_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_pgmcu)  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(dat_emi_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_emi_pgmcu))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(nom_servd_pbco_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_servd_pbco_pgmcu)  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(cpf_servd_pbco_pgmcu_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cpf_servd_pbco_pgmcu_pgmcu)  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(uf_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(uf_pgmcu)  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(mun_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(mun_pgmcu)  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(desc_mot_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(desc_mot_exc)  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0604`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam_exc)  AS STRING)
    END AS id_prefeitura_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam_exc)  AS STRING)
    END AS id_familia_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(data_exc, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(data_exc))  AS DATE)
    END AS data_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(cpf_oper_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cpf_oper_exc)  AS STRING)
    END AS cpf_operador_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(motivo_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(motivo_exc)  AS STRING)
    END AS motivo_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(num_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_pgmcu)  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(dat_emi_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_emi_pgmcu))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(nom_servd_pbco_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_servd_pbco_pgmcu)  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(cpf_servd_pbco_pgmcu_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cpf_servd_pbco_pgmcu_pgmcu)  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(uf_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(uf_pgmcu)  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(mun_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(mun_pgmcu)  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(desc_mot_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(desc_mot_exc)  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0609`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam_exc)  AS STRING)
    END AS id_prefeitura_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam_exc)  AS STRING)
    END AS id_familia_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(data_exc, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(data_exc))  AS DATE)
    END AS data_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(cpf_oper_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cpf_oper_exc)  AS STRING)
    END AS cpf_operador_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(motivo_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(motivo_exc)  AS STRING)
    END AS motivo_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(num_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_pgmcu)  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(dat_emi_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_emi_pgmcu))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(nom_servd_pbco_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_servd_pbco_pgmcu)  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(cpf_servd_pbco_pgmcu_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cpf_servd_pbco_pgmcu_pgmcu)  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(uf_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(uf_pgmcu)  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(mun_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(mun_pgmcu)  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(desc_mot_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(desc_mot_exc)  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0612`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam_exc)  AS STRING)
    END AS id_prefeitura_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam_exc)  AS STRING)
    END AS id_familia_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(data_exc, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(data_exc))  AS DATE)
    END AS data_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(cpf_oper_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cpf_oper_exc)  AS STRING)
    END AS cpf_operador_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(motivo_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(motivo_exc)  AS STRING)
    END AS motivo_exclusao,
    CASE
        WHEN REGEXP_CONTAINS(num_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_pgmcu)  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(dat_emi_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dat_emi_pgmcu))  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(nom_servd_pbco_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_servd_pbco_pgmcu)  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(cpf_servd_pbco_pgmcu_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cpf_servd_pbco_pgmcu_pgmcu)  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(uf_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(uf_pgmcu)  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(mun_pgmcu, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(mun_pgmcu)  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico,
    CASE
        WHEN REGEXP_CONTAINS(desc_mot_exc, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(desc_mot_exc)  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0615`

