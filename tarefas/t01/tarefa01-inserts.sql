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

insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('Projeto de Pesquisa & Desenvolvimento', 'Formular estratégias visando a inovação por meio da criação de novos produtos e patentes', 1, 1, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('Projeto de criação de novos canais de comunicação', 'Buscar novos meios de comunicação com a sociedade para realizar o Marketing', 2, 2, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('Projeto de Capacitação dos Funcionários', 'Ofertar cursos atuais sobre os conhecimentos atuais de cada área para capacitar os funcionários de cada departamento', 3, 3, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('Projeto de Redesign da Infraestrutura de Rede da empresa', 'Redesenhar e implementar uma nova infraestrutura de rede na empresa, buscando a máxima eficiência', 4, 4, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('Projeto de Implementação de uso da Energia Limpa e Renovável na empresa', 'Instalar paineis fotovoltaicos com o objetivo de buscar a economia da energia utilizada pela empresa', 5, 5, '2022-05-08');


/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

/* Tabela atividade */

insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('Brainstorm de ideias', 'Realizar uma atividade de brainstorm para gerar novas ideias de novos produtos', 1, '2022-05-08');
insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('Análise do uso dos canais de comunicação pela população', 'Pesquisar indicadores e métricas estatísticas a respeito do uso de cada canal de comunicação', 2, '2022-05-08');
insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('Contratação de professores capacitados para ofertar os cursos necessários', 'Buscar professores que dominam os temas mais atuais de cada área do conhecimento e contrata-los para ministrar os cursos', 3, '2022-05-08');
insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('Projeto e Implementação da Topologia de Rede', 'Realizar o design da topologia de rede que será aplicada à nova infraestrutura', 4, '2022-05-08');
insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('Elaborar um plano de implementação incremental para as novas fontes de energia', 'Instalar e configurar gradativamente os paineis fotovoltaicos', 5, '2022-05-08');

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

/* Tabela atividade_projeto */

insert into atividade_projeto(cod_projeto, cod_atividade) values(1, 1);
insert into atividade_projeto(cod_projeto, cod_atividade) values(2, 2);
insert into atividade_projeto(cod_projeto, cod_atividade) values(3, 3);
insert into atividade_projeto(cod_projeto, cod_atividade) values(4, 4);
insert into atividade_projeto(cod_projeto, cod_atividade) values(5, 5);

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */


