import pyodbc 

cnxn = pyodbc.connect('DRIVER={Devart ODBC Driver for PostgreSQL};Server=localhost;Port=5432;Database=postgres;User ID=postgres;Password=postgres;String Types=Unicode')

cursor = cnxn.cursor()

# Atualizar o líder de algum projeto

cursor.execute("update postgres.atividadesbd.projeto set codresponsavel = 1 where codigo = 1;")

