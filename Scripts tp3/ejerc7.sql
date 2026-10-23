--EJERCICIO 7

--se modifca la tabla Producto para que acepte una descripcion de hasta 80 caracteres
ALTER TABLE Producto 
	ALTER COLUMN descripcion VARCHAR(80) NOT NULL;

--comprabando que los datos existentes se mantuvieron 
SELECT * FROM Producto

--modificando un producto colocando una descripciond de mas de 30 caracteres
UPDATE Producto 
	SET descripcion='Aspiradora Voltra, con todos sus accesorios, desde los necesario'
	WHERE id_producto=4;

--la modificacion puede hacerse por que se esta expandiendo la capaciadad de la columna,
--no afectando a los datos existentes. Si se quisiera disminuir la capacidad por debajo si no seria
--posible por que ya exisitirian registros que tiene mas espacio ocupado.