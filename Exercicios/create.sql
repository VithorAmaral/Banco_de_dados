create database semana5;
create table Clientes(
id int primary key,
Nome varchar(45),
Cidade varchar(45)
);
create table Orderr(
id int primary key,
Cliente_id int,
datee date,
foreign key (Cliente_id) references semana5.clientes(id)
); 

insert into Clientes values 
("1", "Carlos", "SJP"),
("2", "Jéssica", "SP"),
("3", "Carol", "RJ"),
("4", "Gabriel", "POA"),
("5", "Fernando", "CWB");

insert into Orderr values 
("1", "2", "2021-05-21"),
("2", "3", "2021-05-20"),
("3", "1", "2021-05-31"),
("4", "5", "2021-04-21"),
("5", "4", "2021-03-11");


select * from semana5.clientes;
select * from semana5.orderr;

select c.nome, c.cidade, o.id, o.datee from clientes as c inner join orderr as o on o.Cliente_id = c.id; 