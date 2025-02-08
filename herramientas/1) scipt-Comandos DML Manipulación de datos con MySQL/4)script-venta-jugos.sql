use venta_de_juegos;

select * from jugos_ventas.tabla_de_clientes;

select DNI, NOMBRE,DIRECCION_1 as DIRECCION,
BARRIO, CIUDAD, ESTADO, CP, FECHA_DE_NACIMIENTO as FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_DE_CREDITO as LIMITE_CREDITO,
VOLUMEN_DE_COMPRA as VOLUMEN_DE_COMPRA, PRIMERA_COMPRA
from jugos_ventas.tabla_de_clientes
where DNI not in (select DNI from tb_cliente);

insert into tb_cliente
select DNI, NOMBRE,DIRECCION_1 as DIRECCION,
BARRIO, CIUDAD, ESTADO, CP, FECHA_DE_NACIMIENTO as FECHA_NACIMIENTO, EDAD, SEXO, LIMITE_DE_CREDITO as LIMITE_CREDITO,
VOLUMEN_DE_COMPRA as VOLUMEN_DE_COMPRA, PRIMERA_COMPRA
from jugos_ventas.tabla_de_clientes
where DNI not in (select DNI from tb_cliente);

UPDATE tb_cliente SET 
DIRECCION = 'Jorge Emilio 23',
BARRIO = 'San Antonio',
CIUDAD = 'Guadalajara',
ESTADO = 'JC',
CP = '44700000'
WHERE DNI = '5840119709';


select * from tb_cliente;
select * from jugos_ventas.tabla_de_clientes;