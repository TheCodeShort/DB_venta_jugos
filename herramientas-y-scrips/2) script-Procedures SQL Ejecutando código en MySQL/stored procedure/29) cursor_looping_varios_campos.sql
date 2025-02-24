CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_looping_varios_campos`()
BEGIN
declare vbarrio, vciudad, vcp, vestado varchar(50);
declare vnombre, vdireccion varchar(50);
declare fin_c int default 0;
declare c cursor for select NOMBRE, DIRECCION_1, BARRIO, CIUDAD, CP, ESTADO FROM tabla_de_clientes;
declare continue handler for not found
set fin_c = 1;
open c;
while fin_c = 0
do
fetch c into vnombre, vdireccion,vbarrio, vciudad, vcp, vestado;
if fin_c =0
then select concat(vnombre," - ","Direccion: ", vdireccion, " - ", vbarrio, " - ", vciudad, " -" , vcp," - ", vestado) as resultado;
end if;
end while;
close c;
END