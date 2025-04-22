 -- ejercicio 1
DROP DATABASE IF EXISTS universidad;
CREATE DATABASE universidad;
USE universidad;

CREATE TABLE estudiantes (
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE cursos (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE inscripciones (
    id_inscripcion INT PRIMARY KEY AUTO_INCREMENT,
    id_estudiante INT,
    id_curso INT,
    FOREIGN KEY (id_estudiante) REFERENCES estudiantes(id_estudiante) 
        ON DELETE RESTRICT,
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)
);

INSERT INTO estudiantes (nombre) VALUES 
('Juan Pérez'),
('Ana Gómez');

INSERT INTO cursos (nombre) VALUES 
('Matemáticas'),
('Programación');

INSERT INTO inscripciones (id_estudiante, id_curso) VALUES 
(1, 1),
(1, 2),
(2, 1);

-- El codigo crea tres tablas: estudiantes, cursos e inscripciones, que representan una relacion entre los estudiantes y los cursos en los que estan inscritos. Para evitar que se eliminen estudiantes que tengan cursos inscritos, se usa ON DELETE RESTRICT en las foreign keys. Esto asegura que no se pueda eliminar un estudiante mientras tenga inscripciones, protegiendo asi la integridad de los datos.
