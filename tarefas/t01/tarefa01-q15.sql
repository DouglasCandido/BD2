/* tarefa-01-q15.sql */

/* View que retorna a quantidade de atividades alocadas em cada projeto */
 create view quantidade_atividades_por_projeto 
 as select p.nome as nome_projeto, count(*) as quantidade_atividades_por_projeto from atividade_projeto ap, atividade a, projeto p where ap.cod_atividade = a.codigo and ap.cod_projeto = p.codigo group by p.codigo order by p.codigo; 

/* View que retorna a quantidade de responsáveis por cada atividade */
create view quantidade_responsaveis_por_atividade 
as select a.nome as nome_atividade, count(*) as quantidade_responsaveis_por_atividade 
from atividade a, atividade_projeto ap, projeto p, funcionario f 
where a.cod_responsavel = f.codigo and a.codigo = ap.cod_atividade and ap.cod_projeto = p.codigo
group by a.codigo order by a.codigo;

select p.nome as nome_projeto, f.nome as funcionario_responsavel, qapp.quantidade_atividades_por_projeto, qrpa.quantidade_responsaveis_por_atividade 
from projeto p, funcionario f, atividade a, atividade_projeto ap, quantidade_atividades_por_projeto qapp, quantidade_responsaveis_por_atividade qrpa
where p.cod_responsavel = f.codigo and p.codigo = ap.cod_projeto and a.codigo = ap.cod_atividade group by p.nome, f.nome, qapp.quantidade_atividades_por_projeto, qrpa.quantidade_responsaveis_por_atividade;

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */


 