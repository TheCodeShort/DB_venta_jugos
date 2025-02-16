
UPDATE tb_items_facturas1 SET CANTIDAD = 600
WHERE NUMERO = '0101' AND CODIGO = '1000889';

DELETE FROM tb_items_facturas1
WHERE NUMERO = '0104' AND CODIGO = '1000889';

DELIMITER //
CREATE TRIGGER TG_FACTURACION_DELETE
AFTER DELETE ON tb_items_facturas1
FOR EACH ROW BEGIN
  DELETE FROM tb_facturacion;
  INSERT INTO tb_facturacion
  SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
  FROM tb_factura1 A
  INNER JOIN
  tb_items_facturas1 B
  ON A.NUMERO = B.NUMERO
  GROUP BY A.FECHA;
END //

DELIMITER //
CREATE TRIGGER TG_FACTURACION_UPDATE
AFTER UPDATE ON tb_items_facturas1
FOR EACH ROW BEGIN
  DELETE FROM tb_facturacion;
  INSERT INTO tb_facturacion
  SELECT A.FECHA, SUM(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
  FROM tb_factura1 A
  INNER JOIN
  tb_items_facturas1 B
  ON A.NUMERO = B.NUMERO
  GROUP BY A.FECHA;
END //


UPDATE tb_items_facturas1 SET CANTIDAD = 800
WHERE NUMERO = '0101' AND CODIGO = '1002767';

DELETE FROM tb_items_facturas1
WHERE NUMERO = '0104' AND CODIGO = '1013793';


select * from tb_facturacion;
select * from tb_factura1;
select * from tb_items_facturas1