/* tarefa-01-q09.sql */

/* View que retorna dados sobre os funcionários que são responsáveis por projetos */
create view total_projetos_por_funcionario as select f.nome as nome_funcionario, count(*) as total_projetos_por_funcionario, f.salario as salario_funcionario
from funcionario f 
inner join projeto p
on f.codigo = p.cod_responsavel group by f.codigo order by f.codigo asc;

/* Exibe apenas os dados dos funcionários que ganham mais do que o gerente de um determinado departamento departamento */
select distinct nome_funcionario, total_projetos_por_funcionario, salario_funcionario
from total_projetos_por_funcionario, funcionario f, departamento d
where f.cod_depto = d.codigo and salario_funcionario > (select f.salario from funcionario f, departamento d where f.codigo = d.cod_gerente and f.cod_depto = d.codigo and d.cod_gerente = 1);

select distinct nome_funcionario, total_projetos_por_funcionario, salario_funcionario
from total_projetos_por_funcionario, funcionario f, departamento d
where f.cod_depto = d.codigo and salario_funcionario > (select f.salario from funcionario f, departamento d where f.codigo = d.cod_gerente and f.cod_depto = d.codigo and d.cod_gerente = 2);

select distinct nome_funcionario, total_projetos_por_funcionario, salario_funcionario
from total_projetos_por_funcionario, funcionario f, departamento d
where f.cod_depto = d.codigo and salario_funcionario > (select f.salario from funcionario f, departamento d where f.codigo = d.cod_gerente and f.cod_depto = d.codigo and d.cod_gerente = 3);

select distinct nome_funcionario, total_projetos_por_funcionario, salario_funcionario
from total_projetos_por_funcionario, funcionario f, departamento d
where f.cod_depto = d.codigo and salario_funcionario > (select f.salario from funcionario f, departamento d where f.codigo = d.cod_gerente and f.cod_depto = d.codigo and d.cod_gerente = 4);

select distinct nome_funcionario, total_projetos_por_funcionario, salario_funcionario
from total_projetos_por_funcionario, funcionario f, departamento d
where f.cod_depto = d.codigo and salario_funcionario > (select f.salario from funcionario f, departamento d where f.codigo = d.cod_gerente and f.cod_depto = d.codigo and d.cod_gerente = 5);

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

