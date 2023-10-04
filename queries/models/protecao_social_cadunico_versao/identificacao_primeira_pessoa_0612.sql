
{{
    config(
        materialized= "incremental",
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
    SUBSTRING(text,40,8) AS dta_cadastramento_memb,
    SUBSTRING(text,48,8) AS dta_atual_memb,
    SUBSTRING(text,56,1) AS cod_est_cadastral_memb,
    SUBSTRING(text,57,1) AS ind_trabalho_infantil_pessoa,
    SUBSTRING(text,58,2) AS num_ordem_pessoa,
    SUBSTRING(text,60,70) AS nom_pessoa,
    SUBSTRING(text,130,11) AS num_nis_pessoa_atual,
    SUBSTRING(text,141,34) AS nom_apelido_pessoa,
    SUBSTRING(text,175,1) AS cod_sexo_pessoa,
    SUBSTRING(text,176,8) AS dta_nasc_pessoa,
    SUBSTRING(text,184,2) AS cod_parentesco_rf_pessoa,
    SUBSTRING(text,186,1) AS cod_raca_cor_pessoa,
    SUBSTRING(text,187,70) AS nom_completo_mae_pessoa,
    SUBSTRING(text,257,1) AS ind_nom_completo_mae_pessoa,
    SUBSTRING(text,258,70) AS nom_completo_pai_pessoa,
    SUBSTRING(text,328,1) AS ind_nom_completo_pai_pessoa,
    SUBSTRING(text,329,1) AS cod_local_nascimento_pessoa,
    SUBSTRING(text,330,2) AS sig_uf_munic_nasc_pessoa,
    SUBSTRING(text,332,1) AS ind_uf_munic_nasc_pessoa,
    SUBSTRING(text,333,35) AS nom_ibge_munic_nasc_pessoa,
    SUBSTRING(text,368,7) AS cod_ibge_munic_nasc_pessoa,
    SUBSTRING(text,375,1) AS ind_ibge_munic_nasc_pessoa,
    SUBSTRING(text,376,40) AS nom_pais_origem_pessoa,
    SUBSTRING(text,416,2) AS vazio_2,
    SUBSTRING(text,418,1) AS ind_pais_origem_pessoa,
    SUBSTRING(text,419,1) AS cod_certidao_registrada_pessoa,
    SUBSTRING(text,420,13) AS cod_origem_prefeitura_pessoa,
    SUBSTRING(text,433,11) AS cod_origem_familia_pessoa,
    SUBSTRING(text,444,1) AS ind_transferencia_pessoa,
    SUBSTRING(text,445,60) AS nom_origem_alteracao_pessoa,
    SUBSTRING(text,505,13) AS chv_nat_pes_atual,
    SUBSTRING(text,518,13) AS chv_nat_pes_original,
    SUBSTRING(text,531,11) AS nu_nis_original,
    SUBSTRING(text,542,4) AS cod_pais_origem_pessoa,
    SUBSTRING(text,546,2) AS nu_origem_cadastro_pessoa,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0612'
    AND SUBSTRING(text,38,2) = '04'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
