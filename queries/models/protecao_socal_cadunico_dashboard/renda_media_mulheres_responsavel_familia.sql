WITH renda_familias AS (
    SELECT
        p.id_familia,
        c.valor_renda_media,
        FORMAT_TIMESTAMP('%Y-%m', p.data_particao) AS data_particao,
        CASE
            WHEN p.id_sexo = '2'  THEN 'Chefiada por Mulheres'
            ELSE 'Outras Famílias'
        END AS tipo_familia
    FROM `rj-smas.protecao_social_cadunico.identificacao_primeira_pessoa` p
    JOIN `rj-smas.protecao_social_cadunico.identificacao_controle` c
      ON p.id_familia = c.id_familia
    WHERE p.id_parentesco_representante_legal = '01'
)
SELECT
    data_particao,
    tipo_familia,
    count(distinct id_familia) as familias,
    AVG(valor_renda_media) AS valor_renda_media
FROM renda_familias
GROUP BY data_particao, tipo_familia
ORDER BY data_particao, tipo_familia