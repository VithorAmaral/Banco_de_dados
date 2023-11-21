drop table if exists TestProcedure;
create table TestProcedure(
id int primary key auto_increment,
num int,
tipo varchar(20));

drop procedure if exists dorepeat;
delimiter $
create procedure dorepeat(num int)
begin
set @x = 0;
repeat set @x = @x +1; until @x > num end repeat;
set @tipo = 'indefinido';
if @x%2 = 0 then set @tipo = 'par'; -- elseif then
else set @tipo = 'impar';
end if;
insert into TestProcedure values(null,@x, @tipo);
end $
delimiter ;

call dorepeat(523);
-- select @x, @tipo;
select * from TestProcedure;