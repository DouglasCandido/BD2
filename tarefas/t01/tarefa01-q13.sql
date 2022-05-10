/* tarefa-01-q13.sql */

select p.nome as nome_projeto, p.data_inicio as data_inicio_projeto, p.data_fim as data_fim_projeto, a.nome as nome_atividade, a.data_inicio as data_inicio_atividade, a.data_fim as data_fim_atividade
from projeto p, atividade a, atividade_projeto ap
where p.codigo = ap.cod_projeto and a.codigo = ap.cod_atividade and a.data_inicio < p.data_inicio and a.data_fim > p.data_fim;

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

