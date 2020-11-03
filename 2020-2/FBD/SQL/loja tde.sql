-- Categoria (codigo int PK, nome char)
--Produtos (codigo int PK, descricao char, data_cadastro date, valor_unitario char)
--Pede (quantidade int PK, valor_unitario char, data_pedido date)
--Fornecedor (codigo int , nome char)

CREATE DATABASE loja;
USE loja;

CREATE TABLE categoria (
    codigo SMALLINT PRIMARY KEY NOT NULL,
    nome varchar(100) NOT NULL
    
);

CREATE TABLE produtos (
    codigo SMALLINT PRIMARY KEY NOT NULL,
    descricao VARCHAR(300) NOT NULL,
    data_cadastro DATE NOT NULL,
    valor_unitario VARCHAR(15)
);

CREATE TABLE pede (
    quantidade SMALLINT PRIMARY KEY NOT NULL,
    valor_unitario VARCHAR(15),
    data_pedido DATE
);

CREATE TABLE fornecedor (
    codigo SMALLINT,
    nome VARCHAR(100)
);