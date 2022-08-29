DROP DATABASE IF EXISTS projeto_aula;
CREATE DATABASE projeto_aula;
USE projeto_aula;

CREATE TABLE estado(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
,nome VARCHAR(255) NOT NULL UNIQUE
,sigla CHAR(2) NOT NULL UNIQUE
,ativo CHAR(2) NOT NULL DEFAULT 'S'
);

INSERT INTO estado(id,nome,sigla,ativo) -- Melhor opção!
VALUES	(NULL, 'ACRE', 'AC','S'); 

INSERT INTO estado
VALUES	(NULL, 'RIO DE JANEIRO', 'RJ','S');

INSERT INTO estado(nome,sigla)
VALUES	('MATO GROSSO', 'MT'); 

CREATE TABLE produto(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
,nome VARCHAR(255) NOT NULL UNIQUE
,preco_venda DOUBLE NOT NULL
,preco_custo DOUBLE NOT NULL
,ativo CHAR(1) NOT NULL DEFAULT 'S'
);

INSERT INTO produto(id,nome,preco_venda,preco_custo,ativo) 
VALUES	(NULL, 'Picanha', '32.00','25.00','S'); 

INSERT INTO produto(id,nome,preco_venda,preco_custo,ativo) 
VALUES	(NULL, 'Coquinha', '8.00','4.00','S'); 

INSERT INTO produto(id,nome,preco_venda,preco_custo,ativo) 
VALUES	(NULL, 'H2O: Limoneto', '7.55','3.00','S'); 

SELECT id,nome,preco_venda,preco_custo,ativo FROM produto;
