CREATE DEFINER=`root`@`localhost` PROCEDURE `exibir_variable`()
BEGIN
declare texto char(30) default "hola mundo";
select texto;
END