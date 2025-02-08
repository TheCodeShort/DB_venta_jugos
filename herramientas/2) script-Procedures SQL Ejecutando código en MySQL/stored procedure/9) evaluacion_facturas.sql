CREATE DEFINER=`root`@`localhost` PROCEDURE `evaluacion_facturas`(in vfecha date)
BEGIN
DECLARE mensaje VARCHAR(50);
DECLARE N_FACTURAS INTEGER;
SELECT COUNT(*) INTO N_FACTURAS FROM facturas WHERE
FECHA_VENTA = vfecha;
IF N_FACTURAS > 70
THEN SET mensaje = 'Muchas facturas' ;
ELSE SET mensaje = 'Pocas facturas' ;
END IF;
SELECT mensaje AS  mensaje_error;
END