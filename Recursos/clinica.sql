    drop database IF EXISTS clinica;
create database clinica;
use clinica;
-- Verificar si existe la tabla y luego crea
drop table IF EXISTS secretarias;
create table secretarias
(
id int AUTO_INCREMENT primary key,
usuario TEXT not null,
clave TEXT not null,
nombre TEXT not null,
apellido TEXT not null,
foto TEXT null,
rol TEXT null
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
-- Verificar si existe la tabla y luego crea
drop table IF EXISTS consultorios;
create table consultorios
(
id int AUTO_INCREMENT primary key,
nombre TEXT not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
-- Verificar si existe la tabla y luego crea
drop table IF EXISTS doctores;
create table doctores
(
id int AUTO_INCREMENT primary key,
id_consultorio int not null,
apellido TEXT null,
nombre TEXT null,
foto TEXT null,
usuario TEXT null,
clave TEXT null,
sexo TEXT null,
horarioE TIME null,
horarioS TIME null,
rol TEXT null
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
-- Verificar si existe la tabla y luego crea
drop table IF EXISTS pacientes;
create table pacientes
(
id int AUTO_INCREMENT primary key,
apellido TEXT null,
nombre TEXT null,
documento TEXT null,
foto TEXT null,
usuario TEXT null,
clave TEXT null,
rol TEXT null
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
-- Verificar si existe la tabla y luego crea
drop table IF EXISTS citas;
create table citas
(
id int AUTO_INCREMENT primary key,
id_doctor int null,
id_consultorio int null,
id_paciente int null,
nyaP TEXT null,
documento TEXT null,
inicio DATETIME null,
fin DATETIME null
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
-- Verificar si existe la tabla y luego crea
drop table IF EXISTS administradores;
create table administradores
(
id int AUTO_INCREMENT primary key,
usuario TEXT null,
clave TEXT null,
nombre TEXT null,
apellido TEXT null,
foto TEXT null,
rol TEXT null
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
-- Verificar si existe la tabla y luego crea
drop table IF EXISTS inicio;
create table inicio
(
id int AUTO_INCREMENT primary key,
intro TEXT null,
horaE TIME null,
horaS TIME null,
telefono TEXT null,
correo TEXT null,
direccion TEXT null,
logo TEXT null,
favicon TEXT null
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
-- INGRESAR DATOS SECRETARIAS
INSERT secretarias VALUES(NULL,"mary","123","Maria","Gaspar","","Secretaria");
-- INGRESAR DATOS ADMINISTRADORES
INSERT administradores VALUES(NULL,"admin","123","Usuario","Administrador","","Administrador");
-- INGRESAR DATOS INICIO
INSERT inicio VALUES(NULL,"Bienvenido a la Clínica Salud Health","07:00:00","18:00:00","989-8468","jbfigueroa@soy.sena.edu.co","Av. Stardew Valley 777","Vistas/img/logo.png","Vistas/img/favicon.png");