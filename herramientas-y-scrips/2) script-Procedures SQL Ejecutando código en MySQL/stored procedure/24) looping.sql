CREATE PROCEDURE `looping`(vinicial INT, vfinal INT)
BEGIN
DECLARE vcontador INT;
DELETE FROM tb_looping;
SET vcontador = vinicial;
WHILE vcontador <= vfinal
DO
INSERT INTO tb_looping VALUES(vcontador);
SET vcontador = vcontador+1;
END WHILE;
SELECT * FROM tb_looping;

END
