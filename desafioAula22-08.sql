DROP DATABASE IF EXISTS projeto_aula;
CREATE DATABASE projeto_aula;
USE projeto_aula;

/* 
Para verificar se um database foi criado, podemos usar um comando de verificação: "IF";
A tentativa de criar dum database que já existe não é validade pelo Workbench, isso é uma medida de segurança para que uma base de dados não seja sobreescrita sobre a outra;
Para deletar um database verificando se ele já foi criado, pode-se usar a linha "DROP DATABASE IF EXISTS";
Ao tentar droapar uma base de dados que já existe, o workbench apresenta o erro 1008, já que o database não existe para ser eliminado;
Ao eliminar a base de dados utilizando o IF EXISTS a linha só será executada se o o database realmente existir, isso evita erros no código;
