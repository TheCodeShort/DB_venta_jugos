#en administration  y despues en user and priviliges podemos ver todos los ususario y en add account podemos agregar un susuario y darle permisos o quitarcelos 
# estos son los privilegios que se le dan al usuario gneral mente "SELECT, INSERT, UPDATE, DELETE, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE"
#aca podemos crear un usuario mediante sql 
CREATE USER 'admin02'@'localhost' IDENTIFIED BY 'admin02'; #para crear un usuario 

GRANT ALL PRIVILEGES ON *.* TO 'admin02'@'localhost' WITH GRANT OPTION; #para darle todos los permisos


#aca podemos crear un usuario mediante sql 
CREATE USER 'user02'@'localhost' IDENTIFIED BY 'user02'; #crear un usuario 

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE ON *.* TO 'user02'@'localhost'; #aca le damos ciertos permisos 


CREATE USER 'read01'@'localhost' IDENTIFIED BY 'read01'; #aca se crea un usuario  y su contraseña como las demas 

#execute, si tiene unos insert o delete puede llegar a modificar las inforacon puede que el usuario alla echo un stored procedure
GRANT SELECT, EXECUTE ON *.* TO 'read01'@'localhost'; #con esto decimos que el ususario solo puede leer las tablas y ejecutar stored procedure 

CREATE USER 'back01'@'localhost' IDENTIFIED BY 'back01';

GRANT SELECT, RELOAD, LOCK TABLES, REPLICATION CLIENT ON *.* TO 'back01'@'localhost';