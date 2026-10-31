--EJERCICIO 19

SELECT *, 
	CASE
		WHEN importe < 10000 THEN importe*1.15
		WHEN importe >= 10000 AND importe <=20000 THEN importe*1.1
		ELSE importe * 1.05
	END AS 'Importe actualizado'
FROM gasto	
ORDER BY importe DESC


