-- Creando BD proveedores --
CREATE DATABASE PROVEEDORES;

-- Usar BD --
USE PROVEEDORES;

-- CREAR TABLA "Proveedor "--
CREATE TABLE Proveedor(
Codigo_Proveedor Int primary key auto_increment,
Nombre varchar(30),
Direccion varchar(30),
Ciudad varchar(30),
Provincia varchar(30)
);

-- CREAR TABLA "Piezas" --
CREATE TABLE Piezas(
Codigo_Piezas Int primary key auto_increment,
Nombre varchar(30),
Color varchar(30),
Precio float(30),
Codigo_Categoria int
);
DROP TABLE PIEZAS;

-- CREAR TABLA "Categorías" --
CREATE TABLE Categoria(
Codigo_Categoria Int primary key auto_increment,
Nombre varchar(30)
);

-- CREAR TABLA "Historial" --
CREATE TABLE Historico (
ID_Historico Int primary Key auto_increment,
Codigo_Proveedor int,
Codigo_Categoria int,
Fecha date,
Cantidad int
);

-- FK CATEGORIA_PIEZAS --
ALTER TABLE Piezas
ADD CONSTRAINT FK_Categoria_Piezas
FOREIGN KEY Piezas(Codigo_Categoria) References Categoria(Codigo_Categoria);

-- FK PROVEEDOR_HISTORICO --
ALTER TABLE Historico
ADD CONSTRAINT FK_Proveedor_Historico
FOREIGN KEY Historico(Codigo_Proveedor) REFERENCES Proveedor(Codigo_Proveedor);



-- FK CATEGORÍA_HISTORICO --
ALTER TABLE Historico
ADD CONSTRAINT FK_Categoria_Historico
FOREIGN KEY Historico(Codigo_Proveedor) REFERENCES Categoria(Codigo_Categoria);