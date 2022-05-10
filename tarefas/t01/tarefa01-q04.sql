/* tarefa01-q04.sql */

select f.nome, f.salario, f.cod_depto
from funcionario f, departamento d
where f.cod_depto = d.codigo and
f.codigo not in (select funcionario.codigo 
from funcionario, departamento
where funcionario.cod_depto = departamento.codigo and
departamento.cod_gerente = funcionario.codigo)
group by d.codigo, f.nome, f.salario, f.cod_depto
order by d.codigo;

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

