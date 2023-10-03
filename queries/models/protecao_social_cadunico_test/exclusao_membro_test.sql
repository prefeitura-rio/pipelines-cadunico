
SELECT
    CAST(chv_natural_prefeitura_exc_mbo AS string) AS id_prefeitura_membro_excluido,
    CAST(cod_familiar_exc_mbo AS string) AS id_familia_membro_excluido,
    CAST(num_membro_exc AS string) AS id_membro_excluido,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(data_exc_mbo AS date) AS data_exclusao_membro,
    CAST(cpf_oper_exc_mbo AS string) AS cpf_operador_exclusao_membro,
    CAST(motivo_exc_mbo AS string) AS motivo_exclusao_membro,
    CAST(num_pgmcu_mbo AS string) AS numero_parecer_gestao_municipal_cadunico_membro,
    CAST(dat_emi_pgmcu_mbo AS date) AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_servd_pbco_pgmcu_mbo AS string) AS servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(cpf_servd_pbco_pgmcu_pgmcu_mbo AS string) AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(uf_pgmcu_mbo AS string) AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CAST(mun_pgmcu_mbo AS string) AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_cartorio_certid_mbo_exc AS string) AS cartorio_certidao_obito_excluido,
    CAST(cod_livro_termo_certid_mbo_exc AS string) AS livro_certidao_obito_excluido,
    CAST(cod_folha_termo_certid_mbo_exc AS string) AS folha_ceritao_obito_excluido,
    CAST(cod_termo_matricula_certid_mbo_exc AS string) AS numero_termo_matricula_certidao_excluido,
    CAST(dta_emissao_certid_mbo_exc AS date) AS data_emissao_certidao_obito_excluido,
    CAST(sig_uf_certid_mbo_exc AS string) AS sigla_uf_certidao_obito_excluido,
    CAST(nom_munic_certid_mbo_exc AS string) AS municipio_certidao_obito_excluido,
    CAST(cod_ibge_munic_certid_mbo_exc AS string) AS id_municipio_certidao_obito_excluido,
    CAST(desc_mot_exc AS string) AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.exclusao_membro_test_0601_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_exc_mbo AS string) AS id_prefeitura_membro_excluido,
    CAST(cod_familiar_exc_mbo AS string) AS id_familia_membro_excluido,
    CAST(num_membro_exc AS string) AS id_membro_excluido,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(data_exc_mbo AS date) AS data_exclusao_membro,
    CAST(cpf_oper_exc_mbo AS string) AS cpf_operador_exclusao_membro,
    CAST(motivo_exc_mbo AS string) AS motivo_exclusao_membro,
    CAST(num_pgmcu_mbo AS string) AS numero_parecer_gestao_municipal_cadunico_membro,
    CAST(dat_emi_pgmcu_mbo AS date) AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_servd_pbco_pgmcu_mbo AS string) AS servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(cpf_servd_pbco_pgmcu_pgmcu_mbo AS string) AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(uf_pgmcu_mbo AS string) AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CAST(mun_pgmcu_mbo AS string) AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_cartorio_certid_mbo_exc AS string) AS cartorio_certidao_obito_excluido,
    CAST(cod_livro_termo_certid_mbo_exc AS string) AS livro_certidao_obito_excluido,
    CAST(cod_folha_termo_certid_mbo_exc AS string) AS folha_ceritao_obito_excluido,
    CAST(cod_termo_matricula_certid_mbo_exc AS string) AS numero_termo_matricula_certidao_excluido,
    CAST(dta_emissao_certid_mbo_exc AS date) AS data_emissao_certidao_obito_excluido,
    CAST(sig_uf_certid_mbo_exc AS string) AS sigla_uf_certidao_obito_excluido,
    CAST(nom_munic_certid_mbo_exc AS string) AS municipio_certidao_obito_excluido,
    CAST(cod_ibge_munic_certid_mbo_exc AS string) AS id_municipio_certidao_obito_excluido,
    CAST(desc_mot_exc AS string) AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.exclusao_membro_test_0604_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_exc_mbo AS string) AS id_prefeitura_membro_excluido,
    CAST(cod_familiar_exc_mbo AS string) AS id_familia_membro_excluido,
    CAST(num_membro_exc AS string) AS id_membro_excluido,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(data_exc_mbo AS date) AS data_exclusao_membro,
    CAST(cpf_oper_exc_mbo AS string) AS cpf_operador_exclusao_membro,
    CAST(motivo_exc_mbo AS string) AS motivo_exclusao_membro,
    CAST(num_pgmcu_mbo AS string) AS numero_parecer_gestao_municipal_cadunico_membro,
    CAST(dat_emi_pgmcu_mbo AS date) AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_servd_pbco_pgmcu_mbo AS string) AS servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(cpf_servd_pbco_pgmcu_pgmcu_mbo AS string) AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CAST(uf_pgmcu_mbo AS string) AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CAST(mun_pgmcu_mbo AS string) AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CAST(nom_cartorio_certid_mbo_exc AS string) AS cartorio_certidao_obito_excluido,
    CAST(cod_livro_termo_certid_mbo_exc AS string) AS livro_certidao_obito_excluido,
    CAST(cod_folha_termo_certid_mbo_exc AS string) AS folha_ceritao_obito_excluido,
    CAST(cod_termo_matricula_certid_mbo_exc AS string) AS numero_termo_matricula_certidao_excluido,
    CAST(dta_emissao_certid_mbo_exc AS date) AS data_emissao_certidao_obito_excluido,
    CAST(sig_uf_certid_mbo_exc AS string) AS sigla_uf_certidao_obito_excluido,
    CAST(nom_munic_certid_mbo_exc AS string) AS municipio_certidao_obito_excluido,
    CAST(cod_ibge_munic_certid_mbo_exc AS string) AS id_municipio_certidao_obito_excluido,
    CAST(desc_mot_exc AS string) AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.exclusao_membro_test_0609_test`

