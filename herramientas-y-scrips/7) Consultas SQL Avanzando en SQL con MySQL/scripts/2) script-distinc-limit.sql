SELECT ENVASE, TAMANO FROM tabla_de_productos;

SELECT DISTINCT ENVASE, TAMANO FROM tabla_de_productos; -- solo se mostrarán los nombres de productos únicos, sin duplicados.

SELECT DISTINCT ENVASE, TAMANO, SABOR FROM tabla_de_productos
WHERE SABOR = 'Naranja';-- solo se mostrarán los nombres de productos únicos, sin duplicados pero con el filtro del sabor naranja.

select BARRIO, ciudad  from tabla_de_clientes;
select DISTINCT BARRIO, CIUDAD FROM tabla_de_clientes where ciudad = "Ciudad de México"; # tener encuenta que el DISTINCT se usa despues del select


SELECT * FROM tabla_de_productos;

SELECT * FROM tabla_de_productos LIMIT 5;#limita el daato a mostrar 	

SELECT * FROM tabla_de_productos LIMIT 5,4;#el primer numero es el idice osea desde donde va a empezar y el segundo es la cantidad que se va a mostrar

SELECT * FROM tabla_de_vendedores WHERE FECHA_ADMISION = 2017-01-01 LIMIT 10;

#ORDER BY tambien ordena de forma alfabetica o dle 1 al n 
SELECT * FROM tabla_de_productos ORDER BY PRECIO_DE_LISTA;#aca se ordena de forma ASENDENTE por predeterminado

SELECT * FROM tabla_de_productos ORDER BY PRECIO_DE_LISTA DESC;#se ordena de forma decendente pero si toca especificarlo 

SELECT ESTADO, LIMITE_DE_CREDITO FROM tabla_de_clientes;


#optenemos el producto con las especificaciones del SQL
SELECT CODIGO_DEL_PRODUCTO FROM tabla_de_productos 
WHERE NOMBRE_DEL_PRODUCTO = "Refrescante" AND TAMANO = "1 Litro" 
AND SABOR = "Frutilla/Limón"; 

SELECT * FROM items_facturas WHERE CODIGO_DEL_PRODUCTO = "1101035" ORDER BY CANTIDAD DESC;