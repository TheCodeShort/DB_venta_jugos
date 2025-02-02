
select * from venta_de_juegos.tb_vendedor;
select * from jugos_ventas.tabla_de_vendedores;

#para unir las tablas y mostrarlas juntas 
select * from tb_vendedor A 
inner join
jugos_ventas.tabla_de_vendedores B
on A.MATRICULA = substring(B.MATRICULA,3,3); 


update  tb_vendedor A 
inner join
jugos_ventas.tabla_de_vendedores B
#Esta es la condición que determina cómo se relacionan las dos tablas.
on A.MATRICULA = substring(B.MATRICULA,3,3)# SUBSTRING para obtener una parte de la cadena en B.MATRICULA.
set A.DE_VACACIONES = B.VACACIONES;#aca se pone la inforacion que se va a pasar 


UPDATE tb_clientes A 
INNER JOIN 
tb_vendedor B
ON A.BARRIO = B.BARRIO
SET A.VOLUMEN_COMPRA = A.VOLUMEN_COMPRA * 1.3