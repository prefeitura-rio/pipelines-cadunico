
SELECT
    CAST(chv_natural_prefeitura_membt AS STRING) AS id_prefeitura_origem,
    CAST(cod_familiar_membt AS STRING) AS id_familia_origem,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(PARSE_DATE('%d%m%Y', dta_transferencia_membt) AS DATE) AS data_transferencia_membro,
    CAST(cod_est_cadastral_atual_membt AS STRING) AS id_estado_cadastro_transferencia_membro,
    CAST(nom_memb_t AS STRING) AS nome,
    CAST(num_nis_membt AS STRING) AS nis,
    CAST(nom_apelido_membt AS STRING) AS apelido,
    CAST(cod_sexo_membt AS STRING) AS sexo,
    CAST(PARSE_DATE('%d%m%Y', dta_nasc_membt) AS DATE) AS data_nascimento,
    CAST(cod_raca_cor_membt AS STRING) AS id_raca_cor,
    CAST(nom_completo_mae_membt AS STRING) AS nome_mae,
    CAST(ind_nom_completo_mae_membt AS STRING) AS nao_sabe_nome_mae,
    CAST(nom_completo_pai_membt AS STRING) AS nome_pai,
    CAST(ind_nom_completo_pai_membt AS STRING) AS nao_sabe_nome_pai,
    CAST(vazio_2 AS STRING) AS vazio_2,
    CAST(sig_uf_munic_nasc_membt AS STRING) AS sigla_uf_nascimento,
    CAST(ind_uf_munic_nasc_membt AS STRING) AS sabe_sigla_uf_nascimento,
    CAST(nom_ibge_munic_nasc_membt AS STRING) AS municipio_nascimento,
    CAST(cod_ibge_munic_nasc_membt AS STRING) AS id_municipio_nascimento,
    CAST(ind_ibge_munic_nasc_membt AS STRING) AS sabe_municipio_nascimento,
    CAST(nom_pais_origem_membt AS STRING) AS pais_nascimento,
    CAST(vazio_3 AS STRING) AS vazio_3,
    CAST(ind_pais_origem_membt AS STRING) AS nao_sabe_pais_nascimento,
    CAST(cod_certidao_registrada_membt AS STRING) AS id_certidao_registrada_cartorio,
    CAST(cod_destino_prefeitura_membt AS STRING) AS id_prefeitura_destino_transferencia,
    CAST(cod_destino_familia_membt AS STRING) AS id_familia_destino_transferencia,
    CAST(cod_pais_origem_membt AS STRING) AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0601`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_membt AS STRING) AS id_prefeitura_origem,
    CAST(cod_familiar_membt AS STRING) AS id_familia_origem,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(PARSE_DATE('%d%m%Y', dta_transferencia_membt) AS DATE) AS data_transferencia_membro,
    CAST(cod_est_cadastral_atual_membt AS STRING) AS id_estado_cadastro_transferencia_membro,
    CAST(nom_memb_t AS STRING) AS nome,
    CAST(num_nis_membt AS STRING) AS nis,
    CAST(nom_apelido_membt AS STRING) AS apelido,
    CAST(cod_sexo_membt AS STRING) AS sexo,
    CAST(PARSE_DATE('%d%m%Y', dta_nasc_membt) AS DATE) AS data_nascimento,
    CAST(cod_raca_cor_membt AS STRING) AS id_raca_cor,
    CAST(nom_completo_mae_membt AS STRING) AS nome_mae,
    CAST(ind_nom_completo_mae_membt AS STRING) AS nao_sabe_nome_mae,
    CAST(nom_completo_pai_membt AS STRING) AS nome_pai,
    CAST(ind_nom_completo_pai_membt AS STRING) AS nao_sabe_nome_pai,
    CAST(vazio_2 AS STRING) AS vazio_2,
    CAST(sig_uf_munic_nasc_membt AS STRING) AS sigla_uf_nascimento,
    CAST(ind_uf_munic_nasc_membt AS STRING) AS sabe_sigla_uf_nascimento,
    CAST(nom_ibge_munic_nasc_membt AS STRING) AS municipio_nascimento,
    CAST(cod_ibge_munic_nasc_membt AS STRING) AS id_municipio_nascimento,
    CAST(ind_ibge_munic_nasc_membt AS STRING) AS sabe_municipio_nascimento,
    CAST(nom_pais_origem_membt AS STRING) AS pais_nascimento,
    CAST(vazio_3 AS STRING) AS vazio_3,
    CAST(ind_pais_origem_membt AS STRING) AS nao_sabe_pais_nascimento,
    CAST(cod_certidao_registrada_membt AS STRING) AS id_certidao_registrada_cartorio,
    CAST(cod_destino_prefeitura_membt AS STRING) AS id_prefeitura_destino_transferencia,
    CAST(cod_destino_familia_membt AS STRING) AS id_familia_destino_transferencia,
    CAST(cod_pais_origem_membt AS STRING) AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0603`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_membt AS STRING) AS id_prefeitura_origem,
    CAST(cod_familiar_membt AS STRING) AS id_familia_origem,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(PARSE_DATE('%d%m%Y', dta_transferencia_membt) AS DATE) AS data_transferencia_membro,
    CAST(cod_est_cadastral_atual_membt AS STRING) AS id_estado_cadastro_transferencia_membro,
    CAST(nom_memb_t AS STRING) AS nome,
    CAST(num_nis_membt AS STRING) AS nis,
    CAST(nom_apelido_membt AS STRING) AS apelido,
    CAST(cod_sexo_membt AS STRING) AS sexo,
    CAST(PARSE_DATE('%d%m%Y', dta_nasc_membt) AS DATE) AS data_nascimento,
    CAST(cod_raca_cor_membt AS STRING) AS id_raca_cor,
    CAST(nom_completo_mae_membt AS STRING) AS nome_mae,
    CAST(ind_nom_completo_mae_membt AS STRING) AS nao_sabe_nome_mae,
    CAST(nom_completo_pai_membt AS STRING) AS nome_pai,
    CAST(ind_nom_completo_pai_membt AS STRING) AS nao_sabe_nome_pai,
    CAST(vazio_2 AS STRING) AS vazio_2,
    CAST(sig_uf_munic_nasc_membt AS STRING) AS sigla_uf_nascimento,
    CAST(ind_uf_munic_nasc_membt AS STRING) AS sabe_sigla_uf_nascimento,
    CAST(nom_ibge_munic_nasc_membt AS STRING) AS municipio_nascimento,
    CAST(cod_ibge_munic_nasc_membt AS STRING) AS id_municipio_nascimento,
    CAST(ind_ibge_munic_nasc_membt AS STRING) AS sabe_municipio_nascimento,
    CAST(nom_pais_origem_membt AS STRING) AS pais_nascimento,
    CAST(vazio_3 AS STRING) AS vazio_3,
    CAST(ind_pais_origem_membt AS STRING) AS nao_sabe_pais_nascimento,
    CAST(cod_certidao_registrada_membt AS STRING) AS id_certidao_registrada_cartorio,
    CAST(cod_destino_prefeitura_membt AS STRING) AS id_prefeitura_destino_transferencia,
    CAST(cod_destino_familia_membt AS STRING) AS id_familia_destino_transferencia,
    CAST(cod_pais_origem_membt AS STRING) AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0604`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_membt AS STRING) AS id_prefeitura_origem,
    CAST(cod_familiar_membt AS STRING) AS id_familia_origem,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(PARSE_DATE('%d%m%Y', dta_transferencia_membt) AS DATE) AS data_transferencia_membro,
    CAST(cod_est_cadastral_atual_membt AS STRING) AS id_estado_cadastro_transferencia_membro,
    CAST(nom_memb_t AS STRING) AS nome,
    CAST(num_nis_membt AS STRING) AS nis,
    CAST(nom_apelido_membt AS STRING) AS apelido,
    CAST(cod_sexo_membt AS STRING) AS sexo,
    CAST(PARSE_DATE('%d%m%Y', dta_nasc_membt) AS DATE) AS data_nascimento,
    CAST(cod_raca_cor_membt AS STRING) AS id_raca_cor,
    CAST(nom_completo_mae_membt AS STRING) AS nome_mae,
    CAST(ind_nom_completo_mae_membt AS STRING) AS nao_sabe_nome_mae,
    CAST(nom_completo_pai_membt AS STRING) AS nome_pai,
    CAST(ind_nom_completo_pai_membt AS STRING) AS nao_sabe_nome_pai,
    CAST(vazio_2 AS STRING) AS vazio_2,
    CAST(sig_uf_munic_nasc_membt AS STRING) AS sigla_uf_nascimento,
    CAST(ind_uf_munic_nasc_membt AS STRING) AS sabe_sigla_uf_nascimento,
    CAST(nom_ibge_munic_nasc_membt AS STRING) AS municipio_nascimento,
    CAST(cod_ibge_munic_nasc_membt AS STRING) AS id_municipio_nascimento,
    CAST(ind_ibge_munic_nasc_membt AS STRING) AS sabe_municipio_nascimento,
    CAST(nom_pais_origem_membt AS STRING) AS pais_nascimento,
    CAST(vazio_3 AS STRING) AS vazio_3,
    CAST(ind_pais_origem_membt AS STRING) AS nao_sabe_pais_nascimento,
    CAST(cod_certidao_registrada_membt AS STRING) AS id_certidao_registrada_cartorio,
    CAST(cod_destino_prefeitura_membt AS STRING) AS id_prefeitura_destino_transferencia,
    CAST(cod_destino_familia_membt AS STRING) AS id_familia_destino_transferencia,
    CAST(cod_pais_origem_membt AS STRING) AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0609`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_membt AS STRING) AS id_prefeitura_origem,
    CAST(cod_familiar_membt AS STRING) AS id_familia_origem,
    CAST(num_membro_fmla AS INT64) AS membros_familia,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS numero_registro_arquivo,
    CAST(PARSE_DATE('%d%m%Y', dta_transferencia_membt) AS DATE) AS data_transferencia_membro,
    CAST(cod_est_cadastral_atual_membt AS STRING) AS id_estado_cadastro_transferencia_membro,
    CAST(nom_memb_t AS STRING) AS nome,
    CAST(num_nis_membt AS STRING) AS nis,
    CAST(nom_apelido_membt AS STRING) AS apelido,
    CAST(cod_sexo_membt AS STRING) AS sexo,
    CAST(PARSE_DATE('%d%m%Y', dta_nasc_membt) AS DATE) AS data_nascimento,
    CAST(cod_raca_cor_membt AS STRING) AS id_raca_cor,
    CAST(nom_completo_mae_membt AS STRING) AS nome_mae,
    CAST(ind_nom_completo_mae_membt AS STRING) AS nao_sabe_nome_mae,
    CAST(nom_completo_pai_membt AS STRING) AS nome_pai,
    CAST(ind_nom_completo_pai_membt AS STRING) AS nao_sabe_nome_pai,
    CAST(vazio_2 AS STRING) AS vazio_2,
    CAST(sig_uf_munic_nasc_membt AS STRING) AS sigla_uf_nascimento,
    CAST(ind_uf_munic_nasc_membt AS STRING) AS sabe_sigla_uf_nascimento,
    CAST(nom_ibge_munic_nasc_membt AS STRING) AS municipio_nascimento,
    CAST(cod_ibge_munic_nasc_membt AS STRING) AS id_municipio_nascimento,
    CAST(ind_ibge_munic_nasc_membt AS STRING) AS sabe_municipio_nascimento,
    CAST(nom_pais_origem_membt AS STRING) AS pais_nascimento,
    CAST(vazio_3 AS STRING) AS vazio_3,
    CAST(ind_pais_origem_membt AS STRING) AS nao_sabe_pais_nascimento,
    CAST(cod_certidao_registrada_membt AS STRING) AS id_certidao_registrada_cartorio,
    CAST(cod_destino_prefeitura_membt AS STRING) AS id_prefeitura_destino_transferencia,
    CAST(cod_destino_familia_membt AS STRING) AS id_familia_destino_transferencia,
    CAST(cod_pais_origem_membt AS STRING) AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0612`

