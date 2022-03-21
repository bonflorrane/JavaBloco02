CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id bigint auto_increment,
codigo int,
menu varchar(255),
desconto5 boolean,

primary key(id)

);

CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar(255),
entrega boolean,
preco double,
quantidade varchar(255),
cor varchar(255),
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)

);

INSERT INTO tb_categoria(codigo, menu, desconto5) VALUES (0000, "Tinta",true);
INSERT INTO tb_categoria(codigo, menu, desconto5) VALUES (1111, "Piso", true);
INSERT INTO tb_categoria(codigo, menu, desconto5) VALUES (2222 , "Decoração", false);
INSERT INTO tb_categoria(codigo, menu, desconto5) VALUES (3333, "Ferramenta", true);
INSERT INTO tb_categoria(codigo, menu, desconto5) VALUES (4444, "Porta", false);

INSERT INTO tb_produto(nome,entrega,preco,quantidade,cor,categoria_id) VALUES ("Suvinil", true,120.50,"20 L","azul",1);
INSERT INTO tb_produto(nome,entrega,preco,quantidade,cor,categoria_id) VALUES ("Lustre",false,560.00, "1 item", "prata", 3);
INSERT INTO tb_produto(nome,entrega,preco,quantidade,cor,categoria_id) VALUES ("Piso Cerâmico", false, 25, "1 unidade", "branco",2);
INSERT INTO tb_produto(nome,entrega,preco,quantidade,cor,categoria_id) VALUES ("Caixa Completa",true,1050.00, "maleta completa", "ouro",4);
INSERT INTO tb_produto(nome,entrega,preco,quantidade,cor,categoria_id) VALUES ("Garagem",true,300.60, "1 unidade", "vermelho",5);
INSERT INTO tb_produto(nome,entrega,preco,quantidade,cor,categoria_id) VALUES ("Coral",false,89.90, "20 L", "amarela", 1);
INSERT INTO tb_produto(nome,entrega,preco,quantidade,cor,categoria_id) VALUES ("Grama Sintética", true, 250.00, "1 unidade", "verde", 3);
INSERT INTO tb_produto(nome,entrega,preco,quantidade,cor,categoria_id) VALUES ("Entrada",true,698.99, "1 unidade", "madeira",5);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco > 500;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE preco BETWEEN 30 AND 600;
SELECT * FROM tb_produto WHERE nome LIKE "C%";

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id WHERE tb_produto.cor = "Branco";
