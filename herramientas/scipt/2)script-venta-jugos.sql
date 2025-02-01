use venta_de_juegos;
ALTER TABLE tb_venta RENAME tb_factura;
ALTER TABLE tb_factura MODIFY COLUMN NUMERO VARCHAR (5);
ALTER TABLE items_facturas RENAME tb_items_facturas;

insert into tb_producto (CODIGO, DESCRIPCION, SABOR, TAMANO, ENVASE, PRECIO_LISTA) 
values("1040107", "Light", "Sandia", "350ml", "Lata", 4.56);

insert into tb_producto (CODIGO, DESCRIPCION, SABOR, TAMANO, ENVASE, PRECIO_LISTA) 
values("1040108", "Guanabana", "Light", "350ml", "Lata", 4.00);

insert into tb_producto 
values("1040109", "Light", "asai", "350ml", "Lata", 5.60),
		("1040110", "Light", "pera", "350ml", "Lata", 6.00),
        ("1040111", "Light", "kasia", "350ml", "Lata", 7.55);

select * from tb_producto;

INSERT INTO tb_cliente (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) 
VALUES ('9283760794', 'Edson Calisaya', 'Sta Úrsula Xitla', 'Barrio del Niño Jesús', 'Ciudad de México', 'EM', '22002002', '1995-01-07', 25, 'M', 150000, 250000, 1);

INSERT INTO tb_cliente
values ('7771579779', 'Marcelo Perez', 'F.C. de Cuernavaca 13', 'Carola', 'Ciudad de México', 'EM', '88202912', '1992-01-25', 29, 'M', 120000, 200000, 1),
        ('5576228758', 'Patricia Olivera', 'Pachuca 75',  'Condesa', 'Ciudad de México', 'EM', '88192029', '1995-01-14', 25, 'F', 70000, 160000, 1);

select * from tb_cliente;
                 