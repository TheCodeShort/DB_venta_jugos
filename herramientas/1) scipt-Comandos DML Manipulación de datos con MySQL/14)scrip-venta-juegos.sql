#actualiza la edad de los clientes cada vez que se actualice
SELECT DNI, EDAD, FECHA_NACIMIENTO, timestampdiff(YEAR, FECHA_NACIMIENTO, NOW()) AS ANOS FROM tb_cliente;


DELIMITER //
CREATE TRIGGER TG_EDAD_CLIENTES_INSERT 
BEFORE INSERT ON tb_cliente
FOR EACH ROW BEGIN
SET NEW.EDAD = timestampdiff(YEAR, NEW.FECHA_NACIMIENTO, NOW());
END//