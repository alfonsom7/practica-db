##Práctica de SQL##

Para empezar accede a https://livesql.oracle.com/ crea una cuenta y entra al sistema.
Aplica los contenidos de los archivos DDL.sql y DML.sql


1.-Consulta todos los campos de todas las tablas

SELECT * FROM cliente;
SELECT * FROM orden;
SELECT * FROM empleado;
SELECT * FROM orden_detalle;
SELECT * FROM categoria;
SELECT * FROM producto;
SELECT * FROM vendedor_producto;
SELECT * FROM vendedor;

2.-Consulta el nombre y apellido de cada empleado

SELECT nombre, apellido_paterno FROM empleado;

3.-Agrégate como cliente y consulta el resultado

SELECT id_cliente FROM cliente ORDER BY id_cliente DESC FETCH NEXT 1 ROWS ONlY;
INSERT INTO cliente VALUES ((SELECT id_cliente FROM cliente ORDER BY id_cliente DESC FETCH NEXT 1 ROWS ONlY)+1, 'Alfonso', 'Mireles', 'Jacobo', 'México', 18273, '5555555555');

4.-Consulta el nombre y apellido paterno de cada cliente y el nombre y apellido paterno de cada empleado que lo ha atendido (en un mismo query)

SELECT cliente.nombre nombre_cliente, cliente.apellido_paterno apellido_cliente,
      empleado.nombre nombre_empleado, empleado.apellido_paterno apellido_empleado
FROM orden
INNER JOIN cliente ON cliente.id_cliente = orden.id_cliente
INNER JOIN empleado ON orden.id_empleado = empleado.id_empleado;

5.-Consulta cuantos productos existen de cada categoria

SELECT categoria.descripcion, COUNT(producto.no_producto)
FROM producto
INNER JOIN categoria ON producto.id_categoria = categoria.id_categoria
GROUP BY categoria.descripcion;

6.- Consulta todos los productos disponibles, quien vende cada uno, y en cuantos días te los entrega.

SELECT producto.nombre, vendedor.nombre, vendedor_producto.dias_entrega
FROM vendedor_producto
INNER JOIN producto ON producto.no_producto = vendedor_producto.no_producto
INNER JOIN vendedor ON vendedor.id_vendedor = vendedor_producto.id_vendedor;

7.-Consulta que productos ha ordenado cada cliente

SELECT cliente.id_cliente, cliente.nombre, cliente.apellido_paterno, producto.nombre
FROM orden_detalle
INNER JOIN orden ON orden_detalle.id_orden = orden.id_orden
INNER JOIN cliente ON cliente.id_cliente = orden.id_cliente
INNER JOIN producto ON producto.no_producto = orden_detalle.no_producto

8.-Consulta cuantos productos ha ordenado cada cliente

SELECT cliente.id_cliente, cliente.nombre, cliente.apellido_paterno, COUNT(producto.no_producto) No_productos_ordenados
FROM orden_detalle
INNER JOIN orden ON orden_detalle.id_orden = orden.id_orden
INNER JOIN cliente ON cliente.id_cliente = orden.id_cliente
INNER JOIN producto ON producto.no_producto = orden_detalle.no_producto GROUP BY cliente.id_cliente, cliente.nombre, cliente.apellido_paterno;

9.-A esa última consulta agrega el total a pagar

SELECT cliente.id_cliente, cliente.nombre, cliente.apellido_paterno, COUNT(producto.no_producto) No_productos_ordenados, SUM(producto.precio) Total_A_Pagar
FROM orden_detalle
INNER JOIN orden ON orden_detalle.id_orden = orden.id_orden
INNER JOIN cliente ON cliente.id_cliente = orden.id_cliente
INNER JOIN producto ON producto.no_producto = orden_detalle.no_producto GROUP BY cliente.id_cliente, cliente.nombre, cliente.apellido_paterno;

10.-Filtra la tabla orden de acuerdo a las órdenes hechas en mayo 2017

SELECT * FROM orden WHERE fecha>=TO_DATE('01/05/2017', 'DD/MM/YYYY') AND fecha<=TO_DATE('31/05/2017', 'DD/MM/YYYY');
SELECT * FROM orden WHERE fecha BETWEEN TO_DATE('01/05/2017', 'DD/MM/YYYY') AND TO_DATE('31/05/2017', 'DD/MM/YYYY');

11.-Modifica el pais de la tabla cliente donde diga 'USA' y actualízalos por 'Estados Unidos' y consulta que el resultado haya sido exitoso.

UPDATE cliente SET pais = 'Estados Unidos' WHERE pais = 'USA';
SELECT * FROM cliente;

12.- Haz lo mismo para la tabla empleado.

UPDATE empleado SET pais = 'Estados Unidos' WHERE pais = 'USA';
SELECT * FROM empleado;

13.- Agrega una columna de tipo INT a la tabla orden para indicar que está activa

ALTER TABLE orden
ADD COLUMN activa INT NULL DEFAULT 1 AFTER fecha;


##Práctica de MongoDB##

1.- Entra a https://www.tutorialspoint.com/mongodb_terminal_online.php

2.-Ejecuta el siguiente comando para iniciar mongo

```
mongo

```

3.- Vamos a crear la base de datos

```
use tienda
```

4.- Verificamos que la base que acabamos de crear es la que estamos utilizando

```
db
```

5.- Pedimos que se muestren las BD disponibles

```
show dbs
```

6.- Creamos una colección de clientes  y una colección para productos

```
db.createCollection("clientes")
db.createCollection("productos")
```

7.- Mostramos las colecciones disponibles

```
show collections
```

8.- Inserta la información de los siguientes Clientes

```
db.clientes.insert([{nombre:'Juan', apellido_paterno:'Pérez', apellido_materno:'García', pais:'México', ordenes:[{id_orden:1, productos:[5]}]},{nombre:'Diana', apellido_paterno:'Jimenez', apellido_materno:'Galván', pais:'Argentina', ordenes:[{id_orden:2, productos:[6]}]},{nombre:'Ramiro', apellido_paterno:'Sánchez', apellido_materno:'Sosa', pais:'Chile', ordenes:[{id_orden:3, productos:[7]}]},{nombre:'Tania', apellido_paterno:'Rojas', apellido_materno:'Lozano', pais:'Colombia', ordenes:[{id_orden:4, productos:[8]}]},{nombre:'Julio', apellido_paterno:'Ochoa', apellido_materno:'Alencastre', pais:'Colombia', ordenes:[{id_orden:5, productos:[9]}]},{nombre:'Julio', apellido_paterno:'López', apellido_materno:'Arrevillaga', pais:'USA', ordenes:[{id_orden:6, productos:[5]}]},{nombre:'Julieta', apellido_paterno:'Díaz', apellido_materno:'Díaz', pais:'USA', ordenes:[{id_orden:8, productos:[10,11]}]},{nombre:'Ana', apellido_paterno:'Nuñez', apellido_materno:'Padilla', pais:'Dinamarca', ordenes:[{id_orden:9, productos:[12,13]}]},{nombre:'Mauricio', apellido_paterno:'Gutiérrez', apellido_materno:'Solís', pais:'Rusia', ordenes:[{id_orden:10, productos:[10,13]}]},{nombre:'Diego', apellido_paterno:'Hernández', apellido_materno:'Miner', pais:'China', ordenes:[{id_orden:11, productos:[1,2,5]}]},{nombre:'Daniel', apellido_paterno:'Morales', apellido_materno:'Paz', pais:'China', ordenes:[{id_orden:12, productos:[3,4,10]}]}])
```

9.- Inserta la información de los productos


```
db.productos.insert([{id_producto:4, nombre:'Pantalón', precio:500, proveedor:'Wal-mart', dias_entrega:3},{id_producto:11, nombre:'Comida para perro', precio:500, proveedor:'Wal-mart', dias_entrega:1},{id_producto:12, nombre:'Pelota', precio:500, proveedor:'Wal-mart', dias_entrega:1},{id_producto:14, nombre:'Core Java', precio:500, proveedor:'Amazon', dias_entrega:1},{id_producto:1, nombre:'Splatoon 2', precio:1500, proveedor:'Amazon', dias_entrega:1},{id_producto:2, nombre:'Halo 5', precio:1000, proveedor:'Amazon', dias_entrega:1},{id_producto:10, nombre:'Silla de bebé', precio:2000, proveedor:'Amazon', dias_entrega:5},{id_producto:5, nombre:'Avengers', precio:400, proveedor:'Amazon', dias_entrega:1},{id_producto:3, nombre:'Blusa', precio:1200, proveedor:'Amazon', dias_entrega:2},{id_producto:13, nombre:'Pequeño cerdo capitalista', precio:170, proveedor:'Amazon', dias_entrega:1},{id_producto:6, nombre:'El planeta de los simios', precio:100, proveedor:'Amazon', dias_entrega:1},{id_producto:9, nombre:'Limpiaparabrisas', precio:340, proveedor:'Chedraui', dias_entrega:1},{id_producto:8, nombre:'Sala', precio:15500, proveedor:'Chedraui', dias_entrega:5},{id_producto:7, nombre:'Licuadora', precio:1000, proveedor:'Chedraui', dias_entrega:5}])
```

10.- Encontrar a todos los Clientes

```
db.clientes.find().pretty()
```

11.- Encontrar todos los productos

```
db.productos.find().pretty()
```

12.- Encuentra todos los clientes que se llamen Julio

```
db.clientes.find({"nombre":"Julio"}).pretty()
```

13.- Encuentra en específico a Julio Ochoa Alencastre

```
db.clientes.find({$and:[{"nombre":"Julio"}, {"apellido_paterno":"Ochoa"}, {"apellido_materno":"Alencastre"}]}).pretty()
```

14.- Encuentra la información de los productos de Julio Ochoa Alencastre

```
db.clientes.find({$and:[{"nombre":"Julio"}, {"apellido_paterno":"Ochoa"}, {"apellido_materno":"Alencastre"}]}).pretty()
```

15.- Mismo ejemplo pero ahora para un cliente que tenga dos productos o más

```
var result = db.clientes.findOne({$and:[{"nombre":"Mauricio"}, {"apellido_paterno":"Gutiérrez"}, {"apellido_materno":"Solís"}]}, {"ordenes":1})
db.productos.find({"id_producto":{"$in":result.ordenes[0]["productos"]}}).pretty()
```

16.- Agrega el campo calle a uno de los Clientes

```
db.clientes.update({nombre: "Julio"}, {$set:{calle:"Linares"}})
```
