--EJERCICIO 12

--Intento eliminar el sector con id=3, sabiendo que hay un empleado refenciado a el
--No se puede eliminar por el principio de referencia, un empleado esta referenciando a este sector
DELETE FROM Sector
	WHERE id_sector=3;

--Precediendo de la siguient manera para poder eliminar el sector
--Primero reasignar a null es sector de los empleados que esten en el sector 3
SELECT * FROM Empleado;

UPDATE Empleado
	SET codigo_sector=NULL WHERE codigo_sector=3;

--Una vez liberada la dependecia de la tabla Empleado hacia la tabla Sector
--Se puede proceder a eliminar el sector 3
DELETE FROM Sector
	WHERE id_sector=3;

SELECT * FROM Sector;

