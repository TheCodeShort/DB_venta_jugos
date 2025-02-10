CREATE DEFINER=`root`@`localhost` FUNCTION `f_define_sabor`(vsabor varchar(50)) RETURNS varchar(40) CHARSET utf8mb4
BEGIN
declare vretorno varchar(50) default "";

CASE vsabor
WHEN 'Maracuyá' THEN SET vretorno = 'Muy Rico';
WHEN 'Limón' THEN SET  vretorno = 'Muy Rico';
WHEN 'Frutilla' THEN SET vretorno =  'Muy Rico';
WHEN 'Uva' THEN SET  vretorno = 'Muy Rico';
WHEN 'Sandía' THEN SET vretorno = 'Normal';
WHEN 'Mango' THEN SET vretorno = 'Normal';
ELSE SET vretorno =  'Jugos comunes';
END CASE;
RETURN vretorno;
END