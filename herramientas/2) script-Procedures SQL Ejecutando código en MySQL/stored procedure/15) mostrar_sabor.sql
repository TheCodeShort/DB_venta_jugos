CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrar_sabor`(vcodigo varchar (15))
BEGIN
declare vsabor varchar (20);
#con este codigo decimos que vamos a traer la columna SABOR y ese valor lo vamos almacenar en la variable VSABOR que ya esta declarada
select SABOR INTO vsabor from tabla_de_productos where CODIGO_DEL_PRODUCTO = vcodigo;
select vsabor;
END