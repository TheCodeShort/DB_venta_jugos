CREATE DEFINER=`root`@`localhost` FUNCTION `f_cliente_aleatorio`() RETURNS varchar(11) CHARSET utf8mb4
BEGIN
DECLARE vresultado VARCHAR(11);
DECLARE vmax INT;
DECLARE valeatorio INT;
SELECT COUNT(*) INTO vmax FROM clientes;
SET valeatorio = f_aleatorio(1,vmax);#aca usamos nuestra funcion ya creada que genera un numero aleatorio
SET valeatorio = valeatorio-1;#para que no se pase del numero de cantidad de datos
SELECT DNI INTO vresultado FROM clientes LIMIT valeatorio,1;# aca mostramos el dato corespondiente
RETURN vresultado;
END