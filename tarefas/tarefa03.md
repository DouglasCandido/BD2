# A linguagem de programação escolhida por mim para resolver a tarefa foi Python.

# Script de criação do esquema relacional:
<https://github.com/DouglasCandido/BD2/blob/main/tarefas/t03/tarefa03-create.sql>

# Script de provoamento do esquema relacional:
<https://github.com/DouglasCandido/BD2/blob/main/tarefas/t03/tarefa03-inserts.sql>

# ODBC:
ODBC (Open Database Connectivity) é um padrão para acesso a sistemas gerenciadores de bancos de dados (SGBD). Este padrão define um conjunto de interfaces que permitem o uso de linguagens de programação capazes de utilizar estas interfaces, para ter acesso a uma vasta gama de bases de dados distintas sem a necessidade de codificar métodos de acesso especializados (Reinventar a roda). O ODBC atinge a independência de bancos de dados usando drivers para operarem como uma camada de tradução entre a aplicação e o SGBD. As aplicações usam funções ODBC através de um gerenciador de driver ODBC (ODBC driver manager) com a qual está ligada e o driver passa a query para o SGBD. A implementação de uma aplicação baseada em ODBC permite que a mesma possa utilizar simultaneamente diferentes SGBDs com pouca necessidade de mudanças na sua camada de dados. O uso destas interfaces está condicionado à existência de drivers ODBC específicos para as bases de dados que se deseja acessar. Os comandos SQL enviados pelas aplicações para o ODBC devem ser compatíveis com o SGBD utilizado, exigindo às vezes pequenas implementações especificas na aplicação para suporte a um SGBD especifico. Em Python, utiliza-se o módulo pyodbc para conectar a um determinado server de banco de dados (SGBD) com o driver específico para atuar como tradutor entre a aplicação e o banco de dados.

# ORM:
ORM (Object Relational Mapper) é uma técnica para aproximar o paradigma de desenvolvimento de aplicações orientadas a objetos ao paradigma do banco de dados relacional. Esse intercâmbio de informações entre os paradigmas se dá da seguinte maneira: o nome das tabelas se transformam nas classes dos objetos e as colunas se transformam nos atributos dos objetos e vice-versa. Para essa tarefa, utilizarei o framework Django, pois tal framework utiliza a linguagem de programação Python para escrever seus códigos-fonte. O Django possui o recurso Models e permite aos programadores representar os dados contidos nas tabelas do banco de dados (Nessa tarefa, o SGBD PostgreSQL) como objetos e ele fornece vários métodos de simples uso para manipular os dados.

# Links para os programas criados para a tarefa:
[ODBC](https://github.com/DouglasCandido/BD2/blob/main/tarefas/t03/odbc.py)

