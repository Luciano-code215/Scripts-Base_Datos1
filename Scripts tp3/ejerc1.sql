--Creacion de tabla cliente 
CREATE TABLE Cliente(
	cliente_id INT IDENTITY(1,1),
	nombre VARCHAR(25) NOT NULL,
	apellido VARCHAR(25) NOT NULL,
	email VARCHAR(30) NULL,
	fecha_alta DATE DEFAULT '2026-01-01',
	CONSTRAINT PK_cliente_id PRIMARY KEY (cliente_id),
);

--agrego la restriccion posterior a la cracion de la tabla
ALTER TABLE cliente ADD CONSTRAINT UQ_email UNIQUE (email);

--inserto datos
INSERT INTO Cliente (nombre, apellido, email) 
	VALUES ('Luciano', 'Pedotti', 'luciano_pedotti@gmail.com');

INSERT INTO Cliente (nombre, apellido, email)
	VALUES ('Eduardo', 'Lopez', 'edu_lopez@gmail.com');

INSERT INTO Cliente (nombre, apellido, email)
	VALUES ('Joan', 'Mauri', 'joan_mauri@gmail.com');

--cliente sin mail
INSERT INTO Cliente (nombre, apellido)
	VALUES ('Alguien', 'Gomez');

SELECT * FROM Cliente;

--insertando alguno con correo repetido 
INSERT INTO Cliente(nombre, apellido, email)
	VALUES ('Lucas', 'Gomez', 'luciano_pedotti@gmail.com');