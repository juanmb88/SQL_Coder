-- use hoteleria;

-- ----------------------------------------
-- VISTA 1
-- ----------------------------------------

DROP VIEW IF EXISTS Vista_Reservas_Clientes_Habitaciones;
CREATE VIEW Vista_Reservas_Clientes_Habitaciones AS
SELECT R.id_reserva, C.nombre_cliente, C.apellido_cliente, C.correo_electronico,
    H.tipo_habitacion, H.estado_habitacion, R.fecha_entrada, R.fecha_salida
FROM Reservas R
INNER JOIN Clientes C ON R.id_cliente = C.id_cliente
INNER JOIN Habitaciones H ON R.id_habitacion = H.id_habitacion;

-- ----------------------------------------
-- VISTA 2
-- ----------------------------------------

DROP VIEW IF EXISTS Vista_Reservas_Pendientes;
CREATE VIEW Vista_Reservas_Pendientes AS
SELECT R.id_reserva, C.nombre_cliente, C.apellido_cliente, H.tipo_habitacion,
    R.fecha_entrada, R.fecha_salida
FROM Reservas R
INNER JOIN Clientes C ON R.id_cliente = C.id_cliente
INNER JOIN Habitaciones H ON R.id_habitacion = H.id_habitacion
WHERE R.estado_pago = 'Pendiente';

-- ----------------------------------------
-- VISTA 3
-- ----------------------------------------

DROP VIEW IF EXISTS Vista_Pagos_Realizados;
CREATE VIEW Vista_Pagos_Realizados AS
SELECT P.id_pago, R.id_reserva, C.nombre_cliente, C.apellido_cliente,
    P.metodo_pago, P.monto_pago, P.fecha_pago
FROM Pagos P
INNER JOIN Reservas R ON P.id_reserva = R.id_reserva
INNER JOIN Clientes C ON R.id_cliente = C.id_cliente
WHERE P.estado = 'Aprobado';

-- ----------------------------------------
-- VISTA 4
-- ----------------------------------------

DROP VIEW IF EXISTS Vista_Reservas_Futuras;
CREATE VIEW Vista_Reservas_Futuras AS
SELECT R.id_reserva, C.nombre_cliente, C.apellido_cliente, H.tipo_habitacion,
    R.fecha_entrada, R.fecha_salida
FROM Reservas R
INNER JOIN Clientes C ON R.id_cliente = C.id_cliente
INNER JOIN Habitaciones H ON R.id_habitacion = H.id_habitacion
WHERE R.fecha_entrada > CURDATE();

-- ----------------------------------------
-- VISTA 5
-- ----------------------------------------

DROP VIEW IF EXISTS Vista_Clientes_Reservas;
CREATE VIEW Vista_Clientes_Reservas AS
SELECT C.id_cliente, C.nombre_cliente, C.apellido_cliente, C.correo_electronico,
    R.id_reserva, H.tipo_habitacion, R.fecha_entrada, R.fecha_salida
FROM Clientes C
INNER JOIN Reservas R ON C.id_cliente = R.id_cliente
INNER JOIN Habitaciones H ON R.id_habitacion = H.id_habitacion;

-- ----------------------------------------
-- VISTA 6
-- ----------------------------------------

DROP VIEW IF EXISTS Vista_TotalPagos_Cliente;
CREATE VIEW Vista_TotalPagos_Cliente AS
SELECT C.id_cliente, C.nombre_cliente, C.apellido_cliente, SUM(P.monto_pago) AS total_pagos
FROM Clientes C
INNER JOIN Reservas R ON C.id_cliente = R.id_cliente
INNER JOIN Pagos P ON R.id_reserva = P.id_reserva
GROUP BY C.id_cliente, C.nombre_cliente, C.apellido_cliente;



-- ----------------------------------------
-- VISTA 7
-- ----------------------------------------
DROP VIEW IF EXISTS Vista_Comentarios_Clientes;
CREATE VIEW Vista_Comentarios_Clientes AS
SELECT cc.id_comentario, c.nombre_cliente, c.apellido_cliente, cc.fecha, cc.comentario, cc.calificacion
FROM Comentarios_Calificaciones cc
JOIN Clientes c ON cc.id_cliente = c.id_cliente;




-- ----------------------------------------
-- VISTA 8
-- ----------------------------------------
DROP VIEW IF EXISTS VistaAntiguedad;
CREATE VIEW VistaAntiguedad AS
SELECT id_empleado, nombre, apellido, puesto, fecha_contratacion, salario, correo_electronico, telefono
FROM Empleados
ORDER BY fecha_contratacion;

-- ----------------------------------------
-- VISTA 9
-- ----------------------------------------
DROP VIEW IF EXISTS Vista_Salario;
CREATE VIEW Vista_Salario AS
SELECT id_empleado, nombre, apellido, puesto, fecha_contratacion, salario, correo_electronico, telefono
FROM Empleados
ORDER BY salario DESC;


-- SELECT * FROM Vista_Reservas_Clientes_Habitaciones;
-- SELECT * FROM Vista_Reservas_Pendientes;
-- SELECT * FROM Vista_Pagos_Realizados;
-- SELECT * FROM Vista_Reservas_Futuras;
-- SELECT * FROM Vista_Clientes_Reservas;
-- SELECT * FROM Vista_TotalPagos_Cliente;
-- SELECT * FROM Vista_Comentarios_Clientes;
-- SELECT * FROM VistaAntiguedad;
-- SELECT * FROM Vista_Salario;