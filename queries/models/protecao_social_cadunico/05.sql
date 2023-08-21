
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
    SUBSTRING(text,25,11) AS num_membro_fmla,
    SUBSTRING(text,36,2) AS vazio,
    SUBSTRING(text,38,2) AS num_reg_arquivo,
    SUBSTRING(text,40,1) AS cod_certidao_civil_pessoa,
    SUBSTRING(text,41,70) AS nom_cartorio_pessoa,
    SUBSTRING(text,111,8) AS cod_livro_termo_certid_pessoa,
    SUBSTRING(text,119,4) AS cod_folha_termo_certid_pessoa,
    SUBSTRING(text,123,8) AS vazio,
    SUBSTRING(text,131,8) AS dta_emissao_certid_pessoa,
    SUBSTRING(text,139,2) AS sig_uf_certid_pessoa,
    SUBSTRING(text,141,35) AS nom_munic_certid_pessoa,
    SUBSTRING(text,176,7) AS cod_ibge_munic_certid_pessoa,
    SUBSTRING(text,183,15) AS cod_cartorio_certid_pessoa,
    SUBSTRING(text,198,11) AS num_cpf_pessoa,
    SUBSTRING(text,209,16) AS vazio,
    SUBSTRING(text,225,5) AS cod_complemento_pessoa,
    SUBSTRING(text,230,8) AS dta_emissao_ident_pessoa,
    SUBSTRING(text,238,2) AS sig_uf_ident_pessoa,
    SUBSTRING(text,240,8) AS sig_orgao_emissor_pessoa,
    SUBSTRING(text,248,7) AS num_cart_trab_prev_soc_pessoa,
    SUBSTRING(text,255,5) AS num_serie_trab_prev_soc_pessoa,
    SUBSTRING(text,260,8) AS dta_emissao_cart_trab_pessoa,
    SUBSTRING(text,268,2) AS sig_uf_cart_trab_pessoa,
    SUBSTRING(text,270,13) AS num_titulo_eleitor_pessoa,
    SUBSTRING(text,283,4) AS num_zona_tit_eleitor_pessoa,
    SUBSTRING(text,287,4) AS num_secao_tit_eleitor_pessoa,
    SUBSTRING(text,291,32) AS cod_termo / matrícula _certid_pessoa,
    SUBSTRING(text,323,20) AS num_identidade_pessoa,
    SAFE_CAST(data_particao AS DATE) data_particao,
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia` 
WHERE SUBSTRING(text,38,2) = '05' AND
    SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
