CREATE DEFINER=`root`@`localhost` PROCEDURE `desafio_1`()
BEGIN
declare nombreCliente varchar (30); 
declare edad int;
declare fecha_nacimiento date;
declare costo float;

set nombreCliente = "juan";
set edad = 10;
set fecha_nacimiento ="2021-01-01";
set costo =  10.23;

select nombreCliente;
select edad;
select fecha_nacimiento;
select costo;
END