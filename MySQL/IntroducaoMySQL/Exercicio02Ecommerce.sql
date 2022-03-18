/*
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 

Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.

Popule esta tabela com até 8 dados;

Faça um select que retorne os produtos com o valor maior do que 50.

Faça um select que retorne os produtos com o valor menor do que 50.

Ao término atualize um dado desta tabela através de uma query de atualização.

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.

*/

create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255),
preco real(10,2),
cor varchar(255),
tamanho varchar(4),
cupom5 boolean,

primary key(id)

);

insert into tb_produtos(nome, preco, cor, tamanho, cupom5) values ("camisa", 25.99, "preta", "P", false);
insert into tb_produtos(nome, preco, cor, tamanho, cupom5) values ("camisa", 50.65, "ciano", "PP", true);
insert into tb_produtos(nome, preco, cor, tamanho, cupom5) values ("camisa", 31.90, "roxa", "G", true);
insert into tb_produtos(nome, preco, cor, tamanho, cupom5) values ("camisa", 25.99, "branca", "PP", false);
insert into tb_produtos(nome, preco, cor, tamanho, cupom5) values ("camisa", 65.50, "metálica", "M", true);
insert into tb_produtos(nome, preco, cor, tamanho, cupom5) values ("camisa", 55.99, "amarela", "M", false);
insert into tb_produtos(nome, preco, cor, tamanho, cupom5) values ("camisa", 25.99, "cinza", "GG", false);
insert into tb_produtos(nome, preco, cor, tamanho, cupom5) values ("camisa", 50.65, "lilás", "M", false);
insert into tb_produtos(nome, preco, cor, tamanho, cupom5) values ("camisa", 65.50, "vermelha", "G", true);
insert into tb_produtos(nome, preco, cor, tamanho, cupom5) values ("camisa", 25.99, "azul", "M", true);


select * from tb_produtos where preco > 50;
select * from tb_produtos where preco < 50;

update tb_produtos set preco = 65.50 where id = 1;

select * from tb_produtos;


