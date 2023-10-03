
SELECT
    CAST(chv_natural_prefeitura_exc_mbo AS STRING) AS chv_natural_prefeitura_exc_mbo,
    CAST(cod_familiar_exc_mbo AS STRING) AS cod_familiar_exc_mbo,
    CAST(num_membro_exc AS STRING) AS num_membro_exc,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(data_exc_mbo AS STRING) AS data_exc_mbo,
    CAST(cpf_oper_exc_mbo AS STRING) AS cpf_oper_exc_mbo,
    CAST(motivo_exc_mbo AS STRING) AS motivo_exc_mbo,
    CAST(num_pgmcu_mbo AS STRING) AS num_pgmcu_mbo,
    CAST(dat_emi_pgmcu_mbo AS STRING) AS dat_emi_pgmcu_mbo,
    CAST(nom_servd_pbco_pgmcu_mbo AS STRING) AS nom_servd_pbco_pgmcu_mbo,
    CAST(cpf_servd_pbco_pgmcu_pgmcu_mbo AS STRING) AS cpf_servd_pbco_pgmcu_pgmcu_mbo,
    CAST(uf_pgmcu_mbo AS STRING) AS uf_pgmcu_mbo,
    CAST(mun_pgmcu_mbo AS STRING) AS mun_pgmcu_mbo,
    CAST(nom_cartorio_certid_mbo_exc AS STRING) AS nom_cartorio_certid_mbo_exc,
    CAST(cod_livro_termo_certid_mbo_exc AS STRING) AS cod_livro_termo_certid_mbo_exc,
    CAST(cod_folha_termo_certid_mbo_exc AS STRING) AS cod_folha_termo_certid_mbo_exc,
    CAST(cod_termo_matricula_certid_mbo_exc AS STRING) AS cod_termo_matricula_certid_mbo_exc,
    CAST(dta_emissao_certid_mbo_exc AS STRING) AS dta_emissao_certid_mbo_exc,
    CAST(sig_uf_certid_mbo_exc AS STRING) AS sig_uf_certid_mbo_exc,
    CAST(nom_munic_certid_mbo_exc AS STRING) AS nom_munic_certid_mbo_exc,
    CAST(cod_ibge_munic_certid_mbo_exc AS STRING) AS cod_ibge_munic_certid_mbo_exc,
    CAST(desc_mot_exc AS STRING) AS desc_mot_exc,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.19_0601`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_exc_mbo AS STRING) AS chv_natural_prefeitura_exc_mbo,
    CAST(cod_familiar_exc_mbo AS STRING) AS cod_familiar_exc_mbo,
    CAST(num_membro_exc AS STRING) AS num_membro_exc,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(data_exc_mbo AS STRING) AS data_exc_mbo,
    CAST(cpf_oper_exc_mbo AS STRING) AS cpf_oper_exc_mbo,
    CAST(motivo_exc_mbo AS STRING) AS motivo_exc_mbo,
    CAST(num_pgmcu_mbo AS STRING) AS num_pgmcu_mbo,
    CAST(dat_emi_pgmcu_mbo AS STRING) AS dat_emi_pgmcu_mbo,
    CAST(nom_servd_pbco_pgmcu_mbo AS STRING) AS nom_servd_pbco_pgmcu_mbo,
    CAST(cpf_servd_pbco_pgmcu_pgmcu_mbo AS STRING) AS cpf_servd_pbco_pgmcu_pgmcu_mbo,
    CAST(uf_pgmcu_mbo AS STRING) AS uf_pgmcu_mbo,
    CAST(mun_pgmcu_mbo AS STRING) AS mun_pgmcu_mbo,
    CAST(nom_cartorio_certid_mbo_exc AS STRING) AS nom_cartorio_certid_mbo_exc,
    CAST(cod_livro_termo_certid_mbo_exc AS STRING) AS cod_livro_termo_certid_mbo_exc,
    CAST(cod_folha_termo_certid_mbo_exc AS STRING) AS cod_folha_termo_certid_mbo_exc,
    CAST(cod_termo_matricula_certid_mbo_exc AS STRING) AS cod_termo_matricula_certid_mbo_exc,
    CAST(dta_emissao_certid_mbo_exc AS STRING) AS dta_emissao_certid_mbo_exc,
    CAST(sig_uf_certid_mbo_exc AS STRING) AS sig_uf_certid_mbo_exc,
    CAST(nom_munic_certid_mbo_exc AS STRING) AS nom_munic_certid_mbo_exc,
    CAST(cod_ibge_munic_certid_mbo_exc AS STRING) AS cod_ibge_munic_certid_mbo_exc,
    CAST(desc_mot_exc AS STRING) AS desc_mot_exc,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.19_0603`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_exc_mbo AS STRING) AS chv_natural_prefeitura_exc_mbo,
    CAST(cod_familiar_exc_mbo AS STRING) AS cod_familiar_exc_mbo,
    CAST(num_membro_exc AS STRING) AS num_membro_exc,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(data_exc_mbo AS STRING) AS data_exc_mbo,
    CAST(cpf_oper_exc_mbo AS STRING) AS cpf_oper_exc_mbo,
    CAST(motivo_exc_mbo AS STRING) AS motivo_exc_mbo,
    CAST(num_pgmcu_mbo AS STRING) AS num_pgmcu_mbo,
    CAST(dat_emi_pgmcu_mbo AS STRING) AS dat_emi_pgmcu_mbo,
    CAST(nom_servd_pbco_pgmcu_mbo AS STRING) AS nom_servd_pbco_pgmcu_mbo,
    CAST(cpf_servd_pbco_pgmcu_pgmcu_mbo AS STRING) AS cpf_servd_pbco_pgmcu_pgmcu_mbo,
    CAST(uf_pgmcu_mbo AS STRING) AS uf_pgmcu_mbo,
    CAST(mun_pgmcu_mbo AS STRING) AS mun_pgmcu_mbo,
    CAST(nom_cartorio_certid_mbo_exc AS STRING) AS nom_cartorio_certid_mbo_exc,
    CAST(cod_livro_termo_certid_mbo_exc AS STRING) AS cod_livro_termo_certid_mbo_exc,
    CAST(cod_folha_termo_certid_mbo_exc AS STRING) AS cod_folha_termo_certid_mbo_exc,
    CAST(cod_termo_matricula_certid_mbo_exc AS STRING) AS cod_termo_matricula_certid_mbo_exc,
    CAST(dta_emissao_certid_mbo_exc AS STRING) AS dta_emissao_certid_mbo_exc,
    CAST(sig_uf_certid_mbo_exc AS STRING) AS sig_uf_certid_mbo_exc,
    CAST(nom_munic_certid_mbo_exc AS STRING) AS nom_munic_certid_mbo_exc,
    CAST(cod_ibge_munic_certid_mbo_exc AS STRING) AS cod_ibge_munic_certid_mbo_exc,
    CAST(desc_mot_exc AS STRING) AS desc_mot_exc,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.19_0604`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_exc_mbo AS STRING) AS chv_natural_prefeitura_exc_mbo,
    CAST(cod_familiar_exc_mbo AS STRING) AS cod_familiar_exc_mbo,
    CAST(num_membro_exc AS STRING) AS num_membro_exc,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(data_exc_mbo AS STRING) AS data_exc_mbo,
    CAST(cpf_oper_exc_mbo AS STRING) AS cpf_oper_exc_mbo,
    CAST(motivo_exc_mbo AS STRING) AS motivo_exc_mbo,
    CAST(num_pgmcu_mbo AS STRING) AS num_pgmcu_mbo,
    CAST(dat_emi_pgmcu_mbo AS STRING) AS dat_emi_pgmcu_mbo,
    CAST(nom_servd_pbco_pgmcu_mbo AS STRING) AS nom_servd_pbco_pgmcu_mbo,
    CAST(cpf_servd_pbco_pgmcu_pgmcu_mbo AS STRING) AS cpf_servd_pbco_pgmcu_pgmcu_mbo,
    CAST(uf_pgmcu_mbo AS STRING) AS uf_pgmcu_mbo,
    CAST(mun_pgmcu_mbo AS STRING) AS mun_pgmcu_mbo,
    CAST(nom_cartorio_certid_mbo_exc AS STRING) AS nom_cartorio_certid_mbo_exc,
    CAST(cod_livro_termo_certid_mbo_exc AS STRING) AS cod_livro_termo_certid_mbo_exc,
    CAST(cod_folha_termo_certid_mbo_exc AS STRING) AS cod_folha_termo_certid_mbo_exc,
    CAST(cod_termo_matricula_certid_mbo_exc AS STRING) AS cod_termo_matricula_certid_mbo_exc,
    CAST(dta_emissao_certid_mbo_exc AS STRING) AS dta_emissao_certid_mbo_exc,
    CAST(sig_uf_certid_mbo_exc AS STRING) AS sig_uf_certid_mbo_exc,
    CAST(nom_munic_certid_mbo_exc AS STRING) AS nom_munic_certid_mbo_exc,
    CAST(cod_ibge_munic_certid_mbo_exc AS STRING) AS cod_ibge_munic_certid_mbo_exc,
    CAST(desc_mot_exc AS STRING) AS desc_mot_exc,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.19_0609`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_exc_mbo AS STRING) AS chv_natural_prefeitura_exc_mbo,
    CAST(cod_familiar_exc_mbo AS STRING) AS cod_familiar_exc_mbo,
    CAST(num_membro_exc AS STRING) AS num_membro_exc,
    CAST(vazio AS STRING) AS vazio,
    CAST(num_reg_arquivo AS STRING) AS num_reg_arquivo,
    CAST(data_exc_mbo AS STRING) AS data_exc_mbo,
    CAST(cpf_oper_exc_mbo AS STRING) AS cpf_oper_exc_mbo,
    CAST(motivo_exc_mbo AS STRING) AS motivo_exc_mbo,
    CAST(num_pgmcu_mbo AS STRING) AS num_pgmcu_mbo,
    CAST(dat_emi_pgmcu_mbo AS STRING) AS dat_emi_pgmcu_mbo,
    CAST(nom_servd_pbco_pgmcu_mbo AS STRING) AS nom_servd_pbco_pgmcu_mbo,
    CAST(cpf_servd_pbco_pgmcu_pgmcu_mbo AS STRING) AS cpf_servd_pbco_pgmcu_pgmcu_mbo,
    CAST(uf_pgmcu_mbo AS STRING) AS uf_pgmcu_mbo,
    CAST(mun_pgmcu_mbo AS STRING) AS mun_pgmcu_mbo,
    CAST(nom_cartorio_certid_mbo_exc AS STRING) AS nom_cartorio_certid_mbo_exc,
    CAST(cod_livro_termo_certid_mbo_exc AS STRING) AS cod_livro_termo_certid_mbo_exc,
    CAST(cod_folha_termo_certid_mbo_exc AS STRING) AS cod_folha_termo_certid_mbo_exc,
    CAST(cod_termo_matricula_certid_mbo_exc AS STRING) AS cod_termo_matricula_certid_mbo_exc,
    CAST(dta_emissao_certid_mbo_exc AS STRING) AS dta_emissao_certid_mbo_exc,
    CAST(sig_uf_certid_mbo_exc AS STRING) AS sig_uf_certid_mbo_exc,
    CAST(nom_munic_certid_mbo_exc AS STRING) AS nom_munic_certid_mbo_exc,
    CAST(cod_ibge_munic_certid_mbo_exc AS STRING) AS cod_ibge_munic_certid_mbo_exc,
    CAST(desc_mot_exc AS STRING) AS desc_mot_exc,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.19_0612`

