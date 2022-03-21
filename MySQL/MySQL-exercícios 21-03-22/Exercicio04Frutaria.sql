CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_categoria(
id bigint auto_increment,
produto varchar(255),-- VERDURA, FRUTO, TEMPERO
colheita varchar(255),
aparencia varchar(255),

primary key(id)

);

CREATE TABLE tb_produto(
id bigint auto_increment,
preco double,
nome varchar(255),
pagamento varchar(255),
consumirEmDias int,
entrega boolean,
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)

);

INSERT INTO tb_categoria(produto, colheita, aparencia) VALUES ("Verdura", "manhã","verde");
INSERT INTO tb_categoria(produto, colheita, aparencia) VALUES ("Fruta", "dia anterior","pronto para o consumo");
INSERT INTO tb_categoria(produto, colheita, aparencia) VALUES ("Tempero","semana anterior", "pronto para o consumo");
INSERT INTO tb_categoria(produto, colheita, aparencia) VALUES ("Suco","tarde","verde");
INSERT INTO tb_categoria(produto, colheita, aparencia) VALUES ("Geleia","quatro dias atrás", "verde");

INSERT INTO tb_produto(preco, nome, pagamento, consumirEmDias, entrega, categoria_id) VALUES (15.50 , "Morango", "à vista",7,true,2);
INSERT INTO tb_produto(preco, nome, pagamento, consumirEmDias, entrega, categoria_id) VALUES ( 7, "Alface", "crédito", 3,true,1 );
INSERT INTO tb_produto(preco, nome, pagamento, consumirEmDias, entrega, categoria_id) VALUES (3.75, "Cominho", "débito",15,false, 3);
INSERT INTO tb_produto(preco, nome, pagamento, consumirEmDias, entrega, categoria_id) VALUES (10, "Laranjada", "crédito",1,false, 4);
INSERT INTO tb_produto(preco, nome, pagamento, consumirEmDias, entrega, categoria_id) VALUES ( 35.80, "Damasco", "àvista",30,true, 5);
INSERT INTO tb_produto(preco, nome, pagamento, consumirEmDias, entrega, categoria_id) VALUES ( 8.45, "Abacaxi", "débito",7,false,2 );
INSERT INTO tb_produto(preco, nome, pagamento, consumirEmDias, entrega, categoria_id) VALUES (4.69, "Acelga", "crédito",7,false, 1);
INSERT INTO tb_produto(preco, nome, pagamento, consumirEmDias, entrega, categoria_id) VALUES ( 9.50, "Limmonada", "débito",1,true, 4);

SELECT * FROM tb_produto where preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE nome LIKE "C%";
SELECT * FROM tb_produto WHERE nome LIKE "A%";

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id;
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id WHERE tb_produto.categoria_id = 2;



