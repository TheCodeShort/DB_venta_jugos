CREATE DEFINER=`root`@`localhost` FUNCTION `f_numero_facturas`( fecha date) RETURNS int
BEGIN
DECLARE n_facturas INT;
SELECT COUNT(*) INTO n_facturas FROM facturas WHERE FECHA_VENTA = fecha;
RETURN n_facturas;
END