create table tb_identificacion(
ID int auto_increment not null,
DESCRIPCION varchar(50) null,
primary key (ID)
);

select * from tb_identificacion;

insert into tb_identificacion(DESCRIPCION)
values ("cliente A");
insert into tb_identificacion(DESCRIPCION)
values ("cliente b");
insert into tb_identificacion(DESCRIPCION)
values ("cliente c");
insert into tb_identificacion(DESCRIPCION)
values ("cliente d");

delete from tb_identificacion where ID = 6;

insert into tb_identificacion(DESCRIPCION)
values ("cliente F");

insert into tb_identificacion(DESCRIPCION)
values ("cliente G");


insert into tb_identificacion(ID, DESCRIPCION) #forzamos el valor del ID 
values ("100","cliente F");


insert into tb_identificacion(ID, DESCRIPCION) #forzamos el valor del ID 
values (NULL,"cliente F");#apesar de que es null el auto increment se encarga de segir la secuancia en este caso seria el ID = 101



