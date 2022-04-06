-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: juego_preguntas
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `cedula` varchar(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `puntaje` int DEFAULT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES ('1036548','Pedro',0),('1234','Juan',1550),('3659','Ana',50),('4568','Daniel',150),('4587','Andres',350),('45876','Juan',750),('88779','Karla',150),('8988','Fabio',1550),('9632','andres',150),('99986','Peter',0);
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ronda1`
--

DROP TABLE IF EXISTS `ronda1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ronda1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enunciado` varchar(200) DEFAULT NULL,
  `respuesta1` varchar(200) DEFAULT NULL,
  `respuesta2` varchar(200) DEFAULT NULL,
  `respuesta3` varchar(200) DEFAULT NULL,
  `respuesta4` varchar(200) DEFAULT NULL,
  `correcta` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ronda1`
--

LOCK TABLES `ronda1` WRITE;
/*!40000 ALTER TABLE `ronda1` DISABLE KEYS */;
INSERT INTO `ronda1` VALUES (1,'¿Cual es la capital del departamento del Huila','Neiva','Armenia','Manizales','Envigado',1),(2,'¿Cual es la capital del departamento del Atlantico','Medellín','Sucre','Barranquilla','Santa Marta',3),(3,'¿Cual es la capital del departamento del Nariño','Tulua','Pasto','Cartagena','Sincelejo',2),(4,'¿Cual es la capital del departamento del Quindio','Armenia','Pereira','Cali','Bogota',1),(5,'¿Cual es la capital del departamento del Caldas','Manizales','Pereira','Buga','Bello',1);
/*!40000 ALTER TABLE `ronda1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ronda2`
--

DROP TABLE IF EXISTS `ronda2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ronda2` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enunciado` varchar(200) DEFAULT NULL,
  `respuesta1` varchar(200) DEFAULT NULL,
  `respuesta2` varchar(200) DEFAULT NULL,
  `respuesta3` varchar(200) DEFAULT NULL,
  `respuesta4` varchar(200) DEFAULT NULL,
  `correcta` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ronda2`
--

LOCK TABLES `ronda2` WRITE;
/*!40000 ALTER TABLE `ronda2` DISABLE KEYS */;
INSERT INTO `ronda2` VALUES (1,'¿Resultado de sumar 3 + 25 - 2','26','25','28','21',1),(2,'¿Resultado de la operacion 3 + 25 / 5','10','25','8','15',3),(3,'¿Resultado de la operacion 3 + 25 * 2','56','53','50','52',2),(4,'¿Resultado de la operacion 8 / 8 + 25 - 2','24','40','50','26',1),(5,'¿Resultado de la operacion 10 + 2 / 2 ','6','10','8','11',4);
/*!40000 ALTER TABLE `ronda2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ronda3`
--

DROP TABLE IF EXISTS `ronda3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ronda3` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enunciado` varchar(200) DEFAULT NULL,
  `respuesta1` varchar(200) DEFAULT NULL,
  `respuesta2` varchar(200) DEFAULT NULL,
  `respuesta3` varchar(200) DEFAULT NULL,
  `respuesta4` varchar(200) DEFAULT NULL,
  `correcta` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ronda3`
--

LOCK TABLES `ronda3` WRITE;
/*!40000 ALTER TABLE `ronda3` DISABLE KEYS */;
INSERT INTO `ronda3` VALUES (1,'¿Cuál es el rio más largo del mundo?','Amazonas','Nilo','Misisipi','Niger',1),(2,'¿Donde esta Transilvania?','Rusia','Canada','China','Rumania ',4),(3,'¿En qué año cayó el muro de Berlín?','1996','1989','1960','1976 ',2),(4,'¿Cuando empezó la revolución Rusa?','1944','1954','1917','1887 ',3),(5,'¿Cuantos lados tiene un heptágono?','Siete lados','Dos lados','Cinco lados','Nueve lados  ',1);
/*!40000 ALTER TABLE `ronda3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ronda4`
--

DROP TABLE IF EXISTS `ronda4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ronda4` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enunciado` varchar(200) DEFAULT NULL,
  `respuesta1` varchar(200) DEFAULT NULL,
  `respuesta2` varchar(200) DEFAULT NULL,
  `respuesta3` varchar(200) DEFAULT NULL,
  `respuesta4` varchar(200) DEFAULT NULL,
  `correcta` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ronda4`
--

LOCK TABLES `ronda4` WRITE;
/*!40000 ALTER TABLE `ronda4` DISABLE KEYS */;
INSERT INTO `ronda4` VALUES (1,'¿Cuál es el planeta más grande del sistema solar?','Júpiter','Tierra','Marte','Plutón',1),(2,'¿Cuál es la luna más grande de Saturno?','Arche','Phobos','Deimos','Titan',4),(3,'¿Cuantos huesos tiene el cuerpo humano?','198','206','210','180',2),(4,'¿Cuando asesinaron al presidente John F. Kennedy?','22 de noviembre de 1963','17 de julio de 1956','5 de octubre de 1973','10 de abril de 1968',1),(5,'¿Cuantos dientes tenemos?','32','25','35','28',1);
/*!40000 ALTER TABLE `ronda4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ronda5`
--

DROP TABLE IF EXISTS `ronda5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ronda5` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enunciado` varchar(200) DEFAULT NULL,
  `respuesta1` varchar(200) DEFAULT NULL,
  `respuesta2` varchar(200) DEFAULT NULL,
  `respuesta3` varchar(200) DEFAULT NULL,
  `respuesta4` varchar(200) DEFAULT NULL,
  `correcta` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ronda5`
--

LOCK TABLES `ronda5` WRITE;
/*!40000 ALTER TABLE `ronda5` DISABLE KEYS */;
INSERT INTO `ronda5` VALUES (1,'Los materiales en ingeniería que se pueden utilizar para empaques se clasifican en:','Hidroscópicos y alotrópicos','Para alimentos y para elementos inorgánicos','Metales, polímeros, cerámicos, compuestos y nuevos materiales','Duros y blandos ',3),(2,'A qué elementos se le realizan los ensayos tecnológicos:','Prototipos','Materiales ','Modelos ','Maquetas ',2),(3,'Uno de los países en los cuales se considera que hubo un mayor desarrollo en las metodologías de diseño de productos:','Alemania ','Sudáfrica','México','Colombia',1),(4,'Son elaborados en fibras polimétricas tejidas, permiten el almacenaje, transporte y embalaje de productos particulados:','Bolsas ','Las bandejas','Sacos','Las cajas ',3),(5,'Según la organización de la propiedad intelectual, los empaques pueden ser protegidos mediante:','Marcas','Patentes','Derechos de autor','Derechos conexos ',1);
/*!40000 ALTER TABLE `ronda5` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-06  9:48:26
