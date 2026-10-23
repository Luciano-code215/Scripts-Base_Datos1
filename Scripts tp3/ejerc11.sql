--EJERCICIO 11

--codgio sector debe definirse como que acepta null, lo cual ya esta 

--intentando cambiar a vacio el codigo sector
--la sentencia es rechazada e interviene la restriccion de calve foranea, no existe referencia para 
--una cadena vacia
UPDATE Empleado
	SET codigo_sector=''
	WHERE id_empleado=2;

--paso a null un codigo sector de un empleado para dejarlo momentaneamente sin sector
UPDATE Empleado
	SET codigo_sector=NULL
	WHERE id_empleado=2;

--muestro los empleados que no tienen codigo sector
SELECT * FROM Empleado
	WHERE codigo_sector IS NULL;

SELECT * FROM Empleado;

--un codigo inexistente no es lo mismo que un NULL por que si un codigo no existe entonces 
--dara error por la restriccion de clave foranea
