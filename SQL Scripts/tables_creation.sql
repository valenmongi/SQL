/* Query para trabajo practico*/

/* Creacion de tablas: siempre se comienza por las tablas que no contienen foreign key*/

create schema if not exists sector_glp_argentina;

create table if not exists localidad(
id_localidad int not null primary key auto_increment,
Provincia varchar(255) not null,
Localidad varchar(255) not null);


create table if not exists categoria(
id_categoria int not null primary key auto_increment,
Actividad_principal varchar(255) not null);


create table if not exists empresa(
id_empresa int not null primary key auto_increment,
Razon_social varchar(255) not null,
CUIL int not null,
localidad varchar(255),
Direccion varchar(255),
id_localidad int not null,
foreign key (id_localidad) references localidad (id_localidad));

create table if not exists empresa_categoria(
id_empresa int not null,
id_categoria int not null,
foreign key (id_empresa) references empresa (id_empresa),
foreign key (id_categoria) references categoria (id_categoria));


create table if not exists venta(
id_venta int not null primary key auto_increment,
Año int not null,
Mes int not null,
id_empresa_venta int not null,
id_empresa_compra int not null,
id_categoria_venta int not null,
id_categoria_compra int not null,
foreign key (id_empresa_venta) references empresa (id_empresa),
foreign key (id_empresa_compra) references empresa (id_empresa),
foreign key (id_categoria_venta) references categoria (id_categoria),
foreign key (id_categoria_compra) references categoria (id_categoria));


create table if not exists producto(
id_producto int not null primary key auto_increment,
Tipo_producto varchar(255) not null,
Precio_sin_iva int not null,
Precio_con_iva int not null);


create table if not exists detalle_venta(
id_detalle_venta int not null primary key auto_increment,
Planta_carga varchar(255) not null,
Volumen int not null,
id_producto int not null,
id_venta int not null,
id_localidad int not null,
foreign key (id_producto) references producto (id_producto),
foreign key (id_venta) references venta (id_venta),
foreign key (id_localidad) references localidad (id_localidad));
