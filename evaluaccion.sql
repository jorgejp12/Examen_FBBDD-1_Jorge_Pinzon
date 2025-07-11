CREATE DATABASE campusbike;
GO

USE campusbike;
GO

CREATE TABLE provedor (
    nom_provedor VARCHAR(100) PRIMARY key,
    num_provedor VARCHAR(10),
    direccion_prov VARCHAR(20),
    termino_consumo VARCHAR,
    pedido VARCHAR

);

CREATE TABLE venta (
    cod_venta VARCHAR PRIMARY key,
    fecha_venta VARCHAR
);

CREATE TABLE cliente (
    id_cliente INT PRIMARY key,
    nom_cliente VARCHAR(100),
    num_cliente VARCHAR(10),
    direccion VARCHAR(20),
    historial VARCHAR
);

CREATE TABLE compra (
    cod_compra VARCHAR PRIMARY KEY,
    fecha_compra VARCHAR(20),
    pedido_fk VARCHAR,
    FOREIGN key (pedido_fk) REFERENCES provedor(pedido)
);

CREATE TABLE venta_compra (
    cod_venta_fk VARCHAR,
    cod_compra_fk VARCHAR,
    FOREIGN KEY (cod_venta_fk) REFERENCES venta(cod_venta),
    FOREIGN key (cod_compra_fk) REFERENCES compra(cod_compra)
);

CREATE TABLE venta_cliente (
    id_cliente_fk VARCHAR,
    cod_venta_fk VARCHAR,
    FOREIGN KEY (id_cliente_fk) REFERENCES cliente(id_cliente),
    FOREIGN KEY (cod_venta_fk) REFERENCES venta(cod_venta)
),

CREATE TABLE inventario_ciclas (
    cod_compra_fk VARCHAR,
    cod_venta_fk VARCHAR,
    FOREIGN KEY (cod_compra_fk) REFERENCES compra(cod_compra),
    FOREIGN KEY (cod_venta_fk) REFERENCES venta(cod_venta)
);