
{{
    config(
        materialized="table",
        partition_by={
            "field": "data_particao",
            "data_type": "date",
            "granularity": "month",
        }
    )
}}


SELECT

    --column: chv_nat_pes_atual
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,505,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,505,13))  AS STRING)
    END AS id_pessoa,

    --column: chv_nat_pes_original
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,518,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,518,13))  AS STRING)
    END AS id_original_pessoa,

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_certidao_registrada_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,419,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,419,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,

    --column: cod_est_cadastral_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastral,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,7))  AS STRING)
    END AS id_municipio_nascimento,

    --column: cod_local_nascimento_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,329,1))  AS STRING)
    END AS id_local_nascimento,

    --column: cod_origem_familia_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,433,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,433,11))  AS STRING)
    END AS id_familia_origem,

    --column: cod_origem_prefeitura_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,13))  AS STRING)
    END AS id_prefeitura_origem,

    --column: cod_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,542,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,542,4))  AS STRING)
    END AS id_pais_origem,

    --column: cod_parentesco_rf_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,184,2))  AS STRING)
    END AS id_parentesco_responsavel_familia,

    --column: cod_raca_cor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,186,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,186,1))  AS STRING)
    END AS id_raca_cor,

    --column: cod_sexo_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,1))  AS STRING)
    END AS id_sexo,

    --column: dta_atual_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_ultima_atualizacao,

    --column: dta_cadastramento_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro,

    --column: dta_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,176,8)))  AS DATE)
    END AS data_nascimento,

    --column: ind_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,375,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,375,1))  AS STRING)
    END AS sabe_id_municipio_nascimento,

    --column: ind_nom_completo_mae_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,257,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,257,1))  AS STRING)
    END AS nao_sabe_nome_mae,

    --column: ind_nom_completo_pai_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_sabe_nome_pai,

    --column: ind_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,418,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,418,1))  AS STRING)
    END AS sabe_pais_nascimento,

    --column: ind_trabalho_infantil_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS id_trabalho_infantil,

    --column: ind_transferencia_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,1))  AS STRING)
    END AS foi_transferido,

    --column: ind_uf_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,332,1))  AS STRING)
    END AS sabe_uf_nascimento,

    --column: nom_apelido_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,34))  AS STRING)
    END AS apelido,

    --column: nom_completo_mae_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,187,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,187,70))  AS STRING)
    END AS nome_mae,

    --column: nom_completo_pai_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,258,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,258,70))  AS STRING)
    END AS nome_pai,

    --column: nom_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,333,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,333,35))  AS STRING)
    END AS municipio_nascimento,

    --column: nom_origem_alteracao_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,445,60), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,445,60))  AS STRING)
    END AS origem_alteracao,

    --column: nom_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,376,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,376,40))  AS STRING)
    END AS pais_nascimento,

    --column: nom_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,70))  AS STRING)
    END AS nome,

    --column: nu_nis_original
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,531,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,531,11))  AS STRING)
    END AS nis_original,

    --column: nu_origem_cadastro_pessoa
    NULL AS origem_cadastro_pessoa, --Essa coluna não esta na versao posterior

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_nis_pessoa_atual
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,11))  AS STRING)
    END AS nis,

    --column: num_ordem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,2))  AS STRING)
    END AS id_numero_ordem,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: sig_uf_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,330,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,330,2))  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '04'

UNION ALL


