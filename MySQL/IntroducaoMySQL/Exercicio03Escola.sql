create database db_escola;
use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
idade int,
serie varchar(50),
nota real(10,2),
exame boolean,

primary key(id)
);

insert into tb_estudantes(nome, idade, serie, nota, exame) values ("Analice", 12, "Ensino Fundamental II - 7º ano", 6.8, false);
insert into tb_estudantes(nome, idade, serie, nota, exame) values ("Luiz ", 11, "Ensino Fundamental II - 6º ano", 6, false);
insert into tb_estudantes(nome, idade, serie, nota, exame) values ("Gustavo", 12, "Ensino Fundamental II - 7º ano", 5.8, true);
insert into tb_estudantes(nome, idade, serie, nota, exame) values ("Fernanda", 14, "Ensino Fundamental II - 9º ano", 9, false);
insert into tb_estudantes(nome, idade, serie, nota, exame) values ("Amanda", 12, "Ensino Fundamental II - 7º ano", 6.3, false);
insert into tb_estudantes(nome, idade, serie, nota, exame) values ("Jonas", 13, "Ensino Fundamental II - 8º ano", 5, true);
insert into tb_estudantes(nome, idade, serie, nota, exame) values ("Roberta", 13, "Ensino Fundamental II - 8º ano", 3.2, true);
insert into tb_estudantes(nome, idade, serie, nota, exame) values ("José", 11, "Ensino Fundamental II - 6º ano", 7.8, false);

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 8, exame = false where id = 7;

select * from tb_estudantes;
