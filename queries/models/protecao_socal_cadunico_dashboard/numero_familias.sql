WITH familia AS (
  SELECT
    data_particao,
    COUNT(DISTINCT id_familia) AS numero_familias,
    AVG(pessoas_domicilio) AS media_pessoas_por_familia
  FROM `rj-smas.protecao_social_cadunico.familia`
  GROUP BY data_particao
  ORDER BY data_particao
)

SELECT
  r.data_particao,
  r.registros_tipo_03,
  f.numero_familias,
  (r.registros_tipo_03 - f.numero_familias) AS diff,
  ROUND(f.media_pessoas_por_familia, 2) AS media_pessoas_por_familia
FROM `rj-smas.protecao_social_cadunico.registros` r
JOIN familia f
  ON f.data_particao = r.data_particao