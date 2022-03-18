/*
Atividade 1

Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa. 

Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.

Popule esta tabela com até 5 dados;

Faça um select que retorne os funcionaries com o salário maior do que 2000.

Faça um select que retorne os funcionaries com o salário menor do que 2000.

Ao término atualize um dado desta tabela através de uma query de atualização.

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.



*/

create database db_Rh;
use db_Rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
endereco varchar(255),
salario real (10,2),
turno varchar(10) not null,

primary key(id)

);

insert into tb_funcionarios(nome, idade, endereco, salario, turno) values ("Rita", 37, "Rua Laranjeiras", 2500.00, "manhã");
insert into tb_funcionarios(nome, idade, endereco, salario, turno) values ("Lúcio", 23, "Rua Amoreiras", 1500.00, "noite");
insert into tb_funcionarios(nome, idade, endereco, salario, turno) values ("Luiza", 55, "Avenida Brasil", 5000.00, "tarde");
insert into tb_funcionarios(nome, idade, endereco, salario, turno) values ("Amauri", 30, "Rua dos Milagres" , 3000.00, "manhã");
insert into tb_funcionarios(nome, idade, endereco, salario, turno) values ("Alessandra", 25, "Avenida da Saudade", 2000.00, "noite");

select * from tb_funcionarios where salario > 2000; -- Faça um select que retorne os funcionaries com o salário maior do que 2000
select * from tb_funcionarios where salario < 2000; -- Faça um select que retorne os funcionaries com o salário menor do que 2000.
select * from tb_funcionarios;

update tb_funcionarios set nome = "Rita Maria" where id = 1;


 

