--EJECRICIO 4

CREATE TABLE Pedido(
	id_pedido INT PRIMARY KEY IDENTITY,
	fecha DATE DEFAULT GETDATE(),
	importe DECIMAL(9,2) NOT NULL,
	id_cliente INT NULL,
);

--se insertan pedido con id de clientes existentes
INSERT INTO Pedido(importe, id_cliente)
	VALUES(1520.50, 1);

INSERT INTO Pedido(importe, id_cliente)
	VALUES(12300, 2);

INSERT INTO Pedido(importe, id_cliente)
	VALUES(3600, 1);

SELECT * FROM Pedido

--se configura FK al campo id_cliente con la tabla Cliente
ALTER TABLE Pedido 
	ADD CONSTRAINT FK_pedido_cliente FOREIGN KEY (id_cliente) 
	REFERENCES Cliente;

--Se intenta agregar un pedido con un id de cliente inexistente
--Se produce el fallo por la restriccion FK_pedido_cliente, por que no exisite el id_cliente=6 en tabla Cliente
INSERT INTO Pedido(importe, id_cliente)
	VALUES(1845.55, 6);

