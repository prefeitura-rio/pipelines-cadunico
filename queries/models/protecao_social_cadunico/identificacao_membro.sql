
SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_membt)  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_membt)  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_transferencia_membt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_transferencia_membt))  AS DATE)
    END AS data_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_atual_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_atual_membt)  AS STRING)
    END AS id_estado_cadastro_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_memb_t, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_memb_t)  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_nis_membt)  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(nom_apelido_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_apelido_membt)  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_sexo_membt)  AS STRING)
    END AS sexo,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_nasc_membt))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_raca_cor_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_raca_cor_membt)  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_completo_mae_membt)  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_nom_completo_mae_membt)  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_completo_pai_membt)  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_nom_completo_pai_membt)  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_munic_nasc_membt)  AS STRING)
    END AS sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_uf_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_uf_munic_nasc_membt)  AS STRING)
    END AS sabe_sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_ibge_munic_nasc_membt)  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_nasc_membt)  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ibge_munic_nasc_membt)  AS STRING)
    END AS sabe_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_pais_origem_membt)  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pais_origem_membt)  AS STRING)
    END AS nao_sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_registrada_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_certidao_registrada_membt)  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_prefeitura_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_prefeitura_membt)  AS STRING)
    END AS id_prefeitura_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_familia_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_familia_membt)  AS STRING)
    END AS id_familia_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_pais_origem_membt)  AS STRING)
    END AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0601`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_membt)  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_membt)  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_transferencia_membt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_transferencia_membt))  AS DATE)
    END AS data_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_atual_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_atual_membt)  AS STRING)
    END AS id_estado_cadastro_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_memb_t, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_memb_t)  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_nis_membt)  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(nom_apelido_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_apelido_membt)  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_sexo_membt)  AS STRING)
    END AS sexo,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_nasc_membt))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_raca_cor_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_raca_cor_membt)  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_completo_mae_membt)  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_nom_completo_mae_membt)  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_completo_pai_membt)  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_nom_completo_pai_membt)  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_munic_nasc_membt)  AS STRING)
    END AS sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_uf_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_uf_munic_nasc_membt)  AS STRING)
    END AS sabe_sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_ibge_munic_nasc_membt)  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_nasc_membt)  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ibge_munic_nasc_membt)  AS STRING)
    END AS sabe_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_pais_origem_membt)  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pais_origem_membt)  AS STRING)
    END AS nao_sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_registrada_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_certidao_registrada_membt)  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_prefeitura_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_prefeitura_membt)  AS STRING)
    END AS id_prefeitura_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_familia_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_familia_membt)  AS STRING)
    END AS id_familia_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_pais_origem_membt)  AS STRING)
    END AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0603`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_membt)  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_membt)  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_transferencia_membt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_transferencia_membt))  AS DATE)
    END AS data_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_atual_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_atual_membt)  AS STRING)
    END AS id_estado_cadastro_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_memb_t, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_memb_t)  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_nis_membt)  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(nom_apelido_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_apelido_membt)  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_sexo_membt)  AS STRING)
    END AS sexo,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_nasc_membt))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_raca_cor_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_raca_cor_membt)  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_completo_mae_membt)  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_nom_completo_mae_membt)  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_completo_pai_membt)  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_nom_completo_pai_membt)  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_munic_nasc_membt)  AS STRING)
    END AS sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_uf_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_uf_munic_nasc_membt)  AS STRING)
    END AS sabe_sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_ibge_munic_nasc_membt)  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_nasc_membt)  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ibge_munic_nasc_membt)  AS STRING)
    END AS sabe_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_pais_origem_membt)  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pais_origem_membt)  AS STRING)
    END AS nao_sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_registrada_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_certidao_registrada_membt)  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_prefeitura_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_prefeitura_membt)  AS STRING)
    END AS id_prefeitura_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_familia_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_familia_membt)  AS STRING)
    END AS id_familia_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_pais_origem_membt)  AS STRING)
    END AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0604`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_membt)  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_membt)  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_transferencia_membt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_transferencia_membt))  AS DATE)
    END AS data_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_atual_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_atual_membt)  AS STRING)
    END AS id_estado_cadastro_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_memb_t, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_memb_t)  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_nis_membt)  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(nom_apelido_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_apelido_membt)  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_sexo_membt)  AS STRING)
    END AS sexo,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_nasc_membt))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_raca_cor_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_raca_cor_membt)  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_completo_mae_membt)  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_nom_completo_mae_membt)  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_completo_pai_membt)  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_nom_completo_pai_membt)  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_munic_nasc_membt)  AS STRING)
    END AS sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_uf_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_uf_munic_nasc_membt)  AS STRING)
    END AS sabe_sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_ibge_munic_nasc_membt)  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_nasc_membt)  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ibge_munic_nasc_membt)  AS STRING)
    END AS sabe_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_pais_origem_membt)  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pais_origem_membt)  AS STRING)
    END AS nao_sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_registrada_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_certidao_registrada_membt)  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_prefeitura_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_prefeitura_membt)  AS STRING)
    END AS id_prefeitura_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_familia_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_familia_membt)  AS STRING)
    END AS id_familia_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_pais_origem_membt)  AS STRING)
    END AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0609`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_membt)  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_membt)  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_transferencia_membt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_transferencia_membt))  AS DATE)
    END AS data_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_atual_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_atual_membt)  AS STRING)
    END AS id_estado_cadastro_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_memb_t, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_memb_t)  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_nis_membt)  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(nom_apelido_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_apelido_membt)  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_sexo_membt)  AS STRING)
    END AS sexo,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_nasc_membt))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_raca_cor_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_raca_cor_membt)  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_completo_mae_membt)  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_nom_completo_mae_membt)  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_completo_pai_membt)  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_nom_completo_pai_membt)  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_munic_nasc_membt)  AS STRING)
    END AS sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_uf_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_uf_munic_nasc_membt)  AS STRING)
    END AS sabe_sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_ibge_munic_nasc_membt)  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_nasc_membt)  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ibge_munic_nasc_membt)  AS STRING)
    END AS sabe_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_pais_origem_membt)  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pais_origem_membt)  AS STRING)
    END AS nao_sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_registrada_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_certidao_registrada_membt)  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_prefeitura_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_prefeitura_membt)  AS STRING)
    END AS id_prefeitura_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_familia_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_familia_membt)  AS STRING)
    END AS id_familia_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_pais_origem_membt)  AS STRING)
    END AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0612`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_membt)  AS STRING)
    END AS id_prefeitura_origem,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_membt)  AS STRING)
    END AS id_familia_origem,
    CASE
        WHEN REGEXP_CONTAINS(num_membro_fmla, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_membro_fmla)  AS STRING)
    END AS id_membro_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(dta_transferencia_membt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_transferencia_membt))  AS DATE)
    END AS data_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(cod_est_cadastral_atual_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_est_cadastral_atual_membt)  AS STRING)
    END AS id_estado_cadastro_transferencia_membro,
    CASE
        WHEN REGEXP_CONTAINS(nom_memb_t, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_memb_t)  AS STRING)
    END AS nome,
    CASE
        WHEN REGEXP_CONTAINS(num_nis_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_nis_membt)  AS STRING)
    END AS nis,
    CASE
        WHEN REGEXP_CONTAINS(nom_apelido_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_apelido_membt)  AS STRING)
    END AS apelido,
    CASE
        WHEN REGEXP_CONTAINS(cod_sexo_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_sexo_membt)  AS STRING)
    END AS sexo,
    CASE
        WHEN REGEXP_CONTAINS(dta_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(dta_nasc_membt))  AS DATE)
    END AS data_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_raca_cor_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_raca_cor_membt)  AS STRING)
    END AS id_raca_cor,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_mae_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_completo_mae_membt)  AS STRING)
    END AS nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_mae_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_nom_completo_mae_membt)  AS STRING)
    END AS nao_sabe_nome_mae,
    CASE
        WHEN REGEXP_CONTAINS(nom_completo_pai_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_completo_pai_membt)  AS STRING)
    END AS nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(ind_nom_completo_pai_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_nom_completo_pai_membt)  AS STRING)
    END AS nao_sabe_nome_pai,
    CASE
        WHEN REGEXP_CONTAINS(sig_uf_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(sig_uf_munic_nasc_membt)  AS STRING)
    END AS sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_uf_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_uf_munic_nasc_membt)  AS STRING)
    END AS sabe_sigla_uf_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_ibge_munic_nasc_membt)  AS STRING)
    END AS municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_ibge_munic_nasc_membt)  AS STRING)
    END AS id_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_ibge_munic_nasc_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_ibge_munic_nasc_membt)  AS STRING)
    END AS sabe_municipio_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(nom_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_pais_origem_membt)  AS STRING)
    END AS pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(ind_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pais_origem_membt)  AS STRING)
    END AS nao_sabe_pais_nascimento,
    CASE
        WHEN REGEXP_CONTAINS(cod_certidao_registrada_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_certidao_registrada_membt)  AS STRING)
    END AS id_certidao_registrada_cartorio,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_prefeitura_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_prefeitura_membt)  AS STRING)
    END AS id_prefeitura_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_destino_familia_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_destino_familia_membt)  AS STRING)
    END AS id_familia_destino_transferencia,
    CASE
        WHEN REGEXP_CONTAINS(cod_pais_origem_membt, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_pais_origem_membt)  AS STRING)
    END AS id_pais_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.identificacao_membro_0615`

