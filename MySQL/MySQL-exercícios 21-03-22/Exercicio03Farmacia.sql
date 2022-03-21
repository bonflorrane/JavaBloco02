CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id bigint auto_increment,
codigo int,
menu varchar(255),
quantidade varchar(255),

primary key(id)

);

CREATE TABLE tb_produto(
id bigint auto_increment,
nome varchar(255),
uso varchar(255),
generico boolean,
entrega boolean,
preco double,
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)

);

INSERT INTO tb_categoria(codigo, menu, quantidade) VALUES (0000, "Medicamentos","30 comprimidos");
INSERT INTO tb_categoria(codigo, menu, quantidade) VALUES (1111, "Beleza", "1 item");
INSERT INTO tb_categoria(codigo, menu, quantidade) VALUES (2222 , "BeBê", "1 item");
INSERT INTO tb_categoria(codigo, menu, quantidade) VALUES (3333, "Higiene", "1 item");
INSERT INTO tb_categoria(codigo, menu, quantidade) VALUES (4444, "MarcaImportada"," 1 item de 50 mL");

INSERT INTO tb_produto(nome,uso,generico,entrega,preco,categoria_id) VALUES ("Anti-Hipertensivo", "Ingerir",false,true,35.60,1);
INSERT INTO tb_produto(nome,uso,generico,entrega,preco,categoria_id) VALUES ("Base", "Tópico",false,false,60.50,2);
INSERT INTO tb_produto(nome,uso,generico,entrega,preco,categoria_id) VALUES ("Anti-Assadura", "Tópico", true,false,32.90,3);
INSERT INTO tb_produto(nome,uso,generico,entrega,preco,categoria_id) VALUES ("Desodorante", "Tópico",true,true,19.99,4);
INSERT INTO tb_produto(nome,uso,generico,entrega,preco,categoria_id) VALUES ("Perfume", "Tópico",false,true,120.80,5);
INSERT INTO tb_produto(nome,uso,generico,entrega,preco,categoria_id) VALUES ("Anti-Concepcional", "Ingerir",false,false,45.75,1);
INSERT INTO tb_produto(nome,uso,generico,entrega,preco,categoria_id) VALUES ("Anti-Inflamatório", "Ingerir",true,false, 17.43,1);
INSERT INTO tb_produto(nome,uso,generico,entrega,preco,categoria_id) VALUES ("Lenço Umidecido", "Tópico",true,true,25.29,3);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE "b%";

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id WHERE tb_produto.uso = "Tópico";
