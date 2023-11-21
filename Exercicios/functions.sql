drop function if exists par;
create function par(num int)
returns int deterministic
return (num%2 = 0);
select par(21);