select nome from Imobiliaria.Cliente where idCliente = 3;
select * from Imobiliaria.Contrato where idCliente = 
(select idCliente from Imobiliaria.Cliente where nome = "John Snow");