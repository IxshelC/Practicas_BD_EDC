-- CREAR BD --
CREATE DATABASE TriggerA;

-- USAR BD --
USE TriggerA;

-- Creando Tabla ALUMNOS --
CREATE TABLE Alumnos(
Id int primary key auto_increment,
Nombre varchar(30),
Apellido1 varchar(30),
Apellido2 varchar(30),
Nota float
);

-- PRIMER TRIGGER --
DELIMITER //
CREATE TRIGGER trigger_check_nota_before_insert
BEFORE INSERT
ON alumnos FOR EACH ROW
BEGIN
/* INICIA IF */
IF	(NEW.Nota < 0) THEN  				-- Si la nueva nota es < a 0 entonces 
	SET NEW.Nota = 0;					-- Actualizar la nota a 0
	ELSEIF (NEW.Nota > 10) THEN 			-- Si la nota es > a 10 entonces
    SET NEW.Nota = 10;					-- Se guardará la nueva nota con el número 10
END IF;
/* TERMINA IF */
END //
DELIMITER ;

-- AGREGANDO DATOS --
INSERT INTO alumnos VALUES (1, 'Toño', 'Gongora', 'Jiménez', -5);
INSERT INTO alumnos VALUES (2, 'Karla', 'Gonzalez', 'Lopez', 21);
INSERT INTO alumnos VALUES (3, 'Ana', 'Vega', 'Hernandez', 7.3);


SELECT * FROM alumnos;

-- SEGUNDO TRIGGER --
DELIMITER //
CREATE TRIGGER trigger_check_nota_before_update
BEFORE UPDATE 							-- Se ejecuta antes de una operación de actualizacion
ON alumnos FOR EACH ROW					-- En tabla alumnos
BEGIN							
/* INICIA IF */
IF (NEW.Nota < 0) THEN					-- Si la nueva nota es < 0 o sea, negativo, entonces. . .
	SET NEW.Nota = 0;					-- Se guardará como 0
    ELSEIF (NEW.Nota > 10) THEN		-- Si la nueva nota es > 10, entonces . . .
	SET NEW.Nota = 10;					-- Se guardará como 10
	END IF;
/* TERMINA IF */
END //
DELIMITER ;

-- ACTUALIZANDO DATOS --
UPDATE alumnos SET Nota = 34 WHERE id = 1;
UPDATE alumnos SET Nota = -50 WHERE id = 2;
UPDATE alumnos SET Nota = 8 WHERE id = 3;

truncate alumnos;
SELECT * FROM alumnos;
