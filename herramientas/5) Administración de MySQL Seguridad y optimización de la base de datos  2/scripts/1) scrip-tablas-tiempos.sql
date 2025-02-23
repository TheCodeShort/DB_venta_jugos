-- cost 3.75 este es el costo de la consulta, ayuda identificar errores y tambien a reducir el consumo de la memoria por consulta 
SELECT A.CODIGO_DEL_PRODUCTO FROM tabla_de_productos A;#recordar que esta funcionando con alias para ser mas rapido y claro 

-- cost 60654.92 esta consulta consume mas que la de arriba 
SELECT A.CODIGO_DEL_PRODUCTO, C.CANTIDAD FROM tabla_de_productos A INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO;

-- cost 211939.80
SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) AS ANO,C.CANTIDAD FROM tabla_de_productos A 
INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO 
INNER JOIN facturas B ON C.NUMERO = B.NUMERO;

-- cost 211939.80 se demora un poco mas ya que es una consulta mas organizada consume recursos
SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) AS ANO, SUM(C.CANTIDAD) AS CANTIDAD FROM tabla_de_productos A 
INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO 
INNER JOIN facturas B ON C.NUMERO = B.NUMERO 
GROUP BY A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) 
ORDER BY A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA);


# Los siguientes comandos se ejecutan en mysql desde el símbolo del sistema 

mysql> EXECUTE SELECT A.CODIGO_DEL_PRODUCTO FROM tabla_de_productos A;

mysql> EXECUTE FORMAT=JSON SELECT A.CODIGO_DEL_PRODUCTO FROM tabla_de_productos A \G;

mysql> EXECUTE FORMAT=JSON SELECT A.CODIGO_DEL_PRODUCTO, C.CANTIDAD FROM tabla_de_productos A INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO \G;

mysql> EXECUTE FORMAT=JSON SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) AS ANO,C.CANTIDAD FROM tabla_de_productos A INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO INNER JOIN facturas B ON C.NUMERO = B.NUMERO \G;

mysql> EXECUTE FORMAT=JSON SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) AS ANO, SUM(C.CANTIDAD) AS CANTIDAD FROM tabla_de_productos A INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO INNER JOIN facturas B ON C.NUMERO = B.NUMERO GROUP BY A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) ORDER BY A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) \G;

