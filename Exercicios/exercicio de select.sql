# Exercicio 1 - Uma lista com o nome de todos os gafanhotos Mulheres.
select * from gafanhotos where sexo = "F";

#Exercicio 2 - Uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/Dez/2015.
select * from gafanhotos where nascimento between "2000-1-1" and "2015-12-31" order by nascimento;

#Exercicio 3 - Uma lista com o nome de todos os homens que trabalham como programadores.
select * from gafanhotos where sexo = "M" and profissao = "Programador";

#Exercicio 4 - Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra J.
select * from gafanhotos where sexo = "F" and nacionalidade = "Brasil" and nome like "J%"; 

#Exercicio 5 - Uma lista com o nome e nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam menos de 100 Kg.
select nome, nacionalidade from gafanhotos where sexo = "M" and nome like "%Silva%" and nacionalidade != "Brasil" and peso < "100"; 

#Exercicio 6 -  Qual é a maior altura entre gafanhotos Homens que moram no Brasil?
select max(altura) from gafanhotos where sexo = "M" and nacionalidade = "Brasil";

#Exercicio 7 - Qual é a média de peso dos gafanhotos cadastrados?
select avg(peso) from gafanhotos;

#Exercicio 8 - Qual é o menor peso entre os gafanhotos Mulheres que nasceram fora do Brasil e entre 01/Jan/1990 e 31/Dez/2000?
select min(peso) from gafanhotos where sexo = "F" and nascimento between "1990-1-1" and "2000-12-31" and nacionalidade != "Brasil";

#Exercicio 9 - Quantas gafanhotos Mulheres tem mais de 1.90cm de altura?
select count(altura) from gafanhotos where sexo = "F" and altura > "1.90";