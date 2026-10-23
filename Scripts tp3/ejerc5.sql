--EJERCICIO 5 ELIMINACION DE UN CLIENTE CON PEDIDOS

--intento de borrar un cliente con pedidos registrados
--no se puede eliminar el cliente por que si se borrase ese cliente el registro del pedido quedaria
  --apuntano a un cliente que no existe, y ahi es donde entra la restriccion FK_pedido_cliente
DELETE Cliente WHERE cliente_id=2;

--eliminando cliente que no tiene pedido registrado
DELETE Cliente WHERE cliente_id=4;

--en este caso si se pudo borrar por que este cliente no tiene un pedido, es decir no esta dentro 
	--de la relacion pedido_cliente