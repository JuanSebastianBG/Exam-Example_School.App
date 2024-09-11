DROP DATABASE IF EXISTS school;
CREATE DATABASE school;
USE school;

CREATE TABLE estudiantes(
    `nro_id` INT AUTO_INCREMENT PRIMARY KEY,
    `nombres` VARCHAR(50) NOT NULL,
    `apellidos` VARCHAR(50) NOT NULL,
    `direccion` VARCHAR(75) NOT NULL
)
CREATE TABLE inscripciones(
    nro_inscripcion INT auto_increment PRIMARY KEY,
    codigo INT NOT NULL,
    nro_id INT NOT NULL,
    periodo VARCHAR(12) NOT NULL
)








ALTER TABLE inscripcion ADD CONSTRAINT fk_nroId_estudiantes FOREIGN KEY (nro_id) REFERENCES estudiantes(nro_id);
ALTER TABLE inscripcion ADD CONSTRAINT fk_codigo_asignaturas FOREIGN KEY (cofigo) REFERENCES asignaturas(codigo);