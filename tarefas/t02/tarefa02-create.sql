/* Drops */

drop table if exists postgres.public.cliente cascade;
drop table if exists postgres.public.piloto cascade;
drop table if exists postgres.public.voo cascade;
drop table if exists postgres.public.milhas cascade;
drop table if exists postgres.public.cliente_voo cascade;

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

/* Tables */

create table if not exists postgres.public.cliente
(
	codigo serial primary key,
	nome varchar(100) not null,
	endereco varchar(100) not null
);

create table if not exists postgres.public.piloto
(
	codigo serial primary key,
	nome varchar(100) not null,
	num_voos int not null default 0
);

create table if not exists postgres.public.voo
(
	codigo serial primary key,
	tipo char(1) not null,
	piloto int not null,
	num_passageiros int not null,
	distancia decimal(10, 1) not null
);

create table if not exists postgres.public.milhas
(
	cliente int not null primary key,
	quantidade int not null
	
);

create table if not exists postgres.public.cliente_voo
(
	cliente int not null,
	voo int not null,
	constraint pk_cliente_voo primary key(cliente, voo)
);

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

/* Foreign Keys */

alter table postgres.public.voo add foreign key(piloto) references piloto(codigo) on update cascade on delete restrict;

alter table postgres.public.milhas add foreign key(cliente) references cliente(codigo) on update cascade on delete restrict;

alter table postgres.public.cliente_voo add foreign key(cliente) references cliente(codigo) on update cascade on delete set null;
alter table postgres.public.cliente_voo add foreign key(voo) references voo(codigo) on update cascade on delete set null;

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */


