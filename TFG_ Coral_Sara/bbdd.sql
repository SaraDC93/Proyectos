CREATE DATABASE bizcochadas;
USE bizcochadas;

CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    precio INT,
    stock INT,
    imagen VARCHAR(100)
);

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(100)
);

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATETIME DEFAULT CURRENT_TIMESTAMP -- Agregué un ejemplo de columna
);

CREATE TABLE productos_pedidos (
    id_producto INT,
    id_pedido INT,
    cantidad INT,
    FOREIGN KEY (id_producto) REFERENCES productos(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (id_producto, id_pedido)
);


INSERT INTO productos (nombre, precio, stock, imagen) VALUES

