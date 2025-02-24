CREATE DEFINER=`root`@`localhost` PROCEDURE `edad_clientes`(vdni VARCHAR(20))
BEGIN
DECLARE vresultado VARCHAR(50);
DECLARE vfecha DATE;
SELECT FECHA_DE_NACIMIENTO INTO vfecha FROM tabla_de_clientes WHERE DNI = vdni;

IF #mienras fecha sea menor que la fecha
vfecha < '19950101'
THEN #haga esto si la condicion se cumple
SET vresultado = 'Cliente Viejo.';
ELSE # sino que haga esto
SET vresultado = 'Cliente Joven.';
END IF;# fin del codigo
SELECT vresultado;
END