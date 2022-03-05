create database Empresa1;
use Empresa1;
create table Cliente (
idCliente int unsigned not null auto_increment,
nombre varchar(100) not null,
apellido varchar(100) not null,
dni int unsigned not null,
direccion varchar(100) not null,
telefono int unsigned not null,
email varchar(100) not null, 
fecha_nac date not null,
primary key (idCliente)
);
create table producto(
idProducto int unsigned not null auto_increment,
nombre varchar(110) not null,
precio float unsigned not null,
codigo int unsigned not null,
cantidad int unsigned not null,
primary key (idProducto)
);
create table proveedor(
idProvedor int unsigned not null auto_increment,
nombre varchar(110) not null,
producto varchar(110) not null,
cuit int unsigned not null,
direccion varchar(150) not null,
telefono varchar (50),
email varchar(50),
primary key (idProvedor)
);

create table cliente_producto(
idcompra int unsigned not null auto_increment,
producto varchar(110) not null,
fecha date not null,
precio float,
Clienteid int unsigned not null,
Productoid int unsigned not null,
primary key (idsuministro),
foreign key (Clienteid) references cliente (idCliente),
foreign key (Productoid) references producto (idProducto)
);

create table producto_proveedor(
idsuministro int unsigned not null auto_increment,
producto varchar(110) not null,
fecha date not null,
precio float,
Clienteid int unsigned not null,
Productoid int unsigned not null,
primary key (idsuministro),
foreign key (Clienteid) references cliente (idCliente),
foreign key (Productoid) references producto (idProducto)
);


