--Ejercicio 15

--Creado y poblando tabla segun ejercicio
CREATE TABLE Producto(
	codigo_producto INT PRIMARY KEY IDENTITY(1,1),
	descripcion VARCHAR(80) NOT NULL,
	precio FLOAT NOT NULL,
	codigo_categoria INT NOT NULL,
	nombre_categoria VARCHAR(50) NOT NULL
);

INSERT INTO Producto(descripcion, precio, codigo_categoria, nombre_categoria)
VALUES
	('Teclado', 25000, 10, 'Perifericos'),
	('Mouse', 18000, 10, 'Perifericos'),
	('Monitor', 210000, 20, 'Monitores'),
	('Webcam', 45000, 10, 'Perifericos'),
	('Notebook', 850000, 30, 'Computadoras');

SELECT * FROM Producto;

--Resolucion del ejercicio 

--codigo_categoria y nombre_categoria deben pasar a una nueva tabla Categoria

CREATE TABLE Categoria(
	codigo_categoria INT PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL
);

--Poblar la tabla con los datos de catogoria no repetidos presentes en tabla Producto
INSERT INTO Categoria (codigo_categoria, nombre)
SELECT DISTINCT codigo_categoria, nombre_categoria FROM Producto;

SELECT * FROM Categoria;

--Establezco relacion entre Producto y Categoria 
ALTER TABLE Producto 
ADD CONSTRAINT PK_Producto_Categoria FOREIGN KEY (codigo_categoria) REFERENCES Categoria;

--Elimino informacion redundante de Producto 
ALTER TABLE Producto
DROP COLUMN nombre_categoria;

--El orden para realizar esta operacion es 
--1-Crear tabla Categoria
--2-Poblar tabla con con los datos no repetidos
--3-Establecer relacion 
--4-Eliminar nombre_categoria de Producto(si este paso se hace antes de poblar la tabla se perderan los datos)
