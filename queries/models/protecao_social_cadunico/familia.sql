
SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_familia_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familia_indigena_fam)  AS STRING)
    END AS id_familia_indigena,
    CASE
        WHEN REGEXP_CONTAINS(cod_povo_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_povo_indigena_fam)  AS STRING)
    END AS id_povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(nom_povo_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_povo_indigena_fam)  AS STRING)
    END AS povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(cod_indigena_reside_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_indigena_reside_fam)  AS STRING)
    END AS id_indigena_residente,
    CASE
        WHEN REGEXP_CONTAINS(cod_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_reserva_indigena_fam)  AS STRING)
    END AS id_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(nom_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_reserva_indigena_fam)  AS STRING)
    END AS reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_reserva_indigena_fam)  AS STRING)
    END AS nao_sabe_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_familia_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_familia_quilombola_fam)  AS STRING)
    END AS familia_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(cod_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_comunidade_quilombola_fam)  AS STRING)
    END AS id_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(nom_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_comunidade_quilombola_fam)  AS STRING)
    END AS comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(ind_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_comunidade_quilombola_fam)  AS STRING)
    END AS nao_sabe_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoas_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoas_domic_fam) AS INT64)
    END AS pessoas_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_familias_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_familias_domic_fam) AS INT64)
    END AS familias_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_0_17_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_0_17_anos_fam) AS INT64)
    END AS pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_0_17_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_0_17_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_18_59_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_18_59_anos_fam) AS INT64)
    END AS pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_18_59_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_18_59_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_60_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_60_anos_fam) AS INT64)
    END AS pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_60_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_60_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_energia_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_energia_fam) AS INT64)
    END AS despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_energia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_energia_fam)  AS STRING)
    END AS nao_tem_despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_agua_esgoto_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_agua_esgoto_fam) AS INT64)
    END AS despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_agua_esgoto_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_agua_esgoto_fam)  AS STRING)
    END AS nao_tem_despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_gas_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_gas_fam) AS INT64)
    END AS despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_gas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_gas_fam)  AS STRING)
    END AS nao_tem_despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_alimentacao_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_alimentacao_fam) AS INT64)
    END AS despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_alimentacao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_alimentacao_fam)  AS STRING)
    END AS nao_tem_despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_transpor_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_transpor_fam) AS INT64)
    END AS despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_transpor_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_transpor_fam)  AS STRING)
    END AS nao_tem_despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_aluguel_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_aluguel_fam) AS INT64)
    END AS despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_aluguel_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_aluguel_fam)  AS STRING)
    END AS nao_tem_despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_medicamentos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_medicamentos_fam) AS INT64)
    END AS despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_medicamentos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_medicamentos_fam)  AS STRING)
    END AS nao_tem_despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(nom_estab_assist_saude_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_estab_assist_saude_fam)  AS STRING)
    END AS estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(nu_estbo_saude, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nu_estbo_saude)  AS STRING)
    END AS id_estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(nom_centro_assist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_centro_assist_fam)  AS STRING)
    END AS cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(cod_centro_assist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_centro_assist_fam)  AS STRING)
    END AS id_cras_creas,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.familia_0601`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_familia_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familia_indigena_fam)  AS STRING)
    END AS id_familia_indigena,
    CASE
        WHEN REGEXP_CONTAINS(cod_povo_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_povo_indigena_fam)  AS STRING)
    END AS id_povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(nom_povo_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_povo_indigena_fam)  AS STRING)
    END AS povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(cod_indigena_reside_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_indigena_reside_fam)  AS STRING)
    END AS id_indigena_residente,
    CASE
        WHEN REGEXP_CONTAINS(cod_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_reserva_indigena_fam)  AS STRING)
    END AS id_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(nom_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_reserva_indigena_fam)  AS STRING)
    END AS reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_reserva_indigena_fam)  AS STRING)
    END AS nao_sabe_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_familia_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_familia_quilombola_fam)  AS STRING)
    END AS familia_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(cod_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_comunidade_quilombola_fam)  AS STRING)
    END AS id_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(nom_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_comunidade_quilombola_fam)  AS STRING)
    END AS comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(ind_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_comunidade_quilombola_fam)  AS STRING)
    END AS nao_sabe_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoas_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoas_domic_fam) AS INT64)
    END AS pessoas_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_familias_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_familias_domic_fam) AS INT64)
    END AS familias_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_0_17_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_0_17_anos_fam) AS INT64)
    END AS pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_0_17_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_0_17_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_18_59_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_18_59_anos_fam) AS INT64)
    END AS pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_18_59_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_18_59_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_60_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_60_anos_fam) AS INT64)
    END AS pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_60_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_60_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_energia_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_energia_fam) AS INT64)
    END AS despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_energia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_energia_fam)  AS STRING)
    END AS nao_tem_despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_agua_esgoto_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_agua_esgoto_fam) AS INT64)
    END AS despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_agua_esgoto_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_agua_esgoto_fam)  AS STRING)
    END AS nao_tem_despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_gas_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_gas_fam) AS INT64)
    END AS despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_gas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_gas_fam)  AS STRING)
    END AS nao_tem_despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_alimentacao_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_alimentacao_fam) AS INT64)
    END AS despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_alimentacao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_alimentacao_fam)  AS STRING)
    END AS nao_tem_despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_transpor_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_transpor_fam) AS INT64)
    END AS despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_transpor_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_transpor_fam)  AS STRING)
    END AS nao_tem_despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_aluguel_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_aluguel_fam) AS INT64)
    END AS despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_aluguel_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_aluguel_fam)  AS STRING)
    END AS nao_tem_despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_medicamentos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_medicamentos_fam) AS INT64)
    END AS despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_medicamentos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_medicamentos_fam)  AS STRING)
    END AS nao_tem_despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(nom_estab_assist_saude_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_estab_assist_saude_fam)  AS STRING)
    END AS estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(nu_estbo_saude, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nu_estbo_saude)  AS STRING)
    END AS id_estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(nom_centro_assist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_centro_assist_fam)  AS STRING)
    END AS cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(cod_centro_assist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_centro_assist_fam)  AS STRING)
    END AS id_cras_creas,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.familia_0603`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_familia_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familia_indigena_fam)  AS STRING)
    END AS id_familia_indigena,
    CASE
        WHEN REGEXP_CONTAINS(cod_povo_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_povo_indigena_fam)  AS STRING)
    END AS id_povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(nom_povo_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_povo_indigena_fam)  AS STRING)
    END AS povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(cod_indigena_reside_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_indigena_reside_fam)  AS STRING)
    END AS id_indigena_residente,
    CASE
        WHEN REGEXP_CONTAINS(cod_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_reserva_indigena_fam)  AS STRING)
    END AS id_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(nom_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_reserva_indigena_fam)  AS STRING)
    END AS reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_reserva_indigena_fam)  AS STRING)
    END AS nao_sabe_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_familia_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_familia_quilombola_fam)  AS STRING)
    END AS familia_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(cod_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_comunidade_quilombola_fam)  AS STRING)
    END AS id_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(nom_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_comunidade_quilombola_fam)  AS STRING)
    END AS comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(ind_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_comunidade_quilombola_fam)  AS STRING)
    END AS nao_sabe_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoas_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoas_domic_fam) AS INT64)
    END AS pessoas_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_familias_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_familias_domic_fam) AS INT64)
    END AS familias_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_0_17_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_0_17_anos_fam) AS INT64)
    END AS pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_0_17_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_0_17_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_18_59_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_18_59_anos_fam) AS INT64)
    END AS pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_18_59_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_18_59_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_60_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_60_anos_fam) AS INT64)
    END AS pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_60_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_60_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_energia_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_energia_fam) AS INT64)
    END AS despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_energia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_energia_fam)  AS STRING)
    END AS nao_tem_despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_agua_esgoto_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_agua_esgoto_fam) AS INT64)
    END AS despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_agua_esgoto_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_agua_esgoto_fam)  AS STRING)
    END AS nao_tem_despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_gas_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_gas_fam) AS INT64)
    END AS despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_gas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_gas_fam)  AS STRING)
    END AS nao_tem_despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_alimentacao_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_alimentacao_fam) AS INT64)
    END AS despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_alimentacao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_alimentacao_fam)  AS STRING)
    END AS nao_tem_despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_transpor_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_transpor_fam) AS INT64)
    END AS despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_transpor_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_transpor_fam)  AS STRING)
    END AS nao_tem_despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_aluguel_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_aluguel_fam) AS INT64)
    END AS despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_aluguel_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_aluguel_fam)  AS STRING)
    END AS nao_tem_despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_medicamentos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_medicamentos_fam) AS INT64)
    END AS despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_medicamentos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_medicamentos_fam)  AS STRING)
    END AS nao_tem_despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(nom_estab_assist_saude_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_estab_assist_saude_fam)  AS STRING)
    END AS estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(nu_estbo_saude, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nu_estbo_saude)  AS STRING)
    END AS id_estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(nom_centro_assist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_centro_assist_fam)  AS STRING)
    END AS cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(cod_centro_assist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_centro_assist_fam)  AS STRING)
    END AS id_cras_creas,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.familia_0604`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_familia_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familia_indigena_fam)  AS STRING)
    END AS id_familia_indigena,
    CASE
        WHEN REGEXP_CONTAINS(cod_povo_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_povo_indigena_fam)  AS STRING)
    END AS id_povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(nom_povo_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_povo_indigena_fam)  AS STRING)
    END AS povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(cod_indigena_reside_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_indigena_reside_fam)  AS STRING)
    END AS id_indigena_residente,
    CASE
        WHEN REGEXP_CONTAINS(cod_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_reserva_indigena_fam)  AS STRING)
    END AS id_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(nom_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_reserva_indigena_fam)  AS STRING)
    END AS reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_reserva_indigena_fam)  AS STRING)
    END AS nao_sabe_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_familia_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_familia_quilombola_fam)  AS STRING)
    END AS familia_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(cod_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_comunidade_quilombola_fam)  AS STRING)
    END AS id_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(nom_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_comunidade_quilombola_fam)  AS STRING)
    END AS comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(ind_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_comunidade_quilombola_fam)  AS STRING)
    END AS nao_sabe_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoas_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoas_domic_fam) AS INT64)
    END AS pessoas_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_familias_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_familias_domic_fam) AS INT64)
    END AS familias_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_0_17_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_0_17_anos_fam) AS INT64)
    END AS pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_0_17_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_0_17_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_18_59_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_18_59_anos_fam) AS INT64)
    END AS pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_18_59_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_18_59_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_60_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_60_anos_fam) AS INT64)
    END AS pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_60_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_60_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_energia_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_energia_fam) AS INT64)
    END AS despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_energia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_energia_fam)  AS STRING)
    END AS nao_tem_despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_agua_esgoto_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_agua_esgoto_fam) AS INT64)
    END AS despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_agua_esgoto_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_agua_esgoto_fam)  AS STRING)
    END AS nao_tem_despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_gas_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_gas_fam) AS INT64)
    END AS despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_gas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_gas_fam)  AS STRING)
    END AS nao_tem_despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_alimentacao_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_alimentacao_fam) AS INT64)
    END AS despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_alimentacao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_alimentacao_fam)  AS STRING)
    END AS nao_tem_despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_transpor_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_transpor_fam) AS INT64)
    END AS despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_transpor_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_transpor_fam)  AS STRING)
    END AS nao_tem_despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_aluguel_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_aluguel_fam) AS INT64)
    END AS despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_aluguel_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_aluguel_fam)  AS STRING)
    END AS nao_tem_despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_medicamentos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_medicamentos_fam) AS INT64)
    END AS despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_medicamentos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_medicamentos_fam)  AS STRING)
    END AS nao_tem_despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(nom_estab_assist_saude_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_estab_assist_saude_fam)  AS STRING)
    END AS estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(nu_estbo_saude, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nu_estbo_saude)  AS STRING)
    END AS id_estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(nom_centro_assist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_centro_assist_fam)  AS STRING)
    END AS cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(cod_centro_assist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_centro_assist_fam)  AS STRING)
    END AS id_cras_creas,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.familia_0609`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_familia_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familia_indigena_fam)  AS STRING)
    END AS id_familia_indigena,
    CASE
        WHEN REGEXP_CONTAINS(cod_povo_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_povo_indigena_fam)  AS STRING)
    END AS id_povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(nom_povo_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_povo_indigena_fam)  AS STRING)
    END AS povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(cod_indigena_reside_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_indigena_reside_fam)  AS STRING)
    END AS id_indigena_residente,
    CASE
        WHEN REGEXP_CONTAINS(cod_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_reserva_indigena_fam)  AS STRING)
    END AS id_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(nom_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_reserva_indigena_fam)  AS STRING)
    END AS reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_reserva_indigena_fam)  AS STRING)
    END AS nao_sabe_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_familia_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_familia_quilombola_fam)  AS STRING)
    END AS familia_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(cod_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_comunidade_quilombola_fam)  AS STRING)
    END AS id_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(nom_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_comunidade_quilombola_fam)  AS STRING)
    END AS comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(ind_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_comunidade_quilombola_fam)  AS STRING)
    END AS nao_sabe_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoas_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoas_domic_fam) AS INT64)
    END AS pessoas_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_familias_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_familias_domic_fam) AS INT64)
    END AS familias_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_0_17_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_0_17_anos_fam) AS INT64)
    END AS pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_0_17_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_0_17_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_18_59_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_18_59_anos_fam) AS INT64)
    END AS pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_18_59_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_18_59_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_60_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_60_anos_fam) AS INT64)
    END AS pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_60_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_60_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_energia_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_energia_fam) AS INT64)
    END AS despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_energia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_energia_fam)  AS STRING)
    END AS nao_tem_despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_agua_esgoto_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_agua_esgoto_fam) AS INT64)
    END AS despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_agua_esgoto_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_agua_esgoto_fam)  AS STRING)
    END AS nao_tem_despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_gas_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_gas_fam) AS INT64)
    END AS despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_gas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_gas_fam)  AS STRING)
    END AS nao_tem_despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_alimentacao_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_alimentacao_fam) AS INT64)
    END AS despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_alimentacao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_alimentacao_fam)  AS STRING)
    END AS nao_tem_despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_transpor_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_transpor_fam) AS INT64)
    END AS despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_transpor_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_transpor_fam)  AS STRING)
    END AS nao_tem_despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_aluguel_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_aluguel_fam) AS INT64)
    END AS despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_aluguel_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_aluguel_fam)  AS STRING)
    END AS nao_tem_despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_medicamentos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_medicamentos_fam) AS INT64)
    END AS despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_medicamentos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_medicamentos_fam)  AS STRING)
    END AS nao_tem_despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(nom_estab_assist_saude_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_estab_assist_saude_fam)  AS STRING)
    END AS estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(nu_estbo_saude, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nu_estbo_saude)  AS STRING)
    END AS id_estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(nom_centro_assist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_centro_assist_fam)  AS STRING)
    END AS cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(cod_centro_assist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_centro_assist_fam)  AS STRING)
    END AS id_cras_creas,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.familia_0612`

UNION ALL


SELECT
    CASE
        WHEN REGEXP_CONTAINS(chv_natural_prefeitura_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(chv_natural_prefeitura_fam)  AS STRING)
    END AS id_prefeitura,
    CASE
        WHEN REGEXP_CONTAINS(cod_familiar_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familiar_fam)  AS STRING)
    END AS id_familia,
    CASE
        WHEN REGEXP_CONTAINS(num_reg_arquivo, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(num_reg_arquivo)  AS STRING)
    END AS numero_registro_arquivo,
    CASE
        WHEN REGEXP_CONTAINS(cod_familia_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_familia_indigena_fam)  AS STRING)
    END AS id_familia_indigena,
    CASE
        WHEN REGEXP_CONTAINS(cod_povo_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_povo_indigena_fam)  AS STRING)
    END AS id_povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(nom_povo_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_povo_indigena_fam)  AS STRING)
    END AS povo_indigena,
    CASE
        WHEN REGEXP_CONTAINS(cod_indigena_reside_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_indigena_reside_fam)  AS STRING)
    END AS id_indigena_residente,
    CASE
        WHEN REGEXP_CONTAINS(cod_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_reserva_indigena_fam)  AS STRING)
    END AS id_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(nom_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_reserva_indigena_fam)  AS STRING)
    END AS reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_reserva_indigena_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_reserva_indigena_fam)  AS STRING)
    END AS nao_sabe_reserva_indigena,
    CASE
        WHEN REGEXP_CONTAINS(ind_familia_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_familia_quilombola_fam)  AS STRING)
    END AS familia_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(cod_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_comunidade_quilombola_fam)  AS STRING)
    END AS id_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(nom_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_comunidade_quilombola_fam)  AS STRING)
    END AS comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(ind_comunidade_quilombola_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_comunidade_quilombola_fam)  AS STRING)
    END AS nao_sabe_comunidade_quilombola,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoas_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoas_domic_fam) AS INT64)
    END AS pessoas_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_familias_domic_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_familias_domic_fam) AS INT64)
    END AS familias_domicilio,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_0_17_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_0_17_anos_fam) AS INT64)
    END AS pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_0_17_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_0_17_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_0_17_anos,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_18_59_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_18_59_anos_fam) AS INT64)
    END AS pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_18_59_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_18_59_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_18_59_anos,
    CASE
        WHEN REGEXP_CONTAINS(qtd_pessoa_inter_60_anos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(qtd_pessoa_inter_60_anos_fam) AS INT64)
    END AS pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(ind_pessoa_inter_60_anos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_pessoa_inter_60_anos_fam)  AS STRING)
    END AS nao_tem_pessoas_internadas_mais_60_anos,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_energia_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_energia_fam) AS INT64)
    END AS despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_energia_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_energia_fam)  AS STRING)
    END AS nao_tem_despesa_energia,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_agua_esgoto_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_agua_esgoto_fam) AS INT64)
    END AS despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_agua_esgoto_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_agua_esgoto_fam)  AS STRING)
    END AS nao_tem_despesa_agua_esgoto,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_gas_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_gas_fam) AS INT64)
    END AS despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_gas_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_gas_fam)  AS STRING)
    END AS nao_tem_despesa_gas,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_alimentacao_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_alimentacao_fam) AS INT64)
    END AS despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_alimentacao_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_alimentacao_fam)  AS STRING)
    END AS nao_tem_despesa_alimentacao,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_transpor_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_transpor_fam) AS INT64)
    END AS despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_transpor_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_transpor_fam)  AS STRING)
    END AS nao_tem_despesa_transporte,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_aluguel_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_aluguel_fam) AS INT64)
    END AS despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_aluguel_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_aluguel_fam)  AS STRING)
    END AS nao_tem_despesa_aluguel,
    CASE
        WHEN REGEXP_CONTAINS(val_desp_medicamentos_fam, r'^\s*$') THEN NULL
        ELSE SAFE_CAST( TRIM(val_desp_medicamentos_fam) AS INT64)
    END AS despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(ind_desp_medicamentos_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(ind_desp_medicamentos_fam)  AS STRING)
    END AS nao_tem_despesa_medicamentos,
    CASE
        WHEN REGEXP_CONTAINS(nom_estab_assist_saude_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_estab_assist_saude_fam)  AS STRING)
    END AS estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(nu_estbo_saude, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nu_estbo_saude)  AS STRING)
    END AS id_estabelecimento_saude,
    CASE
        WHEN REGEXP_CONTAINS(nom_centro_assist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(nom_centro_assist_fam)  AS STRING)
    END AS cras_creas,
    CASE
        WHEN REGEXP_CONTAINS(cod_centro_assist_fam, r'^\s*$') THEN NULL
        ELSE CAST( TRIM(cod_centro_assist_fam)  AS STRING)
    END AS id_cras_creas,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.protecao_social_cadunico_versao.familia_0615`

