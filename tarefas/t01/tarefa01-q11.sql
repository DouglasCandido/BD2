/* tarefa-01-q11.sql */

select p.nome as nome_projeto, d.descricao as nome_departamento, f.nome as nome_funcionario
from projeto p, departamento d, funcionario f
where p.cod_responsavel = f.codigo and p.cod_depto = d.codigo and p.codigo in (select p.codigo from funcionario f, projeto p, departamento d where f.codigo = p.cod_responsavel and p.cod_depto = d.codigo and p.cod_depto <> f.cod_depto);

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

