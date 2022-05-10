/* tarefa-01-q17.sql */

select p.codigo as codigo_projeto, p.descricao as descricao_projeto
from projeto p, funcionario f, departamento d
where p.cod_responsavel = f.codigo and p.cod_depto = d.codigo and f.codigo = d.cod_gerente and d.cod_gerente in (select f.codigo from funcionario f, projeto p, departamento d, salario_dos_gerentes s where f.codigo = p.cod_responsavel and f.codigo = d.cod_gerente and p.cod_depto = d.codigo and f.salario > s.salario_gerente)
group by p.codigo order by p.codigo asc;

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

