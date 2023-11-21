select * from cursos order by nome desc;
desc cursos;

select nome, carga , ano from cursos order by ano,nome;

select nome, descricao, ano from cursos where ano != "2016" order by ano, nome;

select nome,ano from cursos where ano between 2014 and 2016 order by ano;

select nome, descricao, ano from cursos where ano in (2014,2016,2020) order by ano; 

select nome, carga, totaulas from cursos where carga > 35 or totaulas < 30;

select * from cursos where nome like  "P%";
select * from cursos where nome like  "%a";
select * from cursos where nome like  "%a%";
select * from cursos where nome not like  "%a%";
select * from cursos where nome like  "ph%p";
select * from cursos where nome like  "ph%p%";
select * from cursos where nome like  "ph%p_";
select * from cursos where nome like  "p_p%";
select * from cursos where nome like  "p__t%";
select * from gafanhotos where nome like  "%Silva";

select distinct nacionalidade from gafanhotos order by nacionalidade;
select distinct carga from cursos order by carga;

select count(*) from cursos;
select count(*) from cursos where carga > 40;

select max(carga) from cursos;
select max(totaulas) from cursos where ano = "2016";

select nome, min(totaulas) from cursos where ano = "2016";

select sum(totaulas) from cursos where ano = "2016";

select avg(totaulas) from cursos where ano = "2016";

select totaulas, count(*) from cursos group by totaulas order by totaulas;
select carga, count(nome) from cursos where totaulas = 30 group by carga;
select ano, count(*) from cursos group by ano order by count(*);
select ano, count(*) from cursos where totaulas > 30 group by ano having ano > 2013 order by count(*) desc;

select avg(carga) from cursos;
select carga, count(*) from cursos where ano > 2015 group by carga having carga > (select avg(carga) from cursos);


