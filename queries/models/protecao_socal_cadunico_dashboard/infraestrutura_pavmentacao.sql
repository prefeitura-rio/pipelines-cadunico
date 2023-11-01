WITH tb AS (
  SELECT
    f.id_familia,
    f.data_particao,
    CASE
      WHEN f.id_cras_creas IS NULL THEN "Não Informado"
      ELSE f.id_cras_creas
    END AS id_cras_creas,
    d.calcamento_domicilio,
  FROM `rj-smas.protecao_social_cadunico.domicilio` as d
  JOIN `rj-smas.protecao_social_cadunico.familia` as f
    ON  d.id_familia = f.id_familia
      AND d.data_particao = f.data_particao
)

SELECT
  data_particao,
  calcamento_domicilio,
  ROUND(100 * COUNT(DISTINCT id_familia) / SUM(COUNT(DISTINCT id_familia)) OVER(PARTITION BY data_particao), 2) AS porcentagem_calcamento_domicilio,
  COUNT(DISTINCT id_familia) numero_familias,
  SUM(COUNT(DISTINCT id_familia)) OVER(PARTITION BY data_particao) AS total_familias,
FROM tb
GROUP BY data_particao,  id_cras_creas, calcamento_domicilio
ORDER BY id_cras_creas, data_particao, calcamento_domicilio