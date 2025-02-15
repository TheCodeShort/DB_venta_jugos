SELECT COUNT(*) FROM clientes;#me cuenta la cantida de lo que uno le dice ose aca hay 16 clientes nada mas

SELECT * FROM clientes;

SELECT * FROM clientes LIMIT 5;#aca solo me muestra los primero 5 priemros clientes 
#el limite tambien es, que me muestre el datos despues del 5 dato, el sigiente numero que me mueste la cantidad de datos apartir del 5 numero 
SELECT * FROM clientes LIMIT 5,1;#aca muestra, apartir del registro 5 que muestre el que sigue ose  el 6

SELECT * FROM clientes LIMIT 15,1;#apartir del dato 15 que me muestre el que sigue osea el 16

SELECT * FROM clientes LIMIT 16,1;#aca me muestra todo nulo ya que el dato 17 no esta 

SELECT * FROM clientes LIMIT 0,1;

SELECT * FROM clientes LIMIT 1,1;

SELECT f_cliente_aleatorio() AS CLIENTE;
SELECT f_vendedor_aleatorio() AS VENDEDOR;