--EJERCICIO 15

SELECT 
	provincia_id,
	localidad_id, 
	nombre
FROM localidad
WHERE provincia_id IN (1,2)
ORDER BY provincia_id, nombre;

--Aprovechando el orden de los parametros en ORDER BY se puede hacer que se agrupen
--en este caso primero ordena por provincia_id, si encuentra otro id igual entonces ordena 
--por el otro parametro  nombre