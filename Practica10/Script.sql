-- Creando BD proveedores --
CREATE DATABASE PROVEEDORES;

-- Usar BD --
USE PROVEEDORES;

-- CREAR TABLA "Proveedor "--
CREATE TABLE Proveedor(
Codigo_Proveedor Int primary key not null ,
Nombre varchar(30),
Direccion varchar(30),
Ciudad varchar(30),
Provincia varchar(30)
);

-- CREAR TABLA "Piezas" --
CREATE TABLE Piezas(
Codigo_Piezas Int primary key not null,
Nombre varchar(30),
Color varchar(30),
Precio float(30),
Codigo_Categoria int,
CONSTRAINT FK_P_Categoria -- FK CATEGORIA_PIEZAS --
FOREIGN KEY Piezas(Codigo_Categoria) REFERENCES Categoria(Codigo_Categoria)
);


-- CREAR TABLA "Categorías" --
CREATE TABLE Categoria(
Codigo_Categoria Int primary key not null,
Nombre varchar(30)
);

-- CREAR TABLA "Historial" --
CREATE TABLE Historico (
ID_Historico Int primary Key not null ,
Codigo_Proveedor int not null,
Codigo_Piezas int not null,
Fecha date,
Cantidad int,
CONSTRAINT FK_H_Provedor	-- FK PROVEEDOR_HISTORICO --
FOREIGN KEY Historico(Codigo_Proveedor) References Proveedor(Codigo_Proveedor),
CONSTRAINT FK_H_Piezas	-- FK PIEZAS_HISTORICO --
FOREIGN KEY Historico(Codigo_Piezas) REFERENCES Piezas(Codigo_Piezas) 
);

-- AGREGAR REGISTROS REPETIDOS --
INSERT IGNORE Historico (ID_Historico,Codigo_Proveedor,Codigo_Piezas,Fecha, Cantidad)
VALUES ('1', '2', '1', '2022-08-03', '102'),
('2','3','1', '2022-03-08', '150');

SELECT * FROM PIEZAS;
SELECT * FROM Proveedor;
SELECT * FROM CATEGORIA;
SELECT * FROM Historico;

