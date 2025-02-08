CREATE DEFINER=`root`@`localhost` PROCEDURE `calcula_edad`()
BEGIN
update tabla_de_clientes set edad = TIMESTAMPDIFF(YEAR, FECHA_DE_NACIMIENTO, CURDATE());
END