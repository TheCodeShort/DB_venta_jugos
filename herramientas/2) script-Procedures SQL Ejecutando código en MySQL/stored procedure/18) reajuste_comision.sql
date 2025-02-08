CREATE DEFINER=`root`@`localhost` PROCEDURE `reajuste_comision`( vporcentaje FLOAT)
BEGIN
UPDATE tabla_de_vendedores SET PORCENTAJE_COMISION =  PORCENTAJE_COMISION * (1 + vporcentaje);
END