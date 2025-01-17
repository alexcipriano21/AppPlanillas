drop table if exists empleados;
drop table if exists secciones;

 create table secciones(
  codigo int auto_increment primary key,
  nombre varchar(30),
  sueldo decimal(5,2)
 );

 create table empleados(
  legajo int primary key auto_increment,
  documento char(8),
  sexo char(1),
  apellido varchar(40),
  nombre varchar(30),
  domicilio varchar(30),
  seccion int not null,
  cantidadhijos int,
  estadocivil char(10),
  fechaingreso date
 );

 insert into secciones(nombre,sueldo) values('Administracion', 300);
 insert into secciones(nombre,sueldo) values('Contaduría', 400);
 insert into secciones(nombre,sueldo) values('Sistemas', 500);

 insert into empleados (documento,sexo,apellido,nombre,domicilio,seccion,cantidadhijos,estadocivil,fechaingreso)
   values ('22222222','f','Lopez','Ana','Colon 123',1,2,'casado','1990-10-10');
 insert into empleados (documento,sexo,apellido,nombre,domicilio,seccion,cantidadhijos,estadocivil,fechaingreso)   
   values('23333333','m','Lopez','Luis','Sucre 235',1,0,'soltero','1990-02-10');
 insert into empleados (documento,sexo,apellido,nombre,domicilio,seccion,cantidadhijos,estadocivil,fechaingreso)
   values('24444444','m','Garcia','Marcos','Sarmiento 1234',2,3,'divorciado','1998-07-12');
 insert into empleados (documento,sexo,apellido,nombre,domicilio,seccion,cantidadhijos,estadocivil,fechaingreso)
   values('25555555','m','Gomez','Pablo','Bulnes 321',3,2,'casado','1998-10-09');
 insert into empleados (documento,sexo,apellido,nombre,domicilio,seccion,cantidadhijos,estadocivil,fechaingreso)
   values('26666666','f','Perez','Laura','Peru 1254',3,3,'casado','2000-05-09');
   
select * from secciones;
select * from empleados;
 
 drop view if exists vista_empleados;

 create view vista_empleados as
   select concat(apellido,' ',e.nombre) as nombre, 
         sexo,
         s.nombre as seccion,
         cantidadhijos
     from empleados as e
     join secciones as s on codigo=seccion;

 
 select * from vista_empleados;
 
 select count(*) as cantidad
 from vista_empleados;

 select seccion, count(*) as cantidad
   from vista_empleados
   group by seccion;

 drop view if exists vista_empleados_ingreso;

 create view vista_empleados_ingreso(fecingreso,cantidad) as
   select  extract(year from fechaingreso) as fecingreso,
           count(*) as cantidad
     from empleados
     group by fecingreso;

 select fecingreso,cantidad from vista_empleados_ingreso;