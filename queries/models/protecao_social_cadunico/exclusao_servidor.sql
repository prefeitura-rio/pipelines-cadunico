
SELECT
    CAST(chv_natural_prefeitura_fam_exc AS STRING) AS id_prefeitura_exclusao,
    CAST(cod_familiar_fam_exc AS STRING) AS id_familia_exclusao,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(PARSE_DATE('%d%m%Y', data_exc) AS DATE) AS data_exclusao,
    CAST(cpf_oper_exc AS STRING) AS cpf_operador_exclusao,
    CAST(motivo_exc AS STRING) AS motivo_exclusao,
    CAST(num_pgmcu AS STRING) AS numero_parecer_gestao_municipal_cadunico,
    CAST(PARSE_DATE('%d%m%Y', dat_emi_pgmcu) AS DATE) AS data_emissao_parecer_gestao_municipal_cadunico,
    CAST(nom_servd_pbco_pgmcu AS STRING) AS servidor_parecer_gestao_municipal_cadunico,
    CAST(cpf_servd_pbco_pgmcu_pgmcu AS STRING) AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CAST(uf_pgmcu AS STRING) AS sigla_uf_parecer_gestao_municipal_cadunico,
    CAST(mun_pgmcu AS STRING) AS id_municipio_parecer_gestao_municipal_cadunico,
    CAST(desc_mot_exc AS STRING) AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0601`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam_exc AS STRING) AS id_prefeitura_exclusao,
    CAST(cod_familiar_fam_exc AS STRING) AS id_familia_exclusao,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(PARSE_DATE('%d%m%Y', data_exc) AS DATE) AS data_exclusao,
    CAST(cpf_oper_exc AS STRING) AS cpf_operador_exclusao,
    CAST(motivo_exc AS STRING) AS motivo_exclusao,
    CAST(num_pgmcu AS STRING) AS numero_parecer_gestao_municipal_cadunico,
    CAST(PARSE_DATE('%d%m%Y', dat_emi_pgmcu) AS DATE) AS data_emissao_parecer_gestao_municipal_cadunico,
    CAST(nom_servd_pbco_pgmcu AS STRING) AS servidor_parecer_gestao_municipal_cadunico,
    CAST(cpf_servd_pbco_pgmcu_pgmcu AS STRING) AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CAST(uf_pgmcu AS STRING) AS sigla_uf_parecer_gestao_municipal_cadunico,
    CAST(mun_pgmcu AS STRING) AS id_municipio_parecer_gestao_municipal_cadunico,
    CAST(desc_mot_exc AS STRING) AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0603`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam_exc AS STRING) AS id_prefeitura_exclusao,
    CAST(cod_familiar_fam_exc AS STRING) AS id_familia_exclusao,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(PARSE_DATE('%d%m%Y', data_exc) AS DATE) AS data_exclusao,
    CAST(cpf_oper_exc AS STRING) AS cpf_operador_exclusao,
    CAST(motivo_exc AS STRING) AS motivo_exclusao,
    CAST(num_pgmcu AS STRING) AS numero_parecer_gestao_municipal_cadunico,
    CAST(PARSE_DATE('%d%m%Y', dat_emi_pgmcu) AS DATE) AS data_emissao_parecer_gestao_municipal_cadunico,
    CAST(nom_servd_pbco_pgmcu AS STRING) AS servidor_parecer_gestao_municipal_cadunico,
    CAST(cpf_servd_pbco_pgmcu_pgmcu AS STRING) AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CAST(uf_pgmcu AS STRING) AS sigla_uf_parecer_gestao_municipal_cadunico,
    CAST(mun_pgmcu AS STRING) AS id_municipio_parecer_gestao_municipal_cadunico,
    CAST(desc_mot_exc AS STRING) AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0604`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam_exc AS STRING) AS id_prefeitura_exclusao,
    CAST(cod_familiar_fam_exc AS STRING) AS id_familia_exclusao,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(PARSE_DATE('%d%m%Y', data_exc) AS DATE) AS data_exclusao,
    CAST(cpf_oper_exc AS STRING) AS cpf_operador_exclusao,
    CAST(motivo_exc AS STRING) AS motivo_exclusao,
    CAST(num_pgmcu AS STRING) AS numero_parecer_gestao_municipal_cadunico,
    CAST(PARSE_DATE('%d%m%Y', dat_emi_pgmcu) AS DATE) AS data_emissao_parecer_gestao_municipal_cadunico,
    CAST(nom_servd_pbco_pgmcu AS STRING) AS servidor_parecer_gestao_municipal_cadunico,
    CAST(cpf_servd_pbco_pgmcu_pgmcu AS STRING) AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CAST(uf_pgmcu AS STRING) AS sigla_uf_parecer_gestao_municipal_cadunico,
    CAST(mun_pgmcu AS STRING) AS id_municipio_parecer_gestao_municipal_cadunico,
    CAST(desc_mot_exc AS STRING) AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0609`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam_exc AS STRING) AS id_prefeitura_exclusao,
    CAST(cod_familiar_fam_exc AS STRING) AS id_familia_exclusao,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(PARSE_DATE('%d%m%Y', data_exc) AS DATE) AS data_exclusao,
    CAST(cpf_oper_exc AS STRING) AS cpf_operador_exclusao,
    CAST(motivo_exc AS STRING) AS motivo_exclusao,
    CAST(num_pgmcu AS STRING) AS numero_parecer_gestao_municipal_cadunico,
    CAST(PARSE_DATE('%d%m%Y', dat_emi_pgmcu) AS DATE) AS data_emissao_parecer_gestao_municipal_cadunico,
    CAST(nom_servd_pbco_pgmcu AS STRING) AS servidor_parecer_gestao_municipal_cadunico,
    CAST(cpf_servd_pbco_pgmcu_pgmcu AS STRING) AS cpf_servidor_parecer_gestao_municipal_cadunico,
    CAST(uf_pgmcu AS STRING) AS sigla_uf_parecer_gestao_municipal_cadunico,
    CAST(mun_pgmcu AS STRING) AS id_municipio_parecer_gestao_municipal_cadunico,
    CAST(desc_mot_exc AS STRING) AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_servidor_0612`

