/*drop database prova_bd;*/

create database prova_bd;

use prova_bd;

create table professor(
	pk int not null auto_increment, primary key(pk),
    nome varchar(255) not null, 
    cpf varchar (45) not null
);

create table disciplina(
	pk int not null auto_increment, primary key(pk),
	nome varchar(255) not null, 
    carga_horaria int,
	professor_fk int, foreign key(professor_fk) references professor(pk)
);

create table turma(
	pk int not null auto_increment, primary key(pk),
    nome varchar(255) ,
	sala varchar(10) 
    );

create table horario(
	pk int not null auto_increment, primary key(pk),
	dia_semana date,
    posicao_aula varchar (255),
	turma_fk int, foreign key(turma_fk) references turma(pk),
	disciplina_fk int, foreign key(disciplina_fk) references disciplina(pk)
);


insert into professor ( nome,cpf) values ("Fernanda", "123.456.789-00");
insert into professor ( nome,cpf) values ("Jorge", "014-615-639-09");
insert into professor ( nome,cpf) values ("Mateus", "357-985-632-87");
insert into professor ( nome,cpf) values ("Jurema", "654-987-428-90");
insert into professor ( nome,cpf) values ("Beatriz", "145-458-783-33");

update professor set nome= "Fernanda" where pk=2;
update professor set nome= "Jorge" where pk=4;
update professor set nome= "Beatrisz" where pk=3;

delete from professor where pk=1;

select * from professor;

insert into disciplina ( nome, carga_horaria, professor_fk) values ("Física", 1, 2);
insert into disciplina ( nome, carga_horaria, professor_fk) values ("Matemática", 2, 1);
insert into disciplina ( nome, carga_horaria, professor_fk) values ("Geografia", 4, 3);
insert into disciplina ( nome, carga_horaria, professor_fk) values ("História", 3, 4);
insert into disciplina ( nome, carga_horaria, professor_fk) values ("Artes", 2, 5);

update disciplina set nome= "Front-end" where pk=3;
update disciplina set nome= "Geografia" where pk=2;
update disciplina set nome= "Artes" where pk=4;

delete from diciplina where pk=1;

select * from disciplina;

insert into turma ( nome,sala) values ("2 téc", "14");
insert into turma ( nome,sala) values ("1 téc", "12");
insert into turma ( nome,sala) values ("3 téc", "15");
insert into turma ( nome,sala) values ("2 exatas", "20");
insert into turma ( nome,sala) values ("2 humanas", "24");

update turma set nome= "3 B" where pk=3;
update turma set nome= "3 B" where pk=3;
update turma set nome= "3 B" where pk=3;

delete from turma where pk=1;

select * from turma;

insert into horario ( dia_semana, posicao_aula, turma_fk, disciplina_fk) values ("2024-03-14", 1, 2, 3);
insert into horario ( dia_semana, posicao_aula, turma_fk, disciplina_fk) values ("2024-04-30", 5, 1, 2);
insert into horario ( dia_semana, posicao_aula, turma_fk, disciplina_fk) values ("2024-05-16", 1, 3, 1);
insert into horario ( dia_semana, posicao_aula, turma_fk, disciplina_fk) values ("2024-07-10", 6, 4, 4);
insert into horario ( dia_semana, posicao_aula, turma_fk, disciplina_fk) values ("2024-09-12", 2, 5, 3);

update horario set dia_semana= "2024-05-27" where pk=5;
update horario set dia_semana= "2024-05-03" where pk=3;
update horario set dia_semana= "2024-05-16" where pk=2;

delete from horario where pk=1;

select * from horario;