SELECT

    --column: chv_nat_pes_atual
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,505,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,505,13))  AS STRING)
    END AS id_pessoa,

    --column: chv_nat_pes_original
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,518,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,518,13))  AS STRING)
    END AS id_original_pessoa,

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_certidao_registrada_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,419,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,419,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,

    --column: cod_est_cadastral_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastral,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,7))  AS STRING)
    END AS id_municipio_nascimento,

    --column: cod_local_nascimento_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,329,1))  AS STRING)
    END AS id_local_nascimento,

    --column: cod_origem_familia_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,433,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,433,11))  AS STRING)
    END AS id_familia_origem,

    --column: cod_origem_prefeitura_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,13))  AS STRING)
    END AS id_prefeitura_origem,

    --column: cod_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,542,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,542,4))  AS STRING)
    END AS id_pais_origem,

    --column: cod_parentesco_rf_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,184,2))  AS STRING)
    END AS id_parentesco_responsavel_familia,

    --column: cod_raca_cor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,186,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,186,1))  AS STRING)
    END AS id_raca_cor,

    --column: cod_sexo_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,1))  AS STRING)
    END AS id_sexo,

    --column: dta_atual_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_ultima_atualizacao,

    --column: dta_cadastramento_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro,

    --column: dta_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,176,8)))  AS DATE)
    END AS data_nascimento,

    --column: ind_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,375,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,375,1))  AS STRING)
    END AS sabe_id_municipio_nascimento,

    --column: ind_nom_completo_mae_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,257,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,257,1))  AS STRING)
    END AS nao_sabe_nome_mae,

    --column: ind_nom_completo_pai_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_sabe_nome_pai,

    --column: ind_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,418,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,418,1))  AS STRING)
    END AS sabe_pais_nascimento,

    --column: ind_trabalho_infantil_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS id_trabalho_infantil,

    --column: ind_transferencia_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,1))  AS STRING)
    END AS foi_transferido,

    --column: ind_uf_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,332,1))  AS STRING)
    END AS sabe_uf_nascimento,

    --column: nom_apelido_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,34))  AS STRING)
    END AS apelido,

    --column: nom_completo_mae_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,187,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,187,70))  AS STRING)
    END AS nome_mae,

    --column: nom_completo_pai_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,258,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,258,70))  AS STRING)
    END AS nome_pai,

    --column: nom_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,333,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,333,35))  AS STRING)
    END AS municipio_nascimento,

    --column: nom_origem_alteracao_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,445,60), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,445,60))  AS STRING)
    END AS origem_alteracao,

    --column: nom_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,376,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,376,40))  AS STRING)
    END AS pais_nascimento,

    --column: nom_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,70))  AS STRING)
    END AS nome,

    --column: nu_nis_original
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,531,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,531,11))  AS STRING)
    END AS nis_original,

    --column: nu_origem_cadastro_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,546,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,546,2))  AS STRING)
    END AS origem_cadastro_pessoa,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_nis_pessoa_atual
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,11))  AS STRING)
    END AS nis,

    --column: num_ordem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,2))  AS STRING)
    END AS id_numero_ordem,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: sig_uf_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,330,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,330,2))  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0603'
    AND SUBSTRING(text,38,2) = '04'

UNION ALL


SELECT

    --column: chv_nat_pes_atual
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,505,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,505,13))  AS STRING)
    END AS id_pessoa,

    --column: chv_nat_pes_original
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,518,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,518,13))  AS STRING)
    END AS id_original_pessoa,

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_certidao_registrada_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,419,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,419,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,

    --column: cod_est_cadastral_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastral,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,7))  AS STRING)
    END AS id_municipio_nascimento,

    --column: cod_local_nascimento_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,329,1))  AS STRING)
    END AS id_local_nascimento,

    --column: cod_origem_familia_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,433,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,433,11))  AS STRING)
    END AS id_familia_origem,

    --column: cod_origem_prefeitura_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,13))  AS STRING)
    END AS id_prefeitura_origem,

    --column: cod_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,542,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,542,4))  AS STRING)
    END AS id_pais_origem,

    --column: cod_parentesco_rf_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,184,2))  AS STRING)
    END AS id_parentesco_responsavel_familia,

    --column: cod_raca_cor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,186,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,186,1))  AS STRING)
    END AS id_raca_cor,

    --column: cod_sexo_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,1))  AS STRING)
    END AS id_sexo,

    --column: dta_atual_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_ultima_atualizacao,

    --column: dta_cadastramento_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro,

    --column: dta_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,176,8)))  AS DATE)
    END AS data_nascimento,

    --column: ind_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,375,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,375,1))  AS STRING)
    END AS sabe_id_municipio_nascimento,

    --column: ind_nom_completo_mae_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,257,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,257,1))  AS STRING)
    END AS nao_sabe_nome_mae,

    --column: ind_nom_completo_pai_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_sabe_nome_pai,

    --column: ind_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,418,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,418,1))  AS STRING)
    END AS sabe_pais_nascimento,

    --column: ind_trabalho_infantil_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS id_trabalho_infantil,

    --column: ind_transferencia_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,1))  AS STRING)
    END AS foi_transferido,

    --column: ind_uf_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,332,1))  AS STRING)
    END AS sabe_uf_nascimento,

    --column: nom_apelido_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,34))  AS STRING)
    END AS apelido,

    --column: nom_completo_mae_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,187,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,187,70))  AS STRING)
    END AS nome_mae,

    --column: nom_completo_pai_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,258,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,258,70))  AS STRING)
    END AS nome_pai,

    --column: nom_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,333,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,333,35))  AS STRING)
    END AS municipio_nascimento,

    --column: nom_origem_alteracao_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,445,60), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,445,60))  AS STRING)
    END AS origem_alteracao,

    --column: nom_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,376,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,376,40))  AS STRING)
    END AS pais_nascimento,

    --column: nom_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,70))  AS STRING)
    END AS nome,

    --column: nu_nis_original
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,531,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,531,11))  AS STRING)
    END AS nis_original,

    --column: nu_origem_cadastro_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,546,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,546,2))  AS STRING)
    END AS origem_cadastro_pessoa,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_nis_pessoa_atual
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,11))  AS STRING)
    END AS nis,

    --column: num_ordem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,2))  AS STRING)
    END AS id_numero_ordem,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: sig_uf_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,330,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,330,2))  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '04'

