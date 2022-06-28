drop table if exists postgres.atividadesbd.atividade cascade; 
drop table if exists postgres.atividadesbd.projeto cascade;
drop table if exists postgres.atividadesbd.departamento cascade;
drop table if exists postgres.atividadesbd.funcionario cascade;

/* Criação das Tabelas */

CREATE TABLE postgres.atividadesbd.funcionario (
	codigo serial,
	nome varchar(50),
	sexo char(1),
	dtNasc date,
	salario decimal(10,2),
	codSupervisor int,
	codDepto int,
	PRIMARY KEY (codigo),
	FOREIGN KEY (codSupervisor) REFERENCES funcionario(codigo) on delete set null on update cascade
);

CREATE TABLE postgres.atividadesbd.departamento (
	codigo serial,
	sigla varchar(10) unique,
	descricao varchar(50),
	codGerente int,
	PRIMARY KEY (codigo),
	FOREIGN KEY (codGerente) REFERENCES funcionario(codigo) on delete set null on update cascade
);

CREATE TABLE postgres.atividadesbd.projeto (
	codigo serial,
	nome varchar(50) unique,
	descricao varchar(250),
	codResponsavel int,
	codDepto int,
	dataInicio date, 
	dataFim date,
	PRIMARY KEY (codigo),
	FOREIGN KEY (codResponsavel) REFERENCES funcionario(codigo) on delete set null on update cascade,
	FOREIGN KEY (codDepto) REFERENCES departamento(codigo) on delete set null on update cascade
);
 
CREATE TABLE postgres.atividadesbd.atividade (
	codigo serial,
	descricao varchar(250),
	codProjeto int,
	dataInicio date, 
	dataFim date,
	PRIMARY KEY (codigo),
	FOREIGN KEY (codProjeto) REFERENCES projeto(codigo) on delete set null on update cascade

);

alter table postgres.atividadesbd.funcionario ADD CONSTRAINT funcDeptoFK FOREIGN KEY (codDepto) REFERENCES departamento(codigo) on delete set null on update cascade;




