--EJERCICIO 6

--modificando tabla apra agregar fecha_entrega
ALTER TABLE Pedido
	ADD fecha_entrega DATE NULL;

--actualizando fecha de entrega de algunos pedidos
UPDATE Pedido
	SET fecha_entrega='2026-10-1'
	WHERE id_pedido=1;

UPDATE Pedido
	SET fecha_entrega='2026-10-02'
	WHERE id_pedido=2;

--identificacion de los pedidos que no tiene fecha de entrega 
SELECT * FROM Pedido
	WHERE fecha_entrega IS NULL;

--indetificacion de los peiddos que no tiene fecha de entrega usando =NULL
--No muestra nada, no encuentra resultado por que da como falso la comparacion 
SELECT * FROM Pedido
	WHERE fecha_entrega=NULL;

SELECT * FROM Pedido;