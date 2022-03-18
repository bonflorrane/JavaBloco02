create database db_pokemon;

use db_pokemon; -- indica o banco de dados utilizado, que permite a criação da tabela

create table tb_kanto(
id bigint auto_increment, -- criamos um id de um tamanho infinito com auto incremento de 1
nome varchar(255), -- varchar = string e tem uma quantidade de caracter limitada de 255
tipo varchar(255),
ataque int,


primary key(id) -- indicação da chave primária para o id, sem ela a tabela não é criaada 

);

select * from tb_kanto;


insert into tb_kanto(nome, tipo, ataque) values("Bulbassauro", "Planta - Poison", 21);


alter table tb_kanto add defesa int;
