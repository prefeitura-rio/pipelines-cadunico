SELECT
  data_particao,
  CASE
    WHEN id_cras_creas IS NULL THEN "Não Informado"
    ELSE id_cras_creas
  END AS id_cras_creas,
  COUNT(DISTINCT id_familia) AS numero_familias,
  AVG(pessoas_domicilio) AS media_pessoas_por_familia
FROM `rj-smas.protecao_social_cadunico.familia`
GROUP BY 1, 2
ORDER BY 1, 2