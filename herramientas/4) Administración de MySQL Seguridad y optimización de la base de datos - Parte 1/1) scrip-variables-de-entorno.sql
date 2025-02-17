show status; #para mirar las vaiables de entorno 

#no olvidar que esto se tiene que hacer con el servidor activo sino no se guardaran 
SHOW GLOBAL STATUS LIKE 'Created_tmp_disk_tables'; # muestra las tablas creadas en DISCO 

SHOW GLOBAL STATUS LIKE 'Created_tmp_tables'; # muestra las tablas ya creadas 

SHOW GLOBAL VARIABLES LIKE 'tmp_table_size'; #muestra las variables locales un ejemplo la que esta en entre comillas pero hay otras

SET GLOBAL tmp_table_size = 136700160; #aumenta el tamaño de memoria para las tablas temporales de la varible 
