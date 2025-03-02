/* FUNCIONES STRING */

SELECT LTRIM("    MySQL es fácil");#quita los espacion que quedan a la izquierda

SELECT RTRIM("MySQL es fácil    ");#quita los espacios a la dercha

SELECT TRIM("    MySQL es fácil    "); #quita los espacion 

SELECT CONCAT("MySQL es fácil,", " no lo crees?");#une los string y muestra uno solo 

SELECT UPPER("mysql es una base de datos interesante.");#convierte todo en mayucula

SELECT LOWER("MYSQL ES UNA BASE DE DATOS INTERESANTE.");#convierte todo en miniscula 

SELECT SUBSTRING("mysql es una base de datos interesante.", 14,4);#selecionamos los la posisicon en donde queremos que mueste y el segundo numero muestra la cantidad de caracteres

SELECT CONCAT(NOMBRE, " ", DNI) FROM tabla_de_clientes; #concatena la inforiacon de la tabla especificada
select NOMBRE, concat(DIRECCION_1, "", BARRIO, "",  CIUDAD) AS INFO_COMPLETA FROM tabla_de_clientes;

/* FUNCIONES DATE */

SELECT CURDATE(); #muestra la fecha actual de tu pc 

SELECT current_timestamp(); #muestra el dia y la hora actual del servidor

SELECT YEAR(current_timestamp());#muestra el año 

SELECT MONTH(current_timestamp());#muestra el mes 

SELECT DAY(current_timestamp());#mustra el dia 

SELECT MONTHNAME(current_timestamp());#muestra el nombre del mes actual 

SELECT DAYNAME(current_timestamp());#muestra el nombre del dia 

SELECT DATEDIFF(current_timestamp(), "2021-01-01") AS DIFERENCIA_DE_DIAS;#diferecnia de dias entre dos fechas

SELECT DATEDIFF(current_timestamp(), "1984-06-20") AS DIFERENCIA_DE_DIAS;

SELECT current_timestamp() AS DIA_HOY, 
DATE_SUB(current_timestamp(), INTERVAL 1 MONTH) AS RESULTADO;#resta una fehca con otra aca se puede especificar que es lo que quiere restar como los meses o dias etc

SELECT DISTINCT FECHA_VENTA,
DAYNAME(FECHA_VENTA) AS DIA, MONTHNAME(FECHA_VENTA) AS MES, 
YEAR(FECHA_VENTA) AS AÑO FROM facturas;

#muestra el nombre y la edad actual 
SELECT NOMBRE, TIMESTAMPDIFF(YEAR, FECHA_DE_NACIMIENTO, CURDATE()) AS EDAD
FROM  tabla_de_clientes;