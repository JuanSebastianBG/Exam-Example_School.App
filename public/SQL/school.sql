DROP DATABASE IF EXISTS school;
CREATE DATABASE school;
USE school;

CREATE TABLE estudiantes(
    nro_id INT AUTO_INCREMENT PRIMARY KEY,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    direccion VARCHAR(75) NOT NULL
);
CREATE TABLE inscripciones(
    nro_inscripcion INT auto_increment PRIMARY KEY,
    codigo INT NOT NULL,
    nro_id INT NOT NULL,
    periodo VARCHAR(12) NOT NULL
);
Create Table decanos (
    cedula int primary key,
    nombres varchar (40) NOT NULL,
    apellidos varchar (45) NOT NULl,
    celular int NOT NULl
);
Create Table facultades (
    numero int primary key NOT NULL,
    nombre varchar (45) NOT NULL,
    ubicacion_dniversidad varchar (50) NOT NULL,
    cedula_decano int NOT NULL
);
CREATE TABLE  docentes (
    cedula INT PRIMARY KEY NOT NULL,
    nombres VARCHAR(50) NOT NULL, 
    apellidos VARCHAR(50) NOT NULL,
    titulo VARCHAR(50) NOT NULL,
    numero INT NOT NULL
);
CREATE TABLE cursos (
    nro_id INT AUTO_INCREMENT PRIMARY KEY,
    cedula INT NOT NULL,
    codigo INT NOT NULL
);
CREATE TABLE asignaturas(
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    nro_creditos INT NOT NULL
);

ALTER TABLE cursos ADD CONSTRAINT fk_cedula_cursos_docentes FOREIGN KEY (cedula) REFERENCES docentes(cedula);
ALTER TABLE cursos ADD CONSTRAINT fk_cedula_cursos_asignaturas FOREIGN KEY (codigo) REFERENCES asignaturas(codigo);
ALTER TABLE docentes ADD CONSTRAINT fk_numero_docentes_facultades FOREIGN KEY (numero) REFERENCES facultades(numero);
Alter Table facultades ADD constraint fk_cedula_facultad_decanos foreign key (cedula_decano) references decanos(cedula);
ALTER TABLE inscripciones ADD CONSTRAINT fk_nroId_inscripcion_estudiantes FOREIGN KEY (nro_id) REFERENCES estudiantes(nro_id);
ALTER TABLE inscripciones ADD CONSTRAINT fk_codigo_inscripcion_asignaturas FOREIGN KEY (codigo) REFERENCES asignaturas(codigo);