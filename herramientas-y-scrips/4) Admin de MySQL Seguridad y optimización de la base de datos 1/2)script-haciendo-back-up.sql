# con comandos tambien se puede hacer una copia de seguridad

LOCK INSTANCE FOR BACKUP;#al ejecutar esta linea ya no se puede hacer nada 
#nos vamos a administration, DATA EXPORT , elegimos los que queremos guardar, selecionamos export to self y verificamos la ruta donde se va a guardar y por ultimo le damos start Export
UNLOCK INSTANCE;#con esto podemos segir trabajando
#asi hacemos un back up con MySQL la otra forma es con el codigo en el simbolo del sistema
#tambien lo podemos automatizar creando un archivo .bat(batch)

#tambien podemos crear una carpeta y en sesa carpeta podemos pasar de la carpeta Data y my pero no es muy eficiente por la cantidad de datos y puede que se corrompa un archivo 
 
 #SI QUEREMOS TRAER TODA LA INFORACION DE NUESTRO BACK UP USAMOS LOS CODIGO DEL SIMBOLO DEL SISTEMA RECORDAR QUE EL SIMBOLO < ES PARA TRAER Y > PARA LLEVAR 
 
 