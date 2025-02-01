use venta_de_juegos;

create table tb_vendedor(
MATRICULA varchar(5) not null,
NOMBRE varchar(100) null,
BARRIO varchar(50) null,
COMISION float null,
FECHA_ADMISION date null,
DE_VACACIONES bit(1) null,
PRIMARY KEY (MATRICULA)
);

create table tb_producto(
CODIGO varchar (50) not null,
DESCRIPCION varchar (100) null,
SABOR varchar(50) null,
TAMANO varchar(50) null,
ENVASE varchar(50) null,
PRECIO_LISTA float null,
PRIMARY KEY (CODIGO)
);

create table tb_cliente(
DNI varchar (11) not null,
NOMBRE varchar (100) default null,
DIRECCION varchar(150) default null,
BARRIO varchar(50) default null,
CIUDAD varchar(50) default null,
ESTADO varchar (45) default null,
CP varchar (8) default null,
FECHA_NACIMIENTO date default null,
EDAD int(2) default null, #esto es un comentario 
SEXO varchar(1) default null,
LIMITE_CREDITO float default null,
VOLUMEN_COMPRA float default null,
PRIMERA_COMPRA bit(1) null,
PRIMARY KEY (DNI)
);

#ya con la tabla vreada podemos crear la clave externa osea la relacion entretablas
ALTER TABLE tb_venta ADD CONSTRAINT FK_CLIENTE FOREIGN KEY (DNI) REFERENCES tb_cliente(DNI);
ALTER TABLE tb_venta ADD CONSTRAINT FK_VENDEDOR FOREIGN KEY (MATRICULA) REFERENCES tb_vendedor(MATRICULA);

create table items_facturas(
NUMERO varchar(5) not null,
CODIGO varchar(10) not null,
CANTIDAD int,
PRECIO float,
PRIMARY KEY (NUMERO, CODIGO)
);

ALTER TABLE tb_items_facturas ADD CONSTRAINT FK_FACTURA FOREIGN KEY (NUMERO) REFERENCES tb_factura(NUMERO); 
ALTER TABLE tb_items_facturas ADD CONSTRAINT FK_PRODUCTO FOREIGN KEY (CODIGO) REFERENCES tb_producto(CODIGO); 

