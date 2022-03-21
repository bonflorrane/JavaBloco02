CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint auto_increment,
nome varchar(255), -- nome da pizza
tipo varchar(255), -- salgada/doce
preco double, 

primary key(id)

);

CREATE TABLE tb_pizza(
id bigint auto_increment,
borda boolean,
adicionais varchar(255),
retiradaCebola boolean,
nPedaco int,
entrega boolean,
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)

);

INSERT INTO tb_categoria(nome, tipo, preco) VALUES ("Calabresa","Salgada",65.00);
INSERT INTO tb_categoria(nome, tipo, preco) VALUES ("Frango", "Salgada",55.90 );
INSERT INTO tb_categoria(nome, tipo, preco) VALUES ("À Moda da Casa", "Salgada",70.20);
INSERT INTO tb_categoria(nome, tipo, preco) VALUES ("Brócolis", "Salgada",40.60);
INSERT INTO tb_categoria(nome, tipo, preco) VALUES ("Chocolate", "Doce",35.00 );

select * from tb_categoria;

INSERT INTO tb_pizza(borda, adicionais, retiradaCebola,nPedaco,entrega,categoria_id) VALUES (true, "Cebola",false,8,false,1);
INSERT INTO tb_pizza(borda, adicionais, retiradaCebola,nPedaco,entrega,categoria_id) VALUES (false, "Requeijão", true ,8, false,2);
INSERT INTO tb_pizza(borda, adicionais, retiradaCebola,nPedaco,entrega,categoria_id) VALUES (true, "Bacon",false,6,false,4);
INSERT INTO tb_pizza(borda, adicionais, retiradaCebola,nPedaco,entrega,categoria_id) VALUES (true, "Ovo",false,8,false,3);
INSERT INTO tb_pizza(borda, adicionais, retiradaCebola,nPedaco,entrega,categoria_id) VALUES (true, "Cereja",true,8,true,5);
INSERT INTO tb_pizza(borda, adicionais, retiradaCebola,nPedaco,entrega,categoria_id) VALUES (false, "Palmito",true,6,true,4);
INSERT INTO tb_pizza(borda, adicionais, retiradaCebola,nPedaco,entrega,categoria_id) VALUES (false, "Alho",false,6,true,1);
INSERT INTO tb_pizza(borda, adicionais, retiradaCebola,nPedaco,entrega,categoria_id) VALUES (false, "Tomate Seco",true ,8,true,2);

select * from tb_pizza;

SELECT * FROM tb_categoria WHERE preco>45;

SELECT * FROM tb_categoria WHERE preco>=29 and preco<=60;
/* Faça um um select com Inner join entre  tabela categoria e pizza.*/
SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_categoria.id = tb_pizza.id;

SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_categoria.id = tb_pizza.categoria_id;

SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_categoria.id = tb_pizza.categoria_id WHERE  tb_categoria.tipo = "Salgada";

SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_categoria.id = tb_pizza.categoria_id WHERE  tb_categoria.nome = "Calabresa";