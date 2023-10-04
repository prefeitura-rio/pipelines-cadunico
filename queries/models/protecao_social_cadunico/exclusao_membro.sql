
SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_exc_mbo  AS STRING)
    END AS id_prefeitura_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_exc_mbo  AS STRING)
    END AS id_familia_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_exc, r'^\s*$') THEN NULL
        ELSE CAST( num_membro_exc  AS STRING)
    END AS id_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(data_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', data_exc_mbo)  AS DATE)
    END AS data_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(cpf_oper_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( cpf_oper_exc_mbo  AS STRING)
    END AS cpf_operador_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(motivo_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( motivo_exc_mbo  AS STRING)
    END AS motivo_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(num_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( num_pgmcu_mbo  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(dat_emi_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dat_emi_pgmcu_mbo)  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_servd_pbco_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( nom_servd_pbco_pgmcu_mbo  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(cpf_servd_pbco_pgmcu_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( cpf_servd_pbco_pgmcu_pgmcu_mbo  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(uf_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( uf_pgmcu_mbo  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(mun_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( mun_pgmcu_mbo  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_cartorio_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( nom_cartorio_certid_mbo_exc  AS STRING)
    END AS cartorio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_livro_termo_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_livro_termo_certid_mbo_exc  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_folha_termo_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_folha_termo_certid_mbo_exc  AS STRING)
    END AS folha_ceritao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_termo_matricula_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_termo_matricula_certid_mbo_exc  AS STRING)
    END AS numero_termo_matricula_certidao_excluido,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_emissao_certid_mbo_exc)  AS DATE)
    END AS data_emissao_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( sig_uf_certid_mbo_exc  AS STRING)
    END AS sigla_uf_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( nom_munic_certid_mbo_exc  AS STRING)
    END AS municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_ibge_munic_certid_mbo_exc  AS STRING)
    END AS id_municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(desc_mot_exc, r'^\s*$') THEN NULL
        ELSE CAST( desc_mot_exc  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0601`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_exc_mbo  AS STRING)
    END AS id_prefeitura_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_exc_mbo  AS STRING)
    END AS id_familia_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_exc, r'^\s*$') THEN NULL
        ELSE CAST( num_membro_exc  AS STRING)
    END AS id_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(data_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', data_exc_mbo)  AS DATE)
    END AS data_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(cpf_oper_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( cpf_oper_exc_mbo  AS STRING)
    END AS cpf_operador_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(motivo_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( motivo_exc_mbo  AS STRING)
    END AS motivo_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(num_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( num_pgmcu_mbo  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(dat_emi_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dat_emi_pgmcu_mbo)  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_servd_pbco_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( nom_servd_pbco_pgmcu_mbo  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(cpf_servd_pbco_pgmcu_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( cpf_servd_pbco_pgmcu_pgmcu_mbo  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(uf_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( uf_pgmcu_mbo  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(mun_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( mun_pgmcu_mbo  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_cartorio_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( nom_cartorio_certid_mbo_exc  AS STRING)
    END AS cartorio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_livro_termo_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_livro_termo_certid_mbo_exc  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_folha_termo_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_folha_termo_certid_mbo_exc  AS STRING)
    END AS folha_ceritao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_termo_matricula_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_termo_matricula_certid_mbo_exc  AS STRING)
    END AS numero_termo_matricula_certidao_excluido,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_emissao_certid_mbo_exc)  AS DATE)
    END AS data_emissao_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( sig_uf_certid_mbo_exc  AS STRING)
    END AS sigla_uf_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( nom_munic_certid_mbo_exc  AS STRING)
    END AS municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_ibge_munic_certid_mbo_exc  AS STRING)
    END AS id_municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(desc_mot_exc, r'^\s*$') THEN NULL
        ELSE CAST( desc_mot_exc  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0603`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_exc_mbo  AS STRING)
    END AS id_prefeitura_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_exc_mbo  AS STRING)
    END AS id_familia_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_exc, r'^\s*$') THEN NULL
        ELSE CAST( num_membro_exc  AS STRING)
    END AS id_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(data_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', data_exc_mbo)  AS DATE)
    END AS data_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(cpf_oper_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( cpf_oper_exc_mbo  AS STRING)
    END AS cpf_operador_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(motivo_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( motivo_exc_mbo  AS STRING)
    END AS motivo_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(num_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( num_pgmcu_mbo  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(dat_emi_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dat_emi_pgmcu_mbo)  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_servd_pbco_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( nom_servd_pbco_pgmcu_mbo  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(cpf_servd_pbco_pgmcu_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( cpf_servd_pbco_pgmcu_pgmcu_mbo  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(uf_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( uf_pgmcu_mbo  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(mun_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( mun_pgmcu_mbo  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_cartorio_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( nom_cartorio_certid_mbo_exc  AS STRING)
    END AS cartorio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_livro_termo_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_livro_termo_certid_mbo_exc  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_folha_termo_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_folha_termo_certid_mbo_exc  AS STRING)
    END AS folha_ceritao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_termo_matricula_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_termo_matricula_certid_mbo_exc  AS STRING)
    END AS numero_termo_matricula_certidao_excluido,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_emissao_certid_mbo_exc)  AS DATE)
    END AS data_emissao_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( sig_uf_certid_mbo_exc  AS STRING)
    END AS sigla_uf_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( nom_munic_certid_mbo_exc  AS STRING)
    END AS municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_ibge_munic_certid_mbo_exc  AS STRING)
    END AS id_municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(desc_mot_exc, r'^\s*$') THEN NULL
        ELSE CAST( desc_mot_exc  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0604`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_exc_mbo  AS STRING)
    END AS id_prefeitura_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_exc_mbo  AS STRING)
    END AS id_familia_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_exc, r'^\s*$') THEN NULL
        ELSE CAST( num_membro_exc  AS STRING)
    END AS id_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(data_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', data_exc_mbo)  AS DATE)
    END AS data_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(cpf_oper_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( cpf_oper_exc_mbo  AS STRING)
    END AS cpf_operador_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(motivo_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( motivo_exc_mbo  AS STRING)
    END AS motivo_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(num_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( num_pgmcu_mbo  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(dat_emi_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dat_emi_pgmcu_mbo)  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_servd_pbco_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( nom_servd_pbco_pgmcu_mbo  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(cpf_servd_pbco_pgmcu_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( cpf_servd_pbco_pgmcu_pgmcu_mbo  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(uf_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( uf_pgmcu_mbo  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(mun_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( mun_pgmcu_mbo  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_cartorio_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( nom_cartorio_certid_mbo_exc  AS STRING)
    END AS cartorio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_livro_termo_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_livro_termo_certid_mbo_exc  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_folha_termo_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_folha_termo_certid_mbo_exc  AS STRING)
    END AS folha_ceritao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_termo_matricula_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_termo_matricula_certid_mbo_exc  AS STRING)
    END AS numero_termo_matricula_certidao_excluido,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_emissao_certid_mbo_exc)  AS DATE)
    END AS data_emissao_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( sig_uf_certid_mbo_exc  AS STRING)
    END AS sigla_uf_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( nom_munic_certid_mbo_exc  AS STRING)
    END AS municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_ibge_munic_certid_mbo_exc  AS STRING)
    END AS id_municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(desc_mot_exc, r'^\s*$') THEN NULL
        ELSE CAST( desc_mot_exc  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0609`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_exc_mbo  AS STRING)
    END AS id_prefeitura_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_exc_mbo  AS STRING)
    END AS id_familia_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_exc, r'^\s*$') THEN NULL
        ELSE CAST( num_membro_exc  AS STRING)
    END AS id_membro_excluido,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(data_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', data_exc_mbo)  AS DATE)
    END AS data_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(cpf_oper_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( cpf_oper_exc_mbo  AS STRING)
    END AS cpf_operador_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(motivo_exc_mbo, r'^\s*$') THEN NULL
        ELSE CAST( motivo_exc_mbo  AS STRING)
    END AS motivo_exclusao_membro,
    CASE
        WHEN REGEXP_CONTAINS(num_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( num_pgmcu_mbo  AS STRING)
    END AS numero_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(dat_emi_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dat_emi_pgmcu_mbo)  AS DATE)
    END AS data_emissao_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_servd_pbco_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( nom_servd_pbco_pgmcu_mbo  AS STRING)
    END AS servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(cpf_servd_pbco_pgmcu_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( cpf_servd_pbco_pgmcu_pgmcu_mbo  AS STRING)
    END AS cpf_servidor_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(uf_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( uf_pgmcu_mbo  AS STRING)
    END AS sigla_uf_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(mun_pgmcu_mbo, r'^\s*$') THEN NULL
        ELSE CAST( mun_pgmcu_mbo  AS STRING)
    END AS id_municipio_parecer_gestao_municipal_cadunico_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_cartorio_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( nom_cartorio_certid_mbo_exc  AS STRING)
    END AS cartorio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_livro_termo_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_livro_termo_certid_mbo_exc  AS STRING)
    END AS livro_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_folha_termo_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_folha_termo_certid_mbo_exc  AS STRING)
    END AS folha_ceritao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_termo_matricula_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_termo_matricula_certid_mbo_exc  AS STRING)
    END AS numero_termo_matricula_certidao_excluido,
    CASE
        WHEN REGEXP_CONTAINS(dta_emissao_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_emissao_certid_mbo_exc)  AS DATE)
    END AS data_emissao_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( sig_uf_certid_mbo_exc  AS STRING)
    END AS sigla_uf_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(nom_munic_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( nom_munic_certid_mbo_exc  AS STRING)
    END AS municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_certid_mbo_exc, r'^\s*$') THEN NULL
        ELSE CAST( cod_ibge_munic_certid_mbo_exc  AS STRING)
    END AS id_municipio_certidao_obito_excluido,
    CASE
        WHEN REGEXP_CONTAINS(desc_mot_exc, r'^\s*$') THEN NULL
        ELSE CAST( desc_mot_exc  AS STRING)
    END AS descricao_cotivo_exclusao,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.exclusao_membro_0612`

