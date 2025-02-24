
# que son los HASH 
#que es B-TREE 
#diferencia en tre InnoDB y MySQL
# Los siguientes comandos se ejecutan en mysql desde el símbolo del sistema 

mysql> SELECT * FROM facturas WHERE FECHA_VENTA='20170101'; #estas consultas tambien se pueden hacer con MySQL pero pueden que no sea agradables 

mysql> EXPLAIN FORMAT=JSON SELECT * FROM FACTURAS WHERE FECHA_VENTA='20170101' \G; 

mysql> ALTER TABLE facturas ADD INDEX(FECHA_VENTA);

mysql> EXPLAIN FORMAT=JSON SELECT * FROM FACTURAS WHERE FECHA_VENTA='20170101' \G; 

mysql> SELECT * FROM facturas WHERE FECHA_VENTA='20170101';

mysql> ALTER TABLE FACTURAS DROP INDEX FECHA_VENTA;

mysql> EXPLAIN FORMAT=JSON SELECT * FROM FACTURAS WHERE FECHA_VENTA='20170101' \G; 