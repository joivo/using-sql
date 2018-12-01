-- Consulta 04
SELECT DISTINCT a.nome
FROM agencia_financiadora a, projeto p, agencia_projeto ap
WHERE ap.cod_agencia = a.codigo AND ap.cod_projeto = p.codigo AND p.codigo IN
  (SELECT p.codigo
  FROM projeto p, publicacao pu
  WHERE p.codigo = pu.cod_projeto AND pu.ano >= 2004 AND pu.ano <= 2010)
;

-- Consulta 06
SELECT p.nome, p.matricula, pr.codigo AS cod_projeto, ps.soma_patentes
FROM
  professor p,
  projeto pr,
  (SELECT *
    FROM (SELECT cod_projeto, COUNT(*) as soma_patentes
        FROM patente
        GROUP BY cod_projeto)
    WHERE soma_patentes >= 4 AND soma_patentes <= 6) ps
WHERE p.matricula = pr.mat_professor AND ps.cod_projeto = pr.codigo
;

-- Consulta 11
SELECT DISTINCT a.nome, a.matricula
FROM aluno a, publicacao p, aluno_publicacao ap
WHERE a.nivel = 'Doutorado' AND a.matricula = ap.mat_aluno AND p.codigo = ap.cod_publicacao AND p.ano = 2009;
