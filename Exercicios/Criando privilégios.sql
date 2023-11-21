drop user if exists mark@"localhost";
create user mark@"localhost" identified by "1234";

-- grant all on Imobiliaria.* to mark@"localhost"; #Acesso a Imobiliaria
-- grant all on *.* to mark@"localhost"; # Acesso a tudo
grant select on imobiliaria.contrato to mark@"localhost";
grant select, update on imobiliaria.contrato to mark@"localhost";
grant select, update on imobiliaria.cliente to mark@"localhost";