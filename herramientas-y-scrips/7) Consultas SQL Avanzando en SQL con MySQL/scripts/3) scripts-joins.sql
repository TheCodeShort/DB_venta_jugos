SELECT * FROM tabla_de_vendedores A
INNER JOIN
facturas B
ON A.MATRICULA = B.MATRICULA;

SELECT A.NOMBRE, B.MATRICULA, COUNT(*) FROM tabla_de_vendedores A
INNER JOIN
facturas B
ON A.MATRICULA = B.MATRICULA
GROUP BY A.NOMBRE, B.MATRICULA;

-- CROS JOIN forma antigua de hacer el INNER JOIN
SELECT A.NOMBRE, B.MATRICULA, COUNT(*) 
FROM tabla_de_vendedores A, facturas B
WHERE A.MATRICULA = B.MATRICULA
GROUP BY A.NOMBRE, B.MATRICULA;

SELECT year(FECHA_VENTA), sum(CANTIDAD * PRECIO) AS FACTURACION -- en esta linea mostramos la fehca y el resultado de la operacion a esta operacion le asignamos un nombre
from facturas F -- especificamos de donde va a tomas los datos
inner join -- aca es donde se va a unir nuestras tablas
items_facturas IFa -- al igual que el from selecionamos las tablas
ON F.NUMERO = IFa.NUMERO -- aca se unen nuestras tablas usando como referencia NUMERO de la tabla facturas y NUMERO de la tabla items_facturas
GROUP BY YEAR (FECHA_VENTA); -- agrupamos por  fechas

-- -----------------------------------------------------------------------------

SELECT DISTINCT A.DNI, A.NOMBRE, B.DNI FROM tabla_de_clientes A 
INNER JOIN
facturas B
ON A.DNI = B.DNI;

-- traer los datos pero solo mantener la tabla izquierda y traer la info de la tabla derecha
SELECT DISTINCT A.DNI, A.NOMBRE, A.CIUDAD, B.DNI FROM tabla_de_clientes A
LEFT JOIN
facturas B
ON A.DNI = B.DNI
WHERE B.DNI IS NULL; -- aca filtra a los clientes que no an comprado 


-- -------------------------------------------------------------------------------------
# Tener encuenta que para poder hacer un FULL JOIN se nece sita de LEFT Y RIGH JOIN
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE
FROM tabla_de_clientes
LEFT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, tabla_de_vendedores.VACACIONES
FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
FULL JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;


# CROSS JOIN
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes, tabla_de_vendedores;

-- resolviendo problemas del FULL JOIN es simulando un FULL JOIN con un distinct 

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
LEFT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO
UNION
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO,
tabla_de_vendedores.NOMBRE, VACACIONES
FROM tabla_de_clientes
RIGHT JOIN
tabla_de_vendedores
ON tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;