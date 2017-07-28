CREATE TABLE cliente (
  id_cliente INT NOT NULL,
  nombre VARCHAR(45) NULL,
  apellido_paterno VARCHAR(45) NULL,
  apellido_materno VARCHAR(45) NULL,
  pais VARCHAR(45) NULL,
  codigo_postal INT NULL,
  telefono VARCHAR(45) NULL,
  PRIMARY KEY (id_cliente));

CREATE TABLE empleado (
  id_empleado INT NOT NULL,
  nombre VARCHAR(45) NULL,
  apellido_paterno VARCHAR(45) NULL,
  pais VARCHAR(45) NULL,
  codigo_postal INT NULL,
  telefono VARCHAR(45) NULL,
  PRIMARY KEY (id_empleado));

CREATE TABLE categoria (
  id_categoria INT NOT NULL,
  descripcion VARCHAR(45) NULL,
  PRIMARY KEY (id_categoria));

CREATE TABLE vendedor (
id_vendedor INT NOT NULL,
nombre VARCHAR(45) NULL,
pais VARCHAR(45) NULL,
codigo_postal INT NULL,
mail VARCHAR(45) NULL,
PRIMARY KEY (id_vendedor));

CREATE TABLE producto (
  no_producto INT NOT NULL,
  nombre VARCHAR(45) NULL,
  descripcion VARCHAR(45) NULL,
  precio DECIMAL(10) NULL,
  inventario INT NULL,
  id_categoria INT NULL,
  PRIMARY KEY (no_producto),
  CONSTRAINT id_categoria
    FOREIGN KEY (id_categoria)
    REFERENCES categoria (id_categoria));


CREATE TABLE orden (
  id_orden INT NOT NULL,
  fecha DATE NULL,
  id_cliente INT NULL,
  id_empleado INT NULL,
  PRIMARY KEY (id_orden),
  CONSTRAINT id_cliente
    FOREIGN KEY (id_cliente)
    REFERENCES cliente (id_cliente),
  CONSTRAINT id_empleado
    FOREIGN KEY (id_empleado)
    REFERENCES empleado (id_empleado));

CREATE TABLE orden_detalle (
  id_orden INT NOT NULL,
  no_producto INT NOT NULL,
  PRIMARY KEY (id_orden, no_producto),
  CONSTRAINT id_orden
    FOREIGN KEY (id_orden)
    REFERENCES orden (id_orden),
  CONSTRAINT no_producto
    FOREIGN KEY (no_producto)
    REFERENCES producto (no_producto));


CREATE TABLE vendedor_producto (
  no_producto INT NOT NULL,
  id_vendedor INT NOT NULL,
  dias_entrega INT NULL,
  PRIMARY KEY (no_producto, id_vendedor),
  CONSTRAINT no_producto_vendedor
    FOREIGN KEY (no_producto)
    REFERENCES producto (no_producto),
  CONSTRAINT id_vendedor
    FOREIGN KEY (id_vendedor)
    REFERENCES vendedor (id_vendedor));
