import pyodbc 

cnxn = pyodbc.connect('DRIVER={Devart ODBC Driver for PostgreSQL};Server=localhost;Port=5432;Database=postgres;User ID=postgres;Password=postgres;String Types=Unicode')

cursor = cnxn.cursor()	

# Listar todos os funcionários 
cursor.execute("SELECT * FROM postgres.atividadesbd.funcionario;") 

row = cursor.fetchone() 

while row:
    print (row) 
    row = cursor.fetchone()









