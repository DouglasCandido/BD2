/* tarefa01-q01.sql */

select f.nome 
from funcionario f, departamento d
where (f.salario > (select salario from funcionario where cod_depto = 5)) and f.cod_depto = d.codigo;

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */
