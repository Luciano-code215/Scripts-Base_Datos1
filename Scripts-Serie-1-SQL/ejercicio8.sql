--EJERCICIO 8

SELECT TOP 4  WITH TIES *
FROM persona
ORDER BY LEFT(apellido_nombre, 7);

/*en este ejercicio se puede notar que se muestran los repetidos, 
los cuales son los que se repieten en las 7 primeras letras, como el 
apellido AGUIRRE*/