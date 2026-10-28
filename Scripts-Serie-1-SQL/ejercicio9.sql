--EJERCICIO 9

SELECT TOP 4 WITH TIES * 
FROM persona
ORDER BY apellido_nombre;

/*Si dentro de esos 4 registros se encuentran 2 o mas que son iguales para el comparador order by
se toma el primero, si se incluye WITH TIES estos registros repetidos los incluye y muestra, por mas
que supere el limite puesto en top.

En este caso a diferencia del ejercicio anterior se puede ver que solo muestra 4, tal cual puesto 
en el limite TOP, se debe a que como no hay limite de comparacion en ORDER BY, se compara el campo
apellido_nombre por completo, lo que disminuye la posibilidad de encontrar repetidos, para que sea 
repetido tiene que coincidir en nombre completo*/ 
