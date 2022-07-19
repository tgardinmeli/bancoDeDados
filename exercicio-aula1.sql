-- cria um novo banco de dados
create database dh_meli01;

-- coloca o banco dh_meli01 como padrão 
use dh_meli01;

-- criar uma tabela
create table user (
	id integer,
    name varchar(50)
);

-- inserir um novo registro na tabela user
insert into user values(1, 'Tatiane');

-- buscar informações da tabela user
select * from user;