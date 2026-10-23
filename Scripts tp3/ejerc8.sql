--EJERCICO 8
--se debe agregar la columna estado, sin compremeter a los datos ya exisistentes

--paso 1: agregar la columna que acepte null asi se colocan en null los reg existentes
ALTER TABLE Empleado
	ADD estado VARCHAR(10);

--paso 2: poner en valor ACTIVO a todos los existentes
UPDATE Empleado
	SET estado='ACTIVO' 
	WHERE estado IS NULL;

--paso 3: definir a la columna como obligatoria 
ALTER TABLE Empleado
	ALTER COLUMN estado VARCHAR(10) NOT NULL;

--paso 4: definir valor predeterminado ACTIVO
ALTER TABLE Empleado
	ADD CONSTRAINT DF_Empleado_estado DEFAULT 'ACTIVO' FOR estado;

SELECT * FROM Empleado;