-- EJEMPLO
-- MIN = 20 Y MAX= 250
-- (RAND() * (MAX-MIN+1))+MIN  el numero aleatorio lo multiplicamos por (numMAX menos numMIN)mas uno) y al funal se suma el numMIN

#RAND me genera numeros aleatorios y trabaja entre numero 0 y 1
SELECT (RAND() * (250-20+1))+20 AS ALEATORIO; #ACA ARROJA EL NUMERO EN DECIMAL 

SELECT FLOOR((RAND() * (250-20+1))+20) AS ALEATORIO;#CON FLOOR ME REDONDEA EL NUMERO DECIMAL

SET GLOBAL log_bin_trust_function_creators = 1;#PARA crear funciones por defecto lo trae en 0 y no nos deja crear funciones

SELECT f_aleatorio(1,10) AS RESULTADO;


