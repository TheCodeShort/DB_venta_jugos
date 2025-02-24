CREATE DEFINER=`root`@`localhost` PROCEDURE `comparacion_ventas`(vfecha1 DATE, vfecha2 DATE)
BEGIN
DECLARE facturacion_inicial FLOAT;
DECLARE facturacion_final FLOAT;
DECLARE variacion float;
DECLARE mensaje VARCHAR(20);
SELECT SUM(B.CANTIDAD * B.PRECIO) INTO facturacion_inicial  FROM 
facturas A INNER JOIN items_facturas B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA_VENTA = vfecha1;
SELECT SUM(B.CANTIDAD * B.PRECIO) INTO facturacion_final  FROM 
facturas A INNER JOIN items_facturas B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA_VENTA = vfecha2;
SET variacion = ((facturacion_final / facturacion_inicial) -1) * 100;
CASE
WHEN variacion > 10 THEN SET mensaje = 'Verde';
WHEN variacion >= -10 AND variacion <= 10 THEN SET mensaje = 'Amarillo';
WHEN varacion < -10 THEN SET mensaje = 'Rojo';
END CASE;
SELECT mensaje;
END