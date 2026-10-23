--EJERCICIO 17 

--Creando tabla y cargando datos

CREATE TABLE Producto(
	codigo INT PRIMARY KEY IDENTITY(1,1),
	descripcion VARCHAR(50),
	precio INT
);

INSERT INTO Producto(descripcion, precio)
VALUES
	('Teclado', 25000),
	('Mouse', 18000),
	('Parlante', 0),
	('Monitor', 210000),
	('Adaptador', -1500);

SELECT * FROM Producto;

--Creado restriccion para que el precio sea mayor a 0(da error)

ALTER TABLE Producto 
ADD CONSTRAINT CK_precio_mayor_cero CHECK (precio>0);

--Actualizando los precios que no cumplen la condicion

UPDATE Producto
SET precio=NULL WHERE (precio<=0);

--Ahora si se puede ejecutar el agregador de la restriccion

--Se intenta insertar un producto con precio negativo, da error por la restriccion que agregue
INSERT INTO Producto
VALUES
	('Turbo', -1000);

/*Es necesario primero corregir los datos , ya que si existe alguno que no respeta la nueva restriccion
esta restriccion no se aplicara*/
