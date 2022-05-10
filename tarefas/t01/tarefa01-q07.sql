/* tarefa-01-q07.sql */

/* Visão que mostra quantos funcionários estão alocados em cada departamento. */
create view total_funcionarios_por_departamento as select d.descricao as nome_departamento, count(*) as total_funcionarios_por_departamento
from funcionario f 
inner join departamento d 
on f.cod_depto = d.codigo group by d.codigo order by d.codigo asc;

select distinct f.nome as gerente, d.descricao as nome_departamento, CAST(null as bigint) as total_funcionarios_por_departamento
from funcionario f right join departamento d on f.cod_depto = d.codigo
where f.codigo in (select d.cod_gerente from departamento d, funcionario f where f.cod_depto = d.codigo and d.cod_gerente = f.codigo)
union
select distinct f.nome as gerente, d.descricao as nome_departamento, CAST(null as bigint) as total_funcionarios_por_departamento
from funcionario f right join departamento d on f.cod_depto = d.codigo
where d.codigo not in (select f.cod_depto from funcionario f, departamento d where f.cod_depto = d.codigo and d.cod_gerente = f.codigo)
union
select null as coluna_auxiliar, nome_departamento, total_funcionarios_por_departamento from total_funcionarios_por_departamento;

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

