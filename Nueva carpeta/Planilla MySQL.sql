drop database if exists planillas;
create database planillas;
use planillas;

create table Cargo (
  id int primary key auto_increment,
  Detalle char(30) unique );

create table CentroCosto (
  id int primary key auto_increment,
  Detalle char(30) unique );
  
create table Departamento (
  id int primary key auto_increment,
  RazonSocial char(30) unique,
  Cuenta char(10) );

create table Empresa(
  id int primary key auto_increment,
  Ruc char(11) unique,
  RazonSocial char(30) unique,
  NombreComercial char(30) not null,
  Direccion char(50) not null,
  RepresentateLegal char(50) not null,
  DniRepresentaLegal char(8) not null,
  RegistroPatronal char(20),
  RegimenLaboral char(7) check ( RegimenLaboral in ('Privado', 'Público') ) );

create table Sede(
  id int primary key auto_increment,
  RazonSocial char(30) unique,
  Direccion char(50) not null,
  idDistrito int not null,
  idProvincia int not null,
  idDepartamento int not null,
  Estado char(1) not null );

create table Empleado( 
  id int primary key auto_increment,
  Dni char(8) unique,
  Passwordd char(6) not null, 
  Nombres char(30) not null,
  ApellidoPaterno char(30) not null,
  ApellidoMaterno char(30) not null,
  Direccion char(50) not null,
  idDistrito int not null,
  idProvincia int not null,
  idDepartamento int not null,
  Genero char(1) check (Genero in ('M','F')),
  EstadoCivil char(1) check (EstadoCivil in ('S','C','D','V')),
  

  idCargo int references Cargo(id)
  
);

-- Insert
insert Cargo(Detalle) values ('Administrador'),('Cajero'),('Vendedor'),('Contador');
insert CentroCosto(Detalle) values ('Producción'),('Ventas');
insert Departamento(RazonSocial) values ('Almacen'),('Ventas');

insert Empleado values(null, '99887766','123456', 'Alexander', 'Cipriano', 'Gomez', 'Mz. Hl Lote 12 Urb. Almeda','1','1','1','M','C','1');

-- Procedimientos Almacenados
create procedure sp_getEmpleadoLogin( in _dni char(8), in _passwordd char(6))
	select * from Empleado where dni= _dni and passwordd= _passwordd;

create procedure sp_getEmpleado( in _id int )
	select * from Empleado where id = _id;

create procedure sp_getEmpleados()
	select * from Empleado order by id;

create procedure sp_getCentroCostos()
    select * from CentroCosto order by id;
    
create procedure sp_getCentroCostosInsert(in _detalle char(30))
    insert CentroCosto(Detalle) values (_detalle);
    
create procedure sp_getCentroCostosUpdate(in _id int, _detalle char(30))
    update CentroCosto set detalle = _detalle where id= _id;

/* 
call sp_getEmpleadoLogin('99887766','123456');
call sp_getEmpleado('1');
call sp_getEmpleados();

call sp_getCentroCostos();
call sp_getCentroCostosInsert('Alexander');
call sp_getCentroCostosUpdate('Diego');
*/


