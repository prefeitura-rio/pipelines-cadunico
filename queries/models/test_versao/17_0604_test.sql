
{{
    config(
        materialized= "incremental" if run_query("SELECT COUNT(*) FROM " ~ this ~ " WHERE data_particao > (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) FROM " ~ this ~ " WHERE versao_layout_particao = '0604')").columns[0].values()[0] > 0 else "ephemeral",
        partition_by={
            "field": "data_particao",
            "data_type": "date",
            "granularity": "month",
        }
    )

}}

SELECT
    SUBSTRING(text,1,13) AS chv_natural_prefeitura_membt,
    SUBSTRING(text,14,11) AS cod_familiar_membt,
    SUBSTRING(text,25,11) AS num_membro_fmla,
    SUBSTRING(text,36,2) AS vazio,
    SUBSTRING(text,38,2) AS num_reg_arquivo,
    SUBSTRING(text,40,8) AS dta_transferencia_membt,
    SUBSTRING(text,48,1) AS cod_est_cadastral_atual_membt,
    SUBSTRING(text,49,70) AS nom_memb_t,
    SUBSTRING(text,119,11) AS num_nis_membt,
    SUBSTRING(text,130,34) AS nom_apelido_membt,
    SUBSTRING(text,164,1) AS cod_sexo_membt,
    SUBSTRING(text,165,8) AS dta_nasc_membt,
    SUBSTRING(text,173,1) AS cod_raca_cor_membt,
    SUBSTRING(text,174,70) AS nom_completo_mae_membt,
    SUBSTRING(text,244,1) AS ind_nom_completo_mae_membt,
    SUBSTRING(text,245,70) AS nom_completo_pai_membt,
    SUBSTRING(text,315,1) AS ind_nom_completo_pai_membt,
    SUBSTRING(text,316,1) AS vazio_2,
    SUBSTRING(text,317,2) AS sig_uf_munic_nasc_membt,
    SUBSTRING(text,319,1) AS ind_uf_munic_nasc_membt,
    SUBSTRING(text,320,35) AS nom_ibge_munic_nasc_membt,
    SUBSTRING(text,355,7) AS cod_ibge_munic_nasc_membt,
    SUBSTRING(text,362,1) AS ind_ibge_munic_nasc_membt,
    SUBSTRING(text,363,40) AS nom_pais_origem_membt,
    SUBSTRING(text,403,2) AS vazio_3,
    SUBSTRING(text,405,1) AS ind_pais_origem_membt,
    SUBSTRING(text,406,1) AS cod_certidao_registrada_membt,
    SUBSTRING(text,407,13) AS cod_destino_prefeitura_membt,
    SUBSTRING(text,420,11) AS cod_destino_familia_membt,
    SUBSTRING(text,431,4) AS cod_pais_origem_membt,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.test_staging.test`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '17'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
