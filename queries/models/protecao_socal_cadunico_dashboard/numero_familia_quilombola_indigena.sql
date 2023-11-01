SELECT
    data_particao,
    CASE
        WHEN id_cras_creas IS NULL THEN "Não Informado"
        ELSE id_cras_creas
    END AS id_cras_creas,
  COUNT(DISTINCT id_familia) AS numero_familias,
    SUM(CASE WHEN familia_indigena = 'Sim' THEN 1 ELSE 0 END) AS numero_familias_indigenas,
    SUM(CASE WHEN familia_quilombola = 'Sim' THEN 1 ELSE 0 END) AS numero_familias_quilombolas
FROM `rj-smas.protecao_social_cadunico.familia`
GROUP BY 1, 2
ORDER BY 1, 2