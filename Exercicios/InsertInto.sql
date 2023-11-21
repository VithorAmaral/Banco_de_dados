insert into imobiliaria.condominio values
	(1,"CL", "Shopping Legal", "Tim Maia", "41999999999", "Rua da Paz", "Centro", "35");
    
insert into imobiliaria.condominio(idCondominio, sigla, nome) values
(2, "SML", "Shopping Muito Legal");

insert into imobiliaria.condominio(idCondominio, sigla, nome) values
(3, "SHL", "Shopping Hyper Legal");

insert into imobiliaria.condominio(idCondominio, sigla, nome) values
(3, "SHL", "Shopping Hyper Legal"),
(4, "SSL", "Shopping Super Legal");

insert into Imobiliaria.cliente values
(3, "John Snow", "055555555"),
(4, "Bob Esponja", "05555554433"),
(5, "John Wick", "333444225");

insert into imobiliaria.contrato(idContrato, valor, idCliente) values
(55, 500.00,20);