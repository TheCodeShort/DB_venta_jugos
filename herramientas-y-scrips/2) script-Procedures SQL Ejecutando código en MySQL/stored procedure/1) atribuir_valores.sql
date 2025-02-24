CREATE DEFINER=`root`@`localhost` PROCEDURE `atribuir_valores`()
BEGIN
declare numero integer default 987;
select numero;
set numero = 354;
select numero;
END