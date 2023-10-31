WITH escolaridade AS (
    SELECT
    id_membro_familia,
    data_particao,
      COALESCE(
        CASE
            WHEN id_ano_serie_frequenta = '01' THEN 'Frequenta - Primeiro(a)'
            WHEN id_ano_serie_frequenta = '02' THEN 'Frequenta - Segundo(a)'
            WHEN id_ano_serie_frequenta = '03' THEN 'Frequenta - Terceiro(a)'
            WHEN id_ano_serie_frequenta = '04' THEN 'Frequenta - Quarto(a)'
            WHEN id_ano_serie_frequenta = '05' THEN 'Frequenta - Quinto(a)'
            WHEN id_ano_serie_frequenta = '06' THEN 'Frequenta - Sexto(a)'
            WHEN id_ano_serie_frequenta = '07' THEN 'Frequenta - Sétimo(a)'
            WHEN id_ano_serie_frequenta = '08' THEN 'Frequenta - Oitavo(a)'
            WHEN id_ano_serie_frequenta = '09' THEN 'Frequenta - Nono(a)'
            WHEN id_ano_serie_frequenta = '10' THEN 'Frequenta - Curso não-seriado'
            ELSE "Não informado"
        END,
        CASE
            WHEN id_ultimo_ano_serie_frequentou = '01' THEN 'Frequentou - Primeiro(a)'
            WHEN id_ultimo_ano_serie_frequentou = '02' THEN 'Frequentou - Segundo(a)'
            WHEN id_ultimo_ano_serie_frequentou = '03' THEN 'Frequentou - Terceiro(a)'
            WHEN id_ultimo_ano_serie_frequentou = '04' THEN 'Frequentou - Quarto(a)'
            WHEN id_ultimo_ano_serie_frequentou = '05' THEN 'Frequentou - Quinto(a)'
            WHEN id_ultimo_ano_serie_frequentou = '06' THEN 'Frequentou - Sexto(a)'
            WHEN id_ultimo_ano_serie_frequentou = '07' THEN 'Frequentou - Sétimo(a)'
            WHEN id_ultimo_ano_serie_frequentou = '08' THEN 'Frequentou - Oitavo(a)'
            WHEN id_ultimo_ano_serie_frequentou = '09' THEN 'Frequentou - Nono(a)'
            WHEN id_ultimo_ano_serie_frequentou = '10' THEN 'Frequentou - Curso não-seriado'
            ELSE "Não informado"
        END
      ) AS escolaridade_fundamental,

      COALESCE(
        CASE
            WHEN id_curso_frequenta = '01' THEN 'Frequenta - Creche'
            WHEN id_curso_frequenta = '02' THEN 'Frequenta - Pré-escola (exceto CA)'
            WHEN id_curso_frequenta = '03' THEN 'Frequenta - Classe de Alfabetização'
            WHEN id_curso_frequenta = '04' THEN 'Frequenta - Ensino Fundamental regular (duração 8 anos)'
            WHEN id_curso_frequenta = '05' THEN 'Frequenta - Ensino Fundamental regular (duração 9 anos)'
            WHEN id_curso_frequenta = '06' THEN 'Frequenta - Ensino Fundamental especial'
            WHEN id_curso_frequenta = '07' THEN 'Frequenta - Ensino Médio regular'
            WHEN id_curso_frequenta = '08' THEN 'Frequenta - Ensino Médio especial'
            WHEN id_curso_frequenta = '09' THEN 'Frequenta - Ensino Fundamental EJA - séries iniciais (Supletivo - 1 a a 4a)'
            WHEN id_curso_frequenta = '10' THEN 'Frequenta - Ensino Fundamental EJA - séries finais (Supletivo - 5 a a 8a)'
            WHEN id_curso_frequenta = '11' THEN 'Frequenta - Ensino Médio EJA (Supletivo)'
            WHEN id_curso_frequenta = '12' THEN 'Frequenta - Alfabetização para adultos'
            WHEN id_curso_frequenta = '13' THEN 'Frequenta - Superior, Aperfeiçoamento, Especialização, Mestrado, Doutorado'
            WHEN id_curso_frequenta = '14' THEN 'Frequenta - Pré-vestibular'
            ELSE "Não informado"
        END,
        CASE
            WHEN id_curso_mais_elevado_frequentou = '01' THEN 'Frequentou - Creche'
            WHEN id_curso_mais_elevado_frequentou = '02' THEN 'Frequentou - Pré-escola (exceto CA)'
            WHEN id_curso_mais_elevado_frequentou = '03' THEN 'Frequentou - Classe de Alfabetização - CA'
            WHEN id_curso_mais_elevado_frequentou = '04' THEN 'Frequentou - Ensino Fundamental 1a a 4a séries, Elementar (Primário), Primeira fase do 1 o grau'
            WHEN id_curso_mais_elevado_frequentou = '05' THEN 'Frequentou - Ensino Fundamental 5a a 8a séries, Médio 1o ciclo (Ginasial), Segunda fase do 1o grau'
            WHEN id_curso_mais_elevado_frequentou = '06' THEN 'Frequentou - Ensino Fundamental (duração 9 anos)'
            WHEN id_curso_mais_elevado_frequentou = '07' THEN 'Frequentou - Ensino Fundamental Especial'
            WHEN id_curso_mais_elevado_frequentou = '08' THEN 'Frequentou - Ensino Médio, 2o grau, Médio 2o ciclo (Científico, Clássico, Técnico, Normal)'
            WHEN id_curso_mais_elevado_frequentou = '09' THEN 'Frequentou - Ensino Médio Especial'
            WHEN id_curso_mais_elevado_frequentou = '10' THEN 'Frequentou - Ensino Fundamental EJA - séries iniciais (Supletivo 1a a 4a)'
            WHEN id_curso_mais_elevado_frequentou = '11' THEN 'Frequentou - Ensino Fundamental EJA - séries finais (Supletivo 5a a 8a)'
            WHEN id_curso_mais_elevado_frequentou = '12' THEN 'Frequentou - Ensino Médio EJA (Supletivo)'
            WHEN id_curso_mais_elevado_frequentou = '13' THEN 'Frequentou - Superior, Aperfeiçoamento, Especialização, Mestrado, Doutorado'
            WHEN id_curso_mais_elevado_frequentou = '14' THEN 'Frequentou - Alfabetização para Adultos'
            WHEN id_curso_mais_elevado_frequentou = '15' THEN 'Frequentou - Nenhum'
            ELSE "Não informado"
        END
    ) AS escolaridade
  FROM `rj-smas.protecao_social_cadunico.escolaridade`

),

