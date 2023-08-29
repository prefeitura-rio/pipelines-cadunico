
{{
    config(
        materialized= "incremental" if run_query("SELECT COUNT(*) FROM {{ this }} WHERE data_particao > (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) FROM " ~ this ~ " WHERE versao_layout_particao = 0601)").columns[0].values()[0] > 0 else "ephemeral",
        partition_by={
            "field": "data_particao",
            "data_type": "date",
            "granularity": "month",
        }
    )

}}

SELECT
    SUBSTRING(text,1,13) AS chv_natural_prefeitura_exc_mbo,
    SUBSTRING(text,14,11) AS cod_familiar_exc_mbo,
    SUBSTRING(text,25,11) AS num_membro_exc,
    SUBSTRING(text,36,2) AS vazio,
    SUBSTRING(text,38,2) AS num_reg_arquivo,
    SUBSTRING(text,40,8) AS data_exc_mbo,
    SUBSTRING(text,48,11) AS cpf_oper_exc_mbo,
    SUBSTRING(text,59,2) AS motivo_exc_mbo,
    SUBSTRING(text,61,10) AS num_pgmcu_mbo,
    SUBSTRING(text,71,8) AS dat_emi_pgmcu_mbo,
    SUBSTRING(text,79,70) AS nom_servd_pbco_pgmcu_mbo,
    SUBSTRING(text,149,11) AS cpf_servd_pbco_pgmcu_pgmcu_mbo,
    SUBSTRING(text,160,2) AS uf_pgmcu_mbo,
    SUBSTRING(text,162,7) AS mun_pgmcu_mbo,
    SUBSTRING(text,169,70) AS nom_cartorio_certid_mbo_exc,
    SUBSTRING(text,239,8) AS cod_livro_termo_certid_mbo_exc,
    SUBSTRING(text,247,4) AS cod_folha_termo_certid_mbo_exc,
    SUBSTRING(text,251,32) AS cod_termo_matricula_certid_mbo_exc,
    SUBSTRING(text,283,8) AS dta_emissao_certid_mbo_exc,
    SUBSTRING(text,291,2) AS sig_uf_certid_mbo_exc,
    SUBSTRING(text,293,35) AS nom_munic_certid_mbo_exc,
    SUBSTRING(text,328,7) AS cod_ibge_munic_certid_mbo_exc,
    SUBSTRING(text,335,255) AS desc_mot_exc,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '19'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
