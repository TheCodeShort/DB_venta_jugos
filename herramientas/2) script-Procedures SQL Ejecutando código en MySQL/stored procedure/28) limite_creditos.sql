CREATE DEFINER=`root`@`localhost` PROCEDURE `limite_creditos`()
BEGIN
declare limit_credito float;
declare limit_credito_acumulado float;
declare fin_cursor int;
declare c cursor for select LIMITE_DE_CREDITO from tabla_de_clientes;#se declara el cursor y especificamos de donde va a tomar los datos 
declare continue handler for not found set fin_cursor = 1;#controlador, si no hay mas filas fin_cursor es 1 eso se hace con el set 
set fin_cursor = 0;
set limit_credito =0;
set limit_credito_acumulado = 0;
open c;#se abre el cursor 
while fin_cursor = 0
do
fetch c into limit_credito;#aca extre los valores de la fila 
if fin_cursor = 0
then set  limit_credito_acumulado = limit_credito_acumulado + limit_credito;
end if;
end while;
select limit_credito_acumulado;
close c; #cerramos el cursor
END