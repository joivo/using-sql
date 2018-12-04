--Consulta 01
CREATE VIEW ViewAlunoProj2000 AS
SELECT * FROM aluno
WHERE cod_projeto IS NOT NULL AND dt_nasc > TO_DATE('31/12/2000', 'dd/mm/yyyy');

--Consulta 02
SELECT AG.nome, COUNT(*) FROM aluno A, agencia_financiadora AG
WHERE UPPER(nivel) = 'MESTRADO' AND valor_bolsa IS NOT NULL AND A.cod_agencia = AG.codigo
GROUP BY AG.nome;

--Consulta 03
CREATE VIEW PublicacaoAlunosMestrado AS
SELECT P.* FROM publicacao P, aluno A, aluno_publicacao AP
WHERE AP.mat_aluno = A.matricula AND AP.cod_publicacao = P.codigo AND UPPER(A.nivel) = 'MESTRADO';

-- Consulta 04
SELECT DISTINCT a.*
FROM agencia_financiadora a, projeto p, agencia_projeto ap
WHERE ap.cod_agencia = a.codigo AND ap.cod_projeto = p.codigo AND p.codigo IN
  (SELECT p.codigo
  FROM projeto p, publicacao pu
  WHERE p.codigo = pu.cod_projeto AND pu.ano >= 2004 AND pu.ano <= 2010)
;

--Consulta 05
SELECT *
FROM projeto
WHERE dt_inicio > TO_DATE('31/12/2007', 'dd/mm/yyyy') AND orcamento > 900000;

-- Consulta 06
SELECT p.*
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
WHERE UPPER(A.nivel) = 'GRADUACAO' AND A.valor_bolsa < 700 AND AG.codigo = A.cod_agencia;

-- Consulta 08
WITH aluno_n_publicacoes (matricula, num_publicacoes) AS
  (SELECT a.matricula, COUNT(*)
  FROM aluno a, publicacao p, aluno_publicacao ap
  WHERE a.matricula = ap.mat_aluno AND p.codigo = ap.cod_publicacao
  GROUP BY a.matricula)
SELECT a.*
FROM aluno a, aluno_n_publicacoes ap
WHERE a.matricula = ap.matricula AND UPPER(a.nivel) = 'MESTRADO' AND ap.num_publicacoes = (SELECT COUNT(*) FROM publicacao);

-- Consulta 09
WITH n_projeto_professor(num_projetos, mat_professor) AS
  (SELECT COUNT(*), mat_professor
  FROM projeto
  GROUP BY mat_professor)
SELECT p.*
FROM n_projeto_professor np, professor p
WHERE p.matricula = np.mat_professor AND num_projetos =
  (SELECT MAX(num_projetos)
  FROM n_projeto_professor)
;

-- Consulta 10
WITH n_alunos_graduacao (cod_cnpq, cod_sub_cnpq, num_alunos) AS
  (SELECT a.cod_cnpq, a.cod_sub_cnpq, COUNT(*)
  FROM aluno a
  WHERE UPPER(a.nivel) = 'GRADUACAO'
  GROUP BY a.cod_cnpq, a.cod_sub_cnpq)
SELECT ng.num_alunos, lp.*
FROM linha_de_pesquisa lp
LEFT OUTER JOIN n_alunos_graduacao ng
ON lp.cod_cnpq = ng.cod_cnpq AND lp.cod_sub_cnpq = ng.cod_sub_cnpq;

-- Consulta 11
SELECT DISTINCT a.*
FROM aluno a, publicacao p, aluno_publicacao ap
WHERE UPPER(a.nivel) = 'DOUTORADO' AND a.matricula = ap.mat_aluno AND p.codigo = ap.cod_publicacao AND p.ano = 2009;

-- Consulta 12
SELECT COUNT(DISTINCT p.codigo) AS num_publicacoes
FROM aluno a, publicacao p, aluno_publicacao ap
WHERE a.matricula = ap.mat_aluno AND p.codigo = ap.cod_publicacao AND UPPER(a.nivel) = 'GRADUACAO';

--Consulta 13
SELECT SUM(orcamento)
FROM projeto
WHERE dt_inicio >= TO_DATE('01/01/2008', 'dd/mm/yyyy') AND dt_inicio <= TO_DATE('31/12/2008', 'dd/mm/yyyy');

-- Consulta 14
SELECT DISTINCT a.nivel, a.nome
FROM aluno a, publicacao p, aluno_publicacao ap
WHERE a.matricula = ap.mat_aluno AND p.codigo = ap.cod_publicacao AND p.ano < 2016;
