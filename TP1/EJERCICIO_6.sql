-- ejercicio 6
create view productos_sin_stock as select nombre, stock, precio,fecha_creacion from productos where stock=0;
select * from productos_sin_stock;