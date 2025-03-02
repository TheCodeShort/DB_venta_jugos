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

#es bueno darle un alias a una operacion, tener encuenta que para poner un alias se utiliza AS	
SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM tabla_de_clientes GROUP BY ESTADO;

#tener encuenta que el filtro se poner antes que el GROUP BY 
SELECT CIUDAD, BARRIO, SUM(LIMITE_DE_CREDITO) AS LIMITE 
FROM tabla_de_clientes WHERE CIUDAD = 'CIUDAD DE MÉXICO'
GROUP BY BARRIO;

#¿Cuántos ítems vendidos cuentan con la mayor cantidad del producto '1101035'?
SELECT MAX(CANTIDAD) AS CANTIDAD_MAXIMA FROM items_facturas WHERE CODIGO_DEL_PRODUCTO = "1101035";
SELECT COUNT(*) FROM items_facturas WHERE CODIGO_DEL_PRODUCTO = "1101035" AND CANTIDAD = 99;


#tener encuenta que el HEAVING va despues del GROUP BY 
SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM tabla_de_clientes 
GROUP BY ESTADO
HAVING LIMITE_TOTAL > 300000;


SELECT ENVASE, MAX(PRECIO_DE_LISTA) AS PRECIO_MAXIMO,
MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO,
SUM(PRECIO_DE_LISTA) AS SUMA_PRECIO
FROM tabla_de_productos GROUP BY ENVASE
HAVING SUM(PRECIO_DE_LISTA) >= 80 
AND MAX(PRECIO_DE_LISTA) >= 5;

select DNI, count(*) as conteo from facturas
where YEAR (FECHA_VENTA) = 2016
group by DNI
having count(*) > 2000 ;


#hace un test a uno o mas campos y dependiendo el resultado obtendremos un valor especifico
SELECT NOMBRE_DEL_PRODUCTO, PRECIO_DE_LISTA,
CASE
   WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
   WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Asequible'
   ELSE 'Barato'
END AS PRECIO #ner encuenta que se le asigna el alias
FROM tabla_de_productos;


SELECT ENVASE, SABOR,
CASE
   WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
   WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Asequible'
   ELSE 'Barato'
END AS PRECIO, MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO
FROM tabla_de_productos
WHERE TAMANO = '700 ml'
GROUP BY ENVASE,
CASE
   WHEN PRECIO_DE_LISTA >= 12 THEN 'Costoso'
   WHEN PRECIO_DE_LISTA >= 5 AND PRECIO_DE_LISTA < 12 THEN 'Asequible'
   ELSE 'Barato'
END
ORDER BY ENVASE;


SELECT NOMBRE,
CASE 
    WHEN YEAR(fecha_de_nacimiento) < 1990 THEN 'Viejos'
    WHEN YEAR(fecha_de_nacimiento) >= 1990 
    AND YEAR(fecha_de_nacimiento) <= 1995 THEN 'Jóvenes' 
    ELSE 'Niños' 
END AS CLASIFICACION_EDAD
FROM tabla_de_clientes;