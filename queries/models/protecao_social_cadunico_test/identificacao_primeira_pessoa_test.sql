
SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(num_membro_fmla AS int64) AS membros_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(dta_cadastramento_memb AS date) AS data_cadastro,
    CAST(dta_atual_memb AS date) AS data_ultima_atualizacao,
    CAST(cod_est_cadastral_memb AS string) AS id_estado_cadastral,
    CAST(ind_trabalho_infantil_pessoa AS string) AS id_trabalho_infantil,
    CAST(num_ordem_pessoa AS string) AS id_numero_ordem,
    CAST(nom_pessoa AS string) AS nome,
    CAST(num_nis_pessoa_atual AS string) AS nis,
    CAST(nom_apelido_pessoa AS string) AS apelido,
    CAST(cod_sexo_pessoa AS string) AS id_sexo,
    CAST(dta_nasc_pessoa AS date) AS data_nascimento,
    CAST(cod_parentesco_rf_pessoa AS string) AS id_parentesco_representante_legal,
    CAST(cod_raca_cor_pessoa AS string) AS id_raca_cor,
    CAST(nom_completo_mae_pessoa AS string) AS nome_mae,
    CAST(ind_nom_completo_mae_pessoa AS string) AS nao_sabe_nome_mae,
    CAST(nom_completo_pai_pessoa AS string) AS nome_pai,
    CAST(ind_nom_completo_pai_pessoa AS string) AS nao_sabe_nome_pai,
    CAST(cod_local_nascimento_pessoa AS string) AS id_local_nascimento,
    CAST(sig_uf_munic_nasc_pessoa AS string) AS sigla_uf_municipio_nascimento,
    CAST(ind_uf_munic_nasc_pessoa AS string) AS sabe_uf_nascimento,
    CAST(nom_ibge_munic_nasc_pessoa AS string) AS municipio_nascimento,
    CAST(cod_ibge_munic_nasc_pessoa AS string) AS id_municipio_nascimento,
    CAST(ind_ibge_munic_nasc_pessoa AS string) AS sabe_id_municipio_nascimento,
    CAST(nom_pais_origem_pessoa AS string) AS pais_nascimento,
    CAST(vazio_2 AS string) AS vazio,
    CAST(ind_pais_origem_pessoa AS string) AS sabe_pais_nascimento,
    CAST(cod_certidao_registrada_pessoa AS string) AS id_certidao_registrada_cartorio,
    CAST(cod_origem_prefeitura_pessoa AS string) AS id_prefeitura_origem,
    CAST(cod_origem_familia_pessoa AS string) AS id_familia_origem,
    CAST(ind_transferencia_pessoa AS string) AS foi_transferido,
    CAST(nom_origem_alteracao_pessoa AS string) AS origem_alteracao,
    CAST(chv_nat_pes_atual AS string) AS id_pessoa,
    CAST(chv_nat_pes_original AS string) AS id_original_pessoa,
    CAST(nu_nis_original AS string) AS nis_original,
    CAST(cod_pais_origem_pessoa AS string) AS id_pais_origem,
    NULL AS origem_cadastro_pessoa, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.identificacao_primeira_pessoa_test_0604_test`

UNION ALL


SELECT
    NULL AS origem_cadastro_pessoa, --Essa coluna não esta na versao posterior
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.identificacao_primeira_pessoa_test_0601_test`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(num_membro_fmla AS int64) AS membros_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(dta_cadastramento_memb AS date) AS data_cadastro,
    CAST(dta_atual_memb AS date) AS data_ultima_atualizacao,
    CAST(cod_est_cadastral_memb AS string) AS id_estado_cadastral,
    CAST(ind_trabalho_infantil_pessoa AS string) AS id_trabalho_infantil,
    CAST(num_ordem_pessoa AS string) AS id_numero_ordem,
    CAST(nom_pessoa AS string) AS nome,
    CAST(num_nis_pessoa_atual AS string) AS nis,
    CAST(nom_apelido_pessoa AS string) AS apelido,
    CAST(cod_sexo_pessoa AS string) AS id_sexo,
    CAST(dta_nasc_pessoa AS date) AS data_nascimento,
    CAST(cod_parentesco_rf_pessoa AS string) AS id_parentesco_representante_legal,
    CAST(cod_raca_cor_pessoa AS string) AS id_raca_cor,
    CAST(nom_completo_mae_pessoa AS string) AS nome_mae,
    CAST(ind_nom_completo_mae_pessoa AS string) AS nao_sabe_nome_mae,
    CAST(nom_completo_pai_pessoa AS string) AS nome_pai,
    CAST(ind_nom_completo_pai_pessoa AS string) AS nao_sabe_nome_pai,
    CAST(cod_local_nascimento_pessoa AS string) AS id_local_nascimento,
    CAST(sig_uf_munic_nasc_pessoa AS string) AS sigla_uf_municipio_nascimento,
    CAST(ind_uf_munic_nasc_pessoa AS string) AS sabe_uf_nascimento,
    CAST(nom_ibge_munic_nasc_pessoa AS string) AS municipio_nascimento,
    CAST(cod_ibge_munic_nasc_pessoa AS string) AS id_municipio_nascimento,
    CAST(ind_ibge_munic_nasc_pessoa AS string) AS sabe_id_municipio_nascimento,
    CAST(nom_pais_origem_pessoa AS string) AS pais_nascimento,
    CAST(vazio_2 AS string) AS vazio,
    CAST(ind_pais_origem_pessoa AS string) AS sabe_pais_nascimento,
    CAST(cod_certidao_registrada_pessoa AS string) AS id_certidao_registrada_cartorio,
    CAST(cod_origem_prefeitura_pessoa AS string) AS id_prefeitura_origem,
    CAST(cod_origem_familia_pessoa AS string) AS id_familia_origem,
    CAST(ind_transferencia_pessoa AS string) AS foi_transferido,
    CAST(nom_origem_alteracao_pessoa AS string) AS origem_alteracao,
    CAST(chv_nat_pes_atual AS string) AS id_pessoa,
    CAST(chv_nat_pes_original AS string) AS id_original_pessoa,
    CAST(nu_nis_original AS string) AS nis_original,
    CAST(cod_pais_origem_pessoa AS string) AS id_pais_origem,
    CAST(nu_origem_cadastro_pessoa AS string) AS origem_cadastro_pessoa,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_test_versao.identificacao_primeira_pessoa_test_0609_test`

