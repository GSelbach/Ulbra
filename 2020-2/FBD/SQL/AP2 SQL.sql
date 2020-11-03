-- Questão 1

CREATE DATABASE locadora;

USE locadora;

CREATE TABLE Clientes
(
    Cpf VARCHAR(14) UNIQUE KEY NOT NULL,
    
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(255),
    Telefone VARCHAR(25)
);

CREATE TABLE Carros
(
    Placa VARCHAR(8) PRIMARY KEY NOT NULL,
    Modelo VARCHAR(20) NOT NULL,
    Cod_marca VARCHAR(15) NOT NULL,
    Ano TINYINT NOT NULL,
    Data_aluguel DATE NOT NULL,
    Data_devolucao DATE NOT NULL,
    Valor VARCHAR(20) NOT NULL
);



--   questão "2"  --

CREATE DATABASE artigos
USE artigos

CREATE TABLE Pesquisador
(
    Cod_pesquisador TINYINT PRIMARY KEY NOT NULL,
    Nome VARCHAR(100) NOT NULL,

);

CREATE TABLE Artigos
(
    Cod_artigo TINYINT PRIMARY KEY NOT NULL,
    Titulo VARCHAR(100) NOT NULL,
    Pag_inicial TINYINT NOT NULL,
    Pag_final TINYINT NOT NULL,
    Titulo_periodico VARCHAR(100), 
    Editora VARCHAR(50),
  
);







-- Questão 3 --

CREATE DATABASE Servicos
USE Servicos

CREATE TABLE Socio
(   
    Cod_tipo_socio TINYINT PRIMARY KEY NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Descricao VARCHAR(200),
    Numero VARCHAR(20),
    Endereco VARCHAR(100)
);

CREATE TABLE Servicos
(
    Cod_servico TINYINT PRIMARY KEY NOT NULL ,
    Mes_referencia TINYINT NOT NULL ,
    Descricao VARCHAR(200),
    Valor_pago VARCHAR(50) 
);




