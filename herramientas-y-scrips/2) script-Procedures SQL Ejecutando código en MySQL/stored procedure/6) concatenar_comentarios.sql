CREATE DEFINER=`root`@`localhost` PROCEDURE `concatenar_comentarios`()
BEGIN
/*este es un ejemplo de comentario dentro de un ptocedures*/
-- Asi se comenta un stored procedures
#o asi tambien se puede hacer
select concat("hola a todos", "", "esto concatena strings") as rersultado;
END