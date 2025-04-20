-- ejercicio 7
create user "nuevo_usuario"@"localhost" identified by "nuevacontraseña123";
grant select on productos to "nuevo_usuario"@"localhost";
-- visto desde el nuevo_usuario
insert into productos (id, nombre, descripcion, precio,stock,categora,marca,fecha_creacion) values (10800,"iphone18","la mejor marca","10500",2,"electronica","apple","2023-05-17");
-- Error Code: 1142. INSERT command denied to user 'nuevo_usuario'@'localhost' for table 'productos'