DROP DATABASE IF EXISTS hoteleria;
CREATE DATABASE hoteleria;

create table Clientes(
id_cliente int  auto_increment,
 nombre_cliente varchar(30) not null,
 apellido_cliente varchar(30) not null,
 correo_electronico varchar(40) not null,
 telefono int not null,
 primary key (id_cliente));
 

 
 create table Habitaciones(
id_habitacion int not null auto_increment,
tipo_habitacion varchar(8) not null,
estado_habitacion varchar(15) not null,
precio_noche int not null,
 primary key (id_habitacion));
 
  create table Reservas(
id_reserva int not null auto_increment,
 id_cliente int not null,
 id_habitacion int not null,
fecha_entrada date not null,
fecha_salida date not null,
foreign key (id_cliente) references Clientes(id_cliente),
foreign key(id_habitacion) references Habitaciones(id_habitacion),
 primary key (id_reserva));

 
 
 create table Pagos( id_pago int not null auto_increment,
 id_reserva int not null ,
 metodo_pago varchar(20) not null,
 monto_pago int not null,
 fecha_pago date not null,
 primary key(id_pago),
 foreign key(id_reserva) references Reservas(id_reserva)); 