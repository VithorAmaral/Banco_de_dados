drop user if exists mark@"localhost";
-- create user mark@"localhost" identified by "1234" password expire;
-- create user mark@"localhost" identified by "1234" password expire interval 90 day failed_login_attempts 3 password_lock_time 2;
-- create user mark@"localhost" attribute '{"Nome": "mark joselli"}';
create user mark@"localhost" with max_connections_per_hour 2;
select * from information_schema.user_attributes;