membro AS (
    SELECT
    data_particao,
    id_membro_familia,
    id_familia,
    CASE
        WHEN id_sexo = '1' THEN 'Masculino'
        WHEN id_sexo = '2' THEN 'Feminino'
        ELSE 'Não informado'
    END AS genero,
    CASE
        WHEN id_raca_cor = '1' THEN 'Branca'
        WHEN id_raca_cor = '2' THEN 'Preta'
        WHEN id_raca_cor = '3' THEN 'Amarela'
        WHEN id_raca_cor = '4' THEN 'Parda'
        WHEN id_raca_cor = '5' THEN 'Indígena'
        ELSE 'Não informado'
    END AS raca,
    CASE
      WHEN DATE_DIFF(CURRENT_DATE, data_nascimento, YEAR)  BETWEEN 0 AND 6 THEN '0-6'
      WHEN DATE_DIFF(CURRENT_DATE, data_nascimento, YEAR)  BETWEEN 7 AND 9 THEN '7-9'
      WHEN DATE_DIFF(CURRENT_DATE, data_nascimento, YEAR)  BETWEEN 10 AND 14 THEN '10-14'
      WHEN DATE_DIFF(CURRENT_DATE, data_nascimento, YEAR)  BETWEEN 15 AND 17 THEN '15-17'
      WHEN DATE_DIFF(CURRENT_DATE, data_nascimento, YEAR)  BETWEEN 18 AND 29 THEN '18-29'
      WHEN DATE_DIFF(CURRENT_DATE, data_nascimento, YEAR)  BETWEEN 30 AND 59 THEN '30-59'
      ELSE '60+'
    END AS faixa_etaria,
  FROM `rj-smas.protecao_social_cadunico.identificacao_primeira_pessoa`
),

membro_escolaridade AS (
  SELECT
    m.data_particao,
    CASE
      WHEN f.id_cras_creas IS NULL THEN "Não Informado"
      ELSE f.id_cras_creas
    END AS id_cras_creas,
    m.id_membro_familia,
    m.genero,
    m.raca,
    m.faixa_etaria,
    e.escolaridade_fundamental,
    e.escolaridade
  FROM membro m
  LEFT JOIN escolaridade e
    ON (m.id_membro_familia = e.id_membro_familia)
      AND (m.data_particao = e.data_particao)
  LEFT JOIN `rj-smas.protecao_social_cadunico.familia` f
  ON (m.id_familia = f.id_familia)
      AND (m.data_particao = f.data_particao)
)


SELECT
  data_particao,
  id_cras_creas,
  faixa_etaria,
  genero,
  raca,
  escolaridade,
  COUNT(*) AS numero_pessoas
FROM membro_escolaridade
GROUP BY 1, 2, 3, 4, 5, 6
ORDER BY 1, 2, 3, 4, 5, 6