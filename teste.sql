DROP DATABASE IF EXISTS baseDados;
CREATE DATABASE baseDados;

USE baseDados;

CREATE TABLE usuario (
id INT PRIMARY KEY,
nome VARCHAR(150),
email VARCHAR(100),
senha VARCHAR(45),
descricao VARCHAR(500),
adminstrador TINYINT
);

CREATE TABLE plano (
	id INT PRIMARY KEY,
	venda_Usuario_id INT,
	tipo VARCHAR(45),
	beneficio VARCHAR(100)
);