/* Função que calcula a média ponderada das notas das três unidades de um aluno com base nos pesos informados para cada unidade. */

drop table if exists  medias;

create table if not exists medias
(
	weighted_mean_value DOUBLE PRECISION not null,
	matricula_aluno varchar(50) not null
);

insert into medias(weighted_mean_value, matricula_aluno) values (100.0, '20190020243');

drop function if exists weighted_mean;

create or replace function weighted_mean(n1 DOUBLE PRECISION, n2 DOUBLE PRECISION, n3 DOUBLE PRECISION, p1 int, p2 int, p3 int, matricula varchar(50))
   returns DOUBLE PRECISION 
   language plpgsql
  as
$$
declare 
	weighted_mean_value_temporary DOUBLE PRECISION;
begin
	select (n1 * p1 + n2 * p2 + n3 * p3) / (p1 + p2 + p3) into weighted_mean_value_temporary from medias where matricula_aluno = matricula;
	update medias set weighted_mean_value = weighted_mean_value_temporary where matricula_aluno = matricula;

 	return weighted_mean_value_temporary;
end;
$$

select weighted_mean(100, 80, 70, 1, 2, 2, '20190020243');



