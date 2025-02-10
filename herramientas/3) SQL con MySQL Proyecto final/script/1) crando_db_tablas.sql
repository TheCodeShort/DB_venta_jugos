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


