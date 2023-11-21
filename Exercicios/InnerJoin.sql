select nome,cursopreferido from gafanhotos;

select nome, ano from cursos;

select g.nome, c.nome, c.ano from gafanhotos as g inner join cursos as c on c.idcurso = g.cursopreferido order by g.nome;
select g.nome, c.nome, c.ano from gafanhotos as g left join cursos as c on c.idcurso = g.cursopreferido order by g.nome;
select g.nome, c.nome, c.ano from gafanhotos as g right join cursos as c on g.cursopreferido = c.idcurso;
