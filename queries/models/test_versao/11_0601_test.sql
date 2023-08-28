
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
    SUBSTRING(text,40,1) AS ind_sesan_vende_leite_fam,
    SUBSTRING(text,41,1) AS ind_sesan_receb_leite_fam,
    SUBSTRING(text,42,1) AS ind_sesan_vende_alim_paa_fam,
    SUBSTRING(text,43,1) AS ind_sesan_receb_alim_paa_fam,
    SUBSTRING(text,44,1) AS ind_sesan_receb_cesta_basica_fam,
    SUBSTRING(text,45,1) AS ind_sesan_refei_restau_popular_fam,
    SUBSTRING(text,46,1) AS ind_sesan_refei_cozinha_comum_fam,
    SUBSTRING(text,47,1) AS ind_sesan_partic_alim_nutricao_fam,
    SUBSTRING(text,48,1) AS ind_sesan_capit_agua_chuva_prod_alim_fam,
    SUBSTRING(text,49,1) AS ind_sesan_cisterna_fam,
    SUBSTRING(text,50,1) AS ind_sesan_horta_comum_fam,
    SUBSTRING(text,51,1) AS ind_sesan_proj_cart_indigena_fam,
    SUBSTRING(text,52,1) AS ind_sesan_feira_pop_mds_fam,
    SUBSTRING(text,53,1) AS ind_sesan_nenhum_fam,
    SUBSTRING(text,54,1) AS cod_errad_trab_escravo_fam,
    SUBSTRING(text,55,1) AS ind_min_energ_tarifa_soc_fam,
    SUBSTRING(text,56,1) AS ind_min_energ_elet_doacao_fam,
    SUBSTRING(text,57,1) AS ind_min_energ_luz_fam,
    SUBSTRING(text,58,1) AS ind_min_energ_nenhum_fam,
    SUBSTRING(text,59,2) AS cod_cta_energ_ordem_pessoa_fam,
    SUBSTRING(text,61,20) AS cod_cta_energ_unid_consum_fam,
    SUBSTRING(text,81,1) AS ind_snas_bpc_deficiente_fam,
    SUBSTRING(text,82,1) AS ind_snas_bpc_idoso_fam,
    SUBSTRING(text,83,1) AS ind_snas_paif_fam__,
    SUBSTRING(text,84,1) AS ind_snas_crianca_0_6_anos_fam,
    SUBSTRING(text,85,1) AS ind_snas_grupos_idosos_fam,
    SUBSTRING(text,86,1) AS ind_snas_abrigo_mulher_vitima_fam,
    SUBSTRING(text,87,1) AS ind_snas_abrigo_crianca_adoles_fam,
    SUBSTRING(text,88,1) AS ind_snas_abrigo_idosos_fam,
    SUBSTRING(text,89,1) AS ind_snas_abrigo_adultos_fam,
    SUBSTRING(text,90,1) AS ind_snas_abrigo_popul_adulta_fam,
    SUBSTRING(text,91,1) AS ind_snas_projovem_adolescente_fam,
    SUBSTRING(text,92,1) AS ind_snas_projovem_urbano_fam,
    SUBSTRING(text,93,1) AS ind_snas_projovem_campo_fam,
    SUBSTRING(text,94,1) AS ind_snas_projovem_trabalhador_fam,
    SUBSTRING(text,95,1) AS ind_snas_habilit_reabilit_deficiencia_fam,
    SUBSTRING(text,96,1) AS ind_snas_enfrenta_violencia_crianca_fam,
    SUBSTRING(text,97,1) AS ind_snas_acomp_social_liberdade_fam,
    SUBSTRING(text,98,1) AS ind_snas_acomp_social_liberdade_comunidade_fam,
    SUBSTRING(text,99,1) AS ind_snas_orientacao_especial_criancas_adol_fam,
    SUBSTRING(text,100,1) AS ind_snas_centro_dia_idoso_fam,
    SUBSTRING(text,101,1) AS ind_snas_atend_domic_idosos_defic_fam,
    SUBSTRING(text,102,1) AS ind_snas_inclusao_produtiva_fam,
    SUBSTRING(text,103,1) AS ind_snas_peti_fam,
    SUBSTRING(text,104,1) AS ind_snas_nenhum_fam,
    SUBSTRING(text,105,1) AS ind_prog_prohab_fam,
    SUBSTRING(text,106,3) AS ind_parc_mds_fam,
    SAFE_CAST(versao_layout_particao AS STRING) AS versao_layout_particao,
    SAFE_CAST(data_particao AS DATE) AS data_particao
FROM `rj-smas.test_versao_staging.test`
WHERE SAFE_CAST(data_particao AS DATE) < CURRENT_DATE('America/Sao_Paulo')
    AND versao_layout_particao = '0601'
    AND SUBSTRING(text,38,2) = '11'

{% if is_incremental() %}

{% set max_partition = run_query("SELECT gr FROM (SELECT IF(max(data_particao) > CURRENT_DATE('America/Sao_Paulo'), CURRENT_DATE('America/Sao_Paulo'), max(data_particao)) as gr FROM " ~ this ~ ")").columns[0].values()[0] %}

AND
    SAFE_CAST(data_particao AS DATE) > ("{{ max_partition }}")

{% endif %}
