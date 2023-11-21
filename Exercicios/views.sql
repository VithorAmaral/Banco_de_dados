create view Imobiliaria.view_contrato_cliente as 
select co.idContrato, cl.nome, cl.cpf from Imobiliaria.Contrato co
inner join Imobiliaria.Cliente cl
on cl.idCliente = co.idCliente;

drop view imobiliaria.view_contrato_cliente;
select * from imobiliaria.view_contrato_cliente;