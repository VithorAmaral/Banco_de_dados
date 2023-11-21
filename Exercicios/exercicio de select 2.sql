#Exercicio 1 - uma lista com as profissoes dos gafanhatos e seus respectivos quantitativos
select profissao, count(profissao) from gafanhotos group by profissao order by count(profissao) desc;

#Exercicio 2 - Quantos gafanhotos homens e mulheres nasceram após 01/jan/2005 ?
select sexo, count(sexo) from gafanhotos  where nascimento > "2005-1-1" group by sexo;

#Exercico 3 - Lista com gafanhotos que nasceram fora do BRASIL, mostrando o país de origem e o total de pessoas nascidas lá. Só nos interessam os países que tiveram mais de 3 gafanhotos com essa nacionalidade.
select nacionalidade, count(nacionalidade) from gafanhotos where nacionalidade != "Brasil" group by nacionalidade having count(nacionalidade) > 3;

#Exercicio 4 - uma lista agrupada pela altura dos gafanhotos ,mostrando quantas pessoas pesam mais de 100kg e que estao acima da media da altura de todos os gafanhotoso
select altura, count(peso) from gafanhotos where peso > 100 group by altura having altura > (select avg(altura) from gafanhotos);