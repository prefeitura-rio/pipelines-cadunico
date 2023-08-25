
{{
    config(
        materialized='incremental',
        partition_by={
            "field": "data_particao",
            "data_type": "date",
            "granularity": "month",
        }
    )

}}

SELECT
    SUBSTRING(text,1,13) AS chv_natural_prefeitura_fam,
    SUBSTRING(text,14,11) AS cod_familiar_fam,
    SUBSTRING(text,25,13) AS vazio,
    SUBSTRING(text,38,2) AS num_reg_arquivo,
    SUBSTRING(text,40,8) AS dat_cadastramento_fam,
    SUBSTRING(text,48,8) AS dat_alteracao_fam,
    SUBSTRING(text,56,1) AS cod_est_cadastral_fam,
    SUBSTRING(text,57,1) AS ind_cadastro_valido_fam,
    SUBSTRING(text,58,1) AS cod_condicao_cadastro_fam,
    SUBSTRING(text,59,9) AS vlr_renda_media_fam,
    SUBSTRING(text,68,1) AS ind_trabalho_infantil_fam,
    SUBSTRING(text,69,2) AS cod_munic_ibge_2_fam,
    SUBSTRING(text,71,5) AS cod_munic_ibge_5_fam,
    SUBSTRING(text,76,2) AS cod_ibge_distrito_fam,
    SUBSTRING(text,78,2) AS cod_ibge_subdistr_fam,
    SUBSTRING(text,80,4) AS cod_ibge_setor_censo_fam,
    SUBSTRING(text,84,1) AS cod_modalidade_fam,
    SUBSTRING(text,85,1) AS cod_forma_coleta_fam,
    SUBSTRING(text,86,1) AS ind_formulario_0_fam,
    SUBSTRING(text,87,1) AS ind_formulario_1_fam,
    SUBSTRING(text,88,1) AS ind_formulario_2_fam,
    SUBSTRING(text,89,1) AS ind_formulario_sup1_fam,
    SUBSTRING(text,90,1) AS ind_formulario_sup2_fam,
    SUBSTRING(text,91,8) AS dta_entrevista_fam,
    SUBSTRING(text,99,76) AS nom_localidade_fam,
    SUBSTRING(text,175,38) AS nom_tip_logradouro_fam,
    SUBSTRING(text,213,38) AS nom_titulo_logradouro_fam,
    SUBSTRING(text,251,76) AS nom_logradouro_fam,
    SUBSTRING(text,327,16) AS num_logradouro_fam,
    SUBSTRING(text,343,22) AS des_complemento_fam,
    SUBSTRING(text,365,75) AS des_complemento_adic_fam,
    SUBSTRING(text,440,8) AS num_cep_logradouro_fam,
    SUBSTRING(text,448,38) AS filler,
    SUBSTRING(text,486,256) AS txt_referencia_local_fam,
    SUBSTRING(text,742,70) AS nom_entrevistador_fam,
    SUBSTRING(text,812,11) AS num_cpf_entrevistador_fam,
    SUBSTRING(text,823,256) AS txt_obs_entrevistador_fam,
    SUBSTRING(text,1079,13) AS cod_origem_prefeitura_fam,
    SUBSTRING(text,1092,11) AS cod_origem_familia_fam,
    SUBSTRING(text,1103,8) AS dt_cdstr_atual_fmla,
    SUBSTRING(text,1111,1) AS flag_fam_alterada_v7,
    SUBSTRING(text,1112,8) AS dat_atualizacao_familia,
    SUBSTRING(text,1120,10) AS cod_unidade_territorial_fam,
    SUBSTRING(text,1130,100) AS nom_unidade_territorial_fam,
    SUBSTRING(text,1230,1) AS ind_formulario_sup3_fam,
    SUBSTRING(text,1231,2) AS nu_origem_cadastro_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_solical_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0609'
    AND SUBSTRING(text,38,2) = '01'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
