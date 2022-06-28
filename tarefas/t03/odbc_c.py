import pyodbc 

cnxn = pyodbc.connect('DRIVER={Devart ODBC Driver for PostgreSQL};Server=localhost;Port=5432;Database=postgres;User ID=postgres;Password=postgres;String Types=Unicode')

cursor = cnxn.cursor()

# Listar todas os projetos e suas atividades
cursor.execute("SELECT * FROM postgres.atividadesbd.projeto p, postgres.atividadesbd.atividade a WHERE a.codprojeto = p.codigo GROUP BY p.codigo, a.codigo ORDER BY p.codigo ASC;") 

row = cursor.fetchone() 

while row:
    print (row) 
    row = cursor.fetchone()

