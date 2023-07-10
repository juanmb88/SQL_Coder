-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: hoteleria
-- ------------------------------------------------------
-- Server version	5.7.41-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bitacora_modificaciones_clientes`
--

DROP TABLE IF EXISTS `bitacora_modificaciones_clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora_modificaciones_clientes` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `fecha_modificacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_registro`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `bitacora_modificaciones_clientes_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_modificaciones_clientes`
--

LOCK TABLES `bitacora_modificaciones_clientes` WRITE;
/*!40000 ALTER TABLE `bitacora_modificaciones_clientes` DISABLE KEYS */;
INSERT INTO `bitacora_modificaciones_clientes` VALUES (1,1,'2023-06-20 13:10:56','Se ha modificado un dato en la tabla Clientes');
/*!40000 ALTER TABLE `bitacora_modificaciones_clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora_reservas`
--

DROP TABLE IF EXISTS `bitacora_reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora_reservas` (
  `id_reserva` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `accion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_reservas`
--

LOCK TABLES `bitacora_reservas` WRITE;
/*!40000 ALTER TABLE `bitacora_reservas` DISABLE KEYS */;
INSERT INTO `bitacora_reservas` VALUES (83,'2023-06-20','09:37:05','root@localhost','INSERT');
/*!40000 ALTER TABLE `bitacora_reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(30) NOT NULL,
  `apellido_cliente` varchar(30) NOT NULL,
  `correo_electronico` varchar(40) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `pais` varchar(30) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan','Mengano','juan.perez@example.com',123456789,'Calle Principal 123','Tandil','Argentina','12345','2023-01-01'),(2,'María','González','maria.gonzalez@example.com',987654321,'Avenida Central 456','Tandil','Argentina','54321','2023-01-02'),(3,'Pedro','López','pedro.lopez@example.com',555555555,'Calle Secundaria 789','Tandil','Argentina','67890','2023-01-03'),(4,'Laura','Ramírez','laura.ramirez@example.com',111222333,'Avenida Principal 789','Ciudad Buenos Aires','Argentina','98765','2023-01-04'),(5,'Carlos','Martínez','carlos.martinez@example.com',444555666,'Calle Secundaria 321','Ciudad Buenos Aires','Argentina','56789','2023-01-05'),(6,'Ana','López','ana.lopez@example.com',777888999,'Calle Central 987','Ciudad Buenos Aires','Argentina','45678','2023-01-06'),(7,'Sergio','Hernández','sergio.hernandez@example.com',222333444,'Avenida Principal 456','Ciudad Buenos Aires','Argentina','87654','2023-01-07'),(8,'Julia','Torres','julia.torres@example.com',555666777,'Calle Principal 321','Ciudad Buenos Aires','Argentina','76543','2023-01-08'),(9,'Ricardo','Gómez','ricardo.gomez@example.com',888999000,'Avenida Central 654','Ciudad Buenos Aires','Argentina','65432','2023-01-09'),(10,'Luisa','Rodríguez','luisa.rodriguez@example.com',333444555,'Calle Secundaria 987','Ciudad Buenos Aires','Argentina','54321','2023-01-10'),(11,'Juan','Balugano','j.balugano@example.com',1234527780,'San martin 352','Zarate','Argentina','54321','2023-06-14'),(22,'Andrés','Rodríguez','andres.rodriguez@example.com',234567890,'Rivadavia 789','La Plata','Argentina','67890','2023-01-03'),(23,'Mariana','Sánchez','mariana.sanchez@example.com',345678901,'Sarmiento 456','Tres Arroyos','Argentina','98765','2023-01-04'),(24,'Lucio','Fernández','lucio.fernandez@example.com',456789012,'Belgrano 321','Bahía Blanca','Argentina','56789','2023-01-05'),(25,'Sofía','Martínez','sofia.martinez@example.com',567890123,'San Martín 987','Olavarría','Argentina','45678','2023-01-06'),(26,'Eduardo','Gómez','eduardo.gomez@example.com',678901234,'Mitre 654','Mar del Plata','Argentina','87654','2023-01-07'),(27,'Melisa','Torres','melisa.torres@example.com',789012345,'Roca 321','General Pico','Argentina','76543','2023-01-08'),(29,'Silvia','Suárez','silvia.suarez@example.com',901234567,'Sarmiento 987','Bragado','Argentina','54321','2023-01-10'),(31,'Florencia','López','florencia.lopez@example.com',123456789,'Alsina 456','Quilmes','Argentina','54321','2023-01-02'),(32,'Ramiro','Martínez','ramiro.martinez@example.com',234567890,'Rivadavia 789','Bahía Blanca','Argentina','67890','2023-01-03'),(33,'Valeria','Santacruz','valeria.santacruz@example.com',789012345,'Roca 123','Salta','Argentina','12345','2023-01-01'),(34,'Leonardo','Beltrán','leonardo.beltran@example.com',890123456,'Alberdi 456','San Miguel','Argentina','54321','2023-01-02'),(35,'Gabriela','Altamirano','gabriela.altamirano@example.com',901234567,'San Martín 789','Jujuy','Argentina','67890','2023-01-03'),(36,'Hernán','Navarro','hernan.navarro@example.com',12345678,'Mitre 321','San Juan','Argentina','98765','2023-01-04'),(37,'Melina','Villalba','melina.villalba@example.com',123456789,'Belgrano 654','Neuquén','Argentina','56789','2023-01-05'),(38,'Federico','Molina','federico.molina@example.com',234567890,'Sarmiento 987','Río Cuarto','Argentina','45678','2023-01-06'),(39,'Marcela','Coronel','marcela.coronel@example.com',345678901,'San Martín 321','Formosa','Argentina','87654','2023-01-07'),(41,'Carolina','Bustamante','carolina.bustamante@example.com',567890123,'Sarmiento 987','Comodoro Rivadavia','Argentina','65432','2023-01-09'),(46,'Gonzalo','Fernández','gonzalo.fernandez@example.com',345678901,'San Martín 123','La Plata','Argentina','12345','2023-01-01'),(47,'Marina','Gómez','marina.gomez@example.com',456789012,'Belgrano 456','Mar del Plata','Argentina','54321','2023-01-02'),(48,'Luciana','Torres','luciana.torres@example.com',567890123,'Mitre 789','Córdoba','Argentina','67890','2023-01-03'),(49,'Martín','Rodríguez','martin.rodriguez@example.com',678901234,'Rivadavia 321','Rosario','Argentina','98765','2023-01-04'),(50,'Valentina','López','valentina.lopez@example.com',789012345,'Sarmiento 654','Tandil','Argentina','56789','2023-01-05'),(51,'Matías','Martínez','matias.martinez@example.com',890123456,'Belgrano 987','San Miguel de Tucumán','Argentina','45678','2023-01-06'),(52,'Carolina','Suárez','carolina.suarez@example.com',901234567,'Sarmiento 321','Bahía Blanca','Argentina','87654','2023-01-07'),(53,'Diego','García','diego.garcia@example.com',12345678,'San Martín 654','Mendoza','Argentina','76543','2023-01-08'),(54,'Romina','Fernández','romina.fernandez@example.com',123456789,'Mitre 987','Córdoba','Argentina','65432','2023-01-09'),(55,'Gastón','Martínez','gaston.martinez@example.com',234567890,'Belgrano 654','La Plata','Argentina','54321','2023-01-10'),(56,'Carla','Torres','carla.torres@example.com',345678901,'Rivadavia 987','Rosario','Argentina','12345','2023-01-01'),(57,'Julián','Gómez','julian.gomez@example.com',456789012,'Sarmiento 321','Mar del Plata','Argentina','54321','2023-01-02'),(58,'Agustina','López','agustina.lopez@example.com',567890123,'San Martín 654','Tandil','Argentina','67890','2023-01-03'),(59,'Sebastián','García','sebastian.garcia@example.com',12345678,'Jujuy 123','Berazategui','Argentina','12345','2023-01-01'),(60,'Carolina','Bustamante','carolina.bustamante@example.com',567890123,'Sarmiento 987','Comodoro Rivadavia','Argentina','65432','2023-01-09'),(61,'Sebastián','Cáceres','sebastian.caceres@example.com',678901234,'Belgrano 654','Concordia','Argentina','54321','2023-01-10'),(62,'Gisela','Olivera','gisela.olivera@example.com',789012345,'Roca 321','Paraná','Argentina','12345','2023-01-01'),(63,'Diego','Maldonado','diego.maldonado@example.com',890123456,'Alberdi 654','San Salvador de Jujuy','Argentina','54321','2023-01-02'),(64,'Natalia','Correa','natalia.correa@example.com',901234567,'San Martín 987','Posadas','Argentina','67890','2023-01-03');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_actualizar_fecha_registro
BEFORE INSERT ON Clientes
FOR EACH ROW
BEGIN
    SET NEW.fecha_registro = CURDATE();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_modificacion_cliente
AFTER UPDATE ON Clientes
FOR EACH ROW
BEGIN
    INSERT INTO Bitacora_Modificaciones_Clientes (id_cliente, fecha_modificacion, descripcion)
    VALUES (NEW.id_cliente, CURRENT_TIMESTAMP, 'Se ha modificado un dato en la tabla Clientes');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `comentarios_calificaciones`
--

DROP TABLE IF EXISTS `comentarios_calificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios_calificaciones` (
  `id_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_reserva` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `comentario` text,
  `calificacion` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_reserva` (`id_reserva`),
  CONSTRAINT `comentarios_calificaciones_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `comentarios_calificaciones_ibfk_2` FOREIGN KEY (`id_reserva`) REFERENCES `reservas` (`id_reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios_calificaciones`
--

LOCK TABLES `comentarios_calificaciones` WRITE;
/*!40000 ALTER TABLE `comentarios_calificaciones` DISABLE KEYS */;
INSERT INTO `comentarios_calificaciones` VALUES (1,1,1,'2023-05-01','Excelente servicio y atención al cliente. Definitivamente volvería.',4.5),(2,2,2,'2023-05-02','La habitación estaba muy limpia y cómoda. Muy satisfecho con mi estancia.',4.8),(3,3,3,'2023-05-03','El servicio de habitaciones fue rápido y la comida deliciosa.',4.2),(4,4,4,'2023-05-04','El personal fue amable y servicial en todo momento.',4.6),(5,5,5,'2023-05-05','Me encantó la ubicación del hotel. Hermosas vistas al mar.',4.9),(6,6,6,'2023-05-06','La experiencia fue decepcionante. La habitación no estaba limpia y el personal poco atento.',2.3),(7,7,7,'2023-05-07','El hotel cumplió todas mis expectativas. Volvería sin dudarlo.',4.7),(8,8,8,'2023-05-08','La calidad del desayuno podría mejorar. Resto del servicio fue bueno.',3.5),(9,9,9,'2023-05-09','Habitación espaciosa y cómoda. El personal fue muy amigable.',4.4),(10,10,10,'2023-05-10','Tuvimos un problema con la reserva, pero el personal lo solucionó rápidamente. Muy agradecido.',4.1),(61,11,63,'2023-05-11','El personal del hotel fue extremadamente servicial y amable. ¡Una experiencia maravillosa!',4.7),(62,22,64,'2023-05-12','La habitación estaba impecable y las instalaciones eran de primera clase. Muy satisfecho.',4.9),(63,23,65,'2023-05-13','La ubicación del hotel era perfecta para explorar la ciudad. Definitivamente lo recomendaría.',4.6),(64,24,66,'2023-05-14','Tuvimos un problema con la reserva, pero el personal del hotel lo solucionó rápidamente. Buen servicio.',4.2),(65,25,67,'2023-05-15','Las camas eran muy cómodas y pudimos descansar bien durante nuestra estancia.',4.5),(66,26,68,'2023-05-16','El desayuno ofrecido en el hotel era delicioso y variado. Una gran ventaja.',4.8),(67,27,69,'2023-05-17','El hotel cumplió todas nuestras expectativas. ¡Volveremos en nuestro próximo viaje!',4.7),(68,29,70,'2023-05-18','La limpieza de las habitaciones dejaba mucho que desear. Eso fue decepcionante.',2.8),(69,31,71,'2023-05-19','La piscina del hotel era increíble. Pasamos horas disfrutando de ella.',4.9),(70,32,72,'2023-05-20','El hotel estaba ubicado en un lugar tranquilo y pintoresco. Perfecto para relajarse.',4.6);
/*!40000 ALTER TABLE `comentarios_calificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `puesto` varchar(50) NOT NULL,
  `fecha_contratacion` date NOT NULL,
  `salario` decimal(10,2) NOT NULL,
  `correo_electronico` varchar(40) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Juan','Pérez','Recepcionista','2022-01-15',2500.00,'juan.perez@example.com',12373890,'CALLE 3 2033'),(2,'María','López','Camarera','2021-12-10',2000.00,'maria.lopez@example.com',98721021,'CALLE 6 1274'),(3,'Carlos','Rodríguez','Chef','2022-03-05',3500.00,'carlos.rodriguez@example.com',45260123,'CALLE 3 2033'),(4,'Laura','García','Limpieza','2022-02-20',1800.00,'laura.garcia@example.com',78923456,'CALLE 9 1133'),(5,'Alejandro','Torres','Chef','2021-11-30',3200.00,'alejandro.torres@example.com',23428901,'Avenidad Segunda 2462'),(6,'Ana','Sánchez','Recepcionista','2022-04-12',2300.00,'ana.sanchez@example.com',56721234,'CALLE 6 2111'),(7,'Jorge','Martínez','Camarero','2021-10-25',1900.00,'jorge.martinez@example.com',90115678,'CALLE 10 2211'),(8,'Andrea','Ramírez','Limpieza','2022-06-02',1700.00,'andrea.ramirez@example.com',34599012,'Avenidad Primera 3442'),(9,'Pedro','Vargas','Recepcionista','2022-01-05',2400.00,'pedro.vargas@example.com',67882345,'CALLE 2 1782'),(10,'Carolina','Medina','Camarera','2021-12-15',1950.00,'carolina.medina@example.com',1266789,'CALLE 12 1245');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitaciones`
--

DROP TABLE IF EXISTS `habitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitaciones` (
  `id_habitacion` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_habitacion` varchar(40) NOT NULL,
  `estado_habitacion` varchar(15) NOT NULL,
  `precio_noche` int(11) NOT NULL,
  `num_camas` int(11) DEFAULT NULL,
  `capacidad_maxima` int(11) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_habitacion`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitaciones`
--

LOCK TABLES `habitaciones` WRITE;
/*!40000 ALTER TABLE `habitaciones` DISABLE KEYS */;
INSERT INTO `habitaciones` VALUES (1,'Individual','Disponible',100,1,1,'Habitación individual con baño privado'),(2,'Doble','Disponible',150,2,2,'Habitación doble con dos camas individuales y baño compartido'),(3,'Suite','Disponible',250,1,2,'Suite con cama matrimonial, sala de estar y baño privado'),(4,'Individual','Disponible',100,1,1,'Habitación individual con baño privado'),(5,'Doble','Disponible',150,2,2,'Habitación doble con dos camas individuales y baño compartido'),(6,'Suite','Disponible',250,1,2,'Suite con cama matrimonial, sala de estar y baño privado'),(7,'Familiar','Ocupada',200,3,4,'Habitación familiar con tres camas individuales y una cama matrimonial'),(8,'VIP','Disponible',300,1,2,'Habitación VIP con vista al mar y servicios exclusivos'),(9,'Doble','Disponible',180,2,2,'Habitación doble con cama matrimonial y baño privado'),(10,'Suite','Ocupada',280,1,2,'Suite con cama king-size, jacuzzi y terraza privada'),(11,'Individual','Disponible',100,1,1,'Habitación individual con baño privado'),(12,'Doble','Disponible',150,2,2,'Habitación doble con dos camas individuales y baño compartido'),(13,'Suite','Disponible',250,1,2,'Suite con cama matrimonial, sala de estar y baño privado'),(14,'Individual','Disponible',100,1,1,'Habitación individual con baño privado'),(15,'Doble','Disponible',150,2,2,'Habitación doble con dos camas individuales y baño compartido'),(16,'Suite','Disponible',250,1,2,'Suite con cama matrimonial, sala de estar y baño privado'),(17,'Familiar','Ocupada',200,3,4,'Habitación familiar con tres camas individuales y una cama matrimonial'),(18,'VIP','Disponible',300,1,2,'Habitación VIP con vista al mar y servicios exclusivos'),(19,'Doble','Disponible',180,2,2,'Habitación doble con cama matrimonial y baño privado'),(20,'Suite','Ocupada',280,1,2,'Suite con cama king-size, jacuzzi y terraza privada'),(21,'Individual','Disponible',100,1,1,'Habitación individual con baño privado'),(22,'Doble','Disponible',150,2,2,'Habitación doble con dos camas individuales y baño compartido'),(23,'Suite','Disponible',250,1,2,'Suite con cama matrimonial, sala de estar y baño privado'),(24,'Individual','Disponible',100,1,1,'Habitación individual con baño privado'),(25,'Doble','Disponible',150,2,2,'Habitación doble con dos camas individuales y baño compartido'),(26,'Suite','Disponible',250,1,2,'Suite con cama matrimonial, sala de estar y baño privado'),(27,'Familiar','Ocupada',200,3,4,'Habitación familiar con tres camas individuales y una cama matrimonial'),(28,'VIP','Disponible',300,1,2,'Habitación VIP con vista al mar y servicios exclusivos'),(29,'Doble','Disponible',180,2,2,'Habitación doble con cama matrimonial y baño privado'),(30,'Suite','Ocupada',280,1,2,'Suite con cama king-size, jacuzzi y terraza privada'),(31,'Individual','Disponible',100,1,1,'Habitación individual con baño privado'),(32,'Doble','Disponible',150,2,2,'Habitación doble con dos camas individuales y baño compartido'),(33,'Suite','Disponible',250,1,2,'Suite con cama matrimonial, sala de estar y baño privado'),(34,'Individual','Disponible',100,1,1,'Habitación individual con baño privado'),(35,'Doble','Disponible',150,2,2,'Habitación doble con dos camas individuales y baño compartido'),(36,'Suite','Disponible',250,1,2,'Suite con cama matrimonial, sala de estar y baño privado'),(37,'Familiar','Ocupada',200,3,4,'Habitación familiar con tres camas individuales y una cama matrimonial'),(38,'VIP','Disponible',300,1,2,'Habitación VIP con vista al mar y servicios exclusivos'),(39,'Doble','Disponible',180,2,2,'Habitación doble con cama matrimonial y baño privado'),(40,'Suite','Ocupada',280,1,2,'Suite con cama king-size, jacuzzi y terraza privada'),(41,'Individual','Disponible',100,1,1,'Habitación individual con baño privado'),(42,'Doble','Disponible',150,2,2,'Habitación doble con dos camas individuales y baño compartido'),(43,'Suite','Disponible',250,1,2,'Suite con cama matrimonial, sala de estar y baño privado'),(44,'Individual','Disponible',100,1,1,'Habitación individual con baño privado'),(45,'Doble','Disponible',150,2,2,'Habitación doble con dos camas individuales y baño compartido'),(46,'Suite','Disponible',250,1,2,'Suite con cama matrimonial, sala de estar y baño privado'),(48,'Doble','Disponible',100,3,4,'Habitación con vista al mar');
/*!40000 ALTER TABLE `habitaciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_validar_capacidad_maxima
BEFORE INSERT ON Habitaciones
FOR EACH ROW
BEGIN
    IF NEW.num_camas > NEW.capacidad_maxima THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El número de camas no puede ser mayor que la capacidad máxima.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id_pago` int(11) NOT NULL AUTO_INCREMENT,
  `id_reserva` int(11) NOT NULL,
  `metodo_pago` varchar(30) NOT NULL,
  `monto_pago` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `id_reserva` (`id_reserva`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_reserva`) REFERENCES `reservas` (`id_reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (11,1,'Tarjeta de crédito',300,'2023-06-16','Pago inicial','Aprobado'),(12,2,'Transferencia bancaria',278,'2023-06-18','Pago total','Aprobado'),(13,3,'Efectivo',150,'2023-06-19','Pago parcial','Pendiente'),(14,4,'Tarjeta de crédito',200,'2023-06-19','Pago total','Aprobado'),(15,5,'Transferencia bancaria',120,'2023-06-20','Pago parcial','Pendiente'),(16,6,'Efectivo',180,'2023-06-21','Pago parcial','Pendiente'),(17,7,'Tarjeta de débito',300,'2023-06-22','Pago total','Aprobado'),(18,8,'Tarjeta de crédito',250,'2023-06-23','Pago parcial','Pendiente'),(19,9,'Transferencia bancaria',160,'2023-06-24','Pago total','Aprobado'),(20,10,'Efectivo',220,'2023-06-25','Pago total','Aprobado'),(21,1,'Tarjeta de crédito',100,'2023-06-16','Pago inicial','Aprobado'),(22,2,'Transferencia bancaria',250,'2023-06-18','Pago total','Aprobado'),(23,3,'Efectivo',150,'2023-06-19','Pago parcial','Pendiente'),(24,4,'Tarjeta de crédito',200,'2023-06-19','Pago total','Aprobado'),(25,5,'Transferencia bancaria',120,'2023-06-20','Pago parcial','Pendiente'),(26,6,'Efectivo',180,'2023-06-21','Pago parcial','Pendiente'),(27,7,'Tarjeta de débito',300,'2023-06-22','Pago total','Aprobado'),(29,9,'Transferencia bancaria',160,'2023-06-24','Pago total','Aprobado'),(30,10,'Efectivo',220,'2023-06-25','Pago total','Aprobado');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_auditar_montos_pago
AFTER UPDATE ON Pagos
FOR EACH ROW
BEGIN
    IF OLD.monto_pago <> NEW.monto_pago THEN
        INSERT INTO Auditoria_Pagos (id_pago, monto_pago_anterior, monto_pago_nuevo, fecha_modificacion)
        VALUES (OLD.id_pago, OLD.monto_pago, NEW.monto_pago, NOW());
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `num_personas` int(11) DEFAULT NULL,
  `num_noches` int(11) DEFAULT NULL,
  `estado_pago` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_habitacion` (`id_habitacion`),
  CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`id_habitacion`) REFERENCES `habitaciones` (`id_habitacion`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,1,2,'2023-06-15','2023-06-17',1,2,'Completado'),(2,2,4,'2023-06-16','2023-06-19',2,3,'Pagado'),(3,3,1,'2023-06-17','2023-06-20',1,3,'Pendiente'),(4,4,3,'2023-06-18','2023-06-21',2,3,'Pagado'),(5,5,2,'2023-06-19','2023-06-20',1,1,'Pagado'),(6,6,5,'2023-06-20','2023-06-23',3,3,'Pendiente'),(7,7,1,'2023-06-21','2023-06-24',2,3,'Pagado'),(8,8,4,'2023-06-22','2023-06-26',2,4,'Pendiente'),(9,9,3,'2023-06-23','2023-06-25',1,2,'Pagado'),(10,10,2,'2023-06-24','2023-06-26',1,2,'Pagado'),(63,32,2,'2023-06-26','2023-06-30',1,4,'Pagado'),(64,58,3,'2023-06-27','2023-06-29',1,2,'Pagado'),(65,4,4,'2023-06-28','2023-07-01',2,3,'Pendiente'),(66,25,5,'2023-06-29','2023-07-03',3,4,'Pagado'),(67,11,1,'2023-06-30','2023-07-02',1,2,'Pagado'),(68,32,2,'2023-07-01','2023-07-04',2,3,'Pendiente'),(69,58,3,'2023-07-02','2023-07-05',1,3,'Pagado'),(70,4,4,'2023-07-03','2023-07-06',2,3,'Pendiente'),(71,25,5,'2023-07-04','2023-07-07',3,3,'Pagado'),(72,11,1,'2023-07-05','2023-07-08',1,3,'Pendiente'),(73,32,2,'2023-07-06','2023-07-09',2,3,'Pagado'),(74,58,3,'2023-07-07','2023-07-10',1,3,'Pendiente'),(75,4,4,'2023-07-08','2023-07-11',2,3,'Pagado'),(76,25,5,'2023-07-09','2023-07-12',3,3,'Pendiente'),(77,11,1,'2023-07-10','2023-07-13',1,3,'Pagado'),(78,32,2,'2023-07-11','2023-07-14',2,3,'Pendiente'),(79,58,3,'2023-07-12','2023-07-15',1,3,'Pagado'),(80,4,4,'2023-07-13','2023-07-16',2,3,'Pendiente'),(81,25,5,'2023-07-14','2023-07-17',3,3,'Pagado'),(82,11,1,'2023-07-15','2023-07-18',1,3,'Pendiente'),(83,3,5,'2023-06-20','2023-06-25',2,5,'Pendiente');
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_reservas_after_insert
AFTER INSERT ON Reservas
FOR EACH ROW
BEGIN
    INSERT INTO bitacora_reservas (id_reserva, fecha, hora, usuario, accion)
    VALUES (NEW.id_reserva, CURRENT_DATE(), CURRENT_TIME(), USER(), 'INSERT');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_reservas_before_delete
BEFORE DELETE ON Reservas
FOR EACH ROW
BEGIN
    INSERT INTO bitacora_reservas (id_reserva, fecha, hora, usuario, accion)
    VALUES (OLD.id_reserva, CURRENT_DATE(), CURRENT_TIME(), USER(), 'DELETE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `vista_clientes_reservas`
--

DROP TABLE IF EXISTS `vista_clientes_reservas`;
/*!50001 DROP VIEW IF EXISTS `vista_clientes_reservas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_clientes_reservas` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nombre_cliente`,
 1 AS `apellido_cliente`,
 1 AS `correo_electronico`,
 1 AS `id_reserva`,
 1 AS `tipo_habitacion`,
 1 AS `fecha_entrada`,
 1 AS `fecha_salida`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_comentarios_clientes`
--

DROP TABLE IF EXISTS `vista_comentarios_clientes`;
/*!50001 DROP VIEW IF EXISTS `vista_comentarios_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_comentarios_clientes` AS SELECT 
 1 AS `id_comentario`,
 1 AS `nombre_cliente`,
 1 AS `apellido_cliente`,
 1 AS `fecha`,
 1 AS `comentario`,
 1 AS `calificacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_pagos_realizados`
--

DROP TABLE IF EXISTS `vista_pagos_realizados`;
/*!50001 DROP VIEW IF EXISTS `vista_pagos_realizados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_pagos_realizados` AS SELECT 
 1 AS `id_pago`,
 1 AS `id_reserva`,
 1 AS `nombre_cliente`,
 1 AS `apellido_cliente`,
 1 AS `metodo_pago`,
 1 AS `monto_pago`,
 1 AS `fecha_pago`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_reservas_clientes_habitaciones`
--

DROP TABLE IF EXISTS `vista_reservas_clientes_habitaciones`;
/*!50001 DROP VIEW IF EXISTS `vista_reservas_clientes_habitaciones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_reservas_clientes_habitaciones` AS SELECT 
 1 AS `id_reserva`,
 1 AS `nombre_cliente`,
 1 AS `apellido_cliente`,
 1 AS `correo_electronico`,
 1 AS `tipo_habitacion`,
 1 AS `estado_habitacion`,
 1 AS `fecha_entrada`,
 1 AS `fecha_salida`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_reservas_futuras`
--

DROP TABLE IF EXISTS `vista_reservas_futuras`;
/*!50001 DROP VIEW IF EXISTS `vista_reservas_futuras`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_reservas_futuras` AS SELECT 
 1 AS `id_reserva`,
 1 AS `nombre_cliente`,
 1 AS `apellido_cliente`,
 1 AS `tipo_habitacion`,
 1 AS `fecha_entrada`,
 1 AS `fecha_salida`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_reservas_pendientes`
--

DROP TABLE IF EXISTS `vista_reservas_pendientes`;
/*!50001 DROP VIEW IF EXISTS `vista_reservas_pendientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_reservas_pendientes` AS SELECT 
 1 AS `id_reserva`,
 1 AS `nombre_cliente`,
 1 AS `apellido_cliente`,
 1 AS `tipo_habitacion`,
 1 AS `fecha_entrada`,
 1 AS `fecha_salida`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_salario`
--

DROP TABLE IF EXISTS `vista_salario`;
/*!50001 DROP VIEW IF EXISTS `vista_salario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_salario` AS SELECT 
 1 AS `id_empleado`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `puesto`,
 1 AS `fecha_contratacion`,
 1 AS `salario`,
 1 AS `correo_electronico`,
 1 AS `telefono`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_totalpagos_cliente`
--

DROP TABLE IF EXISTS `vista_totalpagos_cliente`;
/*!50001 DROP VIEW IF EXISTS `vista_totalpagos_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_totalpagos_cliente` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nombre_cliente`,
 1 AS `apellido_cliente`,
 1 AS `total_pagos`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistaantiguedad`
--

DROP TABLE IF EXISTS `vistaantiguedad`;
/*!50001 DROP VIEW IF EXISTS `vistaantiguedad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaantiguedad` AS SELECT 
 1 AS `id_empleado`,
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `puesto`,
 1 AS `fecha_contratacion`,
 1 AS `salario`,
 1 AS `correo_electronico`,
 1 AS `telefono`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'hoteleria'
--

--
-- Dumping routines for database 'hoteleria'
--
/*!50003 DROP FUNCTION IF EXISTS `contar_clientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `contar_clientes`() RETURNS int(11)
BEGIN
    DECLARE total_clientes INT;
    
    SELECT COUNT(*) INTO total_clientes
    FROM Clientes;
    
    RETURN total_clientes;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `obtener_habitaciones_disponibles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_habitaciones_disponibles`() RETURNS int(11)
BEGIN
    DECLARE habitaciones_disponibles INT;
    
    SELECT COUNT(*) INTO habitaciones_disponibles
    FROM Habitaciones
    WHERE estado_habitacion = 'Disponible';
    
    RETURN habitaciones_disponibles;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `obtener_habitacion_reservada_por_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_habitacion_reservada_por_cliente`(apellido_cliente_param VARCHAR(30)) RETURNS varchar(8) CHARSET latin1
BEGIN
    DECLARE habitacion_reservada VARCHAR(8);
    
    SELECT h.tipo_habitacion INTO habitacion_reservada
    FROM Habitaciones h
    JOIN Reservas r ON h.id_habitacion = r.id_habitacion
    JOIN Clientes c ON r.id_cliente = c.id_cliente
    WHERE c.apellido_cliente = apellido_cliente_param;
    
    RETURN habitacion_reservada;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `obtener_pagos_realizados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_pagos_realizados`() RETURNS int(11)
BEGIN
    DECLARE pagos_realizados INT;
    
    SELECT COUNT(*) INTO pagos_realizados
    FROM Pagos;
    
    RETURN pagos_realizados;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ObtenerReservasPorCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ObtenerReservasPorCliente`(
    IN id_cliente_param INT
)
BEGIN
    SELECT r.id_reserva, r.fecha_entrada, r.fecha_salida, c.nombre_cliente, c.apellido_cliente, h.tipo_habitacion, h.estado_habitacion
    FROM Reservas r
    JOIN Habitaciones h ON r.id_habitacion = h.id_habitacion
    JOIN Clientes c ON r.id_cliente = c.id_cliente
    WHERE r.id_cliente = id_cliente_param;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RealizarPago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RealizarPago`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RegistrarCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RegistrarCliente`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vista_clientes_reservas`
--

/*!50001 DROP VIEW IF EXISTS `vista_clientes_reservas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_clientes_reservas` AS select `c`.`id_cliente` AS `id_cliente`,`c`.`nombre_cliente` AS `nombre_cliente`,`c`.`apellido_cliente` AS `apellido_cliente`,`c`.`correo_electronico` AS `correo_electronico`,`r`.`id_reserva` AS `id_reserva`,`h`.`tipo_habitacion` AS `tipo_habitacion`,`r`.`fecha_entrada` AS `fecha_entrada`,`r`.`fecha_salida` AS `fecha_salida` from ((`clientes` `c` join `reservas` `r` on((`c`.`id_cliente` = `r`.`id_cliente`))) join `habitaciones` `h` on((`r`.`id_habitacion` = `h`.`id_habitacion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_comentarios_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vista_comentarios_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_comentarios_clientes` AS select `cc`.`id_comentario` AS `id_comentario`,`c`.`nombre_cliente` AS `nombre_cliente`,`c`.`apellido_cliente` AS `apellido_cliente`,`cc`.`fecha` AS `fecha`,`cc`.`comentario` AS `comentario`,`cc`.`calificacion` AS `calificacion` from (`comentarios_calificaciones` `cc` join `clientes` `c` on((`cc`.`id_cliente` = `c`.`id_cliente`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_pagos_realizados`
--

/*!50001 DROP VIEW IF EXISTS `vista_pagos_realizados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_pagos_realizados` AS select `p`.`id_pago` AS `id_pago`,`r`.`id_reserva` AS `id_reserva`,`c`.`nombre_cliente` AS `nombre_cliente`,`c`.`apellido_cliente` AS `apellido_cliente`,`p`.`metodo_pago` AS `metodo_pago`,`p`.`monto_pago` AS `monto_pago`,`p`.`fecha_pago` AS `fecha_pago` from ((`pagos` `p` join `reservas` `r` on((`p`.`id_reserva` = `r`.`id_reserva`))) join `clientes` `c` on((`r`.`id_cliente` = `c`.`id_cliente`))) where (`p`.`estado` = 'Aprobado') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_reservas_clientes_habitaciones`
--

/*!50001 DROP VIEW IF EXISTS `vista_reservas_clientes_habitaciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_reservas_clientes_habitaciones` AS select `r`.`id_reserva` AS `id_reserva`,`c`.`nombre_cliente` AS `nombre_cliente`,`c`.`apellido_cliente` AS `apellido_cliente`,`c`.`correo_electronico` AS `correo_electronico`,`h`.`tipo_habitacion` AS `tipo_habitacion`,`h`.`estado_habitacion` AS `estado_habitacion`,`r`.`fecha_entrada` AS `fecha_entrada`,`r`.`fecha_salida` AS `fecha_salida` from ((`reservas` `r` join `clientes` `c` on((`r`.`id_cliente` = `c`.`id_cliente`))) join `habitaciones` `h` on((`r`.`id_habitacion` = `h`.`id_habitacion`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_reservas_futuras`
--

/*!50001 DROP VIEW IF EXISTS `vista_reservas_futuras`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_reservas_futuras` AS select `r`.`id_reserva` AS `id_reserva`,`c`.`nombre_cliente` AS `nombre_cliente`,`c`.`apellido_cliente` AS `apellido_cliente`,`h`.`tipo_habitacion` AS `tipo_habitacion`,`r`.`fecha_entrada` AS `fecha_entrada`,`r`.`fecha_salida` AS `fecha_salida` from ((`reservas` `r` join `clientes` `c` on((`r`.`id_cliente` = `c`.`id_cliente`))) join `habitaciones` `h` on((`r`.`id_habitacion` = `h`.`id_habitacion`))) where (`r`.`fecha_entrada` > curdate()) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_reservas_pendientes`
--

/*!50001 DROP VIEW IF EXISTS `vista_reservas_pendientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_reservas_pendientes` AS select `r`.`id_reserva` AS `id_reserva`,`c`.`nombre_cliente` AS `nombre_cliente`,`c`.`apellido_cliente` AS `apellido_cliente`,`h`.`tipo_habitacion` AS `tipo_habitacion`,`r`.`fecha_entrada` AS `fecha_entrada`,`r`.`fecha_salida` AS `fecha_salida` from ((`reservas` `r` join `clientes` `c` on((`r`.`id_cliente` = `c`.`id_cliente`))) join `habitaciones` `h` on((`r`.`id_habitacion` = `h`.`id_habitacion`))) where (`r`.`estado_pago` = 'Pendiente') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_salario`
--

/*!50001 DROP VIEW IF EXISTS `vista_salario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_salario` AS select `empleados`.`id_empleado` AS `id_empleado`,`empleados`.`nombre` AS `nombre`,`empleados`.`apellido` AS `apellido`,`empleados`.`puesto` AS `puesto`,`empleados`.`fecha_contratacion` AS `fecha_contratacion`,`empleados`.`salario` AS `salario`,`empleados`.`correo_electronico` AS `correo_electronico`,`empleados`.`telefono` AS `telefono` from `empleados` order by `empleados`.`salario` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_totalpagos_cliente`
--

/*!50001 DROP VIEW IF EXISTS `vista_totalpagos_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_totalpagos_cliente` AS select `c`.`id_cliente` AS `id_cliente`,`c`.`nombre_cliente` AS `nombre_cliente`,`c`.`apellido_cliente` AS `apellido_cliente`,sum(`p`.`monto_pago`) AS `total_pagos` from ((`clientes` `c` join `reservas` `r` on((`c`.`id_cliente` = `r`.`id_cliente`))) join `pagos` `p` on((`r`.`id_reserva` = `p`.`id_reserva`))) group by `c`.`id_cliente`,`c`.`nombre_cliente`,`c`.`apellido_cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistaantiguedad`
--

/*!50001 DROP VIEW IF EXISTS `vistaantiguedad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaantiguedad` AS select `empleados`.`id_empleado` AS `id_empleado`,`empleados`.`nombre` AS `nombre`,`empleados`.`apellido` AS `apellido`,`empleados`.`puesto` AS `puesto`,`empleados`.`fecha_contratacion` AS `fecha_contratacion`,`empleados`.`salario` AS `salario`,`empleados`.`correo_electronico` AS `correo_electronico`,`empleados`.`telefono` AS `telefono` from `empleados` order by `empleados`.`fecha_contratacion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-20 10:54:50
