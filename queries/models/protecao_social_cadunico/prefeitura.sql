
SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_2_pre, r'^\s*$') THEN NULL
        ELSE CAST( cod_munic_ibge_2_pre  AS STRING)
    END AS sigla_uf,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_5_pre, r'^\s*$') THEN NULL
        ELSE CAST( cod_munic_ibge_5_pre  AS STRING)
    END AS if_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_migracao_pre, r'^\s*$') THEN NULL
        ELSE CAST( ind_migracao_pre  AS STRING)
    END AS migracao,
    CASE
        WHEN REGEXP_CONTAINS(nom_prefeitura_pre, r'^\s*$') THEN NULL
        ELSE CAST( nom_prefeitura_pre  AS STRING)
    END AS prefeitura,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.prefeitura_0601`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_2_pre, r'^\s*$') THEN NULL
        ELSE CAST( cod_munic_ibge_2_pre  AS STRING)
    END AS sigla_uf,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_5_pre, r'^\s*$') THEN NULL
        ELSE CAST( cod_munic_ibge_5_pre  AS STRING)
    END AS if_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_migracao_pre, r'^\s*$') THEN NULL
        ELSE CAST( ind_migracao_pre  AS STRING)
    END AS migracao,
    CASE
        WHEN REGEXP_CONTAINS(nom_prefeitura_pre, r'^\s*$') THEN NULL
        ELSE CAST( nom_prefeitura_pre  AS STRING)
    END AS prefeitura,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.prefeitura_0603`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_2_pre, r'^\s*$') THEN NULL
        ELSE CAST( cod_munic_ibge_2_pre  AS STRING)
    END AS sigla_uf,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_5_pre, r'^\s*$') THEN NULL
        ELSE CAST( cod_munic_ibge_5_pre  AS STRING)
    END AS if_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_migracao_pre, r'^\s*$') THEN NULL
        ELSE CAST( ind_migracao_pre  AS STRING)
    END AS migracao,
    CASE
        WHEN REGEXP_CONTAINS(nom_prefeitura_pre, r'^\s*$') THEN NULL
        ELSE CAST( nom_prefeitura_pre  AS STRING)
    END AS prefeitura,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.prefeitura_0604`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_2_pre, r'^\s*$') THEN NULL
        ELSE CAST( cod_munic_ibge_2_pre  AS STRING)
    END AS sigla_uf,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_5_pre, r'^\s*$') THEN NULL
        ELSE CAST( cod_munic_ibge_5_pre  AS STRING)
    END AS if_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_migracao_pre, r'^\s*$') THEN NULL
        ELSE CAST( ind_migracao_pre  AS STRING)
    END AS migracao,
    CASE
        WHEN REGEXP_CONTAINS(nom_prefeitura_pre, r'^\s*$') THEN NULL
        ELSE CAST( nom_prefeitura_pre  AS STRING)
    END AS prefeitura,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.prefeitura_0609`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura, r'^\s*$') THEN NULL
        ELSE CAST( chv_natural_prefeitura  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( num_reg_arquivo  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_2_pre, r'^\s*$') THEN NULL
        ELSE CAST( cod_munic_ibge_2_pre  AS STRING)
    END AS sigla_uf,
    CASE
        WHEN REGEXP_CONTAINS(cod_munic_ibge_5_pre, r'^\s*$') THEN NULL
        ELSE CAST( cod_munic_ibge_5_pre  AS STRING)
    END AS if_municipio,
    CASE
        WHEN REGEXP_CONTAINS(ind_migracao_pre, r'^\s*$') THEN NULL
        ELSE CAST( ind_migracao_pre  AS STRING)
    END AS migracao,
    CASE
        WHEN REGEXP_CONTAINS(nom_prefeitura_pre, r'^\s*$') THEN NULL
        ELSE CAST( nom_prefeitura_pre  AS STRING)
    END AS prefeitura,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.prefeitura_0612`

