SELECT
  f.data_particao,
  CASE
    WHEN f.id_cras_creas IS NULL THEN "Não Informado"
    ELSE f.id_cras_creas
  END AS id_cras_creas,
  CASE
      WHEN d.id_local_domicilio = '1' THEN 'Urbana'
      WHEN d.id_local_domicilio = '2' THEN 'Rural'
      ELSE 'Não especificado'
  END AS local_domicilio,
    ROUND(100 * COUNT(DISTINCT d.id_familia) / SUM(COUNT(DISTINCT d.id_familia)) OVER(PARTITION BY f.data_particao, f.id_cras_creas), 2) AS porcentagem,
  COUNT(DISTINCT f.id_familia) numero_familias,
  SUM(COUNT(DISTINCT d.id_familia)) OVER(PARTITION BY f.data_particao, f.id_cras_creas) AS total_familias,
FROM `rj-smas.protecao_social_cadunico.domicilio` as d
JOIN `rj-smas.protecao_social_cadunico.familia` as f
  ON  d.id_familia = f.id_familia
    AND d.data_particao = f.data_particao
GROUP BY f.data_particao,  f.id_cras_creas, d.id_local_domicilio
