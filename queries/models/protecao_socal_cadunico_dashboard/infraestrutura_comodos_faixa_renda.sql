SELECT
    f.data_particao,
    CASE
      WHEN id_cras_creas IS NULL THEN "Não Informado"
      ELSE id_cras_creas
    END AS id_cras_creas,
    CASE
        WHEN valor_renda_media > 22000 THEN 'Classe A'
        WHEN valor_renda_media BETWEEN 7100 AND 22000 THEN 'Classe B'
        WHEN valor_renda_media BETWEEN 2900 AND 7100 THEN 'Classe C'
        ELSE 'Classes D/E'
    END AS faixa_renda,
    ROUND(AVG(d.quantidade_comodos_domicilio), 2) AS media_comodos_domicilio
FROM `rj-smas.protecao_social_cadunico.identificacao_controle` ic
LEFT JOIN `rj-smas.protecao_social_cadunico.familia` f
  ON ic.id_familia = f.id_familia
    AND ic.data_particao = f.data_particao
LEFT JOIN `rj-smas.protecao_social_cadunico.domicilio` d
  ON d.id_familia = f.id_familia
    AND d.data_particao = f.data_particao
GROUP BY data_particao, id_cras_creas, faixa_renda