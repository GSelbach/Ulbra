CREATE DATABASE ap1;

USE ap1;

CREATE TABLE projeto (
    id SMALLINT auto_increment PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(300),
    equipe SMALLINT NOT NULL,
    comentarios VARCHAR(500),
    duracao_horas TINYINT NOT NULL
    
);

CREATE TABLE melhoria_processo(
    id SMALLINT auto_increment FOREIGN KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(300),
    equipe SMALLINT NOT NULL,
    comentarios VARCHAR(500),
    duracao_horas TINYINT NOT NULL,
    resultados VARCHAR(100) NOT NULL,
    departamento VARCHAR(100) NOT NULL,
    CONSTRAINT pertence_ao_projeto
        FOREIGN KEY (id_projeto)
            REFERENCES projeto(id)
);

CREATE TABLE social (
    id SMALLINT auto_increment FOREIGN KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(300),
    equipe SMALLINT NOT NULL,
    comentarios VARCHAR(500),
    duracao_horas TINYINT NOT NULL,
    publico VARCHAR(80)
    CONSTRAINT pertence_ao_projeto
        FOREIGN KEY (id_projeto)
            REFERENCES projeto(id)
);

CREATE TABLE colaboradores (
    id_colab SMALLINT PRIMARY KEY NOT NULL,
    email VARCHAR(100) NOT NULL,
    matricula SMALLINT NOT NULL,
    senha VARCHAR(20) NOT NULL,
    nome VARCHAR(100) NOT NULL

);

CREATE TABLE comentarios(
    data DATE PRIMARY KEY NOT NULL,
    horario TINYINT NOT NULL

);
/*
Cássio, eu fiz da minha AP1:

projeto(id_projeto numeric pk, nome char, descricao char, equipe numeric, comentarios char, duracao_horas numeric)
melhoria_processo (id_projeto numeric fk, nome char, descricao char, equipe numeric, comentarios char, duracao_horas numeric, resultados char, departamento char)
social (id_projeto numeric fk, nome char, descricao char, equipe numeric, comentarios char, duracao_horas numeric, publico char)
colaboradores (id_colab numeric pk, email char, matricula numeric, senha char, nome char)
comentarios(data date pk, horario numeric)
*/