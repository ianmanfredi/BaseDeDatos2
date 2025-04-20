-- ejercicio 2
create Table curso(
id int primary key,
nombre varchar(100)
);
create table estudiante (
id int primary key,
nombre varchar(100)
);
create table matriculas(
id int primary key,
curso_id int,
estudiante_id int,
fecha date,
foreign key (estudiante_id) references estudiante(id),
foreign key (curso_id) references curso(id)
);
insert into matriculas (id,curso_id,estudiante_id,fecha)
values (1,40,30,'2025-07-10');