SELECT DISTINCT BARRIO FROM tabla_de_clientes;

SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

-- es lo mismo que en el primer codigo  pero muestra la info en una sola tabla con los datos no repetidos
SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION -- recordar que UNION por defecto hace un DISTNCT osea que mostrara la info pero no repetida
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

SELECT DISTINCT BARRIO FROM tabla_de_clientes
UNION ALL -- aca se mostrara la inforaicon repetida
SELECT DISTINCT BARRIO FROM tabla_de_vendedores;

-- tener encuenta que para que los datos se muestren juntos se debe tneer el mismo TIPO de datos los alias no interfieren en esto
SELECT DISTINCT BARRIO, NOMBRE, 'Cliente' AS TIPO_CLIENTE FROM tabla_de_clientes
UNION
SELECT DISTINCT BARRIO, NOMBRE, 'Vendedor' AS TIPO_VENDEDOR  FROM tabla_de_vendedores;

