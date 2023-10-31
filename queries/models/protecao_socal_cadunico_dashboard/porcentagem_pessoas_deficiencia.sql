WITH pessoa_deficiencia_tb AS (
    SELECT
    p.data_particao,
    f.id_cras_creas,
    p.id_familia,
    p.id_tem_deficiencia
    FROM `rj-smas.protecao_social_cadunico.pessoa_deficiencia` p
    LEFT JOIN `rj-smas.protecao_social_cadunico.familia` f
    ON (p.id_familia = f.id_familia)
    AND (p.data_particao = f.data_particao)
)

SELECT
    data_particao,
    CASE
      WHEN id_cras_creas IS NULL THEN "Não Informado"
      ELSE id_cras_creas
    END AS id_cras_creas,
    ROUND((SUM(CASE WHEN id_tem_deficiencia = '1' THEN 1 ELSE 0 END) * 100.0 / COUNT(DISTINCT id_familia)), 2) AS porcentagem_pessoas_deficiencia,
    SUM(CASE WHEN id_tem_deficiencia = '1' THEN 1 ELSE 0 END) AS total_pessoas_deficiencia,
    COUNT(DISTINCT id_familia) AS total_familias
FROM pessoa_deficiencia_tb
GROUP BY 2, 1
ORDER BY 2, 1
