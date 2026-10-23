--Ejercico 16

--Creacion de la tabla y carga de datos dados por el ejercicio

CREATE TABLE Comercio(
	codigo_comercio INT PRIMARY KEY IDENTITY(1,1),
	nombre VARCHAR(30),
	tipo_actividad VARCHAR(30)
);

INSERT INTO Comercio(nombre, tipo_actividad)
VALUES
	('El Buen Pan', 'Panaderia'),
	('La Espiga', 'Panaderia'),
	('CentroTech', 'Informatica'),
	('Norte Sistemas', 'Informatica'),
	('San Martin', 'Farmacia');

--Resolucion del ejercicio
/*Pasos:
	1-Crear la tabla TipoActividad(codigo_tipo, descripcion)
	2-Poblar la tabla con los datos usando DISTINCT
	3-Agregar una nueva columna a Comercio que se llame codigo_tipo, con ALTER TABLE de momento sera NULL
	4-Actualizar codigo_tipo en Comercio para que tenga el codigo real de la tabla TipoActividad
	5-Agregar la restriccion Pk_Comercio_TipoActividad
	6-Eliminar tipo_actividad de tabla Comercio con ALTER TABLE DROP COLUMN
*/

CREATE TABLE TipoActividad(
	codigo_tipo INT PRIMARY KEY IDENTITY(1,1),
	descripcion VARCHAR(30)
);

INSERT INTO TipoActividad(descripcion)
SELECT DISTINCT tipo_actividad FROM Comercio
WHERE tipo_actividad IS NOT NULL;


ALTER TABLE Comercio
ADD codigo_tipo INT NULL;

SELECT * FROM Comercio;
SELECT * FROM TipoActividad;

UPDATE Comercio
SET codigo_tipo=8
WHERE tipo_actividad='Panaderia';

UPDATE Comercio
SET codigo_tipo=7
WHERE tipo_actividad='Informatica';

UPDATE Comercio
SET codigo_tipo=6
WHERE tipo_actividad='Farmacia';

ALTER TABLE Comercio
ADD CONSTRAINT PK_Comercio_TipoActividad FOREIGN KEY (codigo_tipo) REFERENCES TipoActividad;

ALTER TABLE Comercio
DROP COLUMN tipo_actividad;

