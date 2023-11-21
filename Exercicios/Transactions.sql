select @@transaction_isolation;
select @@global.transaction_isolation;
set session transaction_isolation = 'serializable';
set global transaction_isolation = 'serializable';

set autocommit = 0;
start transaction;
set @novoCliente = "Zico";
set @cpf = (select cpf from imobiliaria.Cliente where idCliente = 4);
insert into imobiliaria.cliente values ("14", @novoCliente, @cpf);
commit; -- rollback
select * from imobiliaria.cliente;