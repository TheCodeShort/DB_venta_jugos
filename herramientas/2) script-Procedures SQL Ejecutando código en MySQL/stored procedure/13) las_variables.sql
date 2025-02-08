CREATE DEFINER=`root`@`localhost` PROCEDURE `las_variables`()
BEGIN
declare v varchar(30) default "caracteres variables";
declare i integer default 656;
declare d decimal (5, 3) default 89.765;
declare f date default "2021-01-01";
declare ts timestamp default current_timestamp();
select v;
select i;
select d;
select f;
select ts;
END