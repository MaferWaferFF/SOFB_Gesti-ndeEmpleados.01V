-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_empresapinki
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `idArea` int NOT NULL AUTO_INCREMENT,
  `nomArea` varchar(25) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  `cantEmpleados` int DEFAULT NULL,
  PRIMARY KEY (`idArea`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `auditoria_salario`
--

DROP TABLE IF EXISTS `auditoria_salario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_salario` (
  `idAudSalario` int NOT NULL,
  `idUsuario` int DEFAULT NULL,
  `idContrato` int DEFAULT NULL,
  `sueldoAntes` decimal(10,2) DEFAULT NULL,
  `sueldoNuevo` decimal(10,2) DEFAULT NULL,
  `fechaCambio` date DEFAULT NULL,
  `horaCambio` time(6) DEFAULT NULL,
  `idTipAccion` int DEFAULT NULL,
  PRIMARY KEY (`idAudSalario`),
  KEY `FK_Auditoria_Salario_Usuario` (`idUsuario`),
  KEY `fk_auditoria_tipAccion` (`idTipAccion`),
  KEY `FK_Auditoria_Salario_Contrato_idx` (`idContrato`),
  CONSTRAINT `FK_Auditoria_Salario_Contrato` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`),
  CONSTRAINT `FK_Auditoria_Salario_Usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `fk_auditoria_tipAccion` FOREIGN KEY (`idTipAccion`) REFERENCES `tipo_accion` (`idTipAccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bancos`
--

DROP TABLE IF EXISTS `bancos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bancos` (
  `idBanco` int NOT NULL AUTO_INCREMENT,
  `nomBanco` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idBanco`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato` (
  `idContrato` int NOT NULL AUTO_INCREMENT,
  `idEmpleado` int DEFAULT NULL,
  `idArea` int DEFAULT NULL,
  `idModalidad` int DEFAULT NULL,
  `idJornada` int DEFAULT NULL,
  `codContrato` varchar(12) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `idEstado` int DEFAULT NULL,
  `horasLaboral` int DEFAULT NULL,
  PRIMARY KEY (`idContrato`),
  KEY `FK_Contrato_Empleado_idx` (`idEmpleado`),
  KEY `FK_Contrato_Area_idx` (`idArea`),
  KEY `FK_Contrato_Estado_idx` (`idEstado`),
  KEY `FK_Contrato_Modalidad_idx` (`idModalidad`),
  KEY `FK_Contrato_Jornada_idx` (`idJornada`),
  CONSTRAINT `FK_Contrato_Area` FOREIGN KEY (`idArea`) REFERENCES `area` (`idArea`),
  CONSTRAINT `FK_Contrato_Empleado` FOREIGN KEY (`idEmpleado`) REFERENCES `empleado` (`idEmpleado`),
  CONSTRAINT `FK_Contrato_Estado` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`idEstado`),
  CONSTRAINT `FK_Contrato_Jornada` FOREIGN KEY (`idJornada`) REFERENCES `jornada` (`idJornada`),
  CONSTRAINT `FK_Contrato_Modalidad` FOREIGN KEY (`idModalidad`) REFERENCES `modalidad` (`idModali`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `detalle_pago`
--

DROP TABLE IF EXISTS `detalle_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pago` (
  `idDetaPago` int NOT NULL AUTO_INCREMENT,
  `fechaPago` date DEFAULT NULL,
  `horaPago` time DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `sueldoTotal` decimal(10,2) DEFAULT NULL,
  `idGrati` int DEFAULT NULL,
  `idPago` int DEFAULT NULL,
  PRIMARY KEY (`idDetaPago`),
  KEY `FK_DetaPago_Gratificaciones_idx` (`idGrati`),
  KEY `FK_DetaPago_Pago_idx` (`idPago`),
  CONSTRAINT `FK_DetaPago_Gratificaciones` FOREIGN KEY (`idGrati`) REFERENCES `gratificaciones` (`idGrati`),
  CONSTRAINT `FK_DetaPago_Pago` FOREIGN KEY (`idPago`) REFERENCES `pago` (`idPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `codEmpleado` varchar(4) DEFAULT NULL,
  `dni` varchar(8) DEFAULT NULL,
  `nombres` varchar(25) DEFAULT NULL,
  `apePaterno` varchar(25) DEFAULT NULL,
  `apeMaterno` varchar(25) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `genero` varchar(10) DEFAULT NULL,
  `idEstCivil` int DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `numCelular` varchar(9) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `FK_Empleado_Estado_Civil` (`idEstCivil`),
  CONSTRAINT `FK_Empleado_Estado_Civil` FOREIGN KEY (`idEstCivil`) REFERENCES `estado_civil` (`idEstCivil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `idEstado` int NOT NULL AUTO_INCREMENT,
  `nomEstado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idEstado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estado_civil`
--

DROP TABLE IF EXISTS `estado_civil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_civil` (
  `idEstCivil` int NOT NULL AUTO_INCREMENT,
  `nombreEsta` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idEstCivil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gratificaciones`
--

DROP TABLE IF EXISTS `gratificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gratificaciones` (
  `idGrati` int NOT NULL AUTO_INCREMENT,
  `nomGrati` varchar(50) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fechaGrati` date DEFAULT NULL,
  PRIMARY KEY (`idGrati`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jornada`
--

DROP TABLE IF EXISTS `jornada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jornada` (
  `idJornada` int NOT NULL AUTO_INCREMENT,
  `nomJornada` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idJornada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modalidad`
--

DROP TABLE IF EXISTS `modalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modalidad` (
  `idModali` int NOT NULL AUTO_INCREMENT,
  `nomModali` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idModali`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `idPago` int NOT NULL AUTO_INCREMENT,
  `idBanco` int DEFAULT NULL,
  `numCuenta` varchar(20) DEFAULT NULL,
  `idContrato` int DEFAULT NULL,
  PRIMARY KEY (`idPago`),
  KEY `FK_Pago_Bancos_idx` (`idBanco`),
  KEY `FK_Pago_Contrato_idx` (`idContrato`),
  CONSTRAINT `FK_Pago_Bancos` FOREIGN KEY (`idBanco`) REFERENCES `bancos` (`idBanco`),
  CONSTRAINT `FK_Pago_Contrato` FOREIGN KEY (`idContrato`) REFERENCES `contrato` (`idContrato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipo_accion`
--

DROP TABLE IF EXISTS `tipo_accion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_accion` (
  `idTipAccion` int NOT NULL AUTO_INCREMENT,
  `nomAccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idTipAccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nomUsuario` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nombres` varchar(25) DEFAULT NULL,
  `apePaterno` varchar(25) DEFAULT NULL,
  `apeMaterno` varchar(25) DEFAULT NULL,
  `password` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-03 21:19:40
