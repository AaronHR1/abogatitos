/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.21-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: abogatitos
-- ------------------------------------------------------
-- Server version	10.6.21-MariaDB-ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `abogado`
--

DROP TABLE IF EXISTS `abogado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `abogado` (
  `cedula` varchar(18) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `ap_mno` varchar(20) DEFAULT NULL,
  `ap_pno` varchar(20) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `telefono` varchar(13) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`cedula`),
  UNIQUE KEY `correo` (`correo`),
  UNIQUE KEY `telefono` (`telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abogado`
--

LOCK TABLES `abogado` WRITE;
/*!40000 ALTER TABLE `abogado` DISABLE KEYS */;
/*!40000 ALTER TABLE `abogado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `dni` varchar(18) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `ap_mno` varchar(20) DEFAULT NULL,
  `ap_pno` varchar(20) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `telefono` varchar(13) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`dni`),
  UNIQUE KEY `correo` (`correo`),
  UNIQUE KEY `telefono` (`telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id_edo` smallint(6) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(15) NOT NULL,
  PRIMARY KEY (`id_edo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ete_ado`
--

DROP TABLE IF EXISTS `ete_ado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ete_ado` (
  `cedula` varchar(18) NOT NULL,
  `no_ete` varchar(12) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_cambio` datetime DEFAULT NULL,
  PRIMARY KEY (`cedula`,`no_ete`,`fecha_inicio`),
  KEY `fk_ETE_ADO_EXPEDIENTE` (`no_ete`),
  CONSTRAINT `fk_ETE_ADO_ABOGADO` FOREIGN KEY (`cedula`) REFERENCES `abogado` (`cedula`),
  CONSTRAINT `fk_ETE_ADO_EXPEDIENTE` FOREIGN KEY (`no_ete`) REFERENCES `expediente` (`no_ete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ete_ado`
--

LOCK TABLES `ete_ado` WRITE;
/*!40000 ALTER TABLE `ete_ado` DISABLE KEYS */;
/*!40000 ALTER TABLE `ete_ado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ete_edo`
--

DROP TABLE IF EXISTS `ete_edo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ete_edo` (
  `id_edo` smallint(6) NOT NULL,
  `no_ete` varchar(12) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_cambio` datetime DEFAULT NULL,
  PRIMARY KEY (`id_edo`,`no_ete`,`fecha_inicio`),
  KEY `fk_ETE_EDO_EXPEDIENTE` (`no_ete`),
  CONSTRAINT `fk_ETE_EDO_ESTADO` FOREIGN KEY (`id_edo`) REFERENCES `estado` (`id_edo`),
  CONSTRAINT `fk_ETE_EDO_EXPEDIENTE` FOREIGN KEY (`no_ete`) REFERENCES `expediente` (`no_ete`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ete_edo`
--

LOCK TABLES `ete_edo` WRITE;
/*!40000 ALTER TABLE `ete_edo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ete_edo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ete_pdor`
--

DROP TABLE IF EXISTS `ete_pdor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ete_pdor` (
  `cedula` varchar(18) NOT NULL,
  `no_ete` varchar(12) NOT NULL,
  `fecha_inicio` datetime NOT NULL,
  `fecha_cambio` datetime DEFAULT NULL,
  PRIMARY KEY (`cedula`,`no_ete`,`fecha_inicio`),
  KEY `fk_ETE_PDOR_EXPEDIENTE` (`no_ete`),
  CONSTRAINT `fk_ETE_PDOR_EXPEDIENTE` FOREIGN KEY (`no_ete`) REFERENCES `expediente` (`no_ete`),
  CONSTRAINT `fk_ETE_PDOR_PROCURADOR` FOREIGN KEY (`cedula`) REFERENCES `procurador` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ete_pdor`
--

LOCK TABLES `ete_pdor` WRITE;
/*!40000 ALTER TABLE `ete_pdor` DISABLE KEYS */;
/*!40000 ALTER TABLE `ete_pdor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expediente`
--

DROP TABLE IF EXISTS `expediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `expediente` (
  `no_ete` varchar(12) NOT NULL,
  `dni_cte` varchar(18) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `cedula_ado` varchar(18) NOT NULL,
  `cedula_pdor` varchar(18) NOT NULL,
  PRIMARY KEY (`no_ete`),
  KEY `fk_EXPEDIENTE_CLIENTE` (`dni_cte`),
  KEY `fk_EXPEDIENTE_ABOGADO` (`cedula_ado`),
  KEY `fk_EXPEDIENTE_PROCURADOR` (`cedula_pdor`),
  CONSTRAINT `fk_EXPEDIENTE_ABOGADO` FOREIGN KEY (`cedula_ado`) REFERENCES `abogado` (`cedula`),
  CONSTRAINT `fk_EXPEDIENTE_CLIENTE` FOREIGN KEY (`dni_cte`) REFERENCES `cliente` (`dni`),
  CONSTRAINT `fk_EXPEDIENTE_PROCURADOR` FOREIGN KEY (`cedula_pdor`) REFERENCES `procurador` (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expediente`
--

LOCK TABLES `expediente` WRITE;
/*!40000 ALTER TABLE `expediente` DISABLE KEYS */;
/*!40000 ALTER TABLE `expediente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procurador`
--

DROP TABLE IF EXISTS `procurador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `procurador` (
  `cedula` varchar(18) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `ap_mno` varchar(20) DEFAULT NULL,
  `ap_pno` varchar(20) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `telefono` varchar(13) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`cedula`),
  UNIQUE KEY `correo` (`correo`),
  UNIQUE KEY `telefono` (`telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procurador`
--

LOCK TABLES `procurador` WRITE;
/*!40000 ALTER TABLE `procurador` DISABLE KEYS */;
/*!40000 ALTER TABLE `procurador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-08 17:00:05
