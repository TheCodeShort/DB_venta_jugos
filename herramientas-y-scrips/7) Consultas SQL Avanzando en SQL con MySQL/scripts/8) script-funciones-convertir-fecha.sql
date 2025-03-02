SELECT CURRENT_TIMESTAMP() AS RESULTADO;

SELECT CONCAT("La fecha y la hora de hoy son: ", CURRENT_TIMESTAMP()) AS RESULTADO;

SELECT CONCAT("La fecha y el horario son: ",
DATE_FORMAT(CURRENT_TIMESTAMP(),"%W, %d/%m/%Y a las %T" )) AS RESULTADO;#aca se formatea al año que yo quiero 

SELECT CONVERT(23.45, CHAR) AS RESULTADO;#convierte el numeor en un strign aun que lo muestre en numero ya no lo es

SELECT SUBSTRING(CONVERT(23.45, CHAR),3,1) AS RESULTADO;


SELECT CONCAT(
    'El cliente ', TC.NOMBRE, 
    ' facturó ', SUM(IFa.CANTIDAD * IFa.precio), 
    ' en el año ', YEAR(MIN(F.FECHA_VENTA))
) AS FRASE  
FROM facturas F
INNER JOIN items_facturas IFa ON F.NUMERO = IFa.NUMERO
INNER JOIN tabla_de_clientes TC ON F.DNI = TC.DNI
WHERE YEAR(F.FECHA_VENTA) = 2016
GROUP BY TC.NOMBRE, YEAR(F.FECHA_VENTA);
