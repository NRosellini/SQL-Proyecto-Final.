/*
===============================================
 PROYECTO FINAL - BASE DE DATOS RELACIONAL
 "Shop Online" - Idea Rosellini.

 Curso: SQL - Coderhouse.
 Autor: Nicolas Francisco Rosellini.
 Fecha: 01/08/2025.
 Descripción: 
   Este script crea la base de datos relacional correspondiente al modelo de negocio propuesto.
   Incluye la creación de tablas, relaciones, restricciones, inserción de datos iniciales y 
   otros objetos como vistas, procedimientos almacenados, funciones y triggers.

===============================================
*/

-- Creación de Schema -- 

CREATE SCHEMA shop_online;

-- Usar Schema creado -- 

USE shop_online;

-- Creación de tablas relacionales --

CREATE TABLE prenda (
id_prenda INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_proveedor INT NOT NULL,
descripcion_prenda VARCHAR (50) NOT NULL,
categoria VARCHAR (30) NOT NULL,
talle VARCHAR (5) NOT NULL,
cantidad INT NOT NULL,
precio FLOAT NOT NULL
);

CREATE TABLE cliente (
id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombre_completo_cliente VARCHAR (50) NOT NULL,
email_cliente VARCHAR (20) NOT NULL,
telefono_cliente VARCHAR (30) NOT NULL
);

CREATE TABLE proveedor (
id_proveedor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombre_proveedor VARCHAR (50) NOT NULL,
email_proveedor VARCHAR (20) NOT NULL,
telefono_proveedor VARCHAR (15) NOT NULL,
categoria VARCHAR (30) NOT NULL
);

CREATE TABLE vendedor (
id_vendedor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nombre_completo_vendedor VARCHAR (50) NOT NULL,
email_vendedor VARCHAR (20) NOT NULL,
telefono_vendedor VARCHAR (15) NOT NULL,
cantidad_ventas INT NOT NULL,
ventas_totales FLOAT NOT NULL
);

CREATE TABLE metodo_pago (
id_metodo_pago INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
tipo_pago VARCHAR(100) NOT NULL,
cuotas INT,
recargo FLOAT,
moneda VARCHAR(30) NOT NULL
);

CREATE TABLE venta (
id_venta INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_prenda INT NOT NULL,
id_cliente INT NOT NULL,
id_vendedor INT NOT NULL,
id_metodo_pago INT NOT NULL,
fecha_venta DATE NOT NULL,
importe FLOAT,
FOREIGN KEY (id_prenda) REFERENCES prenda (id_prenda),
FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
FOREIGN KEY (id_vendedor) REFERENCES vendedor (id_vendedor),
FOREIGN KEY (id_metodo_pago) REFERENCES metodo_pago (id_metodo_pago)
);

CREATE TABLE detalle_facturacion (
id_factura INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
id_venta INT NOT NULL,
id_prenda INT NOT NULL,
id_metodo_pago INT NOT NULL,
FOREIGN KEY (id_venta) REFERENCES venta (id_venta),
FOREIGN KEY (id_prenda) REFERENCES prenda (id_prenda),
FOREIGN KEY (id_metodo_pago) REFERENCES metodo_pago (id_metodo_pago),
cantidad INT NOT NULL
);

-- Modificar tabla ya creada --

ALTER TABLE prenda ADD CONSTRAINT fk_idProveedor_prendas
FOREIGN KEY (id_proveedor) REFERENCES proveedor (id_proveedor);