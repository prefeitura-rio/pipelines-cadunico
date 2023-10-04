
SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_local_domic_fam AS string) AS id_local_domicilio,
    CAST(cod_especie_domic_fam AS string) AS id_especie_domicilio,
    CAST(qtd_comodos_domic_fam AS int64) AS quantidade_comodos_domicilio,
    CAST(qtd_comodos_dormitorio_fam AS int64) AS quantidade_comodos_dormitorio,
    CAST(cod_material_piso_fam AS string) AS id_material_piso_domicilio,
    CAST(cod_material_domic_fam AS string) AS id_material_domicilio,
    CAST(cod_agua_canalizada_fam AS string) AS id_possui_agua_encanada_domicilio,
    CAST(cod_abaste_agua_domic_fam AS string) AS id_forma_abatecimento_agua_domicilio,
    CAST(cod_banheiro_domic_fam AS string) AS id_possui_banheiro_domicilio,
    CAST(cod_escoa_sanitario_domic_fam AS string) AS id_escoamento_sanitario_domicilio,
    CAST(cod_destino_lixo_domic_fam AS string) AS id_destino_lixo_domicilio,
    CAST(cod_iluminacao_domic_fam AS string) AS id_iluminacao_domicilio,
    CAST(cod_calcamento_domic_fam AS string) AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0601`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_local_domic_fam AS string) AS id_local_domicilio,
    CAST(cod_especie_domic_fam AS string) AS id_especie_domicilio,
    CAST(qtd_comodos_domic_fam AS int64) AS quantidade_comodos_domicilio,
    CAST(qtd_comodos_dormitorio_fam AS int64) AS quantidade_comodos_dormitorio,
    CAST(cod_material_piso_fam AS string) AS id_material_piso_domicilio,
    CAST(cod_material_domic_fam AS string) AS id_material_domicilio,
    CAST(cod_agua_canalizada_fam AS string) AS id_possui_agua_encanada_domicilio,
    CAST(cod_abaste_agua_domic_fam AS string) AS id_forma_abatecimento_agua_domicilio,
    CAST(cod_banheiro_domic_fam AS string) AS id_possui_banheiro_domicilio,
    CAST(cod_escoa_sanitario_domic_fam AS string) AS id_escoamento_sanitario_domicilio,
    CAST(cod_destino_lixo_domic_fam AS string) AS id_destino_lixo_domicilio,
    CAST(cod_iluminacao_domic_fam AS string) AS id_iluminacao_domicilio,
    CAST(cod_calcamento_domic_fam AS string) AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0603`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_local_domic_fam AS string) AS id_local_domicilio,
    CAST(cod_especie_domic_fam AS string) AS id_especie_domicilio,
    CAST(qtd_comodos_domic_fam AS int64) AS quantidade_comodos_domicilio,
    CAST(qtd_comodos_dormitorio_fam AS int64) AS quantidade_comodos_dormitorio,
    CAST(cod_material_piso_fam AS string) AS id_material_piso_domicilio,
    CAST(cod_material_domic_fam AS string) AS id_material_domicilio,
    CAST(cod_agua_canalizada_fam AS string) AS id_possui_agua_encanada_domicilio,
    CAST(cod_abaste_agua_domic_fam AS string) AS id_forma_abatecimento_agua_domicilio,
    CAST(cod_banheiro_domic_fam AS string) AS id_possui_banheiro_domicilio,
    CAST(cod_escoa_sanitario_domic_fam AS string) AS id_escoamento_sanitario_domicilio,
    CAST(cod_destino_lixo_domic_fam AS string) AS id_destino_lixo_domicilio,
    CAST(cod_iluminacao_domic_fam AS string) AS id_iluminacao_domicilio,
    CAST(cod_calcamento_domic_fam AS string) AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0604`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_local_domic_fam AS string) AS id_local_domicilio,
    CAST(cod_especie_domic_fam AS string) AS id_especie_domicilio,
    CAST(qtd_comodos_domic_fam AS int64) AS quantidade_comodos_domicilio,
    CAST(qtd_comodos_dormitorio_fam AS int64) AS quantidade_comodos_dormitorio,
    CAST(cod_material_piso_fam AS string) AS id_material_piso_domicilio,
    CAST(cod_material_domic_fam AS string) AS id_material_domicilio,
    CAST(cod_agua_canalizada_fam AS string) AS id_possui_agua_encanada_domicilio,
    CAST(cod_abaste_agua_domic_fam AS string) AS id_forma_abatecimento_agua_domicilio,
    CAST(cod_banheiro_domic_fam AS string) AS id_possui_banheiro_domicilio,
    CAST(cod_escoa_sanitario_domic_fam AS string) AS id_escoamento_sanitario_domicilio,
    CAST(cod_destino_lixo_domic_fam AS string) AS id_destino_lixo_domicilio,
    CAST(cod_iluminacao_domic_fam AS string) AS id_iluminacao_domicilio,
    CAST(cod_calcamento_domic_fam AS string) AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0609`

UNION ALL


SELECT
    CAST(chv_natural_prefeitura_fam AS string) AS id_prefeitura,
    CAST(cod_familiar_fam AS string) AS id_familia,
    CAST(vazio AS string) AS vazio,
    CAST(num_reg_arquivo AS string) AS numero_registro_arquivo,
    CAST(cod_local_domic_fam AS string) AS id_local_domicilio,
    CAST(cod_especie_domic_fam AS string) AS id_especie_domicilio,
    CAST(qtd_comodos_domic_fam AS int64) AS quantidade_comodos_domicilio,
    CAST(qtd_comodos_dormitorio_fam AS int64) AS quantidade_comodos_dormitorio,
    CAST(cod_material_piso_fam AS string) AS id_material_piso_domicilio,
    CAST(cod_material_domic_fam AS string) AS id_material_domicilio,
    CAST(cod_agua_canalizada_fam AS string) AS id_possui_agua_encanada_domicilio,
    CAST(cod_abaste_agua_domic_fam AS string) AS id_forma_abatecimento_agua_domicilio,
    CAST(cod_banheiro_domic_fam AS string) AS id_possui_banheiro_domicilio,
    CAST(cod_escoa_sanitario_domic_fam AS string) AS id_escoamento_sanitario_domicilio,
    CAST(cod_destino_lixo_domic_fam AS string) AS id_destino_lixo_domicilio,
    CAST(cod_iluminacao_domic_fam AS string) AS id_iluminacao_domicilio,
    CAST(cod_calcamento_domic_fam AS string) AS id_calcamento_domicilio,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.domicilio_0612`

