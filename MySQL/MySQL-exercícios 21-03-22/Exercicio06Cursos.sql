CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
id bigint auto_increment,
professor varchar(255),
areaInteresse varchar(255),
quantidadeMaterias int,

primary key(id)

);

CREATE TABLE tb_produto(
id bigint auto_increment,
preco double,
turno varchar(255),
turma int,
horasTotais double,
aluno varchar(255),
categoria_id bigint,

primary key(id),
foreign key(categoria_id) references tb_categoria(id)

);

INSERT INTO tb_categoria(professor, areaInteresse,quantidadeMaterias) VALUES ("Silvana","Saúde",2);
INSERT INTO tb_categoria(professor, areaInteresse,quantidadeMaterias) VALUES ("Luiz","Exatas",1);
INSERT INTO tb_categoria(professor, areaInteresse,quantidadeMaterias) VALUES ("Mário","Línguas",4);
INSERT INTO tb_categoria(professor, areaInteresse,quantidadeMaterias) VALUES ("Sthella","TI",3);
INSERT INTO tb_categoria(professor, areaInteresse,quantidadeMaterias) VALUES ("Amélia","Artes Cênicas",1);

INSERT INTO tb_produto(preco,turno,turma,horasTotais,aluno,categoria_id) VALUES (60 ,"manhã",2,40, "Márcio",1);
INSERT INTO tb_produto(preco,turno,turma,horasTotais,aluno,categoria_id) VALUES (90,"noturno",15,60, "Mel",2);
INSERT INTO tb_produto(preco,turno,turma,horasTotais,aluno,categoria_id) VALUES (50 ,"tarde",3,30, "Betina",5);
INSERT INTO tb_produto(preco,turno,turma,horasTotais,aluno,categoria_id) VALUES (120,"integral",6,80, "Arnaldo",3);
INSERT INTO tb_produto(preco,turno,turma,horasTotais,aluno,categoria_id) VALUES ( 59.90,"manhã",9,35, "Nanda",4);
INSERT INTO tb_produto(preco,turno,turma,horasTotais,aluno,categoria_id) VALUES (69.75,"noturno",4,15, "Beto",3);
INSERT INTO tb_produto(preco,turno,turma,horasTotais,aluno,categoria_id) VALUES (60,"tarde",12,40, "Cristina",1);
INSERT INTO tb_produto(preco,turno,turma,horasTotais,aluno,categoria_id) VALUES (60 ,"manhã",2,40, "Luz",1);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE aluno LIKE "j%";

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id = tb_produto.categoria_id WHERE tb_produto.turno= "manhã";
