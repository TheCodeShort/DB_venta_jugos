set global log_bin_trust_function_creators = 1;

SELECT f_define_sabor("Maracuyá");

select NOMBRE_DEL_PRODUCTO, SABOR, f_define_sabor (SABOR) as tipo
 from tabla_de_productos;
 
 select NOMBRE_DEL_PRODUCTO, SABOR from tabla_de_productos
 where f_define_sabor (SABOR) = "Muy rico";