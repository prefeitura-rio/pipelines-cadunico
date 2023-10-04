
SELECT
    CAST(chv_natural_prefeitura_fam_exc AS string) AS id_prefeitura_exclusao,
    CAST(cod_familiar_fam_exc AS string) AS id_familia_exclusao,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(data_exc AS date) AS data_exclusao,
    CAST(cpf_oper_exc AS string) AS cpf_operador_exclusao,
    CAST(motivo_exc AS string) AS motivo_exclusao,
    CAST(num_pgmcu AS string) AS numero_parecer_gestao_municipal_cadunico,
    CAST(dat_emi_pgmcu AS date) AS data_emissao_parecer_gestao_municipal_cadunico,
    CAST(nom_servd_pbco_pgmcu AS string) AS servidor_parecer_gestao_municipal_cadunico,
    CAST(cpf_servd_pbco_pgmcu_pgmcu AS string) AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CAST(uf_pgmcu AS string) AS sigla_uf_parecer_gestao_municipal_cadunico,
    CAST(mun_pgmcu AS string) AS id_municipio_parecer_gestao_municipal_cadunico,
    CAST(desc_mot_exc AS string) AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.exclusao_servidor_test_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam_exc AS string) AS id_prefeitura_exclusao,
    CAST(cod_familiar_fam_exc AS string) AS id_familia_exclusao,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(data_exc AS date) AS data_exclusao,
    CAST(cpf_oper_exc AS string) AS cpf_operador_exclusao,
    CAST(motivo_exc AS string) AS motivo_exclusao,
    CAST(num_pgmcu AS string) AS numero_parecer_gestao_municipal_cadunico,
    CAST(dat_emi_pgmcu AS date) AS data_emissao_parecer_gestao_municipal_cadunico,
    CAST(nom_servd_pbco_pgmcu AS string) AS servidor_parecer_gestao_municipal_cadunico,
    CAST(cpf_servd_pbco_pgmcu_pgmcu AS string) AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CAST(uf_pgmcu AS string) AS sigla_uf_parecer_gestao_municipal_cadunico,
    CAST(mun_pgmcu AS string) AS id_municipio_parecer_gestao_municipal_cadunico,
    CAST(desc_mot_exc AS string) AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.exclusao_servidor_test_0609_test`

