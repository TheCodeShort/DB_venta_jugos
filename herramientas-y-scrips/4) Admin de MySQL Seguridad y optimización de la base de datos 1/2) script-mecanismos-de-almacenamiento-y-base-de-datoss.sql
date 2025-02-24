CREATE TABLE df_table (ID INT, NOMBRE VARCHAR(100));

ALTER TABLE df_table ENGINE = MyISAM; #aca cambiamos el tipo de almacenamiento 

CREATE TABLE df_table1 (ID INT, NOMBRE VARCHAR(100)) ENGINE = MEMORY; #otra manera de cambiar el tipo de almacenamiento 

#CON EL ASISTENTE PARA CREAR TABLAS TAMBIEN PODEMOS HACER EL CAMBIO DE EL MECANISMO DE LA MEMORIA

SHOW ENGINES; #ACA PODEMOS MIRAR LOS DISTINTOS MECANISMOS DE ALMACENAMIENTO

CREATE DATABASE base; 
#con el asistente podemos crear la base de datos, cahrset espesificamos los caracteres con los que queremos trabajar


#variable de ambiente que determina la localizacion para la ejecucion de la DB 
SHOW VARIABLES WHERE Variable_Name LIKE '%dir'; # para saber donde se encuentra nuestra base de datos recordar que es una carpeta oculta
#con el archivo my podemos cambiar la ruta recordar guardar despues de cambiar la ruta y detener la DB 
#recordar que para guardar cual quier cambio el archivo my debe tener permiso del ususaio 
#en el archivo damos click derecho, en propiedades seqquiridad, selecciona el usuario y en opciones avansadas le damos los permisos

CREATE DATABASE base3;

DROP DATABASE base;