use tienda18;
create table  clientes(
	cedula_cliente bigint not null primary key,
    direccion_cliente varchar(255),
    email_cliente varchar(255),
    nombre_cliente varchar(255),
    telefono_cliente varchar(255)
);

create table roles(
	rol integer not null auto_increment primary key,
    tipo varchar(30) not null
);

create table usuarios(
	cedula_usuario bigint not null primary key,
    email_usuario varchar(255),
    nombre_usuario varchar(255),
    password varchar(255),
    usuario varchar(255),
    rol integer not null,
    foreign key(rol) references roles(rol)
);



create table proveedores(
	nit_proveedor bigint not null primary key,
    ciudad_proveedor varchar(255),
    direccion_proveedor varchar(255),
    nombre_proveedor varchar(255),
    telefono_proveedor varchar(255)
);



create table ventas(
	codigo_venta bigint not null auto_increment primary key,
    cedula_cliente bigint not null,
    cedula_usuario bigint not null,
    iva_venta double,
    total_venta double,
    valor_venta double,
    foreign key(cedula_cliente) references clientes(cedula_cliente),
    foreign key(cedula_usuario) references usuarios(cedula_usuario)
);

create table productos(
	codigo_producto bigint not null auto_increment primary key,
    iva_compra double,
    nit_proveedor bigint,
    nombre_producto varchar(255),
    precio_compra double,
    precio_venta double,
    foreign key(nit_proveedor) references proveedores(nit_proveedor)
);

create table detalle_ventas(
	codigo_detalle_venta bigint not null auto_increment primary key,
    cantidad_producto integer,
    codigo_producto bigint,
    codigo_venta bigint,
    valor_total double,
    valor_venta double,
    valor_iva double,
    foreign key(codigo_producto) references productos(codigo_producto),
    foreign key(codigo_venta) references ventas(codigo_venta)
);

drop table detalle_ventas;
drop table ventas;
drop table productos;
drop table clientes;
drop table proveedores;
drop table usuarios;
