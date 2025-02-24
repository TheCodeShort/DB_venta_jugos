CREATE DEFINER=`root`@`localhost` PROCEDURE `concatenar2`()
BEGIN
select concat("hola ", "¿como estas?") as resultado;
END