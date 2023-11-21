create database atp;
use atp;
create table regiao(
codRegiao int,
nomeRegiao varchar(100),
descricaoRegiao text,
primary key(codRegiao)
);
create table vinicola(
codVinicola int,
nomeVinicola varchar(100),
descricaoVinicola text,
foneVinicola varchar(45),
emailVinicola varchar(45),
codRegiao int,
primary key(codVinicola),
foreign key(codRegiao) references atp.regiao(codRegiao)
);
create table vinho(
codVinho int,
nomeVinho varchar(250),
tipoVinho varchar(100),
anoVinho int,
descricaoVinho text,
codVinicola int,
primary key(codVinho),
foreign key(codVinicola) references atp.vinicola(codVinicola)
);

insert into regiao values ("1", "Curitiba", "Frio");
insert into regiao values ("2", "Florianópolis", "Ilha");
insert into regiao values ("3", "Porto Alegre", "Chimarrão");
insert into regiao values ("4", "Rio de Janeiro", "Cristo");
insert into regiao values ("5", "São Paulo", "Poluição");

insert into vinicola values ("1", "FAMÍLIA FARDO", "Italiano", "(41) 3672 1693", "loja@familiafardo.com.br", "1");
insert into vinicola values ("2", "VINHO NOBRE", "TODO VINHO QUE VOCÊ PROCURA", "(55) 99722-8779", "vinhonobre@vinhonobre.com", "2");
insert into vinicola values ("3", "Anja Vinhos", "Entregas rápidas", "(51) 98551-2084", "angela@anjavinhos.com.br", "3");
insert into vinicola values ("4", "MWine", "Vinho e Cultura", "(21) 99412-6626", "contato@mwine.com.br", "4");
insert into vinicola values ("5", "DVA Vinhos", "Felicidade", "(11) 3101-0394", "dvavinhos@hotmail.com", "5");

insert into vinho values("1", "Enclos du Wine Hunter Bordeaux Blanc", "Vinho branco", "2019", "Vinho branco elaborado a partir
 do blend de três uvas importantes em Bordeaux.", "1");
 insert into vinho values("2", "Ropiteau Frères Premier Cru A.O.C. Chassagne-Montrachet", "Seco", "2018", "Classificado como Premier Cru,
 este vinho une uma família de produtores de longa tradição e excelência, Ropiteau Frères.", "2");
 insert into vinho values("3", "Pinhal da Torre Late Harvest Tardio", "Suave/Doce", "2010", "Esse exemplar elaborado pela renomada Pinhal
 da Torre, foi feito com uvas colhidas tardiamente.", "3");
  insert into vinho values("4", "Ventisquero Pangea Valle de Colchagua Syrah", "Seco", "2016", "Pangea é um vinho envolvente, distinto e
  com grande complexidade em aromas e sabores, um autêntico Syrah do Valle de Colchagua!", "4");
  insert into vinho values("5", "Carmin de Peumo Carménère", "Seco", "2018", "Um assemblage moderno das uvas Carménère (95%), Cabernet Sauvignon
  (3,5%), Cabernet Franc (1,5%) no estilo dos vinhos de Bordeaux, mas com a fineza e o toque frutado do Novo Mundo, este é o Carmin de Peumo 2018,
  um vinho chileno suculento, aveludado e elegante.", "5");
  
  select vinho.nomeVinho, vinho.anoVinho, vinicola.nomeVinicola, regiao.nomeRegiao from regiao inner join vinicola on regiao.codRegiao = vinicola.codRegiao join vinho on vinho.codVinicola = vinicola.CodVinicola; 
  
  create user somelier@"localhost" with max_connections_per_hour 40;
  grant select on atp.vinho to somelier@"localhost";
  grant select (codVinicola, nomeVinicola) on atp.vinicola to somelier@"localhost";
  drop user if exists somelier@"localhost";