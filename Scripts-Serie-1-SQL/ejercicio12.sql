--EJERCICIO 12

SELECT 
CONCAT(apellido_nombre, '-', telefono, '-', fecha_nacimiento)
FROM persona
WHERE sexo= 'F';