-- Consulta 11
SELECT DISTINCT a.nome
FROM aluno a, publicacao p, aluno_publicacao ap
WHERE a.nivel = 'Doutorado' AND a.matricula = ap.mat_aluno AND p.codigo = ap.cod_publicacao AND p.ano = 2009;
