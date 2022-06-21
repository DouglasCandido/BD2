/* 

2. Faça uma função para calcular a média de idade por departamento

*/

insert into departamento(sigla, descricao) values ('DeptV', 'Departamento de Vendas');

update funcionario set depto = 1 where codigo = 1;

insert into funcionario(nome, sexo, dt_nasc, salario) values('Erivonete Soares de Lucena', 'M', '1969-05-10', 25000.00);

update funcionario set depto = 1 where codigo = 2;

insert into funcionario(nome, sexo, dt_nasc, salario) values('Saint-Clair Cândido da Silva', 'H', '1971-09-07', 50000.00);

update funcionario set depto = 1 where codigo = 3;

create or replace function media_idade_funcionarios_do_departamento(coddepto int)
returns interval as $$
declare idade_media interval;
begin
	select avg(age(CURRENT_DATE, f.dt_nasc)) into idade_media from funcionario f, departamento d where f.depto = d.codigo and d.codigo = coddepto and f.depto = coddepto; 
	return idade_media;
end;
$$ language plpgsql;

select media_idade_funcionarios_do_departamento(1);



