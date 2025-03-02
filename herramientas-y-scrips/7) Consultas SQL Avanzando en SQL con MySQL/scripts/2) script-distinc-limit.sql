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