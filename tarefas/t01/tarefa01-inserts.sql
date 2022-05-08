/* Povoamento inicial */

/* Tabela funcionario */

insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('Douglas Mateus Soares Cândido da Silva', 'H', '1997-09-23', 3333.33, 1);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('Saint-Clair Cândido da Silva', 'H', '1971-09-07', 3333.33, 1);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('Erivonete Soares de Lucena', 'M', '1969-05-10', 3333.33, 1);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('Steven Paul Jobs', 'H', '1955-02-24', 100000.00, 2);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('Albert Einstein', 'H', '1879-03-14', 50000.00, 2);

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

/* Tabela departamento */

insert into departamento(descricao, cod_gerente) values('Departamento Administrativo ', 1);
insert into departamento(descricao, cod_gerente) values('Departamento de Marketing', 2);
insert into departamento(descricao, cod_gerente) values('Departamento de Recursos Humanos', 3);
insert into departamento(descricao, cod_gerente) values('Departamento de Tecnologia da Informação', 4);
insert into departamento(descricao, cod_gerente) values('Departamento de Ciências Aplicadas', 5);

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

/* Tabela projeto */

insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) values('Projeto de Pesquisa & Desenvolvimento', 'Formular estratégias visando a inovação por meio da criação de novos produtos e patentes', 1, 1, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) values('Projeto de criação de novos canais de comunicação', 'Buscar novos meios de comunicação com a sociedade para realizar o Marketing', 2, 2, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) values('Projeto de Capacitação dos Funcionários', 'Ofertar cursos atuais sobre os conhecimentos atuais de cada área para capacitar os funcionários de cada departamento', 3, 3, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) values('Projeto de Redesign da Infraestrutura de Rede da empresa', 'Redesenhar e implementar uma nova infraestrutura de rede na empresa, buscando a máxima eficiência', 4, 4, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio, data_fim) values('Projeto de Implementação de uso da Energia Limpa e Renovável na empresa', 'Instalar paineis fotovoltaicos com o objetivo de buscar a economia da energia utilizada pela empresa', 5, 5, '2022-05-08');

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

/* Tabela atividade */

insert into atividade() values();

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

/* Tabela atividade_projeto */

insert into atividade_projeto() values();

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

