select * from Imobiliaria.condominio;
select * from Imobiliaria.cliente;

select * from Imobiliaria.contrato;

select * from Imobiliaria.contrato co, Imobiliaria.Cliente cl
where co.idCliente = cl.idCliente;

select idContrato from Imobiliaria.Contrato where idCliente = 
(select idContrato from Imobiliaria.Cliente where nome = "John Snow");
