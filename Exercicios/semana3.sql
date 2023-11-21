create database semana3;
use semana3;
create table departamento(
id int,
nome varchar(45),
ramal int,
primary key(id)
);
create table funcionario(
id int,
nome varchar(45),
departamento_id int,
numero_mesa int,
carga_horaria_semanal int,
primary key(id),
foreign key(departamento_id) references semana3.departamento(id)
);