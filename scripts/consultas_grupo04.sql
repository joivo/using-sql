--Consulta 01
CREATE VIEW PublicacaoAlunosMestrado AS
SELECT P.* FROM publicacao P, aluno A
WHERE A.cod_publicacao = P.codigo AND A.nivel = 'Mestrado';

--Consulta 02
SELECT AG.nome, COUNT(*) FROM aluno A, agencia_financiadora AG
WHERE nivel = 'Mestrado' AND valor_bolsa IS NOT NULL AND A.cod_agencia = AG.codigo
GROUP BY AG.nome;

--Consulta 03
CREATE VIEW PublicacaoAlunosMestrado AS
SELECT P.* FROM publicacao P, aluno A
WHERE P.cod_projeto = A.cod_projeto AND A.nivel = 'Mestrado';

-- Consulta 04
SELECT DISTINCT a.nome
FROM agencia_financiadora a, projeto p, agencia_projeto ap
WHERE ap.cod_agencia = a.codigo AND ap.cod_projeto = p.codigo AND p.codigo IN
  (SELECT p.codigo
  FROM projeto p, publicacao pu
  WHERE p.codigo = pu.cod_projeto AND pu.ano >= 2004 AND pu.ano <= 2010)
;

--Consulta 05
SELECT *
FROM projeto
WHERE dt_inicio > TO_DATE('31/12/2000', 'dd/mm/yyyy') AND orcamento > 900000;

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

--Consulta 07
SELECT AG.nome
FROM aluno A, agencia_financiadora AG
WHERE A.nivel = 'Graduacao' AND A.valor_bolsa < 700 AND AG.codigo = A.cod_agencia;

-- Consulta 08
WITH aluno_n_publicacoes (matricula, num_publicacoes) AS
  (SELECT a.matricula, COUNT(*)
  FROM aluno a, publicacao p, aluno_publicacao ap
  WHERE a.matricula = ap.mat_aluno AND p.codigo = ap.cod_publicacao
  GROUP BY a.matricula)
SELECT a.*
FROM aluno a, aluno_n_publicacoes ap
WHERE a.matricula = ap.matricula AND UPPER(a.nivel) = 'MESTRADO' AND ap.num_publicacoes = (SELECT COUNT(*) FROM publicacao);

-- Consulta 11
SELECT DISTINCT a.nome, a.matricula
FROM aluno a, publicacao p, aluno_publicacao ap
WHERE a.nivel = 'Doutorado' AND a.matricula = ap.mat_aluno AND p.codigo = ap.cod_publicacao AND p.ano = 2009;

--Consulta 13
SELECT SUM(orcamento)
FROM projeto
WHERE dt_inicio >= TO_DATE('01/01/2008', 'dd/mm/yyyy') AND dt_inicio <= TO_DATE('31/12/2008', 'dd/mm/yyyy');