UNION ALL


SELECT

    --column: chv_nat_pes_atual
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,505,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,505,13))  AS STRING)
    END AS id_pessoa,

    --column: chv_nat_pes_original
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,518,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,518,13))  AS STRING)
    END AS id_original_pessoa,

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_certidao_registrada_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,419,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,419,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,

    --column: cod_est_cadastral_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastral,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,7))  AS STRING)
    END AS id_municipio_nascimento,

    --column: cod_local_nascimento_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,329,1))  AS STRING)
    END AS id_local_nascimento,

    --column: cod_origem_familia_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,433,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,433,11))  AS STRING)
    END AS id_familia_origem,

    --column: cod_origem_prefeitura_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,13))  AS STRING)
    END AS id_prefeitura_origem,

    --column: cod_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,542,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,542,4))  AS STRING)
    END AS id_pais_origem,

    --column: cod_parentesco_rf_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,184,2))  AS STRING)
    END AS id_parentesco_responsavel_familia,

    --column: cod_raca_cor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,186,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,186,1))  AS STRING)
    END AS id_raca_cor,

    --column: cod_sexo_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,1))  AS STRING)
    END AS id_sexo,

    --column: dta_atual_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_ultima_atualizacao,

    --column: dta_cadastramento_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro,

    --column: dta_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,176,8)))  AS DATE)
    END AS data_nascimento,

    --column: ind_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,375,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,375,1))  AS STRING)
    END AS sabe_id_municipio_nascimento,

    --column: ind_nom_completo_mae_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,257,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,257,1))  AS STRING)
    END AS nao_sabe_nome_mae,

    --column: ind_nom_completo_pai_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_sabe_nome_pai,

    --column: ind_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,418,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,418,1))  AS STRING)
    END AS sabe_pais_nascimento,

    --column: ind_trabalho_infantil_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS id_trabalho_infantil,

    --column: ind_transferencia_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,1))  AS STRING)
    END AS foi_transferido,

    --column: ind_uf_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,332,1))  AS STRING)
    END AS sabe_uf_nascimento,

    --column: nom_apelido_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,34))  AS STRING)
    END AS apelido,

    --column: nom_completo_mae_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,187,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,187,70))  AS STRING)
    END AS nome_mae,

    --column: nom_completo_pai_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,258,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,258,70))  AS STRING)
    END AS nome_pai,

    --column: nom_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,333,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,333,35))  AS STRING)
    END AS municipio_nascimento,

    --column: nom_origem_alteracao_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,445,60), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,445,60))  AS STRING)
    END AS origem_alteracao,

    --column: nom_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,376,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,376,40))  AS STRING)
    END AS pais_nascimento,

    --column: nom_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,70))  AS STRING)
    END AS nome,

    --column: nu_nis_original
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,531,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,531,11))  AS STRING)
    END AS nis_original,

    --column: nu_origem_cadastro_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,546,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,546,2))  AS STRING)
    END AS origem_cadastro_pessoa,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_nis_pessoa_atual
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,11))  AS STRING)
    END AS nis,

    --column: num_ordem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,2))  AS STRING)
    END AS id_numero_ordem,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: sig_uf_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,330,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,330,2))  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '04'

