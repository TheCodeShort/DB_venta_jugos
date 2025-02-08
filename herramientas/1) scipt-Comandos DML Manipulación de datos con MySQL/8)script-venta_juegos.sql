use venta_de_juegos;
CREATE TABLE `tb_producto2` (
  `CODIGO` varchar(50) NOT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  `SABOR` varchar(50) DEFAULT NULL,
  `TAMANO` varchar(50) DEFAULT NULL,
  `ENVASE` varchar(50) DEFAULT NULL,
  `PRECIO_LISTA` float DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ;

select * from tb_producto2;

insert into tb_producto2
select* from tb_producto;

SET SQL_SAFE_UPDATES = 0;
update tb_producto2 set PRECIO_LISTA = PRECIO_LISTA * 1.15;#hacer un update a toda la tablas pero en solo dato que es PRECIO_LISTA.
SET SQL_SAFE_UPDATES = 1;

delete from tb_producto2;#borra todo hay que tener cuidad 