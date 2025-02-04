use venta_de_juegos;
select * from tb_producto;
update tb_producto set PRECIO_LISTA = 5 where CODIGO = "1000889";

update tb_producto set DESCRIPCION = "sabor de la montaña",
TAMANO = "1 litro", ENVASE = "Botella PET" where 
CODIGO = "1000889";

select* from tb_cliente;

update tb_cliente set VOLUMEN_COMPRA = VOLUMEN_COMPRA/10  WHERE VOLUMEN_COMPRA > 0 LIMIT 1000;

update tb_cliente set DIRECCION = "Jorge Emilio 23", 
						BARRIO = "San Antonio", 
						CIUDAD = "Guadalajara",
						ESTADO = "Estado de jalisco", 
						CP = "44700000" 
where DNI = "5840119709";