UNION ALL


SELECT

    --column: chv_nat_pes_atual
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,505,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,505,13))  AS STRING)
    END AS id_pessoa,

    --column: chv_nat_pes_original
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,518,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,518,13))  AS STRING)
    END AS id_original_pessoa,

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_certidao_registrada_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,419,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,419,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,

    --column: cod_est_cadastral_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastral,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,7))  AS STRING)
    END AS id_municipio_nascimento,

    --column: cod_local_nascimento_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,329,1))  AS STRING)
    END AS id_local_nascimento,

    --column: cod_origem_familia_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,433,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,433,11))  AS STRING)
    END AS id_familia_origem,

    --column: cod_origem_prefeitura_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,13))  AS STRING)
    END AS id_prefeitura_origem,

    --column: cod_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,542,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,542,4))  AS STRING)
    END AS id_pais_origem,

    --column: cod_parentesco_rf_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,184,2))  AS STRING)
    END AS id_parentesco_responsavel_familia,

    --column: cod_raca_cor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,186,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,186,1))  AS STRING)
    END AS id_raca_cor,

    --column: cod_sexo_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,1))  AS STRING)
    END AS id_sexo,

    --column: dta_atual_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_ultima_atualizacao,

    --column: dta_cadastramento_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro,

    --column: dta_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,176,8)))  AS DATE)
    END AS data_nascimento,

    --column: ind_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,375,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,375,1))  AS STRING)
    END AS sabe_id_municipio_nascimento,

    --column: ind_nom_completo_mae_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,257,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,257,1))  AS STRING)
    END AS nao_sabe_nome_mae,

    --column: ind_nom_completo_pai_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_sabe_nome_pai,

    --column: ind_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,418,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,418,1))  AS STRING)
    END AS sabe_pais_nascimento,

    --column: ind_trabalho_infantil_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS id_trabalho_infantil,

    --column: ind_transferencia_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,1))  AS STRING)
    END AS foi_transferido,

    --column: ind_uf_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,332,1))  AS STRING)
    END AS sabe_uf_nascimento,

    --column: nom_apelido_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,34))  AS STRING)
    END AS apelido,

    --column: nom_completo_mae_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,187,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,187,70))  AS STRING)
    END AS nome_mae,

    --column: nom_completo_pai_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,258,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,258,70))  AS STRING)
    END AS nome_pai,

    --column: nom_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,333,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,333,35))  AS STRING)
    END AS municipio_nascimento,

    --column: nom_origem_alteracao_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,445,60), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,445,60))  AS STRING)
    END AS origem_alteracao,

    --column: nom_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,376,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,376,40))  AS STRING)
    END AS pais_nascimento,

    --column: nom_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,70))  AS STRING)
    END AS nome,

    --column: nu_nis_original
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,531,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,531,11))  AS STRING)
    END AS nis_original,

    --column: nu_origem_cadastro_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,546,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,546,2))  AS STRING)
    END AS origem_cadastro_pessoa,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_nis_pessoa_atual
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,11))  AS STRING)
    END AS nis,

    --column: num_ordem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,2))  AS STRING)
    END AS id_numero_ordem,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: sig_uf_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,330,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,330,2))  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '04'

UNION ALL


SELECT

    --column: chv_nat_pes_atual
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,505,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,505,13))  AS STRING)
    END AS id_pessoa,

    --column: chv_nat_pes_original
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,518,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,518,13))  AS STRING)
    END AS id_original_pessoa,

    --column: chv_natural_prefeitura_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,1,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,1,13))  AS STRING)
    END AS id_prefeitura,

    --column: cod_certidao_registrada_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,419,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,419,1))  AS STRING)
    END AS id_certidao_registrada_cartorio,

    --column: cod_est_cadastral_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,56,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,56,1))  AS STRING)
    END AS id_estado_cadastral,

    --column: cod_familiar_fam
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,14,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,14,11))  AS STRING)
    END AS id_familia,

    --column: cod_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,368,7), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,368,7))  AS STRING)
    END AS id_municipio_nascimento,

    --column: cod_local_nascimento_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,329,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,329,1))  AS STRING)
    END AS id_local_nascimento,

    --column: cod_origem_familia_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,433,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,433,11))  AS STRING)
    END AS id_familia_origem,

    --column: cod_origem_prefeitura_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,420,13), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,420,13))  AS STRING)
    END AS id_prefeitura_origem,

    --column: cod_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,542,4), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,542,4))  AS STRING)
    END AS id_pais_origem,

    --column: cod_parentesco_rf_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,184,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,184,2))  AS STRING)
    END AS id_parentesco_responsavel_familia,

    --column: cod_raca_cor_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,186,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,186,1))  AS STRING)
    END AS id_raca_cor,

    --column: cod_sexo_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,175,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,175,1))  AS STRING)
    END AS id_sexo,

    --column: dta_atual_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,48,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,48,8)))  AS DATE)
    END AS data_ultima_atualizacao,

    --column: dta_cadastramento_memb
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,40,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,40,8)))  AS DATE)
    END AS data_cadastro,

    --column: dta_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,176,8), r'^\s*$') THEN NULL
        ELSE CAST( SAFE.PARSE_DATE('%d%m%Y', TRIM(SUBSTRING(text,176,8)))  AS DATE)
    END AS data_nascimento,

    --column: ind_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,375,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,375,1))  AS STRING)
    END AS sabe_id_municipio_nascimento,

    --column: ind_nom_completo_mae_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,257,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,257,1))  AS STRING)
    END AS nao_sabe_nome_mae,

    --column: ind_nom_completo_pai_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,328,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,328,1))  AS STRING)
    END AS nao_sabe_nome_pai,

    --column: ind_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,418,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,418,1))  AS STRING)
    END AS sabe_pais_nascimento,

    --column: ind_trabalho_infantil_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,57,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,57,1))  AS STRING)
    END AS id_trabalho_infantil,

    --column: ind_transferencia_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,444,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,444,1))  AS STRING)
    END AS foi_transferido,

    --column: ind_uf_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,332,1), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,332,1))  AS STRING)
    END AS sabe_uf_nascimento,

    --column: nom_apelido_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,141,34), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,141,34))  AS STRING)
    END AS apelido,

    --column: nom_completo_mae_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,187,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,187,70))  AS STRING)
    END AS nome_mae,

    --column: nom_completo_pai_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,258,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,258,70))  AS STRING)
    END AS nome_pai,

    --column: nom_ibge_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,333,35), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,333,35))  AS STRING)
    END AS municipio_nascimento,

    --column: nom_origem_alteracao_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,445,60), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,445,60))  AS STRING)
    END AS origem_alteracao,

    --column: nom_pais_origem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,376,40), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,376,40))  AS STRING)
    END AS pais_nascimento,

    --column: nom_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,60,70), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,60,70))  AS STRING)
    END AS nome,

    --column: nu_nis_original
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,531,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,531,11))  AS STRING)
    END AS nis_original,

    --column: nu_origem_cadastro_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,546,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,546,2))  AS STRING)
    END AS origem_cadastro_pessoa,

    --column: num_membro_fmla
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,25,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,25,11))  AS STRING)
    END AS id_membro_familia,

    --column: num_nis_pessoa_atual
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,130,11), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,130,11))  AS STRING)
    END AS nis,

    --column: num_ordem_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,58,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,58,2))  AS STRING)
    END AS id_numero_ordem,

    --column: num_reg_arquivo
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,38,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,38,2))  AS STRING)
    END AS numero_registro_arquivo,

    --column: sig_uf_munic_nasc_pessoa
    CASE
        WHEN REGEXP_CONTAINS(SUBSTRING(text,330,2), r'^\s*$') THEN NULL
        ELSE CAST( TRIM(SUBSTRING(text,330,2))  AS STRING)
    END AS sigla_uf_municipio_nascimento,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE versao_layout_particao = '0615'
    AND SUBSTRING(text,38,2) = '04'

