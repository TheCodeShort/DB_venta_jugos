use empresa; # selecionamos la base de datos que se va a usar, aca se creo la base de datos con el asistente 
select database();#aca se puede verifiacar que base de datos se esta utilizando

CREATE TABLE clientes (# aca se crea la tabla y lo que sigue son las columnas 
DNI VARCHAR(11) NOT NULL, #al ser primary key toca especificar que es NOT NULL, el dato siempre tiene que estar 
NOMBRE VARCHAR(100) NULL,#aca especifica que no el dato puede ser null osea q puede quedar sin datos en la DB
DIRECCION VARCHAR(150),
BARRIO VARCHAR(50),
CIUDAD VARCHAR(50),
ESTADO VARCHAR(10),
CP VARCHAR(10),#hasta aca todos son caracteres
FECHA_NACIMIENTO DATE,#este es un tipo de dato DATE que es para fechas
EDAD SMALLINT,#tipo de dato numérico entero, para almacenar números enteros que no son excesivamente grandes
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
VOLUMEN_COMPRA FLOAT,#el datos es un decimal 
PRIMERA_COMPRA BIT,#aca el tipo de dato es un boleano eso es por el BIT 
PRIMARY KEY (DNI)#aca especificamos cual es uestra primari key este datos no se repite
);

#LA TABLA DE VENDEDORES SE CREO POR EL ASISTENTE.

CREATE TABLE productos (
CODIGO VARCHAR(10) NOT NULL,#al ser primary key toca especificar que es NOT NULL, el dato siempre tiene que estar 
DESCRIPCION VARCHAR(100),
SABOR VARCHAR(50),
TAMANO VARCHAR(50),
ENVASE VARCHAR(50),
PRECIO FLOAT,
PRIMARY KEY (CODIGO)#aca especificamos cual es uestra primari key este datos no se repite
);


CREATE TABLE facturas(#tambien puede llamarce como venta
NUMERO VARCHAR(5) NOT NULL, #al ser primary key toca especificar que es NOT NULL, el dato siempre tiene que estar 
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
NUMERO VARCHAR(5) NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
CANTIDAD INT,
PRECIO FLOAT,
PRIMARY KEY (NUMERO, CODIGO),#aca especificamos cual es uestra primari key este datos no se repite estos datos vienen de otra tabla 
FOREIGN KEY (NUMERO) REFERENCES facturas(NUMERO),
FOREIGN KEY (CODIGO) REFERENCES productos(CODIGO) # es un campo en una tabla que se usa para establecer una relación con la clave primaria de otra tabla
);


/*('3623344710', 'Marcos Rosas', 'Av. Universidad', 'Del Valle', 
'Ciudad de México', 'EM', '22002012', '1995-01-13', 26, 'M', 
110000, 220000, 1); */

# esta es la sintaxis correcta para insertar valores 
#tambien se puede insertar con el asistente 
INSERT INTO clientes VALUES('3623344710', 'Marcos Rosas', 'Av. Universidad',
'Del Valle', 'Ciudad de México', 'EM', '22002012', '1995-01-13', 26, 'M',
110000, 220000, 1);

#tambien podemos poner datos de esta manera
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('2600586709', 'Raúl Meneses', 'Estudiantes 89', 'Centro', 'Ciudad de México', 'EM', '22002012', '1999-08-13', 21, 'M', 120000, 210000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('19290992743', 'Rodrigo Villa', 'Libertadores 65', 'Héroes', 'Ciudad de México', 'EM', '21002020', '1998-05-30', 22, 'M', 120000, 220000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('9283760794', 'Edson Calisaya', 'Sta Úrsula Xitla', 'Barrio del Niño Jesús', 'Ciudad de México', 'EM', '22002002', '1995-01-07', 25, 'M', 150000, 250000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('7771579779', 'Marcelo Perez', 'F.C. de Cuernavaca 13', 'Carola', 'Ciudad de México', 'EM', '88202912', '1992-01-25', 29, 'M', 120000, 200000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5576228758', 'Patricia Olivera', 'Pachuca 75', 'Condesa', 'Ciudad de México', 'EM', '88192029', '1995-01-14', 25, 'F', 70000, 160000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('8502682733', 'Luis Silva', 'Prol. 16 de Septiembre 1156', 'Contadero', 'Ciudad de México', 'EM', '82122020', '1995-01-07', 25, 'M', 110000, 190000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('1471156710', 'Erica Carvajo', 'Heriberto Frías 1107', 'Del Valle', 'Ciudad de México', 'EM', '80012212', '1990-01-01', 30, 'F', 170000, 245000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('50534475787', 'Abel Pintos', 'Carr. México-Toluca 1499', 'Cuajimalpa', 'Ciudad de México', 'EM', '22000212', '1995-01-11', 25, 'M', 170000, 260000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5840119709', 'Gabriel Roca', 'Eje Central Lázaro Cárdenas 911', 'Del Valle', 'Ciudad de México', 'EM', '80010221', '1985-01-16', 36, 'M', 140000, 210000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('8719655770', 'Carlos Santivañez', 'Calz. del Hueso 363', 'Floresta Coyoacán', 'Ciudad de México', 'EM', '81192002', '1983-01-20', 37, 'M', 200000, 240000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('5648641702', 'Paolo Mendez', 'Martires de Tacubaya 65', 'Héroes de Padierna', 'Ciudad de México', 'EM', '21002020', '1991-01-30', 29, 'M', 120000, 220000, 0);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('492472718', 'Jorge Castro', 'Federal México-Toluca 5690', 'Locaxco', 'Ciudad de México', 'EM', '22012002', '1994-01-19', 26, 'M', 75000, 95000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('9275760794', 'Alberto Rodriguez', 'Circunvalación Oblatos 690', 'Oblatos', 'Guadalajara', 'JC', '44700000', '1991-12-28', 26, 'M', 75000, 95000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('94387575700', 'María Jimenez', 'Av. Libertadores 457', 'Barragán Hernández', 'Guadalajara', 'JC', '44469000', '1995-05-13', 26, 'F', 120000, 300000, 1);
INSERT INTO CLIENTES (DNI, NOMBRE, DIRECCION, BARRIO, CIUDAD, ESTADO, CP, FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_CREDITO, VOLUMEN_COMPRA, PRIMERA_COMPRA) VALUES ('95939180787', 'Ximena Gómez', 'Jaguares 822', 'Alcalde Barranquitas', 'Guadalajara', 'JC',	'44270000', '1992-01-05', 16, 'F', 90000, 18000, 0);

#O SI YA EXISTE EL SCRIPT SOLO ES ABRIR EL ARCHIVO EN MySQL Y DESPUES EJECUTARLO

select * from clientes;
