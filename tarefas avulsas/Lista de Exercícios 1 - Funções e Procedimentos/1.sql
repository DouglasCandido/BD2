/* 

1. Faça um função para calcular a idade do funcionário.

*/

drop function if exists calcula_idade_funcionario;

create or replace function calcula_idade_funcionario(codfuncionario int)
returns interval as $$
declare idade interval;
begin
	select age(CURRENT_DATE, f.dt_nasc) into idade from funcionario f where f.codigo = codfuncionario;
	return idade;
end;
$$ language plpgsql;

insert into funcionario(nome, sexo, dt_nasc, salario) values('Douglas Mateus Soares Cândido da Silva', 'H', '1997-09-23', 10000.00);

select calcula_idade_funcionario(1);


