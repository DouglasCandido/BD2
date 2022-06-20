drop table if exists postgres.public.funcionario cascade;
drop table if exists postgres.public.departamento cascade;
drop table if exists postgres.public.equipe cascade;
drop table if exists postgres.public.membro cascade;
drop table if exists postgres.public.projeto cascade;
drop table if exists postgres.public.atividade cascade;
drop table if exists postgres.public.atividademembro cascade;
drop table if exists postgres.public.atividadeprojeto cascade;

create table if not exists postgres.public.funcionario
(
	codigo serial primary key,
	nome varchar(100) not null,
	sexo char(1) not null,
	dt_nasc date not null,
	salario decimal(10, 2) not null,
	supervisor int,
	depto int
);

create table if not exists postgres.public.departamento
(
	codigo serial primary key,
	sigla char(5) not null,
	descricao varchar(100) not null,
	gerente int
);

create table if not exists postgres.public.equipe
(
	codigo serial primary key,
	nomeEquipe varchar(50) not null
);

create table if not exists postgres.public.membro
(
	codigo serial primary key,
	codEquipe int,
	codFuncionario int not null
);

create table if not exists postgres.public.projeto
(
	codigo serial primary key,
	descricao varchar(100) not null,
	depto int,
	responsavel int,
	dataInicio date not null,
	dataFim date default null,
	situacao varchar(100) not null,
	dataConclusao date default null,
	equipe int
);

create table if not exists postgres.public.atividade
(
	codigo serial primary key,
	descricao varchar(100) not null,
	dataInicio date not null,
	dataFim date default null,
	situacao varchar(100) not null,
	dataConclusao date default null
);

create table if not exists postgres.public.atividademembro
(
	codAtividade int not null,
	codMembro int
);

create table if not exists postgres.public.atividadeprojeto
(
	codAtividade int not null,
	codProjeto int not null
);

alter table postgres.public.funcionario add foreign key(supervisor) references funcionario(codigo) on update cascade on delete set null;
alter table postgres.public.funcionario add foreign key(depto) references departamento(codigo) on update cascade on delete set null;

alter table postgres.public.departamento add foreign key(gerente) references funcionario(codigo) on update cascade on delete set null;

alter table postgres.public.membro add foreign key(codEquipe) references equipe(codigo) on update cascade on delete set null;
alter table postgres.public.membro add foreign key(codFuncionario) references funcionario(codigo) on update cascade on delete restrict;

alter table postgres.public.projeto add foreign key(depto) references departamento(codigo) on update cascade on delete set null;
alter table postgres.public.projeto add foreign key(responsavel) references funcionario(codigo) on update cascade on delete set null;
alter table postgres.public.projeto add foreign key(equipe) references equipe(codigo) on update cascade on delete set null;

alter table postgres.public.atividademembro add foreign key(codAtividade) references atividade(codigo) on update cascade on delete restrict;
alter table postgres.public.atividademembro add foreign key(codMembro) references funcionario(codigo) on update cascade on delete set null;

alter table postgres.public.atividadeprojeto add foreign key(codAtividade) references atividade(codigo) on update cascade on delete restrict;
alter table postgres.public.atividadeprojeto add foreign key(codProjeto) references projeto(codigo) on update cascade on delete restrict;



