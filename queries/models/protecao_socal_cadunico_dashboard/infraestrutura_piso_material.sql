SELECT
  f.data_particao,
  CASE
    WHEN f.id_cras_creas IS NULL THEN "Não Informado"
    ELSE f.id_cras_creas
  END AS id_cras_creas,
  CASE
    WHEN d.id_material_piso_domicilio = '1' THEN 'Terra'
    WHEN d.id_material_piso_domicilio = '2' THEN 'Cimento'
    WHEN d.id_material_piso_domicilio = '3' THEN 'Madeira aproveitada'
    WHEN d.id_material_piso_domicilio = '4' THEN 'Madeira aparelhada'
    WHEN d.id_material_piso_domicilio = '5' THEN 'Cerâmica, lajota ou pedra'
    WHEN d.id_material_piso_domicilio = '6' THEN 'Carpete'
    WHEN d.id_material_piso_domicilio = '7' THEN 'Outro material'
    ELSE 'Não especificado'
  END AS piso_material,
    ROUND(100 * COUNT(DISTINCT d.id_familia) / SUM(COUNT(DISTINCT d.id_familia)) OVER(PARTITION BY f.data_particao, f.id_cras_creas), 2) AS porcentagem,
  COUNT(DISTINCT f.id_familia) numero_familias,
  SUM(COUNT(DISTINCT d.id_familia)) OVER(PARTITION BY f.data_particao, f.id_cras_creas) AS total_familias,
FROM `rj-smas.protecao_social_cadunico.domicilio` as d
JOIN `rj-smas.protecao_social_cadunico.familia` as f
  ON  d.id_familia = f.id_familia
    AND d.data_particao = f.data_particao
GROUP BY f.data_particao,  f.id_cras_creas, d.id_material_piso_domicilio
