-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: shop_online
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre_completo_cliente` varchar(50) NOT NULL,
  `email_cliente` varchar(20) NOT NULL,
  `telefono_cliente` varchar(15) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Karena Fricker','kfricker0@wufoo.com','835-822-3762'),(2,'Ulrike Ower','uower1@pen.io','772-790-1468'),(3,'Berkie Fanti','bfanti3@irs.gov','872-273-5872'),(4,'Oswell Myford','omyford4@mlb.com','834-366-8162'),(5,'Cristin Care','ccare5@loc.gov','368-924-6458'),(6,'Lorna Kurton','lkurton6@psu.edu','751-295-6007'),(7,'Erick Coundley','ecoundley7@google.de','105-488-7310'),(8,'Eli Taplow','etaplowa@diigo.com','360-671-2846'),(9,'Kippy Kiehl','kkiehlb@nymag.com','347-818-9830'),(10,'Gabbey Barff','gbarffc@fema.gov','700-145-3993'),(11,'Wenda Carncross','wcarncrossd@goo.gl','761-429-9754'),(12,'Samaria Callf','scallfe@slate.com','951-846-2521'),(13,'Faina Bice','fbiceg@desdev.cn','691-983-6464'),(14,'Abbott Rivard','arivardh@google.com','833-470-4668'),(15,'Ianthe Oehm','ioehmj@mashable.com','422-565-1741');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `clientes_frecuentes`
--

DROP TABLE IF EXISTS `clientes_frecuentes`;
/*!50001 DROP VIEW IF EXISTS `clientes_frecuentes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_frecuentes` AS SELECT 
 1 AS `id_cliente`,
 1 AS `nombre_completo_cliente`,
 1 AS `cantidad_compras`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `detalle_facturacion`
--

DROP TABLE IF EXISTS `detalle_facturacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_facturacion` (
  `id_factura` int NOT NULL AUTO_INCREMENT,
  `id_venta` int NOT NULL,
  `id_prenda` int NOT NULL,
  `id_metodo_pago` int NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `id_venta` (`id_venta`),
  KEY `id_prenda` (`id_prenda`),
  KEY `id_metodo_pago` (`id_metodo_pago`),
  CONSTRAINT `detalle_facturacion_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`),
  CONSTRAINT `detalle_facturacion_ibfk_2` FOREIGN KEY (`id_prenda`) REFERENCES `prenda` (`id_prenda`),
  CONSTRAINT `detalle_facturacion_ibfk_3` FOREIGN KEY (`id_metodo_pago`) REFERENCES `metodo_pago` (`id_metodo_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_facturacion`
--

LOCK TABLES `detalle_facturacion` WRITE;
/*!40000 ALTER TABLE `detalle_facturacion` DISABLE KEYS */;
INSERT INTO `detalle_facturacion` VALUES (1,9,20,2,3),(2,2,32,1,3),(3,9,19,3,3),(4,11,15,2,1),(5,12,5,2,1),(6,4,3,4,3),(7,6,2,2,3),(8,14,14,4,1),(9,12,1,4,3),(10,8,9,1,1),(11,6,16,1,3),(12,10,26,2,3),(13,2,27,3,1),(14,14,20,3,2),(15,5,16,2,3),(16,12,16,4,2),(17,14,28,3,1),(18,12,35,3,1),(19,7,32,2,1),(20,8,20,2,2);
/*!40000 ALTER TABLE `detalle_facturacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ingresos_por_categoria`
--

DROP TABLE IF EXISTS `ingresos_por_categoria`;
/*!50001 DROP VIEW IF EXISTS `ingresos_por_categoria`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ingresos_por_categoria` AS SELECT 
 1 AS `categoria`,
 1 AS `ingresos_totales`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `metodo_pago`
--

DROP TABLE IF EXISTS `metodo_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodo_pago` (
  `id_metodo_pago` int NOT NULL AUTO_INCREMENT,
  `tipo_pago` varchar(100) NOT NULL,
  `cuotas` int DEFAULT NULL,
  `recargo` float DEFAULT NULL,
  `moneda` varchar(30) NOT NULL,
  PRIMARY KEY (`id_metodo_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodo_pago`
--

LOCK TABLES `metodo_pago` WRITE;
/*!40000 ALTER TABLE `metodo_pago` DISABLE KEYS */;
INSERT INTO `metodo_pago` VALUES (1,'tarjeta debito',1,1.15,'ARS'),(2,'transferencia',1,1.05,'ARS'),(3,'efectivo',1,0,'ARS'),(4,'tarjeta credito',12,1.15,'ARS');
/*!40000 ALTER TABLE `metodo_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prenda`
--

DROP TABLE IF EXISTS `prenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prenda` (
  `id_prenda` int NOT NULL AUTO_INCREMENT,
  `id_proveedor` int NOT NULL,
  `descripcion_prenda` varchar(50) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `talle` varchar(5) NOT NULL,
  `cantidad` int NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id_prenda`),
  KEY `fk_idProveedor_prendas` (`id_proveedor`),
  CONSTRAINT `fk_idProveedor_prendas` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenda`
--

LOCK TABLES `prenda` WRITE;
/*!40000 ALTER TABLE `prenda` DISABLE KEYS */;
INSERT INTO `prenda` VALUES (1,1,'chaqueta roja','dress','XL',3,24.99),(2,4,'pantalÃ³n negro','coat','L',3,2.59),(3,6,'falda estampada','jacket','L',2,24.99),(4,6,'chaqueta roja','shorts','S',3,1.49),(5,5,'chaqueta roja','pants','XXL',1,249.99),(6,4,'camisa azul','blouse','L',1,34.99),(7,4,'vestido blanco','dress','L',4,5.49),(8,9,'pantalÃ³n negro','sweater','S',2,1.99),(9,4,'camisa azul','shorts','S',2,39.99),(10,4,'falda estampada','dress','L',2,12.99),(11,2,'vestido blanco','skirt','S',4,3.29),(12,7,'camisa azul','jacket','M',3,3.29),(13,2,'pantalÃ³n negro','pants','XXL',3,2.79),(14,6,'pantalÃ³n negro','coat','S',1,4.99),(15,6,'chaqueta roja','pants','M',2,39.99),(16,7,'camisa azul','sweater','XL',1,24.99),(17,1,'vestido blanco','jacket','S',1,29.99),(18,6,'pantalÃ³n negro','sweater','XL',1,3.99),(19,8,'vestido blanco','skirt','L',0,12.99),(20,4,'falda estampada','sweater','L',3,49.99),(21,1,'chaqueta roja','pants','XXL',0,2.79),(22,4,'falda estampada','sweater','L',2,5.99),(23,5,'pantalÃ³n negro','shorts','XXL',1,22.99),(24,5,'pantalÃ³n negro','pants','XL',2,79.99),(25,2,'camisa azul','dress','L',2,8.49),(26,8,'chaqueta roja','jacket','L',3,5.99),(27,1,'camisa azul','blouse','XXL',3,199.99),(28,4,'falda estampada','blouse','XXL',0,29.99),(29,3,'camisa azul','dress','XXL',1,1.99),(30,8,'camisa azul','dress','XL',2,0.99),(31,10,'chaqueta roja','shorts','L',1,3.49),(32,9,'pantalÃ³n negro','shorts','S',0,3.99),(33,3,'vestido blanco','pants','M',2,5.99),(34,3,'falda estampada','sweater','XL',1,12.99),(35,3,'chaqueta roja','skirt','L',1,4.99),(36,2,'falda estampada','coat','S',1,8.99),(37,9,'chaqueta roja','shorts','S',1,39.99),(38,2,'chaqueta roja','dress','S',1,3.89),(39,1,'vestido blanco','blouse','XL',4,22.99),(40,6,'chaqueta roja','blouse','XL',2,2.49);
/*!40000 ALTER TABLE `prenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `prendas_stock_bajo`
--

DROP TABLE IF EXISTS `prendas_stock_bajo`;
/*!50001 DROP VIEW IF EXISTS `prendas_stock_bajo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `prendas_stock_bajo` AS SELECT 
 1 AS `id_prenda`,
 1 AS `id_proveedor`,
 1 AS `descripcion_prenda`,
 1 AS `categoria`,
 1 AS `talle`,
 1 AS `cantidad`,
 1 AS `precio`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(50) NOT NULL,
  `email_proveedor` varchar(20) NOT NULL,
  `telefono_proveedor` varchar(15) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Eimbee','dbasezzi3@toplist.cz','414-498-0227','coat'),(2,'Jamia','kspon4@hp.com','930-881-6570','coat'),(3,'Yotz','rtungate7@loc.gov','516-941-8338','coat'),(4,'Jayo','mmcdugal9@jigsy.com','685-752-7311','coat'),(5,'Topiclounge','erojb@unc.edu','258-960-4958','coat'),(6,'Demizz','ttinmouthe@hp.com','609-351-9266','shorts'),(7,'Tambee','ryarkerg@nbcnews.com','389-593-4726','blouse'),(8,'Skaboo','eolfordh@state.tx.us','936-440-8858','skirt'),(9,'Trupe','iminoti@nytimes.com','616-476-2408','coat'),(10,'Ooba','estrathmanj@ebay.com','696-273-8603','blouse');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `id_vendedor` int NOT NULL AUTO_INCREMENT,
  `nombre_completo_vendedor` varchar(50) NOT NULL,
  `email_vendedor` varchar(20) NOT NULL,
  `telefono_vendedor` varchar(15) NOT NULL,
  `cantidad_ventas` int NOT NULL,
  `ventas_totales` float NOT NULL,
  PRIMARY KEY (`id_vendedor`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'Dee dee Emanuele','ddee1@pinterest.com','(861) 5545999',23,4292.91),(2,'Woodman Wickrath','wwickrath3@ow.ly','(114) 5909774',6,7590.07),(3,'Siward Elgee','selgee4@amazon.co.uk','(619) 3916737',28,2841.88),(4,'Biron Sallan','bsallan5@boston.com','(452) 2983359',14,1393.62),(5,'Adelaide Crotty','acrotty7@hibu.com','(913) 9924903',26,9868.53),(6,'Gerty Dulin','gdulin8@mac.com','(257) 5119957',26,7185.42),(7,'Vernen Mattaus','vmattaus9@umn.edu','(878) 5184194',42,5048.98),(8,'Keir Ertelt','kerteltb@ihg.com','(531) 2933268',5,9760.04),(9,'Taffy Carne','tcarnec@vk.com','(356) 8216313',20,1870.01),(10,'Glenine Haughian','ghaughiand@go.com','(810) 4163063',47,2489.28),(11,'Damara Keig','dkeigi@un.org','(302) 5774215',22,8807.25),(12,'Consalve Eardley','ceardleyj@digg.com','(456) 7599532',40,270.68);
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `id_prenda` int NOT NULL,
  `id_cliente` int NOT NULL,
  `id_vendedor` int NOT NULL,
  `id_metodo_pago` int NOT NULL,
  `fecha_venta` date NOT NULL,
  `importe` float DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `id_prenda` (`id_prenda`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_vendedor` (`id_vendedor`),
  KEY `id_metodo_pago` (`id_metodo_pago`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_prenda`) REFERENCES `prenda` (`id_prenda`),
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`),
  CONSTRAINT `venta_ibfk_4` FOREIGN KEY (`id_metodo_pago`) REFERENCES `metodo_pago` (`id_metodo_pago`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,31,2,12,2,'2025-05-10',945.16),(2,8,11,10,3,'2025-04-14',280.15),(3,33,7,12,2,'2025-03-12',886.15),(4,32,5,9,4,'2025-01-10',125.15),(5,28,9,9,3,'2025-02-14',422.61),(6,19,1,1,2,'2025-05-14',322.33),(7,14,6,3,1,'2025-03-28',586.67),(8,40,5,9,1,'2025-02-28',870.3),(9,33,11,9,2,'2025-04-16',928.36),(10,32,4,12,1,'2025-01-27',156.54),(11,1,10,11,2,'2025-06-27',751.54),(12,14,10,2,2,'2025-07-10',513.46),(13,21,7,8,4,'2025-07-05',632.63),(14,2,8,1,3,'2025-06-05',304.65);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_stock` BEFORE INSERT ON `venta` FOR EACH ROW BEGIN
  DECLARE stock_actual INT;

  SELECT cantidad INTO stock_actual
  FROM prenda
  WHERE id_prenda = NEW.id_prenda;

  IF stock_actual <= 0 THEN
    SET NEW.id_prenda = NULL;
  END IF;
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `descontar_stock` AFTER INSERT ON `venta` FOR EACH ROW BEGIN
  UPDATE prenda
  SET cantidad = cantidad - 1
  WHERE id_prenda = NEW.id_prenda;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `ventas_detalladas`
--

DROP TABLE IF EXISTS `ventas_detalladas`;
/*!50001 DROP VIEW IF EXISTS `ventas_detalladas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_detalladas` AS SELECT 
 1 AS `id_venta`,
 1 AS `nombre_completo_cliente`,
 1 AS `descripcion_prenda`,
 1 AS `nombre_completo_vendedor`,
 1 AS `tipo_pago`,
 1 AS `fecha_venta`,
 1 AS `importe`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ventas_por_vendedor`
--

DROP TABLE IF EXISTS `ventas_por_vendedor`;
/*!50001 DROP VIEW IF EXISTS `ventas_por_vendedor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ventas_por_vendedor` AS SELECT 
 1 AS `id_vendedor`,
 1 AS `nombre_completo_vendedor`,
 1 AS `cantidad_ventas`,
 1 AS `total_facturado`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'shop_online'
--

--
-- Dumping routines for database 'shop_online'
--
/*!50003 DROP FUNCTION IF EXISTS `calcular_precio_final` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calcular_precio_final`(precio_base FLOAT, recargo FLOAT) RETURNS float
    DETERMINISTIC
BEGIN
  RETURN precio_base + (precio_base * recargo / 100);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `obtener_nombre_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `obtener_nombre_cliente`(id INT) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
  DECLARE nombre VARCHAR(50);
  SELECT nombre_completo_cliente INTO nombre
  FROM cliente WHERE id_cliente = id;
  RETURN nombre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_stock_prenda` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_stock_prenda`(IN p_id_prenda INT, IN p_cantidad_vendida INT)
BEGIN
  UPDATE prenda
  SET cantidad = cantidad - p_cantidad_vendida
  WHERE id_prenda = p_id_prenda;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `registrar_venta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `registrar_venta`(
  IN p_id_prenda INT,
  IN p_id_cliente INT,
  IN p_id_vendedor INT,
  IN p_id_metodo_pago INT,
  IN p_fecha DATE,
  IN p_importe FLOAT
)
BEGIN
  INSERT INTO venta (id_prenda, id_cliente, id_vendedor, id_metodo_pago, fecha_venta, importe)
  VALUES (p_id_prenda, p_id_cliente, p_id_vendedor, p_id_metodo_pago, p_fecha, p_importe);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `clientes_frecuentes`
--

/*!50001 DROP VIEW IF EXISTS `clientes_frecuentes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_frecuentes` AS select `c`.`id_cliente` AS `id_cliente`,`c`.`nombre_completo_cliente` AS `nombre_completo_cliente`,count(`v`.`id_venta`) AS `cantidad_compras` from (`cliente` `c` join `venta` `v` on((`c`.`id_cliente` = `v`.`id_cliente`))) group by `c`.`id_cliente`,`c`.`nombre_completo_cliente` having (count(`v`.`id_venta`) >= 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ingresos_por_categoria`
--

/*!50001 DROP VIEW IF EXISTS `ingresos_por_categoria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ingresos_por_categoria` AS select `p`.`categoria` AS `categoria`,sum(`v`.`importe`) AS `ingresos_totales` from (`venta` `v` join `prenda` `p` on((`v`.`id_prenda` = `p`.`id_prenda`))) group by `p`.`categoria` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `prendas_stock_bajo`
--

/*!50001 DROP VIEW IF EXISTS `prendas_stock_bajo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `prendas_stock_bajo` AS select `prenda`.`id_prenda` AS `id_prenda`,`prenda`.`id_proveedor` AS `id_proveedor`,`prenda`.`descripcion_prenda` AS `descripcion_prenda`,`prenda`.`categoria` AS `categoria`,`prenda`.`talle` AS `talle`,`prenda`.`cantidad` AS `cantidad`,`prenda`.`precio` AS `precio` from `prenda` where (`prenda`.`cantidad` < 10) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_detalladas`
--

/*!50001 DROP VIEW IF EXISTS `ventas_detalladas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_detalladas` AS select `v`.`id_venta` AS `id_venta`,`c`.`nombre_completo_cliente` AS `nombre_completo_cliente`,`p`.`descripcion_prenda` AS `descripcion_prenda`,`ven`.`nombre_completo_vendedor` AS `nombre_completo_vendedor`,`mp`.`tipo_pago` AS `tipo_pago`,`v`.`fecha_venta` AS `fecha_venta`,`v`.`importe` AS `importe` from ((((`venta` `v` join `cliente` `c` on((`v`.`id_cliente` = `c`.`id_cliente`))) join `prenda` `p` on((`v`.`id_prenda` = `p`.`id_prenda`))) join `vendedor` `ven` on((`v`.`id_vendedor` = `ven`.`id_vendedor`))) join `metodo_pago` `mp` on((`v`.`id_metodo_pago` = `mp`.`id_metodo_pago`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ventas_por_vendedor`
--

/*!50001 DROP VIEW IF EXISTS `ventas_por_vendedor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ventas_por_vendedor` AS select `v`.`id_vendedor` AS `id_vendedor`,`ve`.`nombre_completo_vendedor` AS `nombre_completo_vendedor`,count(0) AS `cantidad_ventas`,sum(`v`.`importe`) AS `total_facturado` from (`venta` `v` join `vendedor` `ve` on((`v`.`id_vendedor` = `ve`.`id_vendedor`))) group by `v`.`id_vendedor`,`ve`.`nombre_completo_vendedor` */;
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

-- Dump completed on 2025-08-01 17:59:20
