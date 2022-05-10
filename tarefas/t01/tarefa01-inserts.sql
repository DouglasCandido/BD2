/* Povoamento inicial */

/* Tabela funcionario */

insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('Douglas Mateus Soares Cândido da Silva', 'H', '1997-09-23', 3333.33, 1);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('Amanda Anisimova', 'M', '2001-08-31', 10000.00, 1);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('Saint-Clair Cândido da Silva', 'H', '1971-09-07', 3333.33, 2);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('Erivonete Soares de Lucena', 'M', '1969-05-10', 3333.33, 3);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('Steven Paul Jobs', 'H', '1955-02-24', 100000.00, 4);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('Bruce Wayne', 'H', '1915-04-17', '150000', 4);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values ('William Henry Gates III', 'H', '1955-10-28', '500000', 4);
insert into funcionario(nome, sexo, dt_nasc, salario, cod_depto) values('Albert Einstein', 'H', '1879-03-14', 50000.00, 5);

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

/* Tabela departamento */

insert into departamento(descricao, cod_gerente) values('Departamento Administrativo ', 1);
insert into departamento(descricao, cod_gerente) values('Departamento de Marketing', 2);
insert into departamento(descricao, cod_gerente) values('Departamento de Recursos Humanos', 3);
insert into departamento(descricao, cod_gerente) values('Departamento de Tecnologia da Informação', 4);
insert into departamento(descricao, cod_gerente) values('Departamento de Ciências Aplicadas', 5);
insert into departamento(descricao) values('Departamento de Finanças'); 

/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

/* Tabela projeto */

insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('Projeto de Pesquisa & Desenvolvimento', 'Formular estratégias visando a inovação por meio da criação de novos produtos e patentes', 1, 1, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('Criação de filiais', 'Projeto que busca formular estratégias de expansão da empresa', 1, 1, '2022-05-09');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('Projeto de criação de novos canais de comunicação', 'Buscar novos meios de comunicação com a sociedade para realizar o Marketing', 2, 2, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('Projeto de Capacitação dos Funcionários', 'Ofertar cursos sobre os conhecimentos atuais de cada área para capacitar os funcionários', 3, 3, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('Projeto de Redesign da Infraestrutura de Rede da empresa', 'Redesenhar uma nova infraestrutura de rede na empresa, buscando a máxima eficiência', 4, 4, '2022-05-08');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values ('Projeto de criação de um Sistema Operacional para a empresa', 'Este projeto busca criar o próprio Sistema Operacional para a empresa', 4, 8, '2022-05-09');
insert into projeto(nome, descricao, cod_depto, cod_responsavel, data_inicio) values('Projeto de Implementação de uso da Energia Limpa e Renovável na empresa', 'Instalar paineis fotovoltaicos buscando a economia da energia utilizada pela empresa', 5, 5, '2022-05-08');


/* ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ */

/* Tabela atividade */

insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('Brainstorm de ideias', 'Realizar uma atividade de brainstorm para gerar novas ideias de novos produtos', 1, '2022-05-08');
insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('Análise do uso dos canais de comunicação pela população', 'Pesquisar indicadores e métricas estatísticas a respeito do uso de cada canal de comunicação', 2, '2022-05-08');
insert into atividade(nome, descricao, cod_responsavel, data_inicio) values('Contratação de professores capacitados para ofertar os cursos necessários', 'Buscar professores que dominam os temas mais atuais de cada área do conhecimento e contrata-los', 3, '2022-05-08');
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


