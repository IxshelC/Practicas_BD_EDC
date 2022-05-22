-- Creando BD "TiendaInformatica" --
CREATE DATABASE TiendaInformatica;

-- Usar BD --
USE TiendaInformatica;

-- Creando tabla "Producto"--
CREATE TABLE Producto(
Codigo int primary key,
Nombre varchar(100),
Precio double,
codigo_fabricante int(10)
);

-- Creando tabla "Fabricante"--
CREATE TABLE fabricante(
Codigo Int primary key,
Nombre Varchar(100)
);

-- Añadiendo FK --
Alter table Producto
Add constraint Fk_Fabri_Producto
foreign key producto(codigo_fabricante) references fabricante(Codigo);

-- Ingresando datos a tabla "Fabricante"--
INSERT INTO fabricante (Codigo, Nombre) 
VALUES ('001', 'HP') ,
('002', 'DEL') , ('003', 'LENOVO') , ('004', 'GENERIC');

-- Ingresando datos a tabla "Productos"--
INSERT INTO PRODUCTO (Codigo, Nombre, Precio, codigo_fabricante) 
VALUES ('1', 'Cable Fibra Óptica', '108.50', '1'),
('2', 'Cable HDMI', '150', '1'),
('3', 'Cable DSL', '80', '2'),
('4', 'Cable VGA-HDMI', '250.50', '2'),
('5', 'Monitor 23\' ', '2788', '3'),
('6', 'Monitor 23.8\'', '3749', '3'),
('7', 'Monitor curvo 24\'', '3149', '4'),
('8', 'Monitor curvo 49\'\'', '35999', '2'),
('9', 'Xtreme PC Radeon', '43999', '4'),
('10', 'PC Ultra Slim', '2895', '3'),
('11', 'CPU Dell 7010', '6499', '3'),
('12', 'Mouse Wired', '119', '1'),
('13', 'Mouse Curvo', '299', '2'),
('14', 'Mouse inalámbrico', '199', '1');



