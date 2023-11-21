create database semana6;
create table departamento(
id int,
nome varchar(45),
ramal int,
primary key (id)
);


create table Funcionario(
id int,
nome varchar(45),
departamento_id int,
numero_mesa int,
carga_horaria_semanal int,
PRIMARY KEY (id),
foreign key (departamento_id) references semana6.Funcionario(id)
);

create user gerente@"localhost" identified by "G3r3Nt3";
grant select, update, insert, delete on semana6.funcionario to gerente@"localhost";
grant select, update, insert, delete on semana6.departamento to gerente@"localhost";
drop user if exists gerente@"localhost";

create user logistica@"%" identified by "L0g1sT1c2";
grant select(nome, numero_mesa, carga_horaria_semanal) on semana6.funcionario to logistica@"%";
drop user if exists logistica@"%";
