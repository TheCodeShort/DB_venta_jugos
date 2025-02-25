USE jugos;

# tener encuenta la manera en la que se esta insertando los datos si son varchar o un int esto afecta la tabla adiconal la informacion tambien tiene su orden 
INSERT INTO tb_productos(
producto, nombre, envase, volumen, sabor,
precio) 
#aca podemos ver como se inserta los valores tener encuenta el orden
VALUES ('773912', 'clean', 'botella pet',
'1 litro', 'naranja', 8.01);


INSERT INTO tb_productos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('838819', 'clean', 'botella pet',
'1.5 litros', 'naranja', 12.01);


INSERT INTO tb_productos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('1037797', 'clean', 'botella pet',
'2 litros', 'naranja', 16.01);


INSERT INTO tb_productos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('8128292', 'clean', 'latat',
'350 ml', 'naranja', 2.81);

INSERT INTO tb_productos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('695594', 'Festival de Sabores', 'Botella PET',
'1.5 Litros', 'Asaí', 18.51);

INSERT INTO tb_productos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('1041119', 'Línea Citrus', 'Botella de Vidrio',
'700 ml', 'Lima', 4.90);

#tener encuanta que cuando no hay una primary key no arroja un error de seguridad hay que desactivarlo si es q no enemos la primary key 
#en este caso se escribio algo mal en la base de datos con este codigo SQL lo corregimos
UPDATE tb_productos SET producto = '812829', envase = 'lata'
WHERE volumen = '350 ml';#en esta linea evitamos que actualice toda la tabalas, asi evitamos reescribir todo 

UPDATE tb_productos SET precio = 28.51
WHERE producto = '695594';

UPDATE tb_productos SET sabor = 'Lima/Limón', precio = 4.90
WHERE producto = '1041119';#esta linea se utiliza como filtro para buscar lo qu ese va a cambiar

#de esta manera borramos un registro tener encuenta que el where no ayuda a seleccionar le registro en concreto
DELETE FROM tb_productos WHERE producto = '773912';

INSERT INTO tb_productos(
producto, nombre, envase, volumen, sabor,
precio) VALUES ('773912', 'clean', 'botella pet',
'1 litro', 'naranja', 8.01);

#con esto alteramos la tabla y adicionamos una primary key, evitamos la duplicidad de los datos 
ALTER TABLE tb_productos ADD PRIMARY KEY(PRODUCTO);

select * from tb_productos;


ALTER TABLE tb_clientes ADD PRIMARY KEY (DNI);

ALTER TABLE tb_clientes ADD COLUMN(FECHA_NACIMIENTO DATE);



INSERT INTO tb_clientes(
DNI,
NOMBRE,
DIRECCION1, 
DIRECCION2, 
BARRIO,
CIUDAD,
ESTADO,
CP,
EDAD,
SEXO, 
LIMITE_CREDITO,
VOLUMEN_COMPRA, 
PRIMERA_COMPRA,
FECHA_NACIMIENTO) VALUES(
'456879548', 'Pedro el Escamoso', 'Calle del Sol, 25', '', 'Los Laureles', 'CDMX', 'México', '65784', 55, 'M',
1000000, 2000, 0, '1971-05-25');#tener encuenta el formato del DATE es año, mes, dia

select * from tb_clientes;
----------------------------------------------------------------------------------------------------------

INSERT INTO tb_vendedor(
matricula, nombre, PORCENTAJE_COMISION)
VALUES("00233", "Joan Geraldo de la Fonseca", 0.10);

INSERT INTO tb_vendedor(
matricula, nombre, PORCENTAJE_COMISION)
VALUES("00235", "Márcio Almeida Silva", 0.8);

INSERT INTO tb_vendedor(
matricula, nombre, PORCENTAJE_COMISION)
VALUES("00236", "Cláudia Morais", 0.8);


UPDATE tb_vendedor set PORCENTAJE_COMISION = 0.11
where matricula = "00236";

UPDATE tb_vendedor set nombre = "Joan Geraldo de la Fonseca Junior."
where matricula = "00233";

DELETE FROM tb_vendedor WHERE MATRICULA = '00233';

ALTER TABLE tb_vendedor ADD COLUMN ( FECHA_ADMISION DATE);
ALTER TABLE tb_vendedor ADD COLUMN (DE_VACACIONES BIT);
ALTER TABLE tb_vendedor ADD PRIMARY KEY (MATRICULA);

UPDATE tb_vendedor SET FECHA_ADMISION = "2014-08-15" WHERE MATRICULA = "00235";
UPDATE tb_vendedor SET DE_VACACIONES = 0 WHERE MATRICULA = "00235";

UPDATE tb_vendedor SET FECHA_ADMISION = "2013-09-17" WHERE MATRICULA = "00236";
UPDATE tb_vendedor SET DE_VACACIONES = 1 WHERE MATRICULA = "00236";

INSERT INTO tb_vendedor (
MATRICULA, NOMBRE, PORCENTAJE_COMISION, FECHA_ADMISION, DE_VACACIONES)
VALUES("00237", "Roberta Martins", 0.11, "2017-03-18", 1);


INSERT INTO tb_vendedor (
MATRICULA, NOMBRE, PORCENTAJE_COMISION, FECHA_ADMISION, DE_VACACIONES)
VALUES("00238", "Péricles Alves", 0.11, "2016-08-21", 0);


select * from tb_vendedor;

