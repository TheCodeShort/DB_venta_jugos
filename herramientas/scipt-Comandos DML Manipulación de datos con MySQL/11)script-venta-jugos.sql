create table tb_default(
ID INT auto_increment,
DESCRIPCION varchar(50) not null,
CIUDAD varchar (50) default "Monterry",#el default me pone monterry ya que si al insertar una inforamcion y no se especifica el valor
FECHA_CREACION timestamp default current_timestamp(),#este valr no ayudaa mantener un registro de la fecha en la que se creo el archivo lo hace con la fecha del computador o servidor donde se este ejecutando
primary key (ID));

insert into tb_default
(DESCRIPCION, CIUDAD, FECHA_CREACION)
VALUES ("cliente x ", "CANCUN", "2021-01-01");


insert into tb_default
(DESCRIPCION)
VALUES ("cliente y ");

SELECT * FROM tb_default;