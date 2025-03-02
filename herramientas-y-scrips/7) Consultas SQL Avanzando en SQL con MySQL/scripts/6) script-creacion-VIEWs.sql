-- Las views son tablas lógicas, no físicas, que se crean a partir de una consulta SQL.
-- podemos crear una view con el asistente y si no damos cuenta lo trata como una tabala
SELECT X.ENVASE, X. PRECIO_MAXIMO FROM
vw_envases_grandes X #aca esta el nombre de la VIEW que se creo 
WHERE PRECIO_MAXIMO >=10;

SELECT A.NOMBRE_DEL_PRODUCTO, A.ENVASE, A.PRECIO_DE_LISTA, 
B.PRECIO_MAXIMO FROM tabla_de_productos A
INNER JOIN
vw_envases_grandes B
ON A.ENVASE = B.ENVASE;

select * from vw_envases_grandes;