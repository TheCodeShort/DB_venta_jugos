CREATE DEFINER=`root`@`localhost` PROCEDURE `suma_dias_facturas`()
BEGIN
DECLARE fecha_inicial DATE;
DECLARE fecha_final DATE;
DECLARE n_facturas INT;
SET fecha_inicial = '20170101';
SET fecha_final = '20170110';
WHILE fecha_inicial <= fecha_final
DO
SELECT COUNT(*) INTO n_facturas  FROM facturas WHERE FECHA_VENTA = fecha_inicial;
SELECT concat(DATE_FORMAT(fecha_inicial, '%d/%m/%Y'), '-' , CAST(n_facturas AS CHAR(50))) AS RESULTADO;
SELECT ADDDATE(fecha_inicial, INTERVAL 1 DAY) INTO fecha_inicial;
END WHILE;
END