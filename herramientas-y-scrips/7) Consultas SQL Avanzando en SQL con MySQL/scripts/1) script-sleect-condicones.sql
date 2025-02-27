select * from tabla_de_productos;
SELECT * FROM tabla_de_productos WHERE SABOR='mango' AND TAMANO='470 ml';# en este caso la dos condiciones deben ser verdaderas si no no muestra el resultado 
SELECT * FROM tabla_de_productos WHERE NOT (SABOR='mango') OR TAMANO='470 ml'; # uestra otros sabores pero mango no lo va a mostrar 

SELECT * FROM tabla_de_productos WHERE NOT (SABOR='mango' AND TAMANO='470 ml'); #niega los dos resultados asi q no mostrara los resultados que se mencionan 
SELECT * FROM tabla_de_productos WHERE SABOR IN ('MANGO', 'UVA'); #muestra solo los datos de mango o uva tambien se puede usar con or 

SELECT * FROM tabla_de_clientes WHERE CIUDAD IN ('ciudad de México', 'Guadalajara')
AND (EDAD BETWEEN 20 AND 25);#con esto filtramos mas los datos solo muestra la ciudad y el rango de edad que tienen en esas ciudades 
 
 SELECT * FROM tabla_de_productos WHERE SABOR LIKE '%manzana'; #aca me muestra todos los datos que terminene en manzana o que empiece con alguna letra 
 select * from tabla_de_clientes;
 SELECT * FROM tabla_de_clientes where nombre like "%ez";