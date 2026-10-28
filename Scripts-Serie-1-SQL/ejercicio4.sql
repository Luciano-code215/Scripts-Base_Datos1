--EJERCICIO 4

SELECT * FROM gasto;

SELECT 
	edificio_id, 
	SUM (importe) * 1.20 AS "Sin formato",
	CAST(ROUND(SUM (importe) * 1.20, 1) AS DECIMAL(10,1)) AS "Redondeado a 1 digito decimal",
	CAST(ROUND(SUM (importe) * 1.20, 1, 1) AS DECIMAL(10,1)) AS "Truncado a 1 digito decimal"
	FROM gasto
GROUP BY edificio_id
ORDER BY edificio_id ASC;

