
SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_fam  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_fam  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( num_membro_fmla  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_cadastramento_memb, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_cadastramento_memb)  AS DATE)
    END AS data_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(dta_atual_memb, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_atual_memb)  AS DATE)
    END AS data_ultima_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_est_cadastral_memb  AS STRING)
    END AS id_estado_cadastral,
    CASE
        WHEN REGEXP_CONTAINS(ind_trabalho_infantil_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_trabalho_infantil_pessoa  AS STRING)
    END AS id_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(num_ordem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( num_ordem_pessoa  AS STRING)
    END AS id_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(nom_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_pessoa  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_pessoa_atual, r'^\s*$') THEN NULL
        ELSE CAST( num_nis_pessoa_atual  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(nom_apelido_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_apelido_pessoa  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_sexo_pessoa  AS STRING)
    END AS id_sexo,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_nasc_pessoa)  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_parentesco_rf_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_parentesco_rf_pessoa  AS STRING)
    END AS id_parentesco_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_raca_cor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_raca_cor_pessoa  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_mae_pessoa  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_mae_pessoa  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_pai_pessoa  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_pai_pessoa  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(cod_local_nascimento_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_local_nascimento_pessoa  AS STRING)
    END AS id_local_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( sig_uf_munic_nasc_pessoa  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_uf_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_uf_munic_nasc_pessoa  AS STRING)
    END AS sabe_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_ibge_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_ibge_munic_nasc_pessoa  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_ibge_munic_nasc_pessoa  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_ibge_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_ibge_munic_nasc_pessoa  AS STRING)
    END AS sabe_id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_pais_origem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_pais_origem_pessoa  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_pais_origem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_pais_origem_pessoa  AS STRING)
    END AS sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_registrada_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_certidao_registrada_pessoa  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_prefeitura_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_origem_prefeitura_pessoa  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_familia_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_origem_familia_pessoa  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(ind_transferencia_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_transferencia_pessoa  AS STRING)
    END AS foi_transferido,
    CASE
        WHEN REGEXP_CONTAINS(nom_origem_alteracao_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_origem_alteracao_pessoa  AS STRING)
    END AS origem_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(chv_nat_pes_atual, r'^\s*$') THEN NULL
        ELSE CAST( chv_nat_pes_atual  AS STRING)
    END AS id_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(chv_nat_pes_original, r'^\s*$') THEN NULL
        ELSE CAST( chv_nat_pes_original  AS STRING)
    END AS id_original_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(nu_nis_original, r'^\s*$') THEN NULL
        ELSE CAST( nu_nis_original  AS STRING)
    END AS nis_original,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_origem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_pais_origem_pessoa  AS STRING)
    END AS id_pais_origem,
    NULL AS origem_cadastro_pessoa, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_primeira_pessoa_0601`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_fam  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_fam  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( num_membro_fmla  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_cadastramento_memb, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_cadastramento_memb)  AS DATE)
    END AS data_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(dta_atual_memb, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_atual_memb)  AS DATE)
    END AS data_ultima_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_est_cadastral_memb  AS STRING)
    END AS id_estado_cadastral,
    CASE
        WHEN REGEXP_CONTAINS(ind_trabalho_infantil_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_trabalho_infantil_pessoa  AS STRING)
    END AS id_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(num_ordem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( num_ordem_pessoa  AS STRING)
    END AS id_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(nom_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_pessoa  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_pessoa_atual, r'^\s*$') THEN NULL
        ELSE CAST( num_nis_pessoa_atual  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(nom_apelido_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_apelido_pessoa  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_sexo_pessoa  AS STRING)
    END AS id_sexo,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_nasc_pessoa)  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_parentesco_rf_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_parentesco_rf_pessoa  AS STRING)
    END AS id_parentesco_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_raca_cor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_raca_cor_pessoa  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_mae_pessoa  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_mae_pessoa  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_pai_pessoa  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_pai_pessoa  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(cod_local_nascimento_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_local_nascimento_pessoa  AS STRING)
    END AS id_local_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( sig_uf_munic_nasc_pessoa  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_uf_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_uf_munic_nasc_pessoa  AS STRING)
    END AS sabe_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_ibge_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_ibge_munic_nasc_pessoa  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_ibge_munic_nasc_pessoa  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_ibge_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_ibge_munic_nasc_pessoa  AS STRING)
    END AS sabe_id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_pais_origem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_pais_origem_pessoa  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_pais_origem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_pais_origem_pessoa  AS STRING)
    END AS sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_registrada_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_certidao_registrada_pessoa  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_prefeitura_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_origem_prefeitura_pessoa  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_familia_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_origem_familia_pessoa  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(ind_transferencia_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_transferencia_pessoa  AS STRING)
    END AS foi_transferido,
    CASE
        WHEN REGEXP_CONTAINS(nom_origem_alteracao_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_origem_alteracao_pessoa  AS STRING)
    END AS origem_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(chv_nat_pes_atual, r'^\s*$') THEN NULL
        ELSE CAST( chv_nat_pes_atual  AS STRING)
    END AS id_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(chv_nat_pes_original, r'^\s*$') THEN NULL
        ELSE CAST( chv_nat_pes_original  AS STRING)
    END AS id_original_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(nu_nis_original, r'^\s*$') THEN NULL
        ELSE CAST( nu_nis_original  AS STRING)
    END AS nis_original,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_origem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_pais_origem_pessoa  AS STRING)
    END AS id_pais_origem,
    CASE
        WHEN REGEXP_CONTAINS(nu_origem_cadastro_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nu_origem_cadastro_pessoa  AS STRING)
    END AS origem_cadastro_pessoa,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_primeira_pessoa_0603`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_fam  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_fam  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( num_membro_fmla  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_cadastramento_memb, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_cadastramento_memb)  AS DATE)
    END AS data_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(dta_atual_memb, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_atual_memb)  AS DATE)
    END AS data_ultima_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_est_cadastral_memb  AS STRING)
    END AS id_estado_cadastral,
    CASE
        WHEN REGEXP_CONTAINS(ind_trabalho_infantil_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_trabalho_infantil_pessoa  AS STRING)
    END AS id_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(num_ordem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( num_ordem_pessoa  AS STRING)
    END AS id_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(nom_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_pessoa  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_pessoa_atual, r'^\s*$') THEN NULL
        ELSE CAST( num_nis_pessoa_atual  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(nom_apelido_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_apelido_pessoa  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_sexo_pessoa  AS STRING)
    END AS id_sexo,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_nasc_pessoa)  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_parentesco_rf_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_parentesco_rf_pessoa  AS STRING)
    END AS id_parentesco_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_raca_cor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_raca_cor_pessoa  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_mae_pessoa  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_mae_pessoa  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_pai_pessoa  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_pai_pessoa  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(cod_local_nascimento_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_local_nascimento_pessoa  AS STRING)
    END AS id_local_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( sig_uf_munic_nasc_pessoa  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_uf_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_uf_munic_nasc_pessoa  AS STRING)
    END AS sabe_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_ibge_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_ibge_munic_nasc_pessoa  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_ibge_munic_nasc_pessoa  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_ibge_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_ibge_munic_nasc_pessoa  AS STRING)
    END AS sabe_id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_pais_origem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_pais_origem_pessoa  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_pais_origem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_pais_origem_pessoa  AS STRING)
    END AS sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_registrada_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_certidao_registrada_pessoa  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_prefeitura_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_origem_prefeitura_pessoa  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_familia_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_origem_familia_pessoa  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(ind_transferencia_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_transferencia_pessoa  AS STRING)
    END AS foi_transferido,
    CASE
        WHEN REGEXP_CONTAINS(nom_origem_alteracao_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_origem_alteracao_pessoa  AS STRING)
    END AS origem_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(chv_nat_pes_atual, r'^\s*$') THEN NULL
        ELSE CAST( chv_nat_pes_atual  AS STRING)
    END AS id_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(chv_nat_pes_original, r'^\s*$') THEN NULL
        ELSE CAST( chv_nat_pes_original  AS STRING)
    END AS id_original_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(nu_nis_original, r'^\s*$') THEN NULL
        ELSE CAST( nu_nis_original  AS STRING)
    END AS nis_original,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_origem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_pais_origem_pessoa  AS STRING)
    END AS id_pais_origem,
    CASE
        WHEN REGEXP_CONTAINS(nu_origem_cadastro_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nu_origem_cadastro_pessoa  AS STRING)
    END AS origem_cadastro_pessoa,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_primeira_pessoa_0604`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_fam  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_fam  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( num_membro_fmla  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_cadastramento_memb, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_cadastramento_memb)  AS DATE)
    END AS data_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(dta_atual_memb, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_atual_memb)  AS DATE)
    END AS data_ultima_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_est_cadastral_memb  AS STRING)
    END AS id_estado_cadastral,
    CASE
        WHEN REGEXP_CONTAINS(ind_trabalho_infantil_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_trabalho_infantil_pessoa  AS STRING)
    END AS id_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(num_ordem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( num_ordem_pessoa  AS STRING)
    END AS id_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(nom_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_pessoa  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_pessoa_atual, r'^\s*$') THEN NULL
        ELSE CAST( num_nis_pessoa_atual  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(nom_apelido_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_apelido_pessoa  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_sexo_pessoa  AS STRING)
    END AS id_sexo,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_nasc_pessoa)  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_parentesco_rf_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_parentesco_rf_pessoa  AS STRING)
    END AS id_parentesco_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_raca_cor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_raca_cor_pessoa  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_mae_pessoa  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_mae_pessoa  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_pai_pessoa  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_pai_pessoa  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(cod_local_nascimento_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_local_nascimento_pessoa  AS STRING)
    END AS id_local_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( sig_uf_munic_nasc_pessoa  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_uf_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_uf_munic_nasc_pessoa  AS STRING)
    END AS sabe_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_ibge_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_ibge_munic_nasc_pessoa  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_ibge_munic_nasc_pessoa  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_ibge_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_ibge_munic_nasc_pessoa  AS STRING)
    END AS sabe_id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_pais_origem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_pais_origem_pessoa  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_pais_origem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_pais_origem_pessoa  AS STRING)
    END AS sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_registrada_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_certidao_registrada_pessoa  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_prefeitura_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_origem_prefeitura_pessoa  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_familia_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_origem_familia_pessoa  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(ind_transferencia_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_transferencia_pessoa  AS STRING)
    END AS foi_transferido,
    CASE
        WHEN REGEXP_CONTAINS(nom_origem_alteracao_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_origem_alteracao_pessoa  AS STRING)
    END AS origem_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(chv_nat_pes_atual, r'^\s*$') THEN NULL
        ELSE CAST( chv_nat_pes_atual  AS STRING)
    END AS id_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(chv_nat_pes_original, r'^\s*$') THEN NULL
        ELSE CAST( chv_nat_pes_original  AS STRING)
    END AS id_original_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(nu_nis_original, r'^\s*$') THEN NULL
        ELSE CAST( nu_nis_original  AS STRING)
    END AS nis_original,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_origem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_pais_origem_pessoa  AS STRING)
    END AS id_pais_origem,
    CASE
        WHEN REGEXP_CONTAINS(nu_origem_cadastro_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nu_origem_cadastro_pessoa  AS STRING)
    END AS origem_cadastro_pessoa,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_primeira_pessoa_0609`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura_fam  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( cod_familiar_fam  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( num_membro_fmla  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_cadastramento_memb, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_cadastramento_memb)  AS DATE)
    END AS data_cadastro,
    CASE
        WHEN REGEXP_CONTAINS(dta_atual_memb, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_atual_memb)  AS DATE)
    END AS data_ultima_atualizacao,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_memb, r'^\s*$') THEN NULL
        ELSE CAST( cod_est_cadastral_memb  AS STRING)
    END AS id_estado_cadastral,
    CASE
        WHEN REGEXP_CONTAINS(ind_trabalho_infantil_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_trabalho_infantil_pessoa  AS STRING)
    END AS id_trabalho_infantil,
    CASE
        WHEN REGEXP_CONTAINS(num_ordem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( num_ordem_pessoa  AS STRING)
    END AS id_numero_ordem,
    CASE
        WHEN REGEXP_CONTAINS(nom_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_pessoa  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_pessoa_atual, r'^\s*$') THEN NULL
        ELSE CAST( num_nis_pessoa_atual  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(nom_apelido_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_apelido_pessoa  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_sexo_pessoa  AS STRING)
    END AS id_sexo,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', dta_nasc_pessoa)  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_parentesco_rf_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_parentesco_rf_pessoa  AS STRING)
    END AS id_parentesco_representante_legal,
    CASE
        WHEN REGEXP_CONTAINS(cod_raca_cor_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_raca_cor_pessoa  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_mae_pessoa  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_mae_pessoa  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_completo_pai_pessoa  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_nom_completo_pai_pessoa  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(cod_local_nascimento_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_local_nascimento_pessoa  AS STRING)
    END AS id_local_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( sig_uf_munic_nasc_pessoa  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_uf_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_uf_munic_nasc_pessoa  AS STRING)
    END AS sabe_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_ibge_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_ibge_munic_nasc_pessoa  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_ibge_munic_nasc_pessoa  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_ibge_munic_nasc_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_ibge_munic_nasc_pessoa  AS STRING)
    END AS sabe_id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_pais_origem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_pais_origem_pessoa  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_pais_origem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_pais_origem_pessoa  AS STRING)
    END AS sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_registrada_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_certidao_registrada_pessoa  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_prefeitura_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_origem_prefeitura_pessoa  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_origem_familia_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_origem_familia_pessoa  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(ind_transferencia_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( ind_transferencia_pessoa  AS STRING)
    END AS foi_transferido,
    CASE
        WHEN REGEXP_CONTAINS(nom_origem_alteracao_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nom_origem_alteracao_pessoa  AS STRING)
    END AS origem_alteracao,
    CASE
        WHEN REGEXP_CONTAINS(chv_nat_pes_atual, r'^\s*$') THEN NULL
        ELSE CAST( chv_nat_pes_atual  AS STRING)
    END AS id_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(chv_nat_pes_original, r'^\s*$') THEN NULL
        ELSE CAST( chv_nat_pes_original  AS STRING)
    END AS id_original_pessoa,
    CASE
        WHEN REGEXP_CONTAINS(nu_nis_original, r'^\s*$') THEN NULL
        ELSE CAST( nu_nis_original  AS STRING)
    END AS nis_original,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_origem_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( cod_pais_origem_pessoa  AS STRING)
    END AS id_pais_origem,
    CASE
        WHEN REGEXP_CONTAINS(nu_origem_cadastro_pessoa, r'^\s*$') THEN NULL
        ELSE CAST( nu_origem_cadastro_pessoa  AS STRING)
    END AS origem_cadastro_pessoa,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_primeira_pessoa_0612`

