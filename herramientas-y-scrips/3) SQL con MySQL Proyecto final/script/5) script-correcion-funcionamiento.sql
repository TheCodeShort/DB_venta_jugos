CREATE TABLE facturas(#tambien puede llamarce como venta
NUMERO int NOT NULL, #al ser primary key toca especificar que es NOT NULL, el dato siempre tiene que estar 
FECHA DATE,
DNI VARCHAR(11) NOT NULL,#este pertenece a otra tabla por eso no puede ser nulo osea que es un foreign key
MATRICULA VARCHAR(5) NOT NULL,
IMPUESTO FLOAT,
PRIMARY KEY (NUMERO),#aca especificamos cual es uestra primari key este datos no se repite
FOREIGN KEY (DNI) REFERENCES clientes(DNI),#esta es una clave extrangera (foreign key) eso me une una tabla con contra y al igual que el primary key no puede ser NULL pero eso ya esta especificado
FOREIGN KEY (MATRICULA) REFERENCES vendedores(MATRICULA) # es un campo en una tabla que se usa para establecer una relación con la clave primaria de otra tabla
);

DROP TABLE items;# para borrar alguna tabla 
CREATE TABLE items(
NUMERO int NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
CANTIDAD INT,
PRECIO FLOAT,
PRIMARY KEY (NUMERO, CODIGO),#aca especificamos cual es uestra primari key este datos no se repite estos datos vienen de otra tabla 
FOREIGN KEY (NUMERO) REFERENCES facturas(NUMERO),
FOREIGN KEY (CODIGO) REFERENCES productos(CODIGO) # es un campo en una tabla que se usa para establecer una relación con la clave primaria de otra tabla
);

INSERT INTO items
SELECT NUMERO, CODIGO_DEL_PRODUCTO AS CODIGO, CANTIDAD, PRECIO
FROM jugos_ventas.items_facturas;

INSERT INTO facturas
SELECT NUMERO, FECHA_VENTA AS FECHA, DNI, MATRICULA, IMPUESTO
FROM jugos_ventas.facturas;

select max(NUMERO) FROM facturas;
CALL sp_venta('20210619', 3, 100);# en este script toco modificar el tipo de dato en nuestras tablas (primary key) 
#todo esto es por que no funciona bien la funcion sp_ventas 
