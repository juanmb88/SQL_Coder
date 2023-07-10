use hoteleria;

/*
-- -------------------
--  TRIGGERS 1 
-- Activará automáticamente cuando se registre mas camas que la capacidad maxima de la habitacion
-- -------------------

DROP TRIGGER IF EXISTS trg_validar_capacidad_maxima;
DELIMITER //
CREATE TRIGGER trg_validar_capacidad_maxima
BEFORE INSERT ON Habitaciones
FOR EACH ROW
BEGIN
    IF NEW.num_camas > NEW.capacidad_maxima THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El número de camas no puede ser mayor que la capacidad máxima.';
    END IF;
END //
DELIMITER ;



INSERT INTO Habitaciones (tipo_habitacion, estado_habitacion, precio_noche, num_camas, capacidad_maxima, descripcion)
VALUES ('Doble', 'Disponible', 100, 3, 1, 'Habitación con vista al mar');

SELECT * FROM Habitaciones;

*/
-- -------------------
--  TRIGGERS 2-- registra modificaciones en la tabla clientes 
-- -------------------
/*

-- tabla Bitacora_Modificaciones_Clientes
DROP TABLE IF EXISTS Bitacora_Modificaciones_Clientes;
CREATE TABLE IF NOT EXISTS Bitacora_Modificaciones_Clientes (
    id_registro INT AUTO_INCREMENT,
    id_cliente INT,
    fecha_modificacion TIMESTAMP,
    descripcion VARCHAR(100),
    PRIMARY KEY (id_registro),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);


DROP TRIGGER IF EXISTS tr_modificacion_cliente;
DELIMITER //
CREATE TRIGGER tr_modificacion_cliente
AFTER UPDATE ON Clientes
FOR EACH ROW
BEGIN
    INSERT INTO Bitacora_Modificaciones_Clientes (id_cliente, fecha_modificacion, descripcion)
    VALUES (NEW.id_cliente, CURRENT_TIMESTAMP, 'Se ha modificado un dato en la tabla Clientes');
END //
DELIMITER ;

UPDATE Clientes
SET apellido_cliente = 'Mengano'
WHERE id_cliente = 1;

SELECT * FROM Bitacora_Modificaciones_Clientes;

*/
-- -------------------
--  TRIGGERS 3 -- registra modificaciones  de pagos
-- -------------------

/*
DROP TRIGGER IF EXISTS trg_auditar_montos_pago;
DELIMITER //
CREATE TRIGGER trg_auditar_montos_pago
AFTER UPDATE ON Pagos
FOR EACH ROW
BEGIN
    IF OLD.monto_pago <> NEW.monto_pago THEN
        INSERT INTO Auditoria_Pagos (id_pago, monto_pago_anterior, monto_pago_nuevo, fecha_modificacion)
        VALUES (OLD.id_pago, OLD.monto_pago, NEW.monto_pago, NOW());
    END IF;
END //
DELIMITER ;



UPDATE Pagos
SET monto_pago = 278
WHERE id_pago = 12;



select * from Pagos;

*/

-- -------------------
--  TRIGGERS 4 -- 
-- -------------------


-- Tabla

DROP TABLE IF EXISTS bitacora_reservas;
CREATE TABLE bitacora_reservas (
    id_reserva INT NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    usuario VARCHAR(50) NOT NULL,
    accion VARCHAR(20) NOT NULL
);


-- Trigger para antes de eliminar una reserva


DROP TRIGGER IF EXISTS trg_reservas_before_delete;
DELIMITER //
CREATE TRIGGER trg_reservas_before_delete
BEFORE DELETE ON Reservas
FOR EACH ROW
BEGIN
    INSERT INTO bitacora_reservas (id_reserva, fecha, hora, usuario, accion)
    VALUES (OLD.id_reserva, CURRENT_DATE(), CURRENT_TIME(), USER(), 'DELETE');
END//
DELIMITER ;


-- Trigger después de insertar una nueva reserva


DROP TRIGGER IF EXISTS trg_reservas_after_insert;
DELIMITER //
CREATE TRIGGER trg_reservas_after_insert
AFTER INSERT ON Reservas
FOR EACH ROW
BEGIN
    INSERT INTO bitacora_reservas (id_reserva, fecha, hora, usuario, accion)
    VALUES (NEW.id_reserva, CURRENT_DATE(), CURRENT_TIME(), USER(), 'INSERT');
END//
DELIMITER ;

/*

INSERT INTO Reservas (id_cliente, id_habitacion, fecha_entrada, fecha_salida, num_personas, num_noches, estado_pago)
VALUES (3, 5, '2023-06-20', '2023-06-25', 2, 5, 'Pendiente');

SELECT * FROM bitacora_reservas;
SELECT * FROM bitacora_reservas WHERE accion = 'DELETE'; -- Registros de acciones DELETE
SELECT * FROM bitacora_reservas WHERE accion = 'INSERT'; -- Registros de acciones INSERT

*/
