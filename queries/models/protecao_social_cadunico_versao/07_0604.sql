
{{
    config(
        materialized= "incremental" if run_query("SELECT COUNT(*) FROM {{ this }} WHERE data_particao > (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) FROM " ~ this ~ " WHERE versao_layout_particao = 0604)").columns[0].values()[0] > 0 else "ephemeral",
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
    SUBSTRING(text,40,1) AS cod_sabe_ler_escrever_memb,
    SUBSTRING(text,41,1) AS ind_frequenta_escola_memb,
    SUBSTRING(text,42,70) AS nom_escola_memb,
    SUBSTRING(text,112,1) AS cod_escola_local_memb,
    SUBSTRING(text,113,2) AS sig_uf_escola_memb,
    SUBSTRING(text,115,35) AS nom_munic_escola_memb,
    SUBSTRING(text,150,7) AS cod_ibge_munic_escola_memb,
    SUBSTRING(text,157,8) AS cod_censo_inep_memb,
    SUBSTRING(text,165,1) AS ind_censo_inep_memb,
    SUBSTRING(text,166,2) AS cod_curso_frequenta_memb,
    SUBSTRING(text,168,2) AS cod_ano_serie_frequenta_memb,
    SUBSTRING(text,170,2) AS cod_curso_frequentou_pessoa_memb,
    SUBSTRING(text,172,2) AS cod_ano_serie_frequentou_memb,
    SUBSTRING(text,174,1) AS cod_concluiu_frequentou_memb,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_staging.registro_familia`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0604'
    AND SUBSTRING(text,38,2) = '07'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
