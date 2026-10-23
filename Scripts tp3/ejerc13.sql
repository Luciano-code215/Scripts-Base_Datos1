--Creando la tabla Departamento
CREATE TABLE Departamento(
	codigo_departamento INT PRIMARY KEY IDENTITY(1,1),
	nombre_departamento VARCHAR(50) NOT NULL,
	codigo_provincia INT NOT NULL,
	nombre_provincia VARCHAR(50) NOT NULL
);

--Carga de datos a Departamento
INSERT INTO Departamento (nombre_departamento, codigo_provincia, nombre_provincia)
 VALUES ('Capital', 18, 'Corrientes');

INSERT INTO Departamento(nombre_departamento, codigo_provincia, nombre_provincia)
	VALUES ('Goya', 18, 'Corrientes'),
		   ('Obera', 54, 'Misiones'),
		   ('Eldorado', 54, 'Misiones'),
		   ('Parana', 30, 'Entre Rios'),
		   ('Concordia', 30, 'Entre Rios');

SELECT * FROM Departamento;

--Creando tabla provincia, para separar los datos ya que se repite muchos los nombre de provincia
CREATE TABLE Provincia (
	codigo_provincia INT PRIMARY KEY,
	nombre_provincia VARCHAR(50)
);

--Para cambiar a un nuevo modelo primero hay que poblar tabla Provincia con codigo y nombre 
INSERT INTO Provincia(codigo_provincia, nombre_provincia)
	SELECT DISTINCT codigo_provincia, nombre_provincia--distinct deselecciona solo registros distintos
	FROM Departamento
	ORDER BY codigo_provincia ASC;

SELECT * FROM Provincia;

--Añado la restriccion para que codigo_provincia haga referencia a Provincia
ALTER TABLE Departamento
	ADD CONSTRAINT FK_codigo_provincia_Provincia FOREIGN KEY (codigo_provincia) REFERENCES Provincia;

--Como ahora nombre_provincia no es necesario se puede eliminar de la tabla Departamento 
ALTER TABLE Departamento
	DROP COLUMN nombre_provincia;

--Cometi el error y elimine nombre_provincia de la tabla Provincia, por ello tengo que volver a ponerla
ALTER TABLE Provincia
	ADD nombre_provincia VARCHAR(50) NULL;

UPDATE Provincia
	SET nombre_provincia='Corrientes' WHERE codigo_provincia=18;

UPDATE Provincia
	SET nombre_provincia='Entre Rios' WHERE codigo_provincia=30;

UPDATE Provincia
	SET nombre_provincia='Misiones' WHERE codigo_provincia=54;

--No es conveniente eliminar la columna nombre_provincia de la tabla Departamento antes de hacer el procedimiento
--por que se estaria perdiendo el nombre correspondiente a ese codigo de provincia 