use hoteleria;
-- Este procedimiento almacenado permite registrar un nuevo cliente en la base de datos.
DROP PROCEDURE IF EXISTS RegistrarCliente;

DELIMITER //
CREATE PROCEDURE RegistrarCliente(
    IN nombre_cliente_param VARCHAR(50),
    IN apellido_cliente_param VARCHAR(50),
    IN correo_electronico_param VARCHAR(40),
    IN telefono_param INT,
    IN direccion_param VARCHAR(50),
    IN ciudad_param VARCHAR(50),
    IN pais_param VARCHAR(50),
    IN codigo_postal_param VARCHAR(10),
    IN fecha_registro_param DATE
)
BEGIN
    INSERT INTO Clientes (
        nombre_cliente,
        apellido_cliente,
        correo_electronico,
        telefono,
        direccion,
        ciudad,
        pais,
        codigo_postal,
        fecha_registro
    )
    VALUES (
        nombre_cliente_param,
        apellido_cliente_param,
        correo_electronico_param,
        telefono_param,
        direccion_param,
        ciudad_param,
        pais_param,
        codigo_postal_param,
        fecha_registro_param
    );
END
 // DELIMITER ;


-- CALL RegistrarCliente('juan', 'balugano', 'j.balugano@example.com', 123456789, 'calle principal 123', 'campana', 'argentina', '12345', '2023-01-01');
select * from clientes;
-- ---------------
-- STORED PROCEDURE 2
/*devuelve cliente segun numero de reserva*/
-- ---------------
/*
DROP PROCEDURE IF EXISTS ObtenerReservasPorCliente;
DELIMITER //

CREATE PROCEDURE ObtenerReservasPorCliente(
    IN id_cliente_param INT
)
BEGIN
    SELECT r.id_reserva, r.fecha_entrada, r.fecha_salida, c.nombre_cliente, c.apellido_cliente, h.tipo_habitacion, h.estado_habitacion
    FROM Reservas r
    JOIN Habitaciones h ON r.id_habitacion = h.id_habitacion
    JOIN Clientes c ON r.id_cliente = c.id_cliente
     
END //


DELIMITER ;

CALL ObtenerReservasPorCliente(3); 

-- ---------------
-- STORED PROCEDURE 3
/*devolverá el ID del pago, el apellido del cliente, la fecha del pago, el monto del pago y el método de pago para el cliente especificado.*/
-- ---------------
/*
DROP PROCEDURE IF EXISTS RealizarPago;

DELIMITER //
CREATE PROCEDURE RealizarPago(
    IN id_reserva_param INT,
    IN metodo_pago_param VARCHAR(20),
    IN monto_pago_param INT,
    IN fecha_pago_param DATE,
    IN descripcion_param VARCHAR(100)
)
BEGIN
    INSERT INTO Pagos (
        id_reserva,
        metodo_pago,
        monto_pago,
        fecha_pago,
        descripcion,
        estado
    )
    VALUES (
        id_reserva_param,
        metodo_pago_param,
        monto_pago_param,
        fecha_pago_param,
        descripcion_param,
        'Aprobado'
    );
END //

DELIMITER ;

SELECT p.id_pago, c.apellido_cliente, p.fecha_pago, p.monto_pago, p.metodo_pago
FROM Pagos p
JOIN Reservas r ON p.id_reserva = r.id_reserva
JOIN Clientes c ON r.id_cliente = c.id_cliente
WHERE c.id_cliente = 10;
