/* Drops */

drop table if exists postgres.public.funcionario cascade;
drop table if exists postgres.public.departamento cascade;
drop table if exists postgres.public.projeto cascade;
drop table if exists postgres.public.atividade cascade;
drop table if exists postgres.public.atividade_projeto cascade;

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

/* Tables */

create table if not exists postgres.public.funcionario
(
	codigo serial primary key,
	nome varchar(100) not null,
	sexo char(1) not null,
	dt_nasc date not null,
	salario decimal(10, 2) not null,
	cod_depto int not null
);

create table if not exists postgres.public.departamento
(
	codigo serial primary key,
	descricao varchar(100) not null,
	cod_gerente int not null
);

create table if not exists postgres.public.projeto
(
	codigo serial primary key,
	nome varchar(100) not null,
	descricao varchar(100) not null,
	cod_depto int not null,
	cod_responsavel int not null,
	data_inicio date not null,
	data_fim date default null
);

create table if not exists postgres.public.atividade
(
	codigo serial primary key,
	nome varchar(100) not null,
	descricao varchar(100) not null,
	cod_responsavel int not null,
	data_inicio date not null,
	data_fim date default null
);

create table if not exists postgres.public.atividade_projeto
(
	codigo serial, /* Este atributo Codigo serve apenas para organização */
	cod_projeto int not null,
	cod_atividade int not null,
	constraint pk_atividade_projeto primary key(cod_projeto, cod_atividade)
);

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

/* Foreign Keys */

alter table postgres.public.funcionario add foreign key(cod_depto) references departamento(codigo) on update cascade on delete restrict;

alter table postgres.public.departamento add foreign key(cod_gerente) references funcionario(codigo) on update cascade on delete restrict;

alter table postgres.public.projeto add foreign key(cod_depto) references departamento(codigo) on update cascade on delete restrict;
alter table postgres.public.projeto add foreign key(cod_responsavel) references funcionario(codigo) on update cascade on delete set null;

alter table postgres.public.atividade add foreign key(cod_responsavel) references funcionario(codigo) on update cascade  on delete set null;

alter table postgres.public.atividade_projeto add foreign key(cod_projeto) references projeto(codigo) on update cascade on delete set null;
alter table postgres.public.atividade_projeto add foreign key(cod_atividade) references atividade(codigo) on update cascade on delete set null;

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */


