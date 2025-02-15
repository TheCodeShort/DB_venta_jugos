# el error 1452 me sale cuando una tabla hija se le inserta inforacion de una tabla padre pero esta tabla padre esta basia 

use empresa;
select database();


#De esta manera se inserta valores de la DB jugos_ventas a empresa 
INSERT INTO items#tener encuenta cual es la base de datos que se le va insertar osea que este en negrilla el nombre de la DB 
SELECT NUMERO, CODIGO_DEL_PRODUCTO AS CODIGO, CANTIDAD, PRECIO#toca tener presente el orden en el que esta en la DB 
FROM jugos_ventas.items_facturas;#aca mencionamos de donde se va a traer los datos

select * from items;

INSERT INTO facturas
SELECT NUMERO, FECHA_VENTA AS FECHA, DNI, MATRICULA, IMPUESTO
FROM jugos_ventas.facturas;

select * from facturas;

SELECT * FROM facturas F 
INNER JOIN #aca se usa para verlas justas las tablas
items I
ON F.NUMERO = I.NUMERO;#aca especificamos que es lo que une nuestras tablas