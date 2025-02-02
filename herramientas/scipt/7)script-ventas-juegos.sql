
use venta_de_juegos;
select * from venta_de_juegos.tb_cliente;


SELECT A.DNI FROM venta_de_juegos.tb_cliente A
INNER JOIN tb_vendedor B
ON A.BARRIO = B.BARRIO;

SET SQL_SAFE_UPDATES = 0;
UPDATE venta_de_juegos.tb_cliente A 
INNER JOIN 
tb_vendedor B
ON A.BARRIO = B.BARRIO
SET A.VOLUMEN_COMPRA = A.VOLUMEN_COMPRA * 1.3;
SET SQL_SAFE_UPDATES = 1;

#Vamos a excluir las facturas (Apenas el encabezado) cuyos clientes tengan menos de 18 años.
SELECT A.DNI FROM venta_de_juegos.tb_cliente A
INNER JOIN tb_vendedor B
ON A.BARRIO = B.BARRIO;

SET SQL_SAFE_UPDATES = 0;
DELETE A 
FROM venta_de_juegos.tb_factura A
INNER JOIN tb_cliente B ON A.DNI = B.DNI
WHERE B.EDAD < 18;
SET SQL_SAFE_UPDATES = 1;