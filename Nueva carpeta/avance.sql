use u719737586_tienda
--1.1.3 Consultas sobre una tabla
--1.Lista el nombre de todos los productos que hay en la tabla producto.
     select nombre from producto;
--2.Lista los nombres y los precios de todos los productos de la tabla producto.
     select nombre,precio from producto;
--3.Lista todas las columnas de la tabla producto.
     select * from productos;
--4.Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).
     select nombre, round(precio, 2), round(precio*3.80,2), round(precio*4.10,2);
--5. Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.
     select nombre, round(precio, 2) 'Soles', round(precio*3.80,2) 'Dolar', round(precio*4.10,2) 'Euro';
--6.Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
     select upper(nombre), precio from producto;
--7.Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.
     select lower(nombre), precio from producto;
--8.Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.
     select nombre, uppper(left(nombre,2)) from producto
--9.Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.
     select nombre, round(precio, 0) from producto;
--10.Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.
     select nombre, trunc(precio) from producto;
--11.Lista el identificador de los fabricantes que tienen productos en la tabla producto.
     select distinct f.* from fabricante f, producto p where p.id_fabricante=f.id;