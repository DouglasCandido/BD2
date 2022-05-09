/* tarefa01-q03.sql */

select f.nome, f.dt_nasc
from funcionario f, departamento d
where f.cod_depto = d.codigo and f.codigo not in (select d.cod_gerente from departamento d, funcionario f where f.cod_depto = d.codigo and d.cod_gerente = f.codigo) and f.codigo in (SELECT codigo FROM funcionario WHERE dt_nasc < (current_date - '21 years'::interval)::date);

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */



