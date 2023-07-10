use hoteleria;
-- Población de la tabla "Clientes"
/*
 INSERT INTO Clientes (nombre_cliente, apellido_cliente, correo_electronico, telefono, direccion, ciudad, pais, codigo_postal, fecha_registro) VALUES
    ('Juan', 'Pérez', 'juan.perez@example.com', 123456789, 'Calle Principal 123', 'Ciudad A', 'País A', '12345', '2023-01-01'),
    ('María', 'González', 'maria.gonzalez@example.com', 987654321, 'Avenida Central 456', 'Ciudad B', 'País B', '54321', '2023-01-02'),
    ('Pedro', 'López', 'pedro.lopez@example.com', 555555555, 'Calle Secundaria 789', 'Ciudad C', 'País C', '67890', '2023-01-03'),
    ('Laura', 'Ramírez', 'laura.ramirez@example.com', 111222333, 'Avenida Principal 789', 'Ciudad D', 'País D', '98765', '2023-01-04'),
    ('Carlos', 'Martínez', 'carlos.martinez@example.com', 444555666, 'Calle Secundaria 321', 'Ciudad E', 'País E', '56789', '2023-01-05'),
    ('Ana', 'López', 'ana.lopez@example.com', 777888999, 'Calle Central 987', 'Ciudad F', 'País F', '45678', '2023-01-06'),
    ('Sergio', 'Hernández', 'sergio.hernandez@example.com', 222333444, 'Avenida Principal 456', 'Ciudad G', 'País G', '87654', '2023-01-07'),
    ('Julia', 'Torres', 'julia.torres@example.com', 555666777, 'Calle Principal 321', 'Ciudad H', 'País H', '76543', '2023-01-08'),
    ('Ricardo', 'Gómez', 'ricardo.gomez@example.com', 888999000, 'Avenida Central 654', 'Ciudad I', 'País I', '65432', '2023-01-09'),
    ('Luisa', 'Rodríguez', 'luisa.rodriguez@example.com', 333444555, 'Calle Secundaria 987', 'Ciudad J', 'País J', '54321', '2023-01-10'),
    ('Juan', 'Balugano', 'j.balugano@example.com', 1234527780, 'San martin 352', 'Zarate', 'Argentina', 54321, '2023-06-14'),
    ('Andrés', 'Rodríguez', 'andres.rodriguez@example.com', 234567890, 'Rivadavia 789', 'La Plata', 'Argentina', '67890', '2023-01-03'),
    ('Mariana', 'Sánchez', 'mariana.sanchez@example.com', 345678901, 'Sarmiento 456', 'Tres Arroyos', 'Argentina', '98765', '2023-01-04'),
    ('Lucio', 'Fernández', 'lucio.fernandez@example.com', 456789012, 'Belgrano 321', 'Bahía Blanca', 'Argentina', '56789', '2023-01-05'),
    ('Sofía', 'Martínez', 'sofia.martinez@example.com', 567890123, 'San Martín 987', 'Olavarría', 'Argentina', '45678', '2023-01-06'),
    ('Eduardo', 'Gómez', 'eduardo.gomez@example.com', 678901234, 'Mitre 654', 'Mar del Plata', 'Argentina', '87654', '2023-01-07'),
    ('Melisa', 'Torres', 'melisa.torres@example.com', 789012345, 'Roca 321', 'General Pico', 'Argentina', '76543', '2023-01-08'), 
    ('Silvia', 'Suárez', 'silvia.suarez@example.com', 901234567, 'Sarmiento 987', 'Bragado', 'Argentina', '54321', '2023-01-10'),
    ('Florencia', 'López', 'florencia.lopez@example.com', 123456789, 'Alsina 456', 'Quilmes', 'Argentina', '54321', '2023-01-02'),
    ('Ramiro', 'Martínez', 'ramiro.martinez@example.com', 234567890, 'Rivadavia 789', 'Bahía Blanca', 'Argentina', '67890', '2023-01-03'),
	('Valeria', 'Santacruz', 'valeria.santacruz@example.com', 789012345, 'Roca 123', 'Salta', 'Argentina', '12345', '2023-01-01'),
    ('Leonardo', 'Beltrán', 'leonardo.beltran@example.com', 890123456, 'Alberdi 456', 'San Miguel', 'Argentina', '54321', '2023-01-02'),
    ('Gabriela', 'Altamirano', 'gabriela.altamirano@example.com', 901234567, 'San Martín 789', 'Jujuy', 'Argentina', '67890', '2023-01-03'),
    ('Hernán', 'Navarro', 'hernan.navarro@example.com', 012345678, 'Mitre 321', 'San Juan', 'Argentina', '98765', '2023-01-04'),  
    ('Melina', 'Villalba', 'melina.villalba@example.com', 123456789, 'Belgrano 654', 'Neuquén', 'Argentina', '56789', '2023-01-05'),
    ('Federico', 'Molina', 'federico.molina@example.com', 234567890, 'Sarmiento 987', 'Río Cuarto', 'Argentina', '45678', '2023-01-06'),
    ('Marcela', 'Coronel', 'marcela.coronel@example.com', 345678901, 'San Martín 321', 'Formosa', 'Argentina', '87654', '2023-01-07'),
      ('Gonzalo', 'Fernández', 'gonzalo.fernandez@example.com', 345678901, 'San Martín 123', 'La Plata', 'Argentina', '12345', '2023-01-01'),
    ('Marina', 'Gómez', 'marina.gomez@example.com', 456789012, 'Belgrano 456', 'Mar del Plata', 'Argentina', '54321', '2023-01-02'),
    ('Luciana', 'Torres', 'luciana.torres@example.com', 567890123, 'Mitre 789', 'Córdoba', 'Argentina', '67890', '2023-01-03'),
    ('Martín', 'Rodríguez', 'martin.rodriguez@example.com', 678901234, 'Rivadavia 321', 'Rosario', 'Argentina', '98765', '2023-01-04'),
    ('Valentina', 'López', 'valentina.lopez@example.com', 789012345, 'Sarmiento 654', 'Tandil', 'Argentina', '56789', '2023-01-05'),
    ('Matías', 'Martínez', 'matias.martinez@example.com', 890123456, 'Belgrano 987', 'San Miguel de Tucumán', 'Argentina', '45678', '2023-01-06'),
    ('Carolina', 'Suárez', 'carolina.suarez@example.com', 901234567, 'Sarmiento 321', 'Bahía Blanca', 'Argentina', '87654', '2023-01-07'),
    ('Diego', 'García', 'diego.garcia@example.com', 012345678, 'San Martín 654', 'Mendoza', 'Argentina', '76543', '2023-01-08'),
    ('Romina', 'Fernández', 'romina.fernandez@example.com', 123456789, 'Mitre 987', 'Córdoba', 'Argentina', '65432', '2023-01-09'),
    ('Gastón', 'Martínez', 'gaston.martinez@example.com', 234567890, 'Belgrano 654', 'La Plata', 'Argentina', '54321', '2023-01-10'),
    ('Carla', 'Torres', 'carla.torres@example.com', 345678901, 'Rivadavia 987', 'Rosario', 'Argentina', '12345', '2023-01-01'),
    ('Julián', 'Gómez', 'julian.gomez@example.com', 456789012, 'Sarmiento 321', 'Mar del Plata', 'Argentina', '54321', '2023-01-02'),
    ('Agustina', 'López', 'agustina.lopez@example.com', 567890123, 'San Martín 654', 'Tandil', 'Argentina', '67890', '2023-01-03'),    
    ('Sebastián', 'García', 'sebastian.garcia@example.com', 012345678, 'Jujuy 123', 'Berazategui', 'Argentina', '12345', '2023-01-01'),
    ('Carolina', 'Bustamante', 'carolina.bustamante@example.com', 567890123, 'Sarmiento 987', 'Comodoro Rivadavia', 'Argentina', '65432', '2023-01-09'),
    ('Sebastián', 'Cáceres', 'sebastian.caceres@example.com', 678901234, 'Belgrano 654', 'Concordia', 'Argentina', '54321', '2023-01-10'),
    ('Gisela', 'Olivera', 'gisela.olivera@example.com', 789012345, 'Roca 321', 'Paraná', 'Argentina', '12345', '2023-01-01'),
    ('Diego', 'Maldonado', 'diego.maldonado@example.com', 890123456, 'Alberdi 654', 'San Salvador de Jujuy', 'Argentina', '54321', '2023-01-02'),
    ('Natalia', 'Correa', 'natalia.correa@example.com', 901234567, 'San Martín 987', 'Posadas', 'Argentina', '67890', '2023-01-03');
    
 


-- Población de la tabla "Habitaciones"
INSERT INTO Habitaciones (tipo_habitacion, estado_habitacion, precio_noche, num_camas, capacidad_maxima, descripcion) VALUES
    ('Individual', 'Disponible', 100, 1, 1, 'Habitación individual con baño privado'),
    ('Doble', 'Disponible', 150, 2, 2, 'Habitación doble con dos camas individuales y baño compartido'),
    ('Suite', 'Disponible', 250, 1, 2, 'Suite con cama matrimonial, sala de estar y baño privado'),
     ('Individual', 'Disponible', 100, 1, 1, 'Habitación individual con baño privado'),
    ('Doble', 'Disponible', 150, 2, 2, 'Habitación doble con dos camas individuales y baño compartido'),
    ('Suite', 'Disponible', 250, 1, 2, 'Suite con cama matrimonial, sala de estar y baño privado'),
    ('Familiar', 'Ocupada', 200, 3, 4, 'Habitación familiar con tres camas individuales y una cama matrimonial'),
    ('VIP', 'Disponible', 300, 1, 2, 'Habitación VIP con vista al mar y servicios exclusivos'),
    ('Doble', 'Disponible', 180, 2, 2, 'Habitación doble con cama matrimonial y baño privado'),
    ('Suite', 'Ocupada', 280, 1, 2, 'Suite con cama king-size, jacuzzi y terraza privada'),
	('Individual', 'Disponible', 100, 1, 1, 'Habitación individual con baño privado'),
    ('Doble', 'Disponible', 150, 2, 2, 'Habitación doble con dos camas individuales y baño compartido'),
    ('Suite', 'Disponible', 250, 1, 2, 'Suite con cama matrimonial, sala de estar y baño privado'),
    ('Individual', 'Disponible', 100, 1, 1, 'Habitación individual con baño privado'),
    ('Doble', 'Disponible', 150, 2, 2, 'Habitación doble con dos camas individuales y baño compartido'),
    ('Suite', 'Disponible', 250, 1, 2, 'Suite con cama matrimonial, sala de estar y baño privado'),
    ('Familiar', 'Ocupada', 200, 3, 4, 'Habitación familiar con tres camas individuales y una cama matrimonial'),
    ('VIP', 'Disponible', 300, 1, 2, 'Habitación VIP con vista al mar y servicios exclusivos'),
    ('Doble', 'Disponible', 180, 2, 2, 'Habitación doble con cama matrimonial y baño privado'),
    ('Suite', 'Ocupada', 280, 1, 2, 'Suite con cama king-size, jacuzzi y terraza privada'),
    ('Individual', 'Disponible', 100, 1, 1, 'Habitación individual con baño privado'),
    ('Doble', 'Disponible', 150, 2, 2, 'Habitación doble con dos camas individuales y baño compartido'),
    ('Suite', 'Disponible', 250, 1, 2, 'Suite con cama matrimonial, sala de estar y baño privado'),
    ('Individual', 'Disponible', 100, 1, 1, 'Habitación individual con baño privado'),
    ('Doble', 'Disponible', 150, 2, 2, 'Habitación doble con dos camas individuales y baño compartido'),
    ('Suite', 'Disponible', 250, 1, 2, 'Suite con cama matrimonial, sala de estar y baño privado'),
    ('Familiar', 'Ocupada', 200, 3, 4, 'Habitación familiar con tres camas individuales y una cama matrimonial'),
    ('VIP', 'Disponible', 300, 1, 2, 'Habitación VIP con vista al mar y servicios exclusivos'),
    ('Doble', 'Disponible', 180, 2, 2, 'Habitación doble con cama matrimonial y baño privado'),
    ('Suite', 'Ocupada', 280, 1, 2, 'Suite con cama king-size, jacuzzi y terraza privada'),
    ('Individual', 'Disponible', 100, 1, 1, 'Habitación individual con baño privado'),
    ('Doble', 'Disponible', 150, 2, 2, 'Habitación doble con dos camas individuales y baño compartido'),
    ('Suite', 'Disponible', 250, 1, 2, 'Suite con cama matrimonial, sala de estar y baño privado'),
    ('Individual', 'Disponible', 100, 1, 1, 'Habitación individual con baño privado'),
    ('Doble', 'Disponible', 150, 2, 2, 'Habitación doble con dos camas individuales y baño compartido'),
    ('Suite', 'Disponible', 250, 1, 2, 'Suite con cama matrimonial, sala de estar y baño privado'),
    ('Familiar', 'Ocupada', 200, 3, 4, 'Habitación familiar con tres camas individuales y una cama matrimonial'),
    ('VIP', 'Disponible', 300, 1, 2, 'Habitación VIP con vista al mar y servicios exclusivos'),
    ('Doble', 'Disponible', 180, 2, 2, 'Habitación doble con cama matrimonial y baño privado'),
    ('Suite', 'Ocupada', 280, 1, 2, 'Suite con cama king-size, jacuzzi y terraza privada'),
    ('Individual', 'Disponible', 100, 1, 1, 'Habitación individual con baño privado'),
    ('Doble', 'Disponible', 150, 2, 2, 'Habitación doble con dos camas individuales y baño compartido'),
    ('Suite', 'Disponible', 250, 1, 2, 'Suite con cama matrimonial, sala de estar y baño privado'),
    ('Individual', 'Disponible', 100, 1, 1, 'Habitación individual con baño privado'),
    ('Doble', 'Disponible', 150, 2, 2, 'Habitación doble con dos camas individuales y baño compartido'),
    ('Suite', 'Disponible', 250, 1, 2, 'Suite con cama matrimonial, sala de estar y baño privado');
   

-- Población de la tabla "Reservas"
INSERT INTO Reservas (id_cliente, id_habitacion, fecha_entrada, fecha_salida, num_personas, num_noches, estado_pago) VALUES
    (1, 2, '2023-06-15', '2023-06-17', 1, 2, 'Pendiente'),
    (2, 4, '2023-06-16', '2023-06-19', 2, 3, 'Pagado'),
    (3, 1, '2023-06-17', '2023-06-20', 1, 3, 'Pendiente'),
	(4, 3, '2023-06-18', '2023-06-21', 2, 3, 'Pagado'),
    (5, 2, '2023-06-19', '2023-06-20', 1, 1, 'Pagado'),
    (6, 5, '2023-06-20', '2023-06-23', 3, 3, 'Pendiente'),
    (7, 1, '2023-06-21', '2023-06-24', 2, 3, 'Pagado'),
    (8, 4, '2023-06-22', '2023-06-26', 2, 4, 'Pendiente'),
    (9, 3, '2023-06-23', '2023-06-25', 1, 2, 'Pagado'),
    (10, 2, '2023-06-24', '2023-06-26', 1, 2, 'Pagado'),
	(32, 2, '2023-06-26', '2023-06-30', 1, 4, 'Pagado'),
    (58, 3, '2023-06-27', '2023-06-29', 1, 2, 'Pagado'),
    (4, 4, '2023-06-28', '2023-07-01', 2, 3, 'Pendiente'),
    (25, 5, '2023-06-29', '2023-07-03', 3, 4, 'Pagado'),
    (32, 2, '2023-07-01', '2023-07-04', 2, 3, 'Pendiente'),
    (58, 3, '2023-07-02', '2023-07-05', 1, 3, 'Pagado'),
    (4, 4, '2023-07-03', '2023-07-06', 2, 3, 'Pendiente'),
    (25, 5, '2023-07-04', '2023-07-07', 3, 3, 'Pagado'),
    (11, 1, '2023-07-05', '2023-07-08', 1, 3, 'Pendiente'),
    (32, 2, '2023-07-06', '2023-07-09', 2, 3, 'Pagado'),
    (58, 3, '2023-07-07', '2023-07-10', 1, 3, 'Pendiente'),
    (4, 4, '2023-07-08', '2023-07-11', 2, 3, 'Pagado'),
    (25, 5, '2023-07-09', '2023-07-12', 3, 3, 'Pendiente'),
    (11, 1, '2023-07-10', '2023-07-13', 1, 3, 'Pagado'),
    (32, 2, '2023-07-11', '2023-07-14', 2, 3, 'Pendiente'),
    (58, 3, '2023-07-12', '2023-07-15', 1, 3, 'Pagado'),
    (4, 4, '2023-07-13', '2023-07-16', 2, 3, 'Pendiente'),
    (25, 5, '2023-07-14', '2023-07-17', 3, 3, 'Pagado'),
    (11, 1, '2023-07-15', '2023-07-18', 1, 3, 'Pendiente');
  

-- Población de la tabla "Pagos"
INSERT INTO Pagos (id_reserva, metodo_pago, monto_pago, fecha_pago, descripcion, estado) VALUES
    (1, 'Tarjeta de crédito', 100, '2023-06-16', 'Pago inicial', 'Aprobado'),
    (2, 'Transferencia bancaria', 250, '2023-06-18', 'Pago total', 'Aprobado'),
    (3, 'Efectivo', 150, '2023-06-19', 'Pago parcial', 'Pendiente'),
	(4, 'Tarjeta de crédito', 200, '2023-06-19', 'Pago total', 'Aprobado'),
    (5, 'Transferencia bancaria', 120, '2023-06-20', 'Pago parcial', 'Pendiente'),
    (6, 'Efectivo', 180, '2023-06-21', 'Pago parcial', 'Pendiente'),
    (7, 'Tarjeta de débito', 300, '2023-06-22', 'Pago total', 'Aprobado'),
    (8, 'Tarjeta de crédito', 250, '2023-06-23', 'Pago parcial', 'Pendiente'),
    (9, 'Transferencia bancaria', 160, '2023-06-24', 'Pago total', 'Aprobado'),
    (10, 'Efectivo', 220, '2023-06-25', 'Pago total', 'Aprobado');
     
     
     
     
     
     
    -- Poblacion de la Tabla Comentarios Calificaciones
INSERT INTO Comentarios_Calificaciones (id_cliente, id_reserva, fecha, comentario, calificacion) VALUES
    (1, 1, '2023-05-01', 'Excelente servicio y atención al cliente. Definitivamente volvería.', 4.5),
    (2, 2, '2023-05-02', 'La habitación estaba muy limpia y cómoda. Muy satisfecho con mi estancia.', 4.8),
    (3, 3, '2023-05-03', 'El servicio de habitaciones fue rápido y la comida deliciosa.', 4.2),
    (4, 4, '2023-05-04', 'El personal fue amable y servicial en todo momento.', 4.6),
    (5, 5, '2023-05-05', 'Me encantó la ubicación del hotel. Hermosas vistas al mar.', 4.9),
    (6, 6, '2023-05-06', 'La experiencia fue decepcionante. La habitación no estaba limpia y el personal poco atento.', 2.3),
    (7, 7, '2023-05-07', 'El hotel cumplió todas mis expectativas. Volvería sin dudarlo.', 4.7),
    (8, 8, '2023-05-08', 'La calidad del desayuno podría mejorar. Resto del servicio fue bueno.', 3.5),
    (9, 9, '2023-05-09', 'Habitación espaciosa y cómoda. El personal fue muy amigable.', 4.4),
    (10, 10, '2023-05-10', 'Tuvimos un problema con la reserva, pero el personal lo solucionó rápidamente. Muy agradecido.', 4.1),
	(11, 63, '2023-05-11', 'El personal del hotel fue extremadamente servicial y amable. ¡Una experiencia maravillosa!', 4.7),
    (22, 64, '2023-05-12', 'La habitación estaba impecable y las instalaciones eran de primera clase. Muy satisfecho.', 4.9),
    (23, 65, '2023-05-13', 'La ubicación del hotel era perfecta para explorar la ciudad. Definitivamente lo recomendaría.', 4.6),
    (24, 66, '2023-05-14', 'Tuvimos un problema con la reserva, pero el personal del hotel lo solucionó rápidamente. Buen servicio.', 4.2),
    (25, 67, '2023-05-15', 'Las camas eran muy cómodas y pudimos descansar bien durante nuestra estancia.', 4.5),
    (26, 68, '2023-05-16', 'El desayuno ofrecido en el hotel era delicioso y variado. Una gran ventaja.', 4.8),
    (27, 69, '2023-05-17', 'El hotel cumplió todas nuestras expectativas. ¡Volveremos en nuestro próximo viaje!', 4.7),
    (29, 70, '2023-05-18', 'La limpieza de las habitaciones dejaba mucho que desear. Eso fue decepcionante.', 2.8),
    (31, 71, '2023-05-19', 'La piscina del hotel era increíble. Pasamos horas disfrutando de ella.', 4.9),
    (32, 72, '2023-05-20', 'El hotel estaba ubicado en un lugar tranquilo y pintoresco. Perfecto para relajarse.', 4.6);



INSERT INTO Empleados (id_empleado, nombre, apellido, puesto, fecha_contratacion, salario, correo_electronico, telefono, direccion)
VALUES
    (1, 'Juan', 'Pérez', 'Recepcionista', '2022-01-15', 2500, 'juan.perez@example.com', '12373890', 'CALLE 3 2033'),
    (2, 'María', 'López', 'Camarera', '2021-12-10', 2000, 'maria.lopez@example.com', '98721021', 'CALLE 6 1274'),
    (3, 'Carlos', 'Rodríguez', 'Chef', '2022-03-05', 3500, 'carlos.rodriguez@example.com', '45260123', 'CALLE 3 2033'),
    (4, 'Laura', 'García', 'Limpieza', '2022-02-20', 1800, 'laura.garcia@example.com', '78923456', 'CALLE 9 1133'),
    (5, 'Alejandro', 'Torres', 'Chef', '2021-11-30', 3200, 'alejandro.torres@example.com', '23428901', 'Avenidad Segunda 2462'),
    (6, 'Ana', 'Sánchez', 'Recepcionista', '2022-04-12', 2300, 'ana.sanchez@example.com', '56721234', 'CALLE 6 2111'),
    (7, 'Jorge', 'Martínez', 'Camarero', '2021-10-25', 1900, 'jorge.martinez@example.com', '90115678', 'CALLE 10 2211'),
    (8, 'Andrea', 'Ramírez', 'Limpieza', '2022-06-02', 1700, 'andrea.ramirez@example.com', '34599012', 'Avenidad Primera 3442'),
    (9, 'Pedro', 'Vargas', 'Recepcionista', '2022-01-05', 2400, 'pedro.vargas@example.com', '67882345', 'CALLE 2 1782'),
    (10, 'Carolina', 'Medina', 'Camarera', '2021-12-15', 1950, 'carolina.medina@example.com', '01266789', 'CALLE 12 1245');
    
*/

  -- select * from clientes;
  -- select * from reservas;
  -- select * from habitaciones;
  -- select * from pagos;
  -- select * from Comentarios_Calificaciones;
  -- select * from Empleados




