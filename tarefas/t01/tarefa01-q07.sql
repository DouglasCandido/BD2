/* tarefa-01-q07.sql */

/* Visão que mostra quantos funcionários estão alocados em cada departamento. */
create view total_funcionarios_por_departamento as select count(*)
from funcionario f 
inner join departamento d 
on f.cod_depto = d.codigo group by d.codigo order by d.codigo asc;;

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */



