CREATE PROCEDURE `precio_producto` ()
BEGIN
DECLARE vresultado VARCHAR(40);
DECLARE vprecio FLOAT;
SELECT PRECIO_DE_LISTA INTO vprecio FROM tabla_de_productos 
WHERE CODIGO_DEL_PRODUCTO = vcodigo;
IF vprecio >=12 
THEN SET vresultado = 'Producto costoso.';
ELSEIF
vprecio >= 7 AND vprecio < 12
THEN SET vresultado = 'Producto asequible.';
ELSE
SET vresultado = 'Producto barato.';
END IF;
SELECT vresultado;


END
