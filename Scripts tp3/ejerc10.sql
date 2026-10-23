--EJERCICIO 10

--creo la tabla sector, sera conectada con empleado mas adelante
CREATE TABLE Sector(
	id_sector INT IDENTITY(1,1),
	nombre VARCHAR(20),
	CONSTRAINT PK_id_sector PRIMARY KEY (id_sector)
);

--configuro a nombre como obligatorio
ALTER TABLE Sector
	ALTER COLUMN nombre VARCHAR(20) NOT NULL;

--agrego la restriccion de unicidad a la columna nombre
ALTER TABLE Sector
	ADD CONSTRAINT UQ_Sector_nombre UNIQUE (nombre);

--agrego 3 sectores
INSERT INTO Sector(nombre)
	VALUES('Administracion');

INSERT INTO Sector(nombre)
	VALUES('Ventas');

INSERT INTO Sector(nombre)
	VALUES('Deposito');

--agrego a Empleado una columna codigo_sector
ALTER TABLE Empleado
	ADD codigo_sector INT NULL;

--asigo un sector a cada empleado 
UPDATE Empleado
	SET codigo_sector=1
	WHERE id_empleado=2;

UPDATE Empleado
	SET codigo_sector=3
	WHERE id_empleado=3;

UPDATE Empleado
	SET codigo_sector=2
	WHERE id_empleado=4;

UPDATE Empleado
	SET codigo_sector=3
	WHERE id_empleado=5;

--agregando restriccion de clave foranea a la tabla empleado
ALTER TABLE Empleado
	ADD CONSTRAINT FK_Sector_Empleado FOREIGN KEY (codigo_sector) REFERENCES Sector;

--intentando cambiar el sector de un empleado a uno inexistente en tabla Sector
--la sentencia es rechazada, interviniendo la restriccion puesta anteriormente 
UPDATE Empleado
	SET codigo_sector=4
	WHERE id_empleado=4;

SELECT * FROM Empleado;
SELECT * FROM Sector;