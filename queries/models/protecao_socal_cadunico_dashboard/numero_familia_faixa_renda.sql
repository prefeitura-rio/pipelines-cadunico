SELECT
    data_particao,
    CASE
        WHEN valor_renda_media > 22000 THEN 'Classe A'
        WHEN valor_renda_media BETWEEN 7100 AND 22000 THEN 'Classe B'
        WHEN valor_renda_media BETWEEN 2900 AND 7100 THEN 'Classe C'
        ELSE 'Classes D/E'
    END AS faixa_de_renda,
    COUNT(DISTINCT id_familia) AS numero_de_familias
FROM `rj-smas.protecao_social_cadunico.identificacao_controle`
GROUP BY data_particao, faixa_de_renda
ORDER BY data_particao, faixa_de_renda