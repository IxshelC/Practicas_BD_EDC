## CONSULTAS ##

USE tiendainformatica;

SELECT * FROM PRODUCTO;
Select * FROM fabricante;

## Hacer una consulta que muestre el número total de productos que tiene cada uno de los fabricantes. 
## El listado también debe incluir los fabricantes que no tienen ningún producto.
## El resultado mostrará dos columnas, una con el nombre del fabricante y otra con el número de productos que tiene.
## Ordene el resultado descendentemente por el número de productos. 

SELECT F.nombre, COUNT(P.codigo) AS TotalProductos 
FROM fabricante F LEFT JOIN producto P
ON P.codigo_fabricante = F.codigo 
GROUP BY F.codigo
ORDER BY TotalProductos DESC;


#Hacer una consulta que muestre el nombre de cada fabricante
#Junto con el precio máximo, precio mínimo, precio medio y el número total de productos de los fabricantes que tienen un precio medio superior a 200€. 
#Es necesario mostrar el nombre del fabricante. 
SELECT F.nombre, MAX(P.precio) AS PrecioMáximo, Min(P.precio) AS PrecioMínimo, AVG(P.precio) AS PrecioMedio, COUNT(P.codigo)  AS TOTALPRODUCTOS
FROM producto P INNER JOIN Fabricante F
ON P.codigo_fabricante = F.codigo 
GROUP BY F.codigo
HAVING AVG(P.precio) >= 200;

#Hacer una consulta que calcule el número total de productos que hay en la tabla producto.
SELECT COUNT(nombre) AS TOTALPRODUCTOS FROM Producto;

#Hacer una consulta que muestre el precio máximo, precio mínimo y precio medio de los productos de cada uno de los fabricantes. 
#El resultado mostrará el nombre del fabricante junto con los datos que se solicitan. 
SELECT F.nombre, MAX(P.precio) AS PrecioMáximo, MIN(P.precio) AS PrecioMínimo, AVG(P.precio) AS PromedioMedioProductos
FROM Fabricante F INNER JOIN producto P
ON P.codigo_fabricante = F.codigo
GROUP BY F.codigo;


