--EJERCICIO 21

SELECT 
	SUM(importe) AS Sumatoria,
	COUNT(*) AS Cantidad,
	AVG(importe)As Promedio
FROM gasto;