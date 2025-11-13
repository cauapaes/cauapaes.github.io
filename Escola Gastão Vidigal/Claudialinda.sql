create database Aula1311;
create table pedido (
id_pedido int auto_increment primary key,
nome_cliente varchar (100) not null,
data_pedido datetime not null,
cpf_cnpj varchar (18) not null,
valor_total decimal (10,2) not null
);


create table item(
id_item int auto_increment primary key,
nome_produto varchar(100) not null,
valor decimal (10,2) not null,
quantidade int not null,
valor_item decimal (10,2) not null,
id_pedido int not null,
foreign key (id_pedido) references pedido (id_pedido)
);


create table itempedido(
id_itempedido int auto_increment primary key,
nome_produto varchar(100) not null,
valor decimal (10,2) not null,
quantidade int not null,
valor_item decimal (10,2) not null,
id_pedido int not null,
foreign key (id_pedido) references pedido (id_pedido)
);

insert into pedido (nome_cliente, data_pedido, cpf_cnpj, valor_total)
values ('Cauã Paes', '2025-11-13', '15687944820', 0);

insert into item (nome_produto, valor, quantidade, valor_item, id_pedido)
values ('Igor Nazi', 3500.00, 1, 2494.90, 1);

insert into item (nome_produto, valor, quantidade, valor_item, id_pedido)
values ('Dherick Pinheiro', 156.66, 1, 114.54, 1);

select * from item;
select * from pedido;



UPDATE item
SET valor_item = 2494.90
WHERE id_item = 1;

UPDATE pedido
SET valor_total =  16
WHERE id_pedido = 1;

delete from item where id_item = 3;


select 
pedido.*,
item.*
from pedido
inner join item
on item.id_pedido = pedido.id_pedido;