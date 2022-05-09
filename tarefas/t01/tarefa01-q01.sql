/* tarefa01-q01.sql */

select f.nome 
from funcionario f
where f.salario > (select salario from funcionario where cod_depto = 5);

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

