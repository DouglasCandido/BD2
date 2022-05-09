# Questão 5 - Responda as perguntas:

## 1.	Explique os problemas de termos valores nulos nos dados.

	Quando há valores nulos em alguma coluna de uma tupla de uma tabela, é possível que consultas feitas a essa tabela tragam resultados imprecisos (Devido aos parâmetros utilizados na consulta não satisfazerem o objetivo pretendido pela consulta e isso acontece, por exemplo, principalmente no uso das condições where e inner join, no caso destas não distinguirem que tal valor pesquisado não está preenchido quando linkar as chaves estrangeiras com as chaves primárias e, portanto, não retornar todos os resultados esperados).

## 2.	Explique o funcionamento do Right e do Left Join.

	O Right Join é utilizado em consultas em que se quer obter os valores que estão relacionados em uma ligação entre dois conjuntos, ou seja, duas tabelas, por meio da intersecção entre elas (Especificando, como parâmetros para a consulta, quais os atributos que são determinantes nessa ligação e “colando-os”) e trazer também os valores do conjunto do lado direito que não possuem relação com os valores do conjunto do lado esquerdo (Ou seja, todas as tuplas da tabela direita, mesmo que essas não obedeçam os parâmetros que foram usados como critérios de busca na consulta por intersecção).

	O Left Join funciona a partir do mesmo princípio citado acima, entretanto ele obtém, além dos valores da intersecção entre as tabelas, também os valores do conjunto do lado esquerdo que não possuem relação com os valores do conjunto do lado direito (Ou seja, todas as tuplas da tabela esquerda, mesmo que essas não obedeçam os parâmetros que foram usados como critérios de busca na consulta por intersecção).

## 3.	Explique o funcionamento do Full Outer Join e como pode ser feito no MySQL ou MariaDB que não tem mais o comando Full.

    Quando o Full Outer Join é utilizado numa consulta, ela retorna tanto os resultados pretendidos (As tuplas que são resultados do link e match entre dois parâmetros de condição passados na consulta) quanto as tuplas que não obedecem (Não há match) a condição previamente especificada como parâmetro.

    No MySQL e MariaDB não há uma keyword específica para realizar o FULL OUTER JOIN, portanto precisa-se unir, com UNION, duas queries distintas (Uma realizada com um LEFT JOIN e outra realizada com o RIGHT JOIN).

    Exemplo:
    
    SELECT *
    FROM tabela_a
    LEFT OUTER JOIN tabela_b ON tabela_a.id = tabela_b.id
    UNION
    SELECT *
    FROM tabela_a
    RIGHT OUTER JOIN tabela_b ON tabela_a.id = tabela_b.id;





