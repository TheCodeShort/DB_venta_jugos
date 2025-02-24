CREATE DEFINER=`root`@`localhost` PROCEDURE `concatenar`()
BEGIN	
	select concat("HOLA MUNDO", "", "!!!!") As resultado;

END