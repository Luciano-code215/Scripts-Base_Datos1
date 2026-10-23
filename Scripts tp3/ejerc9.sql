--EJERCICIO 9

--agrego la nueva columna estado, todo en null
ALTER TABLE Pedido
	ADD estado VARCHAR(10) NULL;

--actualizo el estado de los registros existentes como pendiente 
UPDATE Pedido
	SET estado='PENDIENTE'
	WHERE estado IS NULL;
--agrego la restriccion de que estado solo puede ser pendiente, enviado o entregado
ALTER TABLE Pedido
	ADD CONSTRAINT CK_Empleado_estado 
	CHECK (estado IN ('PENDIENTE', 'ENVIADO', 'ENTREGADO'));

--cambio el estado del pedido con id 1 a enviado
UPDATE Pedido
	SET estado='ENVIADO'
	WHERE id_pedido=1;

--intento cambiar el estado de un registro a cancelado
--el intento es rechazado por que 'cancelado' no esta dentro los terminos que 
--puede valer el campo estado
UPDATE Pedido
	SET estado='CANCELADO'
	WHERE id_pedido=2;

SELECT * FROM Pedido;