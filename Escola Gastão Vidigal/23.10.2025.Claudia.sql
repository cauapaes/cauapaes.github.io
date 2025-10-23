-- Cria um banco de dados chamado 'meuteste'
create database meuteste;

-- Faz a conexão com o banco de dados 'meuteste'
use meuteste;

-- Cria uma tabela chamada 'cliente' com as colunas id, nome, telefone e situacao
create table cliente(
    -- Coluna 'id' que é um número inteiro e será automaticamente incrementada com cada novo registro. 
    -- Também é a chave primária da tabela, ou seja, não pode haver valores duplicados nesta coluna.
	id int auto_increment primary key,
    
    -- Coluna 'nome' para armazenar o nome do cliente. É uma string (varchar) com no máximo 100 caracteres e não pode ser nula (not null).
    nome varchar(100) not null,
    
    -- Coluna 'telefone' para armazenar o telefone do cliente, no formato varchar com 14 caracteres. Também não pode ser nula.
    telefone varchar(14) not null,
    
    -- Coluna 'situacao' para armazenar o status do cliente (booleano: 0 para inativo, 1 para ativo).
    situacao boolean
);

-- Insere um cliente na tabela 'cliente' com nome 'caua', telefone '44 9999-9999' e situacao 0 (inativo)
insert into cliente (nome, telefone, situacao) values ('caua','44 9999-9999',0);

-- Insere um cliente na tabela 'cliente' com nome 'dherick', telefone '41 9999-9999' e situacao 1 (ativo)
insert into cliente (nome, telefone, situacao) values('dherick','41 9999-9999',1);

-- Seleciona todos os registros da tabela 'cliente' e exibe na tela
select * from cliente;

-- Seleciona todos os registros da tabela 'cliente' onde a 'situacao' é igual a 0 (clientes inativos)
select * from cliente where situacao = 0;

-- Seleciona todos os registros da tabela 'cliente' onde o 'telefone' termina com ' 9999-9999' (exibe clientes com este padrão de telefone)
select * from cliente where telefone like '% 9999-9999';

-- Seleciona o registro da tabela 'cliente' onde o 'id' é igual a 2 (exibe o cliente com id 2)
select * from cliente where id = 2;
