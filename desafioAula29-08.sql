DROP DATABASE IF EXISTS projeto_aula;
CREATE DATABASE projeto_aula;
USE projeto_aula;

CREATE TABLE produtora(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
,nome VARCHAR(150) NOT NULL UNIQUE
,descrição VARCHAR(700) NOT NULL UNIQUE
,ativo CHAR(1) NOT NULL DEFAULT 'S'
);

INSERT INTO produtora(id,nome,descrição,ativo)
VALUES	(NULL, 'Gearbox Software', 'Gearbox Software, L.L.C. é uma empresa norte-americana de desenvolvimento de jogos, localizada em Plano, no Texas','S'); 
INSERT INTO produtora(id,nome,descrição,ativo)
VALUES	(NULL, 'Insomniac Games', 'A Insomniac Games, Inc. é uma desenvolvedora norte-americana de jogos eletrônicos sediada em Burbank, Califórnia.','S');
INSERT INTO produtora(id,nome,descrição,ativo)
VALUES	(NULL, 'Playground Games', 'Playground Games é uma desenvolvedora de jogos eletrônicos britânica localizada em Leamington Spa, no Reino Unido.','S'); 

CREATE TABLE distribuidora(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
,nome VARCHAR(150) NOT NULL UNIQUE
,descrição VARCHAR(700) NOT NULL UNIQUE
,ativo CHAR(1) NOT NULL DEFAULT 'S'
);

INSERT INTO distribuidora(id,nome,descrição,ativo) 
VALUES	(NULL, 'Sony Interactive Entertainment', 'A Sony Interactive Entertainment é.....','S'); 
INSERT INTO distribuidora(id,nome,descrição,ativo) 
VALUES	(NULL, 'Xbox Game Studios', 'Xbox Game Studios é uma divisão multinacional da Microsoft responsável por produzir e distribuir jogos eletrônicos para consoles e computadores','S');
INSERT INTO distribuidora(id,nome,descrição,ativo) 
VALUES	(NULL, '2K', '2K é uma publicadora de jogos eletrônicos estadunidense baseada em Novato, Califórnia. A 2K foi fundada pela Take-Two Interactive em Janeiro de 2005 por meio das empresas 2K Games e 2K Sports, seguindo a aquisição pela Take-Two de uma empresa chamada Visual Concepts naquele mesmo mês.','S');

CREATE TABLE jogo(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
,nome VARCHAR(255) NOT NULL
,produtora_id INT NOT NULL
,distribuidora_id INT NOT NULL
,ano_publicacao CHAR(4) NOT NULL
,descricao VARCHAR(700)
,media_notas DOUBLE
,media_tempo DOUBLE
,ativo CHAR(1) NOT NULL DEFAULT 'S'
,CHECK (ativo IN('S', 'N') )
,FOREIGN KEY (produtora_id) REFERENCES produtora (id)
,FOREIGN KEY (distribuidora_id) REFERENCES distribuidora (id)
);

INSERT INTO jogo(id,nome,produtora_id,distribuidora_id,ano_publicacao,descricao,media_notas,media_tempo,ativo) 
VALUES	(NULL, 'Spider-Man', '2','1','2018','Spider-Man é um jogo eletrônico de ação-aventura desenvolvido pela Insomniac Games e publicado pela Sony Interactive Entertainment.','4.5','18.00', 'S'); 

INSERT INTO jogo(id,nome,produtora_id,distribuidora_id,ano_publicacao,descricao,media_notas,media_tempo,ativo) 
VALUES	(NULL, 'Borderlands 3', '1','3','2019','Borderlands 3 é um jogo eletrônico de RPG de ação desenvolvido pela Gearbox Software e publicado pela 2K Games. É a sequência de Borderlands 2 e o quarto título principal da série Borderlands','4.3','60.30', 'S');

INSERT INTO jogo(id,nome,produtora_id,distribuidora_id,ano_publicacao,descricao,media_notas,media_tempo,ativo) 
VALUES	(NULL, 'Forza Horizon 5', '1','1','2021','Forza Horizon 5 é um jogo eletrônico de corrida desenvolvido pela Playground Games e publicado pela Xbox Game Studios. É o quinto jogo da série Forza Horizon e o décimo segundo título principal da franquia Forza. O jogo se passa em uma representação ficcional do México.','4.8','30.00', 'S');

SELECT * FROM jogo
