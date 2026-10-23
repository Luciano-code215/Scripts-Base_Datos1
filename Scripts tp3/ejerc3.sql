--EJERCICIO 3

CREATE TABLE Empleado(
	id_empleado INT IDENTITY(1,1),
	nombre VARCHAR(15) NOT NULL,
	apellido VARCHAR(15) NOT NULL,
	dni VARCHAR(15) NOT NULL,
	fecha_ingreso DATE
);

--modifico tabla para hacer unico al DNI
ALTER TABLE Empleado 
	ADD CONSTRAINT UQ_dni UNIQUE (dni);

--modifico la tabla para hacer que id_empleado sea el PK
ALTER TABLE Empleado
	ADD CONSTRAINT PK_id_empleado PRIMARY KEY (id_empleado);

--se insertan 4 empleados
INSERT INTO Empleado(nombre, apellido, dni, fecha_ingreso)
	VALUES ('Luciano', 'Pedotti','37886204', '1994-02-17');

INSERT INTO Empleado(nombre, apellido, dni)
	VALUES('Carlos', 'Gomez', '40123456');

INSERT INTO Empleado(nombre, apellido, dni)
	VALUES('Julio', 'Mirsky', '30123456');

INSERT INTO Empleado(nombre, apellido, dni)
	VALUES('Este', 'Banquito', '20123456');

--consulta
SELECT * FROM Empleado;

--se intenta insertar otro empleado con dni repetido
--la sentencia es rechazada por que interviene la restriccion UQ_dni, el dni debe ser unico
INSERT INTO Empleado(nombre, apellido, dni)
	VALUES('Fulano', 'Turbo', '37886204');

--se intenta modificar el dni de un empleado colocando el dni de otro empleado
--la sentencia es rechaza por que interveiene la restriccion UQ_dni, el dni debe ser unico
UPDATE Empleado 
	SET dni='37886204' WHERE id_empleado=3;