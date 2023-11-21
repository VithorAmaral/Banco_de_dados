create database semana5_0;

use semana5_0;

create table cliente(
id int,
nome varchar(45),
cidade varchar(45),
primary key(id)
);

create table orderr(
id int,
cliente_id int,
dataa date,
primary key(id),
foreign key(cliente_id) references semana5_0.cliente(id)
);

insert into semana5_0.cliente values ("1", "Carlos", "SJP");
insert into semana5_0.cliente values ("2", "Jessica", "SP");
insert into semana5_0.cliente values ("3", "Carol", "RJ");
insert into semana5_0.cliente values ("4", "Gabriel", "POA");
insert into semana5_0.cliente values ("5", "Fernando", "CWB");

insert into semana5_0.orderr values ("1", "2", "2021-05-21");
insert into semana5_0.orderr values ("2", "3", "2021-05-20");
insert into semana5_0.orderr values ("3", "1", "2021-05-31");
insert into semana5_0.orderr values ("4", "5", "2021-04-21");
insert into semana5_0.orderr values ("5", "4", "2021-03-11");

select cliente.nome, cliente.cidade, orderr.id, orderr.dataa from cliente inner join orderr on cliente.id = orderr.cliente_id; 