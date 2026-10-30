--EJERCICIO 12

SELECT 
CONCAT(apellido_nombre, '-', telefono, '-', fecha_nacimiento) AS 'Datos Personales'
FROM persona
WHERE sexo= 'F';