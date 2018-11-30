INSERT INTO professor (matricula, nome, titulacao, cod_departamento, dt_nasc)
  SELECT            100, 'Mariana Azevedo', 'Doutor', null, TO_DATE('16/12/1954', 'dd/mm/yyyy') FROM dual
  UNION ALL SELECT  200, 'Marisa Barros', 'Doutor', null, TO_DATE('05/10/1969', 'dd/mm/yyyy') FROM dual
  UNION ALL SELECT  300, 'Antônio Silva', 'Doutor', null, TO_DATE('07/01/1976', 'dd/mm/yyyy') FROM dual
  UNION ALL SELECT  400, 'Geraldo Carvalho', 'Doutor', null, TO_DATE('26/05/1966', 'dd/mm/yyyy') FROM dual
  UNION ALL SELECT  500, 'Giovana Cunha', 'Doutor', null, TO_DATE('07/03/1978', 'dd/mm/yyyy') FROM dual
  UNION ALL SELECT  600, 'Samuel Correia', 'Doutor', null, TO_DATE('26/02/1971', 'dd/mm/yyyy') FROM dual
;

INSERT INTO departamento (codigo, nome, endereco, mat_professor)
  SELECT            1, 'Departamento de Física', 'Bloco RX', 400 FROM dual
  UNION ALL SELECT  2, 'Departamento de Matemática', 'Bloco CX', 200 FROM dual
  UNION ALL SELECT  3, 'Departamento de Sistemas e Computação', 'Bloco SX', 300 FROM dual
  UNION ALL SELECT  4, 'Departamento de Medicina', 'Bloco MX', 500 FROM dual
  UNION ALL SELECT  5, 'Departamento de Psicologia', 'Bloco PX', 100 FROM dual
;

INSERT INTO agencia_financiadora (codigo, nome, email, endereco)
  SELECT            1, 'CAPES', 'faleconosco@capes.gov.br', 'Setor Bancário Norte (SBN) Q 2 Bloco L Lote 06 - Asa Norte, Brasília - DF, 70040-020' FROM dual
  UNION ALL SELECT  2, 'CNPq', 'faleconosco@cnpq.br', 'St. de Habitações Individuais Sul Blocos A, B, C, D - Lago Sul, Brasília - DF, 71605-001' FROM dual
  UNION ALL SELECT  3, 'Petrobras', 'faleconosco@petrobras.com.br', 'Av. República do Chile, nº 65 - Centro Rio de Janeiro - 20031-912' FROM dual
  UNION ALL SELECT  4, 'Chesf', 'contato@chesf.gov.br', 'Rua ​Delmiro Gouveia, 333 ​​ ​San Martin Recife - Pernambuco' FROM dual
  UNION ALL SELECT  5, 'Embrapa', 'contato@embrapa.br', 'R. Osvaldo Cruz, 1143 - Centenário, Campina Grande - PB, 58428-095' FROM dual
;

INSERT INTO agencia_telefone (cod_agencia, telefone)
  SELECT            1, '(61) 2022-6210' FROM dual
  UNION ALL SELECT  1, '(61) 2022-6211' FROM dual
  UNION ALL SELECT  2, '(61) 3211-4000' FROM dual
  UNION ALL SELECT  3, '(21) 3224-4477' FROM dual
  UNION ALL SELECT  3, '(21) 3224-4478' FROM dual
  UNION ALL SELECT  4, '(81) 3229-2901' FROM dual
  UNION ALL SELECT  4, '(81) 3229-2900' FROM dual
  UNION ALL SELECT  5, '(83) 3182-4300' FROM dual
;

INSERT INTO departamento_telefone (cod_departamento, telefone)
  SELECT            1, '(83) 2101-1195' FROM dual
  UNION ALL SELECT  2, '(83) 2101-1030' FROM dual
  UNION ALL SELECT  3, '(83) 3310-1122' FROM dual
  UNION ALL SELECT  4, '(83) 2101-1000' FROM dual
  UNION ALL SELECT  5, '(83) 2101-1233' FROM dual
;

