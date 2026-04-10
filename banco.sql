-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: empresa
-- ------------------------------------------------------
-- Server version	8.0.45-0ubuntu0.24.04.1

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
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `id_departamento` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `gerente` varchar(50) DEFAULT NULL,
  `orcamento` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_departamento`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'TI','11999999999','ti@empresa.com','Carlos',500000.00),(2,'RH','11888888888','rh@empresa.com','Ana',200000.00);
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposito`
--

DROP TABLE IF EXISTS `deposito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposito` (
  `id_deposito` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `endereco_id` int DEFAULT NULL,
  `capacidade_maxima` int DEFAULT NULL,
  `responsavel` varchar(50) NOT NULL,
  PRIMARY KEY (`id_deposito`),
  UNIQUE KEY `email` (`email`),
  KEY `endereco_id` (`endereco_id`),
  CONSTRAINT `deposito_ibfk_1` FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposito`
--

LOCK TABLES `deposito` WRITE;
/*!40000 ALTER TABLE `deposito` DISABLE KEYS */;
INSERT INTO `deposito` VALUES (1,'Deposito Central','11944444444','deposito@empresa.com',1,1000,'Carlos');
/*!40000 ALTER TABLE `deposito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desenvolvimento`
--

DROP TABLE IF EXISTS `desenvolvimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `desenvolvimento` (
  `id_desenvolvimento` int NOT NULL AUTO_INCREMENT,
  `nome_desenvolvimento` varchar(30) NOT NULL,
  PRIMARY KEY (`id_desenvolvimento`),
  UNIQUE KEY `nome_desenvolvimento` (`nome_desenvolvimento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desenvolvimento`
--

LOCK TABLES `desenvolvimento` WRITE;
/*!40000 ALTER TABLE `desenvolvimento` DISABLE KEYS */;
INSERT INTO `desenvolvimento` VALUES (2,'Aguardando'),(1,'Em Andamento '),(3,'Encerrado');
/*!40000 ALTER TABLE `desenvolvimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id_endereco` int NOT NULL AUTO_INCREMENT,
  `rua` varchar(100) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cep` char(8) NOT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Rua A','10','Casa','Centro','06000000','Itapevi','SP'),(2,'Rua B','200','Apto 12','Jardim','06100000','Jandira','SP'),(3,'Rua C','50',NULL,'Centro','06200000','Barueri','SP');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id_fornecedor` int NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(18) NOT NULL,
  `razao_social` varchar(100) DEFAULT NULL,
  `nome_contato` varchar(50) DEFAULT NULL,
  `endereco_id` int DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_fornecedor`),
  UNIQUE KEY `cnpj` (`cnpj`),
  UNIQUE KEY `razao_social` (`razao_social`),
  KEY `endereco_id` (`endereco_id`),
  CONSTRAINT `fornecedor_ibfk_1` FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'12345678000199','Fornecedor ABC','Roberto',3,'fornecedor@abc.com','11955555555');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor_peca`
--

DROP TABLE IF EXISTS `fornecedor_peca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor_peca` (
  `id_fornecedor` int NOT NULL,
  `id_peca` int NOT NULL,
  `prazo_entrega` date NOT NULL,
  PRIMARY KEY (`id_fornecedor`,`id_peca`),
  KEY `id_peca` (`id_peca`),
  CONSTRAINT `fornecedor_peca_ibfk_1` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedor` (`id_fornecedor`),
  CONSTRAINT `fornecedor_peca_ibfk_2` FOREIGN KEY (`id_peca`) REFERENCES `peca` (`id_peca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor_peca`
--

LOCK TABLES `fornecedor_peca` WRITE;
/*!40000 ALTER TABLE `fornecedor_peca` DISABLE KEYS */;
/*!40000 ALTER TABLE `fornecedor_peca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id_funcionario` int NOT NULL AUTO_INCREMENT,
  `cpf` char(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `endereco_id` int DEFAULT NULL,
  `departamento_id` int DEFAULT NULL,
  `data_de_admissao` date NOT NULL,
  `cargo` varchar(20) DEFAULT NULL,
  `salario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `email` (`email`),
  KEY `endereco_id` (`endereco_id`),
  KEY `departamento_id` (`departamento_id`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`endereco_id`) REFERENCES `endereco` (`id_endereco`),
  CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`id_departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'11111111111','Joao','11977777777','joao@email.com',1,1,'2022-01-10','Programador',5000.00),(2,'22222222222','Maria','11966666666','maria@email.com',2,2,'2021-03-15','Analista RH',4000.00);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario_projeto`
--

DROP TABLE IF EXISTS `funcionario_projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario_projeto` (
  `id_funcionario` int NOT NULL,
  `id_projeto` int NOT NULL,
  `data_inicial` date NOT NULL,
  `horas_trabalhadas` int DEFAULT NULL,
  `funcao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`,`id_projeto`),
  KEY `id_projeto` (`id_projeto`),
  CONSTRAINT `funcionario_projeto_ibfk_1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id_funcionario`),
  CONSTRAINT `funcionario_projeto_ibfk_2` FOREIGN KEY (`id_projeto`) REFERENCES `projeto` (`id_projeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario_projeto`
--

LOCK TABLES `funcionario_projeto` WRITE;
/*!40000 ALTER TABLE `funcionario_projeto` DISABLE KEYS */;
INSERT INTO `funcionario_projeto` VALUES (1,1,'2024-01-01',120,'Desenvolvedor'),(2,2,'2024-02-01',80,'Analista');
/*!40000 ALTER TABLE `funcionario_projeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peca`
--

DROP TABLE IF EXISTS `peca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peca` (
  `id_peca` int NOT NULL AUTO_INCREMENT,
  `tipo_peca` varchar(50) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `data_cadastro` date NOT NULL,
  `custo_unitario` decimal(10,2) DEFAULT NULL,
  `status_peca_id` int DEFAULT NULL,
  PRIMARY KEY (`id_peca`),
  KEY `status_peca_id` (`status_peca_id`),
  CONSTRAINT `peca_ibfk_1` FOREIGN KEY (`status_peca_id`) REFERENCES `status_peca` (`id_status_peca`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peca`
--

LOCK TABLES `peca` WRITE;
/*!40000 ALTER TABLE `peca` DISABLE KEYS */;
INSERT INTO `peca` VALUES (1,'Parafuso','Parafuso aço','2024-01-10',2.50,1),(2,'Placa','Placa circuito','2024-01-12',50.00,1),(3,'Parafuso','Parafuso pequeno','2024-01-01',2.50,1),(4,'Placa','Placa eletrônica','2024-01-05',150.00,1),(5,'Cabo','Cabo de energia','2024-01-10',20.00,1);
/*!40000 ALTER TABLE `peca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projeto`
--

DROP TABLE IF EXISTS `projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projeto` (
  `id_projeto` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `data_inicio` date NOT NULL,
  `data_final_prevista` date NOT NULL,
  `desenvolvimento_id` int DEFAULT NULL,
  `orcamento` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`id_projeto`),
  KEY `desenvolvimento_id` (`desenvolvimento_id`),
  CONSTRAINT `projeto_ibfk_1` FOREIGN KEY (`desenvolvimento_id`) REFERENCES `desenvolvimento` (`id_desenvolvimento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto`
--

LOCK TABLES `projeto` WRITE;
/*!40000 ALTER TABLE `projeto` DISABLE KEYS */;
INSERT INTO `projeto` VALUES (1,'Sistema Web','Sistema interno','2024-01-01','2024-12-01',1,100000.00),(2,'App Mobile','Aplicativo empresa','2024-02-01','2024-10-01',1,80000.00);
/*!40000 ALTER TABLE `projeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projeto_peca`
--

DROP TABLE IF EXISTS `projeto_peca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projeto_peca` (
  `id_projeto` int NOT NULL,
  `id_peca` int NOT NULL,
  `data_utilizacao` date NOT NULL,
  `quantidade` int DEFAULT NULL,
  PRIMARY KEY (`id_projeto`,`id_peca`),
  KEY `id_peca` (`id_peca`),
  CONSTRAINT `projeto_peca_ibfk_1` FOREIGN KEY (`id_projeto`) REFERENCES `projeto` (`id_projeto`),
  CONSTRAINT `projeto_peca_ibfk_2` FOREIGN KEY (`id_peca`) REFERENCES `peca` (`id_peca`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto_peca`
--

LOCK TABLES `projeto_peca` WRITE;
/*!40000 ALTER TABLE `projeto_peca` DISABLE KEYS */;
INSERT INTO `projeto_peca` VALUES (1,1,'2024-03-01',100),(2,2,'2024-03-05',50);
/*!40000 ALTER TABLE `projeto_peca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_peca`
--

DROP TABLE IF EXISTS `status_peca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_peca` (
  `id_status_peca` int NOT NULL AUTO_INCREMENT,
  `nome_peca` varchar(30) NOT NULL,
  PRIMARY KEY (`id_status_peca`),
  UNIQUE KEY `nome_peca` (`nome_peca`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_peca`
--

LOCK TABLES `status_peca` WRITE;
/*!40000 ALTER TABLE `status_peca` DISABLE KEYS */;
INSERT INTO `status_peca` VALUES (1,'Em estoque'),(2,'Em falta');
/*!40000 ALTER TABLE `status_peca` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-08 20:51:35
