DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda CHARACTER SET utf8mb4;
USE tienda;

CREATE TABLE fabricante (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio DOUBLE NOT NULL,
  id_fabricante INT UNSIGNED NOT NULL,
  FOREIGN KEY (id_fabricante) REFERENCES fabricante(id)
);

INSERT INTO fabricante VALUES(1, 'Asus');
INSERT INTO fabricante VALUES(2, 'Lenovo');
INSERT INTO fabricante VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricante VALUES(4, 'Samsung');
INSERT INTO fabricante VALUES(5, 'Seagate');
INSERT INTO fabricante VALUES(6, 'Crucial');
INSERT INTO fabricante VALUES(7, 'Gigabyte');
INSERT INTO fabricante VALUES(8, 'Huawei');
INSERT INTO fabricante VALUES(9, 'Xiaomi');

INSERT INTO producto VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO producto VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO producto VALUES(3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO producto VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producto VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO producto VALUES(8, 'Portátil Yoga 520', 559, 2);
INSERT INTO producto VALUES(9, 'Portátil Ideapd 320', 444, 2);
INSERT INTO producto VALUES(10, 'Impresora HP Deskjet 3720', 59.99, 3);
INSERT INTO producto VALUES(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);

-- 1.1.3 Consultas sobre una tabla
-- 1.Lista el nombre de todos los productos que hay en la tabla producto.
     select nombre from producto;
-- 2.Lista los nombres y los precios de todos los productos de la tabla producto.
     select nombre,precio from producto;
-- 3.Lista todas las columnas de la tabla producto.
     select * from productos;
-- 4.Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).
     select nombre, round(precio, 2), round(precio*3.80,2), round(precio*4.10,2);
-- 5. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.
     select nombre, round(precio, 2) 'Soles', round(precio*3.80,2) 'Dolar', round(precio*4.10,2) 'Euro';
-- 6.Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
     select upper(nombre), precio from producto;
-- 7.Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.
     select lower(nombre), precio from producto;
-- 8.Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.
     select nombre, uppper(left(nombre,2)) from producto;
-- 9.Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.
     select nombre, round(precio, 0) from producto;
-- 10.Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.
     select nombre, trunc(precio) from producto;
-- 11.Lista el identificador de los fabricantes que tienen productos en la tabla producto.
     select distinct f.* from fabricante f, producto p where p.id_fabricante=f.id;
     
     
-- 1.1.7.2 Subconsultas con ALL y ANY
-- 7.Devuelve el producto más caro que existe en la tabla producto sin hacer uso de MAX, ORDER BY ni LIMIT.
	select * from producto where precio >= all(select precio from producto);
-- 8.Devuelve el producto más barato que existe en la tabla producto sin hacer uso de MIN, ORDER BY ni LIMIT.
	select * from producto where precio <= all(select precio from producto);
-- 9.Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando ALL o ANY).
    select * from fabricante where id <> any(select id.fabricante from producto);
-- 10.Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando ALL o ANY).
    select * from fabricante where id <> all(select id.fabricante from producto);
    
-- 1.1.7.3 Subconsultas con IN y NOT IN
-- Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando IN o NOT IN).
   select * from fabricante f where not exists(select);
-- Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando IN o NOT IN).

-- 1.1.7.4 Subconsultas con EXISTS y NOT EXISTS
-- Devuelve los nombres de los fabricantes que tienen productos asociados. (Utilizando EXISTS o NOT EXISTS).

-- Devuelve los nombres de los fabricantes que no tienen productos asociados. (Utilizando EXISTS o NOT EXISTS).

-- 1.1.8 Subconsultas (En la cláusula HAVING)
-- 18.Devuelve un listado con todos los nombres de los fabricantes que tienen el mismo número de productos que el fabricante Lenovo.
select f.nombre, count(*) 
    from producto p, fabricante f 
    where p.id_fabricante = f.id 
	group by f.nombre;
    having count(*) = (select count(*) from producto 
	                       where id_fabricante = (select id from fabricante where nombre = 'Lenovo'));