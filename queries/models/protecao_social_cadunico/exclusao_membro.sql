
SELECT
    CAST(chv_natural_prefeitura_exc_mbo AS STRING) AS id_prefeitura_membro_excluido,
    CAST(cod_familiar_exc_mbo AS STRING) AS id_familia_membro_excluido,
    CAST(num_membro_exc AS STRING) AS id_membro_excluido,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(PARSE_DATE('%d%m%Y', data_exc_mbo) AS DATE) AS data_exclusao_membro,
    CAST(cpf_oper_exc_mbo AS STRING) AS cpf_operador_exclusao_membro,
    CAST(motivo_exc_mbo AS STRING) AS motivo_exclusao_membro,
    CAST(num_pgmcu_mbo AS STRING) AS numero_parecer_gestao_municipal_cadunico_membro,
    CAST(PARSE_DATE('%d%m%Y', dat_emi_pgmcu_mbo) AS DATE) AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_servd_pbco_pgmcu_mbo AS STRING) AS servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(cpf_servd_pbco_pgmcu_pgmcu_mbo AS STRING) AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(uf_pgmcu_mbo AS STRING) AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CAST(mun_pgmcu_mbo AS STRING) AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_cartorio_certid_mbo_exc AS STRING) AS cartorio_certidao_obito_excluido,
    CAST(cod_livro_termo_certid_mbo_exc AS STRING) AS livro_certidao_obito_excluido,
    CAST(cod_folha_termo_certid_mbo_exc AS STRING) AS folha_ceritao_obito_excluido,
    CAST(cod_termo_matricula_certid_mbo_exc AS STRING) AS numero_termo_matricula_certidao_excluido,
    CAST(PARSE_DATE('%d%m%Y', dta_emissao_certid_mbo_exc) AS DATE) AS data_emissao_certidao_obito_excluido,
    CAST(sig_uf_certid_mbo_exc AS STRING) AS sigla_uf_certidao_obito_excluido,
    CAST(nom_munic_certid_mbo_exc AS STRING) AS municipio_certidao_obito_excluido,
    CAST(cod_ibge_munic_certid_mbo_exc AS STRING) AS id_municipio_certidao_obito_excluido,
    CAST(desc_mot_exc AS STRING) AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0601`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_exc_mbo AS STRING) AS id_prefeitura_membro_excluido,
    CAST(cod_familiar_exc_mbo AS STRING) AS id_familia_membro_excluido,
    CAST(num_membro_exc AS STRING) AS id_membro_excluido,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(PARSE_DATE('%d%m%Y', data_exc_mbo) AS DATE) AS data_exclusao_membro,
    CAST(cpf_oper_exc_mbo AS STRING) AS cpf_operador_exclusao_membro,
    CAST(motivo_exc_mbo AS STRING) AS motivo_exclusao_membro,
    CAST(num_pgmcu_mbo AS STRING) AS numero_parecer_gestao_municipal_cadunico_membro,
    CAST(PARSE_DATE('%d%m%Y', dat_emi_pgmcu_mbo) AS DATE) AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_servd_pbco_pgmcu_mbo AS STRING) AS servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(cpf_servd_pbco_pgmcu_pgmcu_mbo AS STRING) AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(uf_pgmcu_mbo AS STRING) AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CAST(mun_pgmcu_mbo AS STRING) AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_cartorio_certid_mbo_exc AS STRING) AS cartorio_certidao_obito_excluido,
    CAST(cod_livro_termo_certid_mbo_exc AS STRING) AS livro_certidao_obito_excluido,
    CAST(cod_folha_termo_certid_mbo_exc AS STRING) AS folha_ceritao_obito_excluido,
    CAST(cod_termo_matricula_certid_mbo_exc AS STRING) AS numero_termo_matricula_certidao_excluido,
    CAST(PARSE_DATE('%d%m%Y', dta_emissao_certid_mbo_exc) AS DATE) AS data_emissao_certidao_obito_excluido,
    CAST(sig_uf_certid_mbo_exc AS STRING) AS sigla_uf_certidao_obito_excluido,
    CAST(nom_munic_certid_mbo_exc AS STRING) AS municipio_certidao_obito_excluido,
    CAST(cod_ibge_munic_certid_mbo_exc AS STRING) AS id_municipio_certidao_obito_excluido,
    CAST(desc_mot_exc AS STRING) AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0603`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_exc_mbo AS STRING) AS id_prefeitura_membro_excluido,
    CAST(cod_familiar_exc_mbo AS STRING) AS id_familia_membro_excluido,
    CAST(num_membro_exc AS STRING) AS id_membro_excluido,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(PARSE_DATE('%d%m%Y', data_exc_mbo) AS DATE) AS data_exclusao_membro,
    CAST(cpf_oper_exc_mbo AS STRING) AS cpf_operador_exclusao_membro,
    CAST(motivo_exc_mbo AS STRING) AS motivo_exclusao_membro,
    CAST(num_pgmcu_mbo AS STRING) AS numero_parecer_gestao_municipal_cadunico_membro,
    CAST(PARSE_DATE('%d%m%Y', dat_emi_pgmcu_mbo) AS DATE) AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_servd_pbco_pgmcu_mbo AS STRING) AS servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(cpf_servd_pbco_pgmcu_pgmcu_mbo AS STRING) AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(uf_pgmcu_mbo AS STRING) AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CAST(mun_pgmcu_mbo AS STRING) AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_cartorio_certid_mbo_exc AS STRING) AS cartorio_certidao_obito_excluido,
    CAST(cod_livro_termo_certid_mbo_exc AS STRING) AS livro_certidao_obito_excluido,
    CAST(cod_folha_termo_certid_mbo_exc AS STRING) AS folha_ceritao_obito_excluido,
    CAST(cod_termo_matricula_certid_mbo_exc AS STRING) AS numero_termo_matricula_certidao_excluido,
    CAST(PARSE_DATE('%d%m%Y', dta_emissao_certid_mbo_exc) AS DATE) AS data_emissao_certidao_obito_excluido,
    CAST(sig_uf_certid_mbo_exc AS STRING) AS sigla_uf_certidao_obito_excluido,
    CAST(nom_munic_certid_mbo_exc AS STRING) AS municipio_certidao_obito_excluido,
    CAST(cod_ibge_munic_certid_mbo_exc AS STRING) AS id_municipio_certidao_obito_excluido,
    CAST(desc_mot_exc AS STRING) AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0604`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_exc_mbo AS STRING) AS id_prefeitura_membro_excluido,
    CAST(cod_familiar_exc_mbo AS STRING) AS id_familia_membro_excluido,
    CAST(num_membro_exc AS STRING) AS id_membro_excluido,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(PARSE_DATE('%d%m%Y', data_exc_mbo) AS DATE) AS data_exclusao_membro,
    CAST(cpf_oper_exc_mbo AS STRING) AS cpf_operador_exclusao_membro,
    CAST(motivo_exc_mbo AS STRING) AS motivo_exclusao_membro,
    CAST(num_pgmcu_mbo AS STRING) AS numero_parecer_gestao_municipal_cadunico_membro,
    CAST(PARSE_DATE('%d%m%Y', dat_emi_pgmcu_mbo) AS DATE) AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_servd_pbco_pgmcu_mbo AS STRING) AS servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(cpf_servd_pbco_pgmcu_pgmcu_mbo AS STRING) AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(uf_pgmcu_mbo AS STRING) AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CAST(mun_pgmcu_mbo AS STRING) AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_cartorio_certid_mbo_exc AS STRING) AS cartorio_certidao_obito_excluido,
    CAST(cod_livro_termo_certid_mbo_exc AS STRING) AS livro_certidao_obito_excluido,
    CAST(cod_folha_termo_certid_mbo_exc AS STRING) AS folha_ceritao_obito_excluido,
    CAST(cod_termo_matricula_certid_mbo_exc AS STRING) AS numero_termo_matricula_certidao_excluido,
    CAST(PARSE_DATE('%d%m%Y', dta_emissao_certid_mbo_exc) AS DATE) AS data_emissao_certidao_obito_excluido,
    CAST(sig_uf_certid_mbo_exc AS STRING) AS sigla_uf_certidao_obito_excluido,
    CAST(nom_munic_certid_mbo_exc AS STRING) AS municipio_certidao_obito_excluido,
    CAST(cod_ibge_munic_certid_mbo_exc AS STRING) AS id_municipio_certidao_obito_excluido,
    CAST(desc_mot_exc AS STRING) AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0609`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_exc_mbo AS STRING) AS id_prefeitura_membro_excluido,
    CAST(cod_familiar_exc_mbo AS STRING) AS id_familia_membro_excluido,
    CAST(num_membro_exc AS STRING) AS id_membro_excluido,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(PARSE_DATE('%d%m%Y', data_exc_mbo) AS DATE) AS data_exclusao_membro,
    CAST(cpf_oper_exc_mbo AS STRING) AS cpf_operador_exclusao_membro,
    CAST(motivo_exc_mbo AS STRING) AS motivo_exclusao_membro,
    CAST(num_pgmcu_mbo AS STRING) AS numero_parecer_gestao_municipal_cadunico_membro,
    CAST(PARSE_DATE('%d%m%Y', dat_emi_pgmcu_mbo) AS DATE) AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_servd_pbco_pgmcu_mbo AS STRING) AS servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(cpf_servd_pbco_pgmcu_pgmcu_mbo AS STRING) AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(uf_pgmcu_mbo AS STRING) AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CAST(mun_pgmcu_mbo AS STRING) AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_cartorio_certid_mbo_exc AS STRING) AS cartorio_certidao_obito_excluido,
    CAST(cod_livro_termo_certid_mbo_exc AS STRING) AS livro_certidao_obito_excluido,
    CAST(cod_folha_termo_certid_mbo_exc AS STRING) AS folha_ceritao_obito_excluido,
    CAST(cod_termo_matricula_certid_mbo_exc AS STRING) AS numero_termo_matricula_certidao_excluido,
    CAST(PARSE_DATE('%d%m%Y', dta_emissao_certid_mbo_exc) AS DATE) AS data_emissao_certidao_obito_excluido,
    CAST(sig_uf_certid_mbo_exc AS STRING) AS sigla_uf_certidao_obito_excluido,
    CAST(nom_munic_certid_mbo_exc AS STRING) AS municipio_certidao_obito_excluido,
    CAST(cod_ibge_munic_certid_mbo_exc AS STRING) AS id_municipio_certidao_obito_excluido,
    CAST(desc_mot_exc AS STRING) AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0612`

