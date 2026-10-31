--EJERCICIO 20

SELECT 
	COUNT(CASE WHEN estado_civil = 'C' THEN 1 END) AS 'Casado',
	COUNT(CASE WHEN estado_civil = 'S' THEN 1 END) AS 'Soltero'
FROM persona;