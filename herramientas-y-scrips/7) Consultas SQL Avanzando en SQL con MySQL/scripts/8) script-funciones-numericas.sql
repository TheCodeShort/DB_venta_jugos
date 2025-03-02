
SELECT (34+346-67)/15 * 29 AS RESULTADO;

SELECT CEILING (23.1222);#devuelve el integro  menor que es mayor o igual al numero 

SELECT FLOOR (23.999999);#decuelve un numero entero 

SELECT RAND() AS RESULTADO;#numero random 0 y 1 

SELECT ROUND(254.545,2);#devuvleve un decimal pero con dos decimales y lo aproxima

SELECT ROUND(254.545,1);

SELECT NUMERO, CANTIDAD, PRECIO, 
CANTIDAD * PRECIO AS FACTURACIÓN FROM items_facturas;

SELECT NUMERO, CANTIDAD, PRECIO, 
ROUND(CANTIDAD * PRECIO,2) AS FACTURACIÓN FROM items_facturas;

-- ---------------------------------------------------------------------

SELECT YEAR(FECHA_VENTA), FLOOR(SUM(IMPUESTO * (CANTIDAD * PRECIO))) 
AS RESULTADO
FROM facturas F
INNER JOIN items_facturas IFa ON F.NUMERO = IFa.NUMERO
WHERE YEAR(FECHA_VENTA) = 2016
GROUP BY YEAR(FECHA_VENTA);