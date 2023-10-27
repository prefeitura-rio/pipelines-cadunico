with familia as (
  SELECT
    data_particao,
    COUNT(DISTINCT id_familia) AS numero_familias
FROM `rj-smas.protecao_social_cadunico.familia`
GROUP BY data_particao
ORDER BY data_particao

)

SELECT
  r.data_particao,
  r.registros_tipo_03,
  f.numero_familias,
  (r.registros_tipo_03 - f.numero_familias) as diff
FROM `rj-smas.protecao_social_cadunico.registros` r
JOIN familia f
  on f.data_particao = r.data_particao