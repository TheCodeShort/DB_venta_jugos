INSERT INTO tb_producto (CODIGO,DESCRIPCION,SABOR,TAMANO,ENVASE,PRECIO_LISTA)
     VALUES ('1001001','Sabor Alpino','Mango','700 ml','Botella',7.50),
         ('1001000','Sabor Alpino','Melón','700 ml','Botella',7.50),
         ('1001002','Sabor Alpino','Guanábana','700 ml','Botella',7.50),
         ('1001003','Sabor Alpino','Mandarina','700 ml','Botella',7.50),
         ('1001004','Sabor Alpino','Banana','700 ml','Botella',7.50),
         ('1001005','Sabor Alpino','Asaí','700 ml','Botella',7.50),
         ('1001006','Sabor Alpino','Mango','1 Litro','Botella',7.50),
         ('1001007','Sabor Alpino','Melón','1 Litro','Botella',7.50),
         ('1001008','Sabor Alpino','Guanábana','1 Litro','Botella',7.50),
         ('1001009','Sabor Alpino','Mandarina','1 Litro','Botella',7.50),
         ('1001010','Sabor Alpino','Banana','1 Litro','Botella',7.50),
         ('1001011','Sabor Alpino','Asaí','1 Litro','Botella',7.50);


SELECT * FROM tb_producto WHERE DESCRIPCION = 'Sabor Alpino';

delete from tb_producto where CODIGO = "1001000";

SET SQL_SAFE_UPDATES = 0;#desactivar el modo seguro 
delete from tb_producto where TAMANO = "1 Litro";#borra toda la inforacin que este en TAMANO y que tenga la informacion 1Litro.
SET SQL_SAFE_UPDATES = 1;#activar el modo seguro

select CODIGO_DEL_PRODUCTO FROM jugos_ventas.tabla_de_productos;

select CODIGO from tb_producto
where CODIGO not in (select CODIGO_DEL_PRODUCTO FROM jugos_ventas.tabla_de_productos);

SET SQL_SAFE_UPDATES = 0;#desactivar el modo seguro 
delete from tb_producto where CODIGO not in (select CODIGO_DEL_PRODUCTO FROM jugos_ventas.tabla_de_productos);
SET SQL_SAFE_UPDATES = 1;#activar el modo seguro

