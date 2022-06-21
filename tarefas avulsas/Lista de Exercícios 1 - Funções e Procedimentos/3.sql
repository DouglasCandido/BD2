/*

3. Faça um procedimento para exibir os funcionários com idade acima da média do seu
departamento.

*/

/* Stored Procedure 1: Não funciona como eu gostaria. */
/*
create or replace procedure exibe_funcionarios_com_idade_acima_da_media_do_departamento(coddepto int)
language sql
as $$
	select f.nome, age(CURRENT_DATE, f.dt_nasc) as idade from funcionario f, departamento d where f.depto = coddepto and f.depto = d.codigo and age(CURRENT_DATE, f.dt_nasc) > (select media_idade_funcionarios_do_departamento(coddepto));
$$;

select media_idade_funcionarios_do_departamento(1);

call exibe_funcionarios_com_idade_acima_da_media_do_departamento(1);
*/

/* Stored Procedure 2: Funcionando quase como eu gostaria, porém não consegui fazer a passagem do código do departamento por parâmetro. */
drop procedure if exists s2_exibe_funcionarios_com_idade_acima_da_media_do_departamento cascade;

/*
create or replace procedure s2_exibe_funcionarios_com_idade_acima_da_media_do_departamento(codigo_departamento int)
language sql
as $$
	create or replace view view_funcionarios_com_idade_acima_da_media as select f.nome, age(CURRENT_DATE, f.dt_nasc) as idade from funcionario f, departamento d where f.depto = codigo_departamento and d.codigo = codigo_departamento and f.depto = d.codigo and age(CURRENT_DATE, f.dt_nasc) > (select media_idade_funcionarios_do_departamento(coddepto));
$$;
*/

create or replace procedure s2_exibe_funcionarios_com_idade_acima_da_media_do_departamento()
language sql
as $$
	create or replace view view_funcionarios_com_idade_acima_da_media as select f.nome, age(CURRENT_DATE, f.dt_nasc) as idade from funcionario f, departamento d where f.depto = 1 and d.codigo = 1 and f.depto = d.codigo and age(CURRENT_DATE, f.dt_nasc) > (select media_idade_funcionarios_do_departamento(1));
$$;

select media_idade_funcionarios_do_departamento(1);

/* call s2_exibe_funcionarios_com_idade_acima_da_media_do_departamento(1); */

call s2_exibe_funcionarios_com_idade_acima_da_media_do_departamento();

select * from view_funcionarios_com_idade_acima_da_media;

/* select f.nome, age(CURRENT_DATE, f.dt_nasc) as idade from funcionario f, departamento d where f.depto = 1 and f.depto = d.codigo and age(CURRENT_DATE, f.dt_nasc) > (select media_idade_funcionarios_do_departamento(1)); */ 

/* Aparentemente, um stored procedure não pode exibir o resultado de consultas, então irei criar uma função para isso. */
/* Function 1: Contém um erro que eu não sei resolver. */
/* 
ERROR:  cannot open SELECT INTO query as cursor
CONTEXT:  PL/pgSQL function f_exibe_funcionarios_com_idade_acima_da_media_do_departamento(integer) line 4 at FOR over SELECT rows
SQL state: 42P11
*/
/*
drop function if exists f_exibe_funcionarios_com_idade_acima_da_media_do_departamento cascade;

create or replace function f_exibe_funcionarios_com_idade_acima_da_media_do_departamento(coddepto int)
returns table (
	nome varchar(100)
) as $$
declare funcionarios_com_idade_acima_da_media record;
begin
	for funcionarios_com_idade_acima_da_media in (select f.nome into funcionarios_com_idade_acima_da_media from funcionario f, departamento d where f.depto = coddepto and f.depto = d.codigo and age(CURRENT_DATE, f.dt_nasc) > (select media_idade_funcionarios_do_departamento(coddepto)))
	loop 
		nome := funcionarios_com_idade_acima_da_media.nome;
		return next;
	end loop;
end;
$$ language plpgsql;

select f_exibe_funcionarios_com_idade_acima_da_media_do_departamento(1
*/

