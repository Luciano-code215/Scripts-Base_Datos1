CREATE TABLE Producto(
	id_producto INT IDENTITY(1,1),
	descripcion VARCHAR(100) NOT NULL,
	precio FLOAT NOT NULL,
	estado VARCHAR(10) DEFAULT 'ACTIVO'
	CONSTRAINT PK_id_producto PRIMARY KEY (id_producto)
);

--insertado de productos
INSERT INTO Producto (descripcion, precio, estado)
	VALUES ('Heladera congeladora turbo', '958000', 'INACTIVO');

--sin estado
INSERT INTO Producto (descripcion, precio)
	VALUES ('Microondas traido del espacio', '120000');

INSERT INTO Producto (descripcion, precio, estado)
	VALUES ('Despensero de mdf', '75000', 'DEVUELTO');

--sin estado
INSERT INTO Producto (descripcion, precio)
	VALUES ('Aspiradora Voltra', '159000');

INSERT INTO Producto (descripcion, precio, estado)
	VALUES ('Afeitadora Voltra Razor', '128000', 'INACTIVO');

SELECT * FROM Producto;

ALTER TABLE Producto 
	ADD CONSTRAINT no_menor_igual_0 CHECK (precio>0);
	

--intentando agregar producto con precio negativo
INSERT INTO Producto (descripcion, precio, estado)
	VALUES ('Afeitadora Voltra Razor', '-128000', 'INACTIVO');

UPDATE Producto 
	SET precio=3000 WHERE id_producto=4;

SELECT * FROM Producto;

UPDATE Producto 
	SET precio=0 WHERE id_producto=4;
