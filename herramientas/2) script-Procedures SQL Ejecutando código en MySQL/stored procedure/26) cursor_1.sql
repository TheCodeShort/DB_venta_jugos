CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_1`()
BEGIN
declare vnombre varchar(50);
declare c cursor for select NOMBRE FROM tabla_de_clientes limit 4;
open c;
fetch c into vnombre;
select vnombre;
fetch c into vnombre;
select vnombre;
fetch c into vnombre;
select vnombre;
fetch c into vnombre;
select vnombre;
close c;
#select NOMBRE INTO vnombre FROM tabla_de_clientes;#asigna multiples valores a una valiabre arroja error 
#select vnombre;
END