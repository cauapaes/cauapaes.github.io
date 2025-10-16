-- Criação do banco de dados 'aula16'
create database aula16;

-- Seleciona o banco de dados 'aula16' para ser utilizado
use aula16;

-- Criação da tabela 'usuario'
create table usuario (
    -- A coluna 'id' é um inteiro, não pode ser nula, é auto-incrementada e é a chave primária
    id int not null auto_increment primary key,
    
    -- A coluna 'usuario' armazena o nome de usuário, até 100 caracteres, não pode ser nula
    usuario varchar(100) not null,
    
    -- A coluna 'senha' armazena a senha do usuário, até 100 caracteres, não pode ser nula
    senha varchar(100) not null
);

-- Consultando todos os registros da tabela 'usuario' (no momento, não há dados inseridos)
select * from usuario;

-- Inserção de um novo usuário na tabela 'usuario' (usuario: 'caua', senha: '123')
insert into usuario (usuario, senha)
values ('caua', '123');

-- Inserção de outro usuário na tabela 'usuario' (usuario: 'igor', senha: '123')
insert into usuario (usuario, senha)
values ('igor', '123');

-- Exclusão do registro da tabela 'usuario' onde o 'id' é 1 (vai remover o usuário 'caua')
delete from usuario where id = 1;

-- Criação da tabela 'pessoa'
create table pessoa (
    -- A coluna 'id' é um inteiro, não pode ser nula, é auto-incrementada e é a chave primária
    id int not null primary key auto_increment,
    
    -- A coluna 'nome' armazena o nome da pessoa, até 100 caracteres, não pode ser nula
    nome varchar(100) not null,
    
    -- A coluna 'telefone' armazena o número de telefone da pessoa como um texto (agora suporta formatos como '(44) 99156-6928'), até 17 caracteres, não pode ser nula
    telefone varchar(17) not null,
    
    -- A coluna 'email' armazena o e-mail da pessoa, até 100 caracteres, não pode ser nula
    email varchar(100) not null,
    
    -- A coluna 'idade' armazena a idade da pessoa, como um número inteiro, não pode ser nula
    idade int not null
);

drop table pessoa;

-- Consultando todos os registros da tabela 'pessoa' (no momento, não há dados inseridos)
select * from pessoa;

-- Inserção de um novo registro na tabela 'pessoa' (nome: 'caua', idade: 16, telefone: '44 991566928', email: 'caua.paes@gmail')
insert into pessoa (nome, idade, telefone, email)
values ('caua', 16, '44 991566928', 'caua.paes@gmail');

-- Inserção de outro registro na tabela 'pessoa' (nome: 'igor', idade: 16, telefone: '44 920015609', email: 'igor.nazi@gmail')
insert into pessoa (nome, idade, telefone, email)
values ('igor', 16, '44 920015609', 'igor.nazi@gmail');
