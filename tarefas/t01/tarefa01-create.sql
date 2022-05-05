drop table if exists postgres.public.funcionario cascade;
drop table if exists postgres.public.departamento cascade;

create table if not exists postgres.public.departamento
(
	codigo serial primary key,
	descricao varchar(100) not null,
	cod_gerente int default null
);

alter table postgres.public.departamento add foreign key (cod_gerente) references funcionario(codigo) on update cascade on delete set null ;

create table if not exists postgres.public.funcionario
(
	codigo int primary key not null,
	nome varchar(100) not null,
	sexo char(1) not null,
	dt_nasc date not null,
	salario decimal(10, 2) not null,
	cod_depto int default null
);

alter table postgres.public.funcionario add foreign key(cod_depto) references departamento(codigo) on update cascade on delete restrict;
