use venta_de_juegos;
create table tb_facturacion(
FECHA date null,
VENTA_TOTAL float
);



CREATE TABLE `tb_factura1` (
  `NUMERO` varchar(5) NOT NULL,
  `FECHA` date DEFAULT NULL,
  `DNI` varchar(11) NOT NULL,
  `MATRICULA` varchar(5) NOT NULL,
  `IMPUESTO` float DEFAULT NULL,
  PRIMARY KEY (`NUMERO`),
  KEY `FK_CLIENTE1` (`DNI`),
  KEY `FK_VENDEDOR1` (`MATRICULA`),
  CONSTRAINT `FK_CLIENTE1` FOREIGN KEY (`DNI`) REFERENCES `tb_cliente` (`DNI`),
  CONSTRAINT `FK_VENDEDOR1` FOREIGN KEY (`MATRICULA`) REFERENCES `tb_vendedor` (`MATRICULA`)
);


CREATE TABLE `tb_items_facturas1` (
  `NUMERO` varchar(5) NOT NULL,
  `CODIGO` varchar(10) NOT NULL,
  `CANTIDAD` int DEFAULT NULL,
  `PRECIO` float DEFAULT NULL,
  PRIMARY KEY (`NUMERO`,`CODIGO`),
  KEY `FK_PRODUCTO1` (`CODIGO`),
  CONSTRAINT `FK_FACTURA1` FOREIGN KEY (`NUMERO`) REFERENCES `tb_factura` (`NUMERO`),
  CONSTRAINT `FK_PRODUCTO1` FOREIGN KEY (`CODIGO`) REFERENCES `tb_producto` (`CODIGO`)
);

insert into tb_factura1
value("0100","2021-01-01", "1471156710", "235", 0.10);

SET FOREIGN_KEY_CHECKS = 0;
insert into tb_items_facturas1
value("0101","1000889", "100", "25"),
		("0102","1002334", "200", "25"),
        ("0103","1002334", "300", "25");
SET FOREIGN_KEY_CHECKS = 1;

select A.FECHA, SUM(CANTIDAD * PRECIO) as VENTA_TOTAL
from venta_de_juegos.tb_factura1 A
inner join 
tb_items_facturas1 B
on A.NUMERO = B.NUMERO
GROUP BY A.FECHA;


insert into tb_factura1
value("0101","2021-01-01", "1471156710", "235", 0.10);

SET FOREIGN_KEY_CHECKS = 0;
insert into tb_items_facturas1
value("0104","1000889", "100", "25"),
		("0105","1002334", "200", "25"),
        ("0106","1002334", "300", "25");
SET FOREIGN_KEY_CHECKS = 1;

#con este codigo hacemos de manera automatizada la insecion de datos pero que se borre cada vez que se ejecute la insecion 
#cuando encuentre // va a terminar el codigo esto es un delimitador 
DROP TRIGGER IF EXISTS TG_FACTURACION_INSERT;#borra el trigger
delimiter //
create trigger TG_FACTURACION_INSERT
after insert on tb_items_facturas1
for each row begin
	delete from tb_facturacion  WHERE id IS NOT NULL;
	insert into tb_facturacion
	select A.FECHA, SUM(CANTIDAD * PRECIO) as VENTA_TOTAL
	from venta_de_juegos.tb_factura1 A
	inner join 
	tb_items_facturas1 B
	on A.NUMERO = B.NUMERO
	GROUP BY A.FECHA;
#aca se le indica que aca debe terminar
end // 

#insercion
insert into tb_factura1
value("0102","2021-01-01", "1471156710", "235", 0.10);

SET FOREIGN_KEY_CHECKS = 0;
insert IGNORE into tb_items_facturas1
value("0102","1000889", "100", "25"),
		("0102","1002334", "200", "25"),
        ("0102","1002334", "300", "25");
SET FOREIGN_KEY_CHECKS = 1;

insert into tb_factura1
value("0104","2021-01-01", "1471156710", "235", 0.10);

SET FOREIGN_KEY_CHECKS = 0;
insert IGNORE into tb_items_facturas1
value("0104","1000889", "100", "25"),
		("0104","1002334", "200", "25"),
        ("0104","1002334", "300", "25");
SET FOREIGN_KEY_CHECKS = 1;


select * from tb_facturacion;
select * from tb_factura;
select * from tb_factura1;
select *from tb_items_facturas1;
select * from tb_producto;
select * from tb_cliente;
select * from tb_vendedor;


