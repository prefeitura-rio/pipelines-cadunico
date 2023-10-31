SELECT
  f.data_particao,
  CASE
    WHEN f.id_cras_creas IS NULL THEN "Não Informado"
    ELSE f.id_cras_creas
  END AS id_cras_creas,
  CASE
      WHEN d.id_destino_lixo_domicilio = '1' THEN 'É coletado diretamente'
      WHEN d.id_destino_lixo_domicilio = '2' THEN 'É coletado indiretamente'
      WHEN d.id_destino_lixo_domicilio = '3' THEN 'É queimado ou enterrado na propriedade'
      WHEN d.id_destino_lixo_domicilio = '4' THEN 'É jogado em terreno baldio ou logradouro (rua, avenida, etc.)'
      WHEN d.id_destino_lixo_domicilio = '5' THEN 'É jogado em rio, lago ou mar'
      WHEN d.id_destino_lixo_domicilio = '6' THEN 'Tem outro destino'
      ELSE 'Não especificado'
  END AS destino_lixo,
    ROUND(100 * COUNT(DISTINCT d.id_familia) / SUM(COUNT(DISTINCT d.id_familia)) OVER(PARTITION BY f.data_particao, f.id_cras_creas), 2) AS porcentagem,
  COUNT(DISTINCT f.id_familia) numero_familias,
  SUM(COUNT(DISTINCT d.id_familia)) OVER(PARTITION BY f.data_particao, f.id_cras_creas) AS total_familias,
FROM `rj-smas.protecao_social_cadunico.domicilio` as d
JOIN `rj-smas.protecao_social_cadunico.familia` as f
  ON  d.id_familia = f.id_familia
    AND d.data_particao = f.data_particao
GROUP BY f.data_particao,  f.id_cras_creas, d.id_destino_lixo_domicilio
