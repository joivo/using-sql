CREATE TABLE DEPARTAMENTO(
    codigo INT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    matrGer INT NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE ALUNO(
    matricula INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    DataNasc DATE NOT NULL,
    nivel VARCHAR(50) NOT NULL,
    codLinhaPesq INT NOT NULL,
    codSubLinhaPesq INT NOT NULL,
    matrProf INT NOT NULL,
    PRIMARY KEY (matricula)
);

CREATE TABLE PROFESSOR(
    matricula INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    DataNasc DATE NOT NULL,
    titulacao VARCHAR(50) NOT NULL,
    codDep INT NOT NULL,
    PRIMARY KEY (matricula)
);

CREATE TABLE LABORATORIO(
    codLab INT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    local VARCHAR(50) NOT NULL,
    matrCoor INT NOT NULL,
    PRIMARY KEY (codLab)
);

CREATE TABLE LINHAPESQUISA(
    codLinhaPesq INT NOT NULL,
    codSubLinhaPesq INT NOT NULL,
    nomeArea VARCHAR(30) NOT NULL,
    nomeSubArea VARCHAR(30) NOT NULL,
    PRIMARY KEY(codLinhaPesq, codSubLinhaPesq)
);

CREATE TABLE PROJETO(
    codProj INT NOT NULL,
    orcamento NUMBER NOT NULL,
    titulo VARCHAR(30) NOT NULL,
    descricao VARCHAR(150) NOT NULL,
    dataInicio DATE NOT NULL,
    dataFim DATE NOT NULL,
    matrCoord INT NOT NULL,
    PRIMARY KEY (codProj)
);


CREATE TABLE PUBLICACAO(
    codPub INT NOT NULL,
    titulo VARCHAR(30) NOT NULL,
    veiculo VARCHAR(30) NOT NULL,
    ano INT NOT NULL,
    codProj INT NOT NULL,
    matrProf INT NOT NULL,
    PRIMARY KEY (codPub)
);

CREATE TABLE PATENTE(
    codigo INT NOT NULL,
    numero INT NOT NULL,
    descricao VARCHAR(150) NOT NULL,
    codProj INT NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE AGENCIA_FINANCIADORA(
    codigo INT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    PRIMARY KEY (codigo)
);




CREATE TABLE RECURSO(
    codigo INT NOT NULL,
    codLab INT NOT NULL,
    descricao VARCHAR(150) NOT NULL,
    PRIMARY KEY (codigo, codLab)
);




CREATE TABLE BOLSA(
    matrAluno INT NOT NULL,
    codAg INT NOT NULL,
    valor NUMBER NOT NULL,
    dataInicio DATE NOT NULL,
    dataFim DATE NOT NULL,
    horas INT NOT NULL,
    PRIMARY KEY(matrAluno, codAg)
);

CREATE TABLE DEP_TELEFONES(
    codDep INT NOT NULL,
    numero VARCHAR(15) NOT NULL,
    PRIMARY KEY(codDep, numero)
);

CREATE TABLE AG_TELEFONES(
    codAg INT NOT NULL,
    numero VARCHAR(15) NOT NULL,
    PRIMARY KEY(codAg, numero)
);




CREATE TABLE RELACAO_ALUNO_PUBLICACAO(
    matrAluno INT NOT NULL,
    codPub INT NOT NULL,
    PRIMARY KEY(matrAluno, codPub)
);

CREATE TABLE RELACAO_ALUNO_PROJETO(
    matrAluno INT NOT NULL,
    codProj INT NOT NULL,
    PRIMARY KEY(matrAluno, codProj)
);

CREATE TABLE RELACAO_AGENCIA_PROJETO(
    codAg INT NOT NULL,
    codProj INT NOT NULL,
    PRIMARY KEY(codAg, codProj)
);

CREATE TABLE RELACAO_PROF_LINHAPESQUISA(
    matrProf INT NOT NULL,
    codLinhaPesq INT NOT NULL,
    codSubLinhaPesq INT NOT NULL,
    PRIMARY KEY(matrProf, codLinhaPesq, codSubLinhaPesq)
);

CREATE TABLE RELACAO_PROFESSOR_PROJETO(
    matrProf INT NOT NULL,
    codProj INT NOT NULL,
    PRIMARY KEY(matrProf, codProj)
);

CREATE TABLE RELACAO_LABORATORIO_PROJETO(
    codLab INT NOT NULL,
    codProj INT NOT NULL,
    PRIMARY KEY(codLab, codProj)
);


CREATE TABLE RELACAO_LINHAPESQUISA_PROJETO(
    codLinhaPesq INT NOT NULL,
    codSubLinhaPesq INT NOT NULL,
    codProj INT NOT NULL,
    PRIMARY KEY(codLinhaPesq, codSubLinhaPesq, CodProj)
);