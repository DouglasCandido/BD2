import pyodbc 

cnxn = pyodbc.connect('DRIVER={Devart ODBC Driver for PostgreSQL};Server=localhost;Port=5432;Database=postgres;User ID=postgres;Password=postgres;String Types=Unicode')

cursor = cnxn.cursor()

# Inserir uma atividade em algum projeto

cursor.execute("insert into postgres.atividadesbd.atividade(descricao, codProjeto, dataInicio, dataFim) values('APF - Atividade 6', 1, '2022-06-27', '2022-06-28');")

