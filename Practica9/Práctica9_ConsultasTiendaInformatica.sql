#### Práctica 9 ##

-- Hacer una consulta que liste todas las columnas de la tabla producto. (valor 3) --
SELECT * FROM producto;

-- Hacer una consulta que devuelva todos los datos de los productos que tienen el mismo precio que el producto más caro del fabricante Lenovo. 
-- (Sin utilizar INNER JOIN). (valor 3) --

SELECT * FROM producto
Where precio = ( SELECT MAX(precio)
FROM producto
WHERE producto.codigo_fabricante =( SELECT codigo
FROM fabricante
Where nombre = 'LENOVO'));

-- Hacer una consulta que liste el nombre del producto más caro del fabricante lenovo "

SELECT P.nombre
FROM Fabricante F INNER JOIN producto P
ON F.codigo = P.codigo_fabricante
WHERE F.nombre = "Lenovo" AND P.precio = (SELECT MAX(precio)
FROM fabricante F INNER JOIN producto P 
ON F.codigo = P.codigo_fabricante
WHERE F.nombre= "Lenovo");

-- Hacer una consulta que liste el nombre de todos los productos que hay en la tabla producto. --
SELECT nombre FROM Producto;

-- Hacer una consulta que devuelva todos los productos del fabricante Lenovo. (Sin utilizar INNERJOIN). (valor 3) --
SELECT * FROM producto
WHERE codigo_fabricante  = ( SELECT codigo
FROM Fabricante
WHERE nombre = "Lenovo");

-- Hacer una consulta que liste los nombres y los precios de todos los productos de la tabla producto. --
SELECT nombre,precio FROM Producto;