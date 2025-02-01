use venta_de_juegos;
select * from jugos_ventas.tabla_de_productos;

select CODIGO_DEL_PRODUCTO as CODIGO, NOMBRE_DEL_PRODUCTO as DESCRIPCION,
SABOR, TAMANO, ENVASE, PRECIO_DE_LISTA as PRECIO_LISTA
from jugos_ventas.tabla_de_productos
where CODIGO_DEL_PRODUCTO not in (select CODIGO from tb_producto);

insert into tb_producto 
select CODIGO_DEL_PRODUCTO as CODIGO, NOMBRE_DEL_PRODUCTO as DESCRIPCION,
SABOR, TAMANO, ENVASE, PRECIO_DE_LISTA as PRECIO_LISTA
from jugos_ventas.tabla_de_productos
where CODIGO_DEL_PRODUCTO not in (select CODIGO from tb_producto);

select * from tb_producto;