INSERT INTO projeto (codigo, mat_professor, orcamento, titulo, descricao, dt_inicio, dt_fim, premiacao)
  SELECT            1000, 100, 32676.32, 'Projeto 1', 'Descrição do projeto 1', TO_DATE('07/03/2017', 'dd/mm/yyyy'), TO_DATE('07/03/2018', 'dd/mm/yyyy'), 0 FROM dual
  UNION ALL SELECT  1001, 200, 265535.65, 'Projeto 2', 'Descrição do projeto 2', TO_DATE('08/09/2008', 'dd/mm/yyyy'), TO_DATE('08/09/2010', 'dd/mm/yyyy'), 0 FROM dual
  UNION ALL SELECT  1002, 300, 44132.12, 'Projeto 3', 'Descrição do projeto 3', TO_DATE('02/04/2015', 'dd/mm/yyyy'), TO_DATE('02/04/2017', 'dd/mm/yyyy'), 0 FROM dual
  UNION ALL SELECT  1003, 400, 9127348.29, 'Projeto 4', 'Descrição do projeto 4', TO_DATE('04/11/2007', 'dd/mm/yyyy'), TO_DATE('04/11/2009', 'dd/mm/yyyy'), 0 FROM dual
  UNION ALL SELECT  1004, 500, 20000.99, 'Projeto 5', 'Descrição do projeto 5', TO_DATE('08/09/2016', 'dd/mm/yyyy'), TO_DATE('08/09/2018', 'dd/mm/yyyy'), 0 FROM dual
  UNION ALL SELECT  1005, 600, 1000000.00, 'Projeto 6', 'Descrição do projeto 6', TO_DATE('08/09/2003', 'dd/mm/yyyy'), TO_DATE('08/09/2006', 'dd/mm/yyyy'), 0 FROM dual
  UNION ALL SELECT  1006, 300, 150000.00, 'Projeto 7', 'Descrição do projeto 7', TO_DATE('22/05/2010', 'dd/mm/yyyy'), TO_DATE('22/05/2012', 'dd/mm/yyyy'), 0 FROM dual
;

INSERT INTO laboratorio (codigo, nome, local, mat_professor)
  SELECT            1, 'Laboratório de Sistemas de Informação', 'Bloco A1', 300 FROM dual
  UNION ALL SELECT  2, 'Laboratório de Física de Partículas', 'Bloco A2', 400 FROM dual
  UNION ALL SELECT  3, 'Laboratório de Fisiopatologia do Envelhecimento', 'Bloco A3', 600 FROM dual
  UNION ALL SELECT  4, 'Laboratório de Psicologia Organizacional', 'Bloco A4', 100 FROM dual
  UNION ALL SELECT  5, 'Laboratório de Matemática Aplicada', 'Bloco A5', 200 FROM dual
;

INSERT INTO recurso (codigo, cod_recurso, descricao)
  SELECT            1, 1, 'Macbook' FROM dual
  UNION ALL SELECT  1, 2, 'Cadeira' FROM dual
  UNION ALL SELECT  2, 1, 'Computador' FROM dual
  UNION ALL SELECT  3, 1, 'Computador' FROM dual
  UNION ALL SELECT  4, 1, 'Computador' FROM dual
  UNION ALL SELECT  5, 1, 'Computador' FROM dual
;

INSERT INTO linha_de_pesquisa (cod_cnpq, cod_sub_cnpq, nome_area, nome_subarea)
  SELECT            1, 1, 'Matemática', 'Topologia Algébrica' FROM dual
  UNION ALL SELECT  2, 1, 'Ciência da Computação', 'Sistemas de Informação' FROM dual
  UNION ALL SELECT  3, 1, 'Medicina', 'Doenças Infecciosas e Parasitárias' FROM dual
  UNION ALL SELECT  3, 2, 'Medicina', 'Nefrologia' FROM dual
  UNION ALL SELECT  3, 3, 'Medicina', ' Cirurgia Experimental' FROM dual
  UNION ALL SELECT  4, 1, 'Física', 'Espectros Atômicos e Integração de Fótons' FROM dual
  UNION ALL SELECT  5, 1, 'Psicologia', 'Fatores Humanos no Trabalho' FROM dual
  UNION ALL SELECT  5, 2, 'Psicologia', 'Planejamento Ambiental e Comportamento Humano' FROM dual
;

INSERT INTO patente (codigo, num_reg, descricao, cod_projeto)
 SELECT            1, 10546, 'Patente 1', 1000 FROM dual
 UNION ALL SELECT  2, 12600, 'Patente 2', 1000 FROM dual
 UNION ALL SELECT  3, 10122, 'Patente 3', 1000 FROM dual
 UNION ALL SELECT  4, 18664, 'Patente 4', 1001 FROM dual
 UNION ALL SELECT  5, 17932, 'Patente 5', 1001 FROM dual
 UNION ALL SELECT  6, 13874, 'Patente 6', 1001 FROM dual
 UNION ALL SELECT  7, 19225, 'Patente 7', 1001 FROM dual
 UNION ALL SELECT  8, 10403, 'Patente 8', 1002 FROM dual
 UNION ALL SELECT  9, 16634, 'Patente 9', 1003 FROM dual
 UNION ALL SELECT  10, 17725, 'Patente 10', 1004 FROM dual
;

INSERT INTO publicacao (codigo, titulo, veiculo, ano, cod_projeto, mat_professor)
  SELECT            1, 'Publicação 1', 'Revista', 2003, 1005, 600 FROM dual
  UNION ALL SELECT  2, 'Publicação 2', 'Congresso', 2015, 1002, 300 FROM dual
  UNION ALL SELECT  3, 'Publicação 3', 'Workshop', 2010, 1001, 200 FROM dual
  UNION ALL SELECT  4, 'Publicação 4', 'Congresso', 2004, 1005, 300 FROM dual
  UNION ALL SELECT  5, 'Publicação 5', 'Congresso', 2007, 1003, 400 FROM dual
  UNION ALL SELECT  6, 'Publicação 6', 'Revista', 2009, 1001, 200 FROM dual
  UNION ALL SELECT  7, 'Publicação 7', 'Workshop', 2009, 1001, 200 FROM dual
  UNION ALL SELECT  8, 'Publicação 8', 'Revista', 2009, 1003, 400 FROM dual
  UNION ALL SELECT  9, 'Publicação 9', 'Revista', 2018, 1004, 500 FROM dual
  UNION ALL SELECT  10, 'Publicação 10', 'Congresso', 2016, 1002, 300 FROM dual
;

INSERT INTO aluno (matricula, nome, nivel, mat_professor, cod_projeto, cod_cnpq, cod_sub_cnpq, dt_nasc, cod_agencia, valor_bolsa, dt_inicio, dt_fim, horas)
  SELECT            1, 'Rafael Cavalcante', 'Graduacao', 100, 1000, 5, 2, TO_DATE('18/08/1994', 'dd/mm/yyyy'), 4, 600, TO_DATE('07/03/2017', 'dd/mm/yyyy'), TO_DATE('07/03/2018', 'dd/mm/yyyy'), 20 FROM dual
  UNION ALL SELECT  2, 'Leila Rocha', 'Graduacao', null, null, null, null, TO_DATE('11/06/2001', 'dd/mm/yyyy'), null, null, null, null, null FROM dual --Nao participa de projeto e nem tem bolsa
  UNION ALL SELECT  3, 'Marina Martins', 'Graduacao', 100, 1000, 5, 1, TO_DATE('05/11/2001', 'dd/mm/yyyy'), 4, 800, TO_DATE('07/03/2017', 'dd/mm/yyyy'), TO_DATE('07/03/2018', 'dd/mm/yyyy'), 20 FROM dual
  UNION ALL SELECT  4, 'Ryan Cardoso', 'Mestrado', 300, 1002, 2, 1, TO_DATE('23/07/1992', 'dd/mm/yyyy'), 1, 1500, TO_DATE('08/09/2016', 'dd/mm/yyyy'), TO_DATE('08/09/2018', 'dd/mm/yyyy'), 20 FROM dual
  UNION ALL SELECT  5, 'Clara Castro', 'Mestrado', 400, 1003, 4, 1, TO_DATE('22/09/1980', 'dd/mm/yyyy'), 5, 1500, TO_DATE('04/11/2007', 'dd/mm/yyyy'), TO_DATE('04/11/2009', 'dd/mm/yyyy'), 20 FROM dual
  UNION ALL SELECT  6, 'Thiago Sousa', 'Mestrado', 500, 1004, 3, 2, TO_DATE('04/11/1990', 'dd/mm/yyyy'), null, null, null, null, null FROM dual -- Mestrado sem bolsa
  UNION ALL SELECT  7, 'Beatrice Costa', 'Doutorado', 200, 1001, 1, 1, TO_DATE('26/06/1985', 'dd/mm/yyyy'), 3, 2200, TO_DATE('08/09/2008', 'dd/mm/yyyy'), TO_DATE('08/09/2010', 'dd/mm/yyyy'), 20 FROM dual
  UNION ALL SELECT  8, 'Tomás Oliveira', 'Doutorado', 300, 1005, 3, 3, TO_DATE('08/04/1988', 'dd/mm/yyyy'), 2, 2200, TO_DATE('08/09/2003', 'dd/mm/yyyy'), TO_DATE('08/09/2005', 'dd/mm/yyyy'), 20 FROM dual
  UNION ALL SELECT  9, 'André Silva', 'Doutorado', 200, 1001, 1, 1, TO_DATE('16/10/1990', 'dd/mm/yyyy'), 3, 2200, TO_DATE('08/09/2008', 'dd/mm/yyyy'), TO_DATE('08/09/2010', 'dd/mm/yyyy'), 20 FROM dual
;

INSERT INTO pesquisa_projeto (cod_cnpq, cod_sub_cnpq, cod_projeto)
  SELECT            5, 1, 1000 FROM dual
  UNION ALL SELECT  5, 2, 1000 FROM dual
  UNION ALL SELECT  1, 1, 1001 FROM dual
  UNION ALL SELECT  2, 1, 1002 FROM dual
  UNION ALL SELECT  4, 1, 1003 FROM dual
  UNION ALL SELECT  3, 1, 1004 FROM dual
  UNION ALL SELECT  3, 2, 1004 FROM dual
  UNION ALL SELECT  3, 3, 1005 FROM dual
;

INSERT INTO professor_pesquisa (mat_professor, cod_cnpq, cod_sub_cnpq)
  SELECT            100, 5, 1 FROM dual
  UNION ALL SELECT  100, 5, 2 FROM dual
  UNION ALL SELECT  200, 1, 1 FROM dual
  UNION ALL SELECT  300, 2, 1 FROM dual
  UNION ALL SELECT  400, 4, 1 FROM dual
  UNION ALL SELECT  500, 3, 1 FROM dual
  UNION ALL SELECT  500, 3, 2 FROM dual
  UNION ALL SELECT  600, 3, 1 FROM dual
  UNION ALL SELECT  600, 3, 2 FROM dual
  UNION ALL SELECT  600, 3, 3 FROM dual
;

INSERT INTO professor_projeto (mat_professor, cod_projeto)
  SELECT            100, 1000 FROM dual
  UNION ALL SELECT  200, 1001 FROM dual
  UNION ALL SELECT  300, 1002 FROM dual
  UNION ALL SELECT  400, 1003 FROM dual
  UNION ALL SELECT  500, 1004 FROM dual
  UNION ALL SELECT  600, 1004 FROM dual
  UNION ALL SELECT  600, 1005 FROM dual
;

INSERT INTO laboratorio_projeto (cod_laboratorio, cod_projeto)
  SELECT            1, 1002 FROM dual
  UNION ALL SELECT  2, 1003 FROM dual
  UNION ALL SELECT  3, 1004 FROM dual
  UNION ALL SELECT  3, 1005 FROM dual
  UNION ALL SELECT  4, 1000 FROM dual
  UNION ALL SELECT  5, 1001 FROM dual
;

INSERT INTO aluno_publicacao (mat_aluno, cod_publicacao)
  SELECT            4, 10 FROM dual
  UNION ALL SELECT  5, 5 FROM dual
  UNION ALL SELECT  7, 6 FROM dual
  UNION ALL SELECT  7, 7 FROM dual
  UNION ALL SELECT  8, 4 FROM dual
;

INSERT INTO agencia_projeto (cod_agencia, cod_projeto)
  SELECT            1, 1002 FROM dual
  UNION ALL SELECT  1, 1003 FROM dual
  UNION ALL SELECT  1, 1004 FROM dual
  UNION ALL SELECT  2, 1005 FROM dual
  UNION ALL SELECT  2, 1001 FROM dual
  UNION ALL SELECT  2, 1002 FROM dual
  UNION ALL SELECT  3, 1001 FROM dual
  UNION ALL SELECT  4, 1000 FROM dual
  UNION ALL SELECT  5, 1003 FROM dual
;

UPDATE professor SET cod_departamento = 1 WHERE matricula = 400;
UPDATE professor SET cod_departamento = 2 WHERE matricula = 200;
UPDATE professor SET cod_departamento = 3 WHERE matricula = 300;
UPDATE professor SET cod_departamento = 4 WHERE matricula = 500 OR matricula = 600;
UPDATE professor SET cod_departamento = 5 WHERE matricula = 100;
