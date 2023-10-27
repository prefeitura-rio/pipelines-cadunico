
WITH TotalFamiliasMes AS (
    SELECT
        data_particao,
        COUNT(DISTINCT id_familia) AS total_familias
    FROM `rj-smas.protecao_social_cadunico.identificacao_primeira_pessoa`
    WHERE id_parentesco_responsavel_familia = '01'
    GROUP BY data_particao
),
MulheresChefesMes AS (
    SELECT
        data_particao,
        COUNT(DISTINCT id_familia) AS numero_mulheres_chefes
    FROM `rj-smas.protecao_social_cadunico.identificacao_primeira_pessoa`
    WHERE id_parentesco_responsavel_familia = '01'
      AND id_sexo = '2'
    GROUP BY data_particao
)
SELECT
    t.data_particao,
    ROUND((m.numero_mulheres_chefes * 100.0 / t.total_familias),2) AS porcentagem_mulheres_chefes,
    m.numero_mulheres_chefes,
    t.total_familias,
FROM TotalFamiliasMes t
JOIN MulheresChefesMes m
  ON t.data_particao = m.data_particao
ORDER BY t.data_particao