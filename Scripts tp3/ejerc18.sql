--EJERCICIO 18

--Creado las tablas y cargado los datos que da el ejercicio

CREATE TABLE Reserva (
	codigo_reserva INT PRIMARY KEY IDENTITY(1,1),
	fecha DATE,
	nombre_sala VARCHAR(20)
);

--Cargar datos en Reserva
INSERT INTO Reserva(fecha, nombre_sala)
VALUES
	('2025/02/12', 'Auditorio'),
	('2025/02/12', 'Auditorio'),
	('2025/02/12', 'Laboratorio 1'),
	('2025/02/12', 'Laboratorio 1'),
	('2025/02/12', 'Laboratorio 2'),
	('2025/02/12', 'Laboratorio 2')
;

--Creando tabla sala
CREATE TABLE Sala (
	codigo_sala INT PRIMARY KEY IDENTITY(1,1),
	nombre_sala VARCHAR(20)
);

--Añadiendo resticcion a nombre_sala en tabla Sala
ALTER TABLE Sala
ADD CONSTRAINT UQ_nombre_tabla UNIQUE (nombre_sala);

--Poblando tabla sala con los datos no repetidos de tabla Reserva
INSERT INTO Sala (nombre_sala)
SELECT DISTINCT nombre_sala  FROM Reserva;

SELECT * FROM Reserva;

SELECT * FROM Sala;

--Agrego la columna codigo_sala a tabla Reserva
ALTER TABLE Reserva
ADD codigo_sala INT NULL;

--Rellenar codigo_sala con el codigo correspondiente
UPDATE Reserva
SET codigo_sala=1 WHERE nombre_sala = 'Auditorio';

UPDATE Reserva
SET codigo_sala=2 WHERE nombre_sala = 'Laboratorio 1';

UPDATE Reserva
SET codigo_sala=3 WHERE nombre_sala = 'Laboratorio 2';

--Se agrega la referncia de codigo_sala a la tabla Sala
ALTER TABLE Reserva 
ADD CONSTRAINT FK_Reserva_Sala FOREIGN KEY (codigo_sala) REFERENCES Sala;

--Ahora si se puede eliminar nombre_sala de la tabla Reserva
ALTER TABLE Reserva
DROP COLUMN nombre_sala;

SELECT * FROM Sala;

SELECT * FROM Reserva;


