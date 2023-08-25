
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
    SUBSTRING(text,1,13) AS chv_natural_prefeitura_rl,
    SUBSTRING(text,14,11) AS cod_familiar_rl,
    SUBSTRING(text,25,11) AS num_rl_fmla,
    SUBSTRING(text,36,2) AS vazio,
    SUBSTRING(text,38,2) AS num_reg_arquivo,
    SUBSTRING(text,40,8) AS dta_cadastramento_rl,
    SUBSTRING(text,48,70) AS nom_pessoa_rl,
    SUBSTRING(text,118,11) AS num_nis_pessoa_rl,
    SUBSTRING(text,129,1) AS cod_sexo_rl,
    SUBSTRING(text,130,8) AS dta_nasc_rl,
    SUBSTRING(text,138,70) AS nom_completo_mae_rl,
    SUBSTRING(text,208,1) AS ind_nom_completo_mae_rl,
    SUBSTRING(text,209,70) AS nom_completo_pai_rl,
    SUBSTRING(text,279,1) AS ind_nom_completo_pai_rl,
    SUBSTRING(text,280,7) AS cod_ibge_municipio_nascimento_rl,
    SUBSTRING(text,287,35) AS nome_municipio_nascimento_rl,
    SUBSTRING(text,322,2) AS sigla_uf_nascimento_rl,
    SUBSTRING(text,324,4) AS cod_pais_nasicmento_rl,
    SUBSTRING(text,328,40) AS nome_pais_nascimento_rl,
    SUBSTRING(text,368,11) AS num_cpf_rl,
    SUBSTRING(text,379,1) AS ic_obito_rl,
    SUBSTRING(text,380,1) AS ic_obito_acatado_rl,
    SUBSTRING(text,381,3) AS num_ddd_contato_1_rl,
    SUBSTRING(text,384,10) AS num_tel_contato_1_rl,
    SUBSTRING(text,394,3) AS num_ddd_contato_2_rl,
    SUBSTRING(text,397,10) AS num_tel_contato_2_rl,
    SUBSTRING(text,407,50) AS email_rl,
    SUBSTRING(text,457,100) AS tipo_representacao_legal,
    SUBSTRING(text,557,250) AS desc_representacao_legal,
    SUBSTRING(text,807,13) AS chv_natural_rl,
    SUBSTRING(text,820,38) AS nome_tipo_logradouro_rl,
    SUBSTRING(text,858,50) AS nome_logradouro_rl,
    SUBSTRING(text,908,15) AS num_logradouro_rl,
    SUBSTRING(text,923,53) AS desc_complemento_lograd_rl,
    SUBSTRING(text,976,8) AS num_cep_rl,
    SUBSTRING(text,984,40) AS nome_bairro_rl,
    SUBSTRING(text,1024,9) AS numero_municipio_rl,
    SUBSTRING(text,1033,35) AS nome_municipio_rl,
    SUBSTRING(text,1068,2) AS sigla_uf_rl,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_solical_cadunico_staging.test`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '20'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
