use u719737586_tienda
--1.1.3 Consultas sobre una tabla
--Lista el nombre de todos los productos que hay en la tabla producto.
     select nombre from producto;
--Lista los nombres y los precios de todos los productos de la tabla producto.
     select nombre,precio from producto;
--Lista todas las columnas de la tabla producto.
     select * from productos;
--Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD).
     select nombre, round(precio, 2), round(precio*3.80,2), round(precio*4.10,2);
--Lista el nombre de los productos, el precio en euros y el precio en dólares estadounidenses (USD). Utiliza los siguientes alias para las columnas: nombre de producto, euros, dólares.
     select nombre, round(precio, 2) 'Soles', round(precio*3.80,2) 'Dolar', round(precio*4.10,2) 'Euro';
--Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a mayúscula.
     select
--Lista los nombres y los precios de todos los productos de la tabla producto, convirtiendo los nombres a minúscula.

--Lista el nombre de todos los fabricantes en una columna, y en otra columna obtenga en mayúsculas los dos primeros caracteres del nombre del fabricante.

--Lista los nombres y los precios de todos los productos de la tabla producto, redondeando el valor del precio.

--Lista los nombres y los precios de todos los productos de la tabla producto, truncando el valor del precio para mostrarlo sin ninguna cifra decimal.

--Lista el identificador de los fabricantes que tienen productos en la tabla producto.

--Lista el identificador de los fabricantes que tienen productos en la tabla producto, eliminando los identificadores que aparecen repetidos.

--Lista los nombres de los fabricantes ordenados de forma ascendente.

--Lista los nombres de los fabricantes ordenados de forma descendente.

--Lista los nombres de los productos ordenados en primer lugar por el nombre de forma ascendente y en segundo lugar por el precio de forma descendente.

--Devuelve una lista con las 5 primeras filas de la tabla fabricante.

Devuelve una lista con 2 filas a partir de la cuarta fila de la tabla fabricante. La cuarta fila también se debe incluir en la respuesta.

Lista el nombre y el precio del producto más barato. (Utilice solamente las cláusulas ORDER BY y LIMIT)

Lista el nombre y el precio del producto más caro. (Utilice solamente las cláusulas ORDER BY y LIMIT)

Lista el nombre de todos los productos del fabricante cuyo identificador de fabricante es igual a 2.

Lista el nombre de los productos que tienen un precio menor o igual a 120€.

Lista el nombre de los productos que tienen un precio mayor o igual a 400€.

Lista el nombre de los productos que no tienen un precio mayor o igual a 400€.

Lista todos los productos que tengan un precio entre 80€ y 300€. Sin utilizar el operador BETWEEN.

Lista todos los productos que tengan un precio entre 60€ y 200€. Utilizando el operador BETWEEN.

Lista todos los productos que tengan un precio mayor que 200€ y que el identificador de fabricante sea igual a 6.

Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Sin utilizar el operador IN.

Lista todos los productos donde el identificador de fabricante sea 1, 3 o 5. Utilizando el operador IN.

Lista el nombre y el precio de los productos en céntimos (Habrá que multiplicar por 100 el valor del precio). Cree un alias para la columna que contiene el precio que se llame céntimos.

Lista los nombres de los fabricantes cuyo nombre empiece por la letra S.

Lista los nombres de los fabricantes cuyo nombre termine por la vocal e.

Lista los nombres de los fabricantes cuyo nombre contenga el carácter w.

Lista los nombres de los fabricantes cuyo nombre sea de 4 caracteres.

Devuelve una lista con el nombre de todos los productos que contienen la cadena Portátil en el nombre.

Devuelve una lista con el nombre de todos los productos que contienen la cadena Monitor en el nombre y tienen un precio inferior a 215 €.

Lista el nombre y el precio de todos los productos que tengan un precio mayor o igual a 180€. Ordene el resultado en primer lugar por el precio (en orden descendente) y en segundo lugar por el nombre (en orden ascendente).