drop database if exists school;
create database school;
use school;

create table estudiantes(
    nro_id int auto_increment primary key,
    nombres varchar(50) not null,
    apellidos varchar(50) not null,
    direccion varchar(75) not null
)
create table inscripcion(
    nro_inscripcion int auto_increment primary key,
    codigo int not null,
    nro_id int not null,
    periodo varchar(12) not null
)








alter table inscripcion add constraint fk_nroId_estudiantes foreign key (nro_id) references estudiantes(nro_id);
alter table inscripcion add constraint fk_codigo_asignaturas foreign key (cofigo) references asignaturas(codigo);