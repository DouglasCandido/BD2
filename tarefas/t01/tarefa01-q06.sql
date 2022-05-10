/* tarefa01-q04.sql */

select f.nome, f.salario, d.descricao
from funcionario f left join departamento d on
f.cod_depto = d.codigo;

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

