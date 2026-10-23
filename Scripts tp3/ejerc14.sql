--EJERCICIO 14

--Creando tablas con lo que da el ejercicio 

CREATE TABLE Departamento(
	codigo_departamento INT PRIMARY KEY IDENTITY(1,1),
	nombre_departamento VARCHAR(50) NOT NULL,
	nombre_provincia VARCHAR(50) NOT NULL
);

INSERT INTO Departamento(nombre_departamento, nombre_provincia)
	VALUES ('Capital', 'Corrientes'),
			('Goya', 'Corrientes'),
			('Obera', 'Misiones'),
			('Eldorado', 'Misiones'),
			('Parana', 'Entre Rios'),
			('Concordia', 'Entre Rios');

SELECT * FROM Departamento;

--Resolucion del ejercicio

--Creacion tabla Provincia
CREATE TABLE Provincia(
	codigo_provincia INT PRIMARY KEY IDENTITY(1,1),
	nombre_provincia VARCHAR(50) NOT NULL
);

--Insercion de los nombre de provincias distintas que estan en Departamento
INSERT INTO Provincia(nombre_provincia)
	SELECT DISTINCT nombre_provincia FROM Departamento
	WHERE nombre_provincia IS NOT NULL;

SELECT * FROM Provincia;

ALTER TABLE Departamento
	ADD codigo_provincia INT NULL;

UPDATE Departamento
	SET codigo_provincia=1
	WHERE nombre_provincia='Corrientes';

UPDATE Departamento
	SET codigo_provincia=2
	WHERE nombre_provincia='Entre Rios';

UPDATE Departamento
	SET codigo_provincia=3
	WHERE nombre_provincia='Misiones';

ALTER TABLE Departamento 
	ADD CONSTRAINT FK_Departamento_Provincia FOREIGN KEY (codigo_provincia) REFERENCES Provincia;

ALTER TABLE Departamento
	DROP COLUMN nombre_provincia;

--Este caso es distinto al anterior por que se tuvo que agregar el codigo de referencia en departameto, el cual 
--se tuvo que obtener de otra tabla Provincia creada, en el caso anterior ya estaba el codigo en tabla Departamento
--por lo cual era suficiente con copiar ese mismo codigo 
