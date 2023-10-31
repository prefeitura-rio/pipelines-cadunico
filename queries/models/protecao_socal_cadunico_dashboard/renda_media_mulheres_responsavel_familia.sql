WITH renda_familias AS (
    SELECT
        p.data_particao,
        CASE
          WHEN f.id_cras_creas IS NULL THEN "Não Informado"
          ELSE f.id_cras_creas
        END AS id_cras_creas,
        p.id_familia,
        c.valor_renda_media,
        CASE
            WHEN p.id_sexo = '2'  THEN 'Chefiada por Mulheres'
            ELSE 'Outras Famílias'
        END AS tipo_familia
    FROM `rj-smas.protecao_social_cadunico.identificacao_primeira_pessoa` p
    LEFT JOIN `rj-smas.protecao_social_cadunico.identificacao_controle` c
      ON (p.id_familia = c.id_familia)
        AND (p.data_particao = c.data_particao)
    LEFT JOIN `rj-smas.protecao_social_cadunico.familia` f
      ON (p.id_familia = f.id_familia)
        AND (p.data_particao = f.data_particao)
    WHERE p.id_parentesco_responsavel_familia = '01'
)
SELECT
    data_particao,
    id_cras_creas,
    tipo_familia,
    count(distinct id_familia) as familias,
    AVG(valor_renda_media) AS valor_renda_media
FROM renda_familias
GROUP BY 1, 2, 3
ORDER BY 1, 2, 3