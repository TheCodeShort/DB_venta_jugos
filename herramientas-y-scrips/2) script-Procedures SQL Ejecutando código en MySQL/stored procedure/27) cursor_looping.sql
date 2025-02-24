CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_looping`()
BEGIN
declare vnombre varchar(50);
declare fin_c int default 0;
declare c cursor for select NOMBRE FROM tabla_de_clientes;
declare continue handler for not found
set fin_c = 1;
open c;
while fin_c = 0
do
fetch c into vnombre;
if fin_c =0
then select vnombre;
end if;
end while;
close c;
END