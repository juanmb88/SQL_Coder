use hoteleria;
-- -----------------
-- FUNCION 1
-- -----------------

/*
DELIMITER //
CREATE FUNCTION obtener_habitaciones_disponibles() RETURNS VARCHAR(255)
BEGIN
    DECLARE habitaciones_disponibles VARCHAR(255);
    
    SELECT GROUP_CONCAT(id_habitacion) INTO habitaciones_disponibles
    FROM Habitaciones
    WHERE estado_habitacion = 'Disponible';
    
    RETURN habitaciones_disponibles;
END //

DELIMITER ;
SELECT obtener_habitaciones_disponibles() AS habitaciones_disponibles, GROUP_CONCAT(id_habitacion) AS numeros_habitaciones
FROM Habitaciones
WHERE estado_habitacion = 'Disponible';
*/

-- -----------------
-- FUNCION 2
-- -----------------
/*
DELIMITER //

CREATE FUNCTION obtener_pagos_realizados() RETURNS INT
BEGIN
    DECLARE pagos_realizados INT;
    
    SELECT COUNT(*) INTO pagos_realizados
    FROM Pagos;
    
    RETURN pagos_realizados;
END //

DELIMITER ;
SELECT obtener_pagos_realizados() AS pagos_realizados;
*/
-- -----------------
-- FUNCION 3 
-- -----------------
/*
DELIMITER //
CREATE FUNCTION contar_clientes() RETURNS INT
BEGIN
    DECLARE total_clientes INT;
    
    SELECT COUNT(*) INTO total_clientes
    FROM Clientes;
    
    RETURN total_clientes;
END //
DELIMITER ;

SELECT contar_clientes() AS total_clientes;
 */
-- ----------------
-- FUNCION 4
-- ----------------
/*
DELIMITER //
CREATE FUNCTION obtener_habitacion_reservada_por_cliente(apellido_cliente_param VARCHAR(30)) RETURNS VARCHAR(8)
BEGIN
    DECLARE habitacion_reservada VARCHAR(8);
    
    SELECT h.tipo_habitacion INTO habitacion_reservada
    FROM Habitaciones h
    JOIN Reservas r ON h.id_habitacion = r.id_habitacion
    JOIN Clientes c ON r.id_cliente = c.id_cliente
    WHERE c.apellido_cliente = apellido_cliente_param;
    
    RETURN habitacion_reservada;
END 
//DELIMITER ;

 SELECT obtener_habitacion_reservada_por_cliente('Ramirez') AS habitacion_reservada;
*/

-- ----------------
-- FUNCION 5
-- ----------------