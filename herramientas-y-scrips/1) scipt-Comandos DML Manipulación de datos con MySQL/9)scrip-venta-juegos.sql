INSERT INTO `venta_de_juegos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
("256",
"Fernando ruiz",
"oblatos",
0.1,
"2015-06-14",
0);

select * from tb_vendedor;

start transaction; #se inicia una transaccion y todo lo que este debajo de start transaction se ejecutara por ultimo decidimo si lo queremos guardar con commit o no guardarlo con rollback
INSERT INTO `venta_de_juegos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
("259",
"peldar rojas",
"oblatos",
0.1,
"2015-06-14",
0);

INSERT INTO `venta_de_juegos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`DE_VACACIONES`)
VALUES
("258",
"daniel rojas",
"valle",
0.1,
"2015-06-14",
0);

SET SQL_SAFE_UPDATES = 0;
update tb_vendedor set COMISION = COMISION*1.05;
SET SQL_SAFE_UPDATES = 1;

rollback;#no guardar los cambios 
commit;#guardar los cambios echos
