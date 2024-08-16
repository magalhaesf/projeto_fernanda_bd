/*DROP DATABASE prova_banco;*/

create database prova_banco;
 
 use prova_banco;

create table professor(
	pk int not null auto_increment, primary key(pk), 
	nome varchar(255) not null,
	disciplina varchar(255)
);

create table agenda_professor(
	pk int not null auto_increment, primary key(pk),
	disciplina varchar(255),
	horario_aula varchar(255),
	aula_dia int,
	professor_fk int, foreign key(professor_fk) references professor(pk)
);

create table turma(
	pk int not null auto_increment, primary key(pk), 
	horario int,
	capacidade int
);

create table grade_curricular(
	pk int not null auto_increment, primary key(pk), 
	carga_horaria_total varchar(255) not null,
	turma_fk int, foreign key(turma_fk) references turma(pk),
	agenda_professor_fk int, foreign key(agenda_professor_fk) references agenda_professor(pk)
);

create table disciplina(
	pk int not null auto_increment, primary key(pk),
	nome varchar(255) not null,
	professor varchar(255),
	carga_horaria_total int,
	professor_fk int, foreign key(professor_fk) references professor(pk),
	turma_fk int, foreign key(turma_fk) references turma(pk)
);

insert into professor (nome, disciplina) values ("Jhonatan", "Geografia");
insert into professor (nome, disciplina) values ("Tiago", "Química");
insert into professor (nome, disciplina) values ("Norberto", "Banco de Dados");
insert into professor (nome, disciplina) values ("Gisele", "Matemática");
insert into professor (nome, disciplina) values ("Sebastião", "Biologia");
insert into professor (nome, disciplina) values ("Alexandre", "História");
insert into professor (nome, disciplina) values ("Leandra", "Língua Inglesa");
insert into professor (nome, disciplina) values ("Whesley", "Língua Portuguesa");
insert into professor (nome, disciplina) values ("Fernanda", "Sociologia");
insert into professor (nome, disciplina) values ("Karoline", "Educação Financeira");

update professor set disciplina= "Língua Portuguesa" where pk=8;
update professor set disciplina= "Língua Inglesa" where pk=7;
update professor set disciplina= "Geografia" where pk=6;

select * from professor;

insert into agenda_professor (disciplina, horario_aula, aula_dia, professor_fk) values ("Geografia", "segunda aula", 2, 1);
insert into agenda_professor (disciplina, horario_aula, aula_dia, professor_fk) values ("História", "terceira aula", 3, 3);
insert into agenda_professor (disciplina, horario_aula, aula_dia, professor_fk) values ("Artes", "quarta aula", 6, 2);
insert into agenda_professor (disciplina, horario_aula, aula_dia, professor_fk) values ("Ciências", "primeira aula", 4, 5);
insert into agenda_professor (disciplina, horario_aula, aula_dia, professor_fk) values ("Matemática", "quinta aula", 1, 4);

update agenda_professor set disciplina= "Geografia" where pk=5;
update agenda_professor set disciplina= "Projeto de vida" where pk=1;
update agenda_professor set disciplina= "Sociologia" where pk=3;

select * from agenda_professor;

insert into turma (horario, capacidade) values (3, 10);
insert into turma (horario, capacidade) values (1, 14);
insert into turma (horario, capacidade) values (2, 23);
insert into turma (horario, capacidade) values (5, 12);
insert into turma (horario, capacidade) values (6, 31);

update turma set horario= "5" where pk=1;
update turma set horario= "4" where pk=3;
update turma set horario= "3" where pk=5;

select * from turma;