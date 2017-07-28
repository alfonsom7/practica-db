/*Clientes*/
INSERT INTO cliente VALUES (1, 'Juan', 'Pérez', 'García', 'México', 13246, '1111111111');
INSERT INTO cliente VALUES (2, 'Diana', 'Jimenez', 'Galván', 'Argentina', 23421, '2222222222');
INSERT INTO cliente VALUES (3, 'Ramiro', 'Sánchez', 'Sosa', 'Chile', 75346, '3333333333');
INSERT INTO cliente VALUES (4, 'Tania', 'Rojas', 'Lozano', 'Colombia', 79464, '444444444');
INSERT INTO cliente VALUES (5, 'Julio', 'Ochoa', 'Alencastre', 'Colombia', 34123, '555555555');
INSERT INTO cliente VALUES (6, 'Julio', 'López', 'Arrevillaga', 'USA', 42312, '6767676767');
INSERT INTO cliente VALUES (7, 'Sandra', 'Meneses', 'Mata', 'USA', 53231, '3434343434');
INSERT INTO cliente VALUES (8, 'Julieta', 'Díaz', 'Díaz', 'USA', 63421, '2323232323');
INSERT INTO cliente VALUES (9, 'Ana', 'Nuñez', 'Padilla', 'Dinamarca', 32315, '3434343434');
INSERT INTO cliente VALUES (10, 'Mauricio', 'Gutiérrez', 'Solís', 'Rusia', 55532, '89898989');
INSERT INTO cliente VALUES (11, 'Diego', 'Hernández', 'Miner', 'China', 34343, '90909090');
INSERT INTO cliente VALUES (12, 'Daniel', 'Morales', 'Paz', 'China', 61231, '7878787878');
INSERT INTO cliente VALUES (13, 'Laura', 'Olaya', 'Ibañez', 'México', 11123, '9191919191');
INSERT INTO cliente VALUES (14, 'Saúl', 'Balderrama', 'Cortés', 'México', 43243, '2222223333');
INSERT INTO cliente VALUES (15, 'Noemi', 'Benitez', 'García', 'México', 64777, '44423136843');

/*Categorías*/
INSERT INTO categoria VALUES (1, 'Videojuegos');
INSERT INTO categoria VALUES (2, 'Ropa');
INSERT INTO categoria VALUES (3, 'Películas');
INSERT INTO categoria VALUES (4, 'Hogar');
INSERT INTO categoria VALUES (5, 'Auto');
INSERT INTO categoria VALUES (6, 'Mascotas');
INSERT INTO categoria VALUES (7, 'Libros');

/*Empleado*/

INSERT INTO empleado VALUES (1, 'Ramón', 'Cendejaz', 'México', 38273, '3453323453');
INSERT INTO empleado VALUES (2, 'Deyanira', 'Martínez', 'México', 61231, '5543321353');
INSERT INTO empleado VALUES (3, 'Monserrat', 'López', 'México', 4313, '3423452462');
INSERT INTO empleado VALUES (4, 'Rúl', 'Araujo', 'Chile', 34213, '22123132342');
INSERT INTO empleado VALUES (5, 'Tomás', 'Rodríguez', 'USA', 22113, '5435632345');

/*Producto*/

INSERT INTO producto VALUES (1,'Splatoon 2', 'Videojuego Splatoon 2 para Nintendo Switch', 1500.0, 13, 1);
INSERT INTO producto VALUES (2,'Halo 5', 'Videojuego para Xbox ONE', 1000.0, 11, 1);
INSERT INTO producto VALUES (3,'Blusa', 'Blusa de color azul talla M', 1200.0, 35, 2);
INSERT INTO producto VALUES (4,'Pantalón', 'Pantalón de mezclilla Diesel', 500.0, 90, 2);
INSERT INTO producto VALUES (5,'Avengers', 'Blu-ray 2 discos', 400.0, 23, 3);
INSERT INTO producto VALUES (6,'El planeta de los simios', 'DVD 1 disco', 100.0, 3, 3);
INSERT INTO producto VALUES (7,'Licuadora', 'Licuadora Black and decker', 1000.0, 5, 4);
INSERT INTO producto VALUES (8,'Sala', 'Sala beige de tres piezas', 15500.0, 2, 4);
INSERT INTO producto VALUES (9,'Limpiaparabrisas', 'Limpia parabrisas 2', 340.0, 20, 5);
INSERT INTO producto VALUES (10,'Silla de bebé', 'Silla de bebé para auto', 2000.0, 20, 5);
INSERT INTO producto VALUES (11,'Comida para perro', 'Bolsa de comida para perro', 500.0, 3, 6);
INSERT INTO producto VALUES (12,'Pelota', 'Pelota especial para perro', 500.0, 3, 6);
INSERT INTO producto VALUES (13,'Pequeño cerdo capitalista', 'Libro de finanzas personales', 170.0, 23, 7);
INSERT INTO producto VALUES (14,'Core Java', 'Libro de lenguaje de programación Java', 500.0, 30, 7);

/* Vendedor */
INSERT INTO vendedor VALUES (1, 'Wal-mart', 'USA', 27436, 'walmart@gmail.com');
INSERT INTO vendedor VALUES (2, 'Amazon', 'USA', 22312, 'amazon@gmail.com');
INSERT INTO vendedor VALUES (3, 'Chedraui', 'México', 55322, 'chedraui@gmail.com');

/*Vendedor producto*/

INSERT INTO vendedor_producto VALUES(1,2,1);
INSERT INTO vendedor_producto VALUES(2,2,1);
INSERT INTO vendedor_producto VALUES(3,2,2);
INSERT INTO vendedor_producto VALUES(4,1,3);
INSERT INTO vendedor_producto VALUES(5,2,1);
INSERT INTO vendedor_producto VALUES(6,2,1);
INSERT INTO vendedor_producto VALUES(7,3,5);
INSERT INTO vendedor_producto VALUES(8,3,5);
INSERT INTO vendedor_producto VALUES(9,3,1);
INSERT INTO vendedor_producto VALUES(10,2,5);
INSERT INTO vendedor_producto VALUES(11,1,1);
INSERT INTO vendedor_producto VALUES(12,1,1);
INSERT INTO vendedor_producto VALUES(13,2,1);
INSERT INTO vendedor_producto VALUES(14,2,1);

/*orden*/
INSERT INTO orden VALUES(1, TO_DATE('15/01/2017', 'DD/MM/YYYY'), 1, 5);
INSERT INTO orden VALUES(2, TO_DATE('17/02/2017', 'DD/MM/YYYY'), 2, 4);
INSERT INTO orden VALUES(3, TO_DATE('14/03/2017', 'DD/MM/YYYY'), 3, 3);
INSERT INTO orden VALUES(4, TO_DATE('18/04/2017', 'DD/MM/YYYY'), 4, 2);
INSERT INTO orden VALUES(5, TO_DATE('13/05/2017', 'DD/MM/YYYY'), 5, 1);
INSERT INTO orden VALUES(6, TO_DATE('19/03/2017', 'DD/MM/YYYY'), 6, 1);
INSERT INTO orden VALUES(7, TO_DATE('12/04/2017', 'DD/MM/YYYY'), 7, 2);

INSERT INTO orden VALUES(8, TO_DATE('20/04/2017', 'DD/MM/YYYY'), 8, 3);
INSERT INTO orden VALUES(9, TO_DATE('1/05/2017', 'DD/MM/YYYY'), 9, 4);
INSERT INTO orden VALUES(10, TO_DATE('5/01/2017', 'DD/MM/YYYY'), 10, 5);

INSERT INTO orden VALUES(11, TO_DATE('2/02/2017', 'DD/MM/YYYY'), 11, 5);
INSERT INTO orden VALUES(12, TO_DATE('4/02/2017', 'DD/MM/YYYY'), 12, 4);

/*INSERT INTO orden VALUES(1, TO_DATE('3/03/2017', 'DD/MM/YYYY'), 13, 3);
INSERT INTO orden VALUES(1, TO_DATE('1/09/2017', 'DD/MM/YYYY'), 14, 2);/*

/*ORDEN_DETALLE*/
INSERT INTO orden_detalle VALUES(1, 5);
INSERT INTO orden_detalle VALUES(2, 6);
INSERT INTO orden_detalle VALUES(3, 7);
INSERT INTO orden_detalle VALUES(4, 8);
INSERT INTO orden_detalle VALUES(5, 9);
INSERT INTO orden_detalle VALUES(6, 5);

INSERT INTO orden_detalle VALUES(8, 10);
INSERT INTO orden_detalle VALUES(8, 11);
INSERT INTO orden_detalle VALUES(9, 12);
INSERT INTO orden_detalle VALUES(9, 13);
INSERT INTO orden_detalle VALUES(10, 13);
INSERT INTO orden_detalle VALUES(10, 10);

INSERT INTO orden_detalle VALUES(11, 1);
INSERT INTO orden_detalle VALUES(11, 2);
INSERT INTO orden_detalle VALUES(11, 5);
INSERT INTO orden_detalle VALUES(12, 3);
INSERT INTO orden_detalle VALUES(12, 4);
INSERT INTO orden_detalle VALUES(12, 10);
