/* tarefa01-q010.sql */

select distinct p.nome as nome_projeto, d.descricao as nome_departamento_projeto, f.nome as nome_responsavel, null as nome_departamento_funcionario_responsavel
from projeto p, departamento d, funcionario f
where p.cod_depto = d.codigo and p.cod_responsavel = f.codigo 
union
select distinct p.nome as nome_projeto, null as nome_departamento_projeto, f.nome as nome_responsavel, d.descricao as nome_departamento_funcionario_responsavel
from funcionario f, departamento d, projeto p
where f.cod_depto = d.codigo and p.cod_responsavel = f.codigo group by p.codigo, f.nome, d.descricao order by nome_projeto;

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */