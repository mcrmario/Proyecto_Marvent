create database marventprueba;
 
use marventprueba;


create table proveedor(
IdProveedor int auto_increment primary key,
ProvEmailPersonal varchar (80) not null, 
ProvNombre varchar (50) not null, 
ProvTelPersonal varchar (10) not null,
ProvDireccion varchar (50) not null);

create table rol(
IdRol int auto_increment primary key,
RolTipoEmpleado int (1)  null,
RolTipoAdministrador int (1)  null,
RolNotas varchar (150)  null);


create table producto(
IdProducto int auto_increment primary key,
ProdNombreProducto varchar (100) not null,
ProdPrecio int (10) not null,
ProdMarca varchar (60) not null,
ProdFechaExpedicion date not null,
ProdCantidad int (10) not null,
IdProveedorFK int not null);

create table credito(
IdCredito int auto_increment primary key,
CreCapacidad int (8) not null);

create table productoandventas(
VentProdCantidad int (10) not null,
IdProductoFK int not null,
IdVentasFK int not null);

create table ventas(
IdVentas int auto_increment primary key,
VentPrecioTotal int (10) not null,
VentCantidadTotal int (10) not null,
IdClienteFK int not null,
IdUsuariosFK int not null,
IdCreditoFK int not null);

create table cliente(
IdCliente int auto_increment primary key,
ClieCedula varchar (12) not null,
ClieNombre varchar (50) not null,
ClieTelPersonal varchar (10) not null,
ClieDireccion varchar (50) not null,
ClieEmailPersonal varchar (80) not null);

create table usuarios(
IdUsuarios int auto_increment primary key,
UsuNombre varchar (50) not null,
UsuTelPersonal varchar (10) not null,
UsuEmailPersonal varchar (80) not null,
UsuDireccion varchar (50) not null,
UsuContrasena varchar (150) not null,
IdRolFK int not null);

alter table usuarios
add constraint FKrolusuarios
foreign key (IdRolFK)
references rol(IdRol);

alter table producto
add constraint FKproveedorproducto
foreign key (IdProveedorFK)
references proveedor(IdProveedor);

alter table productoandventas
add constraint FKproductoproductoandventas
foreign key (IdProductoFK)
references producto(IdProducto);

alter table productoandventas
add constraint FKventasproductoandventas
foreign key (IdVentasFK)
references ventas(IdVentas);


alter table ventas
add constraint FKclienteventas
foreign key (IdClienteFK)
references cliente(IdCliente);

alter table ventas
add constraint FKusuariosventas
foreign key (IdUsuariosFK)
references usuarios(IdUsuarios);

alter table ventas
add constraint FKcreditoventas
foreign key (IdCreditoFK)
references credito (IdCredito);


insert into proveedor (ProvEmailPersonal, ProvNombre, ProvTelPersonal, ProvDireccion)
 values ('juancarlos@gmail.com', 'Juan Carlos', '311647397', 'kr 64B #83-05');

insert into proveedor (ProvEmailPersonal, ProvNombre, ProvTelPersonal, ProvDireccion)
 values ('ernestoperez@gmail.com', 'ernesto perez', '123564896', 'kr 35 #12-35');

insert into proveedor (ProvEmailPersonal, ProvNombre, ProvTelPersonal, ProvDireccion)
 values ('sofia123@gmail.com', 'sofia lopez', '314563236', 'calle 32 #54-42 sur');

insert into proveedor (ProvEmailPersonal, ProvNombre, ProvTelPersonal, ProvDireccion)
 values ('laura@gmail.com', 'laura liliana', '365975026', 'calle 42 #35-453');

insert into proveedor (ProvEmailPersonal, ProvNombre, ProvTelPersonal, ProvDireccion)
 values ('jopse@gmail.com', 'jose luos', '469036209', 'kr 62f #32-45');


insert into producto (ProdNombreProducto, ProdPrecio, ProdMarca, ProdFechaExpedicion, ProdCantidad, IdProveedorFK )
values ('yogurt', 2000, 'alpina', '2023-02-01', 13, 1);

insert into producto (ProdNombreProducto, ProdPrecio, ProdMarca, ProdFechaExpedicion, ProdCantidad, IdProveedorFK) 
values ('arroz', 3600, 'diana', '2023-12-12', 20, 1);

insert into producto (ProdNombreProducto, ProdPrecio, ProdMarca, ProdFechaExpedicion, ProdCantidad, IdProveedorFK) 
values ('lentejas', 2600, 'diana', '2023-12-15', 20, 1);

insert into producto (ProdNombreProducto, ProdPrecio, ProdMarca, ProdFechaExpedicion, ProdCantidad, IdProveedorFK) 
values ('gomitas', 1600, 'trululu', '2022-12-25', 10, 1);

insert into producto (ProdNombreProducto, ProdPrecio, ProdMarca, ProdFechaExpedicion, ProdCantidad, IdProveedorFK) 
values ('frijol', 3200, 'exito', '2023-01-15', 50, 1);


insert into cliente (CLieCedula, ClieNombre, ClieTelPErsonal, ClieDireccion, ClieEmailPersonal)
 values (123435432,'Juan', 136942569, 'cr 46L #15-21', 'juan@hotmail.com');

insert into cliente (CLieCedula, ClieNombre, ClieTelPErsonal, ClieDireccion, ClieEmailPersonal)
 values (1202355412,'sharik', 136942569, 'cll 12 #15-01', 'sharik12@gmail.com');

insert into cliente (CLieCedula, ClieNombre, ClieTelPErsonal, ClieDireccion, ClieEmailPersonal)
 values (135468415,'estiven', 136942561, 'transv 86c #36-15', 'estiven_02@hotmail.com');

insert into cliente (CLieCedula, ClieNombre, ClieTelPErsonal, ClieDireccion, ClieEmailPersonal)
 values (32136564,'orlando', 136942592, 'cr 90 #01-13', 'orlando13@gmail.com');

insert into cliente (CLieCedula, ClieNombre, ClieTelPErsonal, ClieDireccion, ClieEmailPersonal)
 values (12354694,'xiomara', 136942562, 'cll 7 sur #12-45', 'xiomara36@hotmail.com');
 
 insert into credito (CreCapacidad) 
values(250000);

insert into credito (CreCapacidad) 
values(360000);

insert into credito (CreCapacidad) 
values(120000);

insert into credito (CreCapacidad) 
values(80000);

insert into credito (CreCapacidad) 
values(400000);

insert into rol (RolTipoEmpleado, RoltipoAdministrador, RolNotas)
values (1,0,'Recordar comprar ciertas cosas');

insert into rol (RolTipoEmpleado, RoltipoAdministrador, RolNotas)
values (0,1,'Comprar mas productos de aseos');

insert into rol (RolTipoEmpleado, RoltipoAdministrador, RolNotas)
values (1,0,'Verificar listado de productos en existencia');

insert into rol (RolTipoEmpleado, RoltipoAdministrador, RolNotas)
values (0,1,'Llamar al proveedor para pedir mas productos');

insert into rol (RolTipoEmpleado, RoltipoAdministrador, RolNotas)
values (1,0,'Pagar a empleados la quincena');


insert into usuarios (UsuNombre, UsuTelPersonal, UsuEmailPersonal, UsuDireccion, UsuContrasena, IdRolFK)
values ('yaret', '1365987452', 'yaretsita223@gmail.com', 'cr 22f #36-12', 'hasjdos123', 1);

insert into usuarios (UsuNombre, UsuTelPersonal, UsuEmailPersonal, UsuDireccion, UsuContrasena, IdRolFK)
values ('karen', '1569423659', 'karen42@hotmail.com', 'cll 42w #32b-15sur', 'klsjaldas356', 2);

insert into usuarios (UsuNombre, UsuTelPersonal, UsuEmailPersonal, UsuDireccion, UsuContrasena, IdRolFK)
values ('diego', '1459872365', 'diegoarroz@gmail.com', 'cr 15d #16-01', 'klajsdn365', 4);

insert into usuarios (UsuNombre, UsuTelPersonal, UsuEmailPersonal, UsuDireccion, UsuContrasena, IdRolFK)
values ('valentina', '478523412', 'vallentina@gmail.com', 'cll 12x #36c-38', 'fklgjdlkf986', 1);

insert into usuarios (UsuNombre, UsuTelPersonal, UsuEmailPersonal, UsuDireccion, UsuContrasena, IdRolFK)
values ('santiago', '1245967853', 'santiagueto@gmail.com', 'cr 24i #42sur-12', 'mxlznx159', 5);

insert into ventas(VentPrecioTotal,  VentCantidadTotal, IdClienteFK, IdUsuariosFK, IdCreditoFK) 
values (25000, 13, 2, 3, 5); 

insert into ventas(VentPrecioTotal,  VentCantidadTotal, IdClienteFK, IdUsuariosFK, IdCreditoFK) 
values (50000, 12, 1, 5, 2); 

insert into ventas(VentPrecioTotal,  VentCantidadTotal, IdClienteFK, IdUsuariosFK, IdCreditoFK) 
values (12000, 04, 1, 3, 4); 

insert into ventas(VentPrecioTotal,  VentCantidadTotal, IdClienteFK, IdUsuariosFK, IdCreditoFK) 
values (26000, 14, 4, 3, 1); 
 
 insert into productoandventas (VentProdCantidad, IdVentasFK, IdProductoFK) values (1,1,3);

insert into productoandventas (VentProdCantidad, IdVentasFK, IdProductoFK) values (2,4,3);

insert into productoandventas (VentProdCantidad, IdVentasFK, IdProductoFK) values (3,2,5);

insert into productoandventas (VentProdCantidad, IdVentasFK, IdProductoFK) values (4,1,5);

insert into productoandventas (VentProdCantidad, IdVentasFK, IdProductoFK) values (5,2,3);