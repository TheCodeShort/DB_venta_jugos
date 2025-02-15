CREATE PROCEDURE `sp_venta`(fecha DATE, maxitems INT, maxcantidad INT)#parametros 
BEGIN
#variables declaradas
DECLARE vcliente VARCHAR(11);
DECLARE vproducto VARCHAR(10);
DECLARE vvendedor VARCHAR(5);
DECLARE vcantidad INT;
DECLARE vprecio FLOAT;
DECLARE vitens INT;
DECLARE vnfactura INT;
DECLARE vcontador INT DEFAULT 1;
DECLARE vnumitems INT;

#selecciona el numero maximo de la columan NUMERO y se le suma 1 esto se le asigna vnfacturas
SELECT MAX(NUMERO) + 1 INTO vnfactura FROM facturas;

#aca sele asigna el valor a vlcientes y vvendedor las fuciones ya creada
SET vcliente = f_cliente_aleatorio();
SET vvendedor = f_vendedor_aleatorio();

#se inserta los nuevos valores a facturas, tener encuenta el orden de los valores
INSERT INTO facturas (NUMERO, FECHA, DNI, MATRICULA, IMPUESTO) VALUES (vnfactura, fecha, vcliente, vvendedor, 0.16);

#se le asigna a vitems la funcion ya creada
SET vitens = f_aleatorio(1,  maxitems);


WHILE vcontador <= vitens
DO
SET vproducto = f_producto_aleatorio();
SELECT COUNT(*) INTO vnumitems FROM items
WHERE CODIGO = vproducto AND NUMERO = vnfactura;
IF vnumitems = 0 THEN
  SET vcantidad = f_aleatorio(1, maxcantidad);
  SELECT PRECIO INTO vprecio FROM productos WHERE CODIGO = vproducto;
  INSERT INTO items(NUMERO, CODIGO, CANTIDAD, PRECIO) VALUES(vnfactura, vproducto, vcantidad, vprecio);
END IF;
SET vcontador = vcontador+1;
END WHILE;

END
