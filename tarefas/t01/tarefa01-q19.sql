/* tarefa-01-q19.sql */

/* View que retorna a média dos salários dos gerentes de cada departamento */
create view media_dos_salarios_dos_gerentes as select avg(sdg.salario_gerente) as media_dos_salarios_dos_gerentes from salario_dos_gerentes sdg;

select p.codigo as codigo_projeto, p.descricao as descricao_projeto
from projeto p, funcionario f, departamento d
where p.cod_responsavel = f.codigo and p.cod_depto = d.codigo and f.codigo = d.cod_gerente and d.cod_gerente in (select f.codigo from funcionario f, projeto p, departamento d, media_dos_salarios_dos_gerentes mdsdg where f.codigo = p.cod_responsavel and f.codigo = d.cod_gerente and p.cod_depto = d.codigo and f.salario > mdsdg.media_dos_salarios_dos_gerentes)
group by p.codigo order by p.codigo asc;

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */






 
 