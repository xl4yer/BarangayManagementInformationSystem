CREATE DATABASE  IF NOT EXISTS `bmis` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bmis`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: bmis
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `tblclearance`
--

DROP TABLE IF EXISTS `tblclearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblclearance` (
  `clearID` varchar(500) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `resID` varchar(500) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `rstatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`clearID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclearance`
--

LOCK TABLES `tblclearance` WRITE;
/*!40000 ALTER TABLE `tblclearance` DISABLE KEYS */;
INSERT INTO `tblclearance` VALUES ('2fe5a899-6636-42d7-9577-c2fb87911849','Brgy. Clearance','2024-05-04 07:03:29','5be11183-7f9d-4052-baf4-e9500b5536b7','BABA','Ready to pickup'),('40d00991-d59a-4639-9702-e297ce76eea8','Walk in','2024-03-14 00:00:00','4532750a-8571-4b2a-9e78-147384762368','Loan','Claimed'),('5532450a-8571-4b2ar-9e78-147386762368','Walk in','2024-03-12 00:00:00','5532450a-8571-4b2a-9e78-147386762368','LTO','Submitted'),('74276a3f-ff18-42b4-a9bf-e0583adf4c28','Brgy. Clearance','2024-05-04 06:53:08','5be11183-7f9d-4052-baf4-e9500b5536b7','AAA','Submitted'),('7d5e827f-0e41-4973-a55a-b51e02f5cdc9','Online','2024-03-12 00:00:00','5532450a-8571-4b2a-9e78-147386762368','TES','Submitted'),('8958c65c-a160-4c70-a2c8-e35b1ee6cab3','Walk in','2024-03-12 09:37:34','5be11183-7f9d-4052-baf4-e9500b5536b7','LTO2','Ready to pickup'),('9d33cbee-bc93-40e6-94fe-e18e981dd94c','Online','2024-03-12 00:00:00','6532750a-8571-4b2a-9e78-147386762368','Unifast','Submitted'),('c95d961e-cd1e-44e8-b2b8-26b2536fa905','Brgy. Clearance','2024-05-04 07:16:22','5be11183-7f9d-4052-baf4-e9500b5536b7','234234','Claimed'),('d504237c-e093-4c06-86eb-d3422a81bcac','Brgy. Clearance','2024-05-04 07:13:44','5be11183-7f9d-4052-baf4-e9500b5536b7','1234','Submitted'),('e4e11b1e-b3a7-4bad-89b8-93de13f0393e','Online','2024-03-22 08:48:34','5be11183-7f9d-4052-baf4-e9500b5536b7','TES','Claimed'),('fee472dc-1d44-49c6-8230-acad4e4e70ae','Walk in','2024-03-30 07:07:51','9532350a-8571-4b2a-9e78-147386762368','SAMPLE2','Claimed');
/*!40000 ALTER TABLE `tblclearance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblftjob`
--

DROP TABLE IF EXISTS `tblftjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblftjob` (
  `ftjobID` varchar(500) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `resID` varchar(500) DEFAULT NULL,
  `rstatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ftjobID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblftjob`
--

LOCK TABLES `tblftjob` WRITE;
/*!40000 ALTER TABLE `tblftjob` DISABLE KEYS */;
INSERT INTO `tblftjob` VALUES ('1e778b74-be8b-4c8e-ae9c-a7a9c02498d0','First Time Job','2024-03-28 16:09:16','5be11183-7f9d-4052-baf4-e9500b5536b7','Claimed'),('2ba1c04e-704a-42a9-b015-6c54656c90c3','First Time Job','2024-03-14 00:00:00','9532350a-8571-4b2a-9e78-147386762368','Claimed'),('370c12a8-0cd0-4382-a153-4d608e543474','First Time Job','2024-05-03 09:28:17','5be11183-7f9d-4052-baf4-e9500b5536b7','Ready to pickup'),('48676f76-33df-4c89-95a6-011da91e4c7a','First Time Job','2024-03-14 00:00:00','5532450a-8571-4b2a-9e78-147386762368','Claimed'),('5532450a-8571-4b2ar-9e78-147386762368','First Time Job','2024-03-13 00:00:00','1533750a-8571-4b2a-9e78-147386762368','Submitted'),('83f6c859-e21b-4987-ba69-eae285583753','First Time Job','2024-03-14 00:00:00','4532750a-8571-4b2a-9e78-147384762368','Submitted'),('eb27ea05-44ed-43a6-840a-ce86febc7699','First Time Job','2024-03-13 00:00:00','5be11183-7f9d-4052-baf4-e9500b5536b7','Submitted');
/*!40000 ALTER TABLE `tblftjob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblhousehold`
--

DROP TABLE IF EXISTS `tblhousehold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblhousehold` (
  `houseID` varchar(255) NOT NULL,
  `head` varchar(255) DEFAULT NULL,
  `purok` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`houseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblhousehold`
--

LOCK TABLES `tblhousehold` WRITE;
/*!40000 ALTER TABLE `tblhousehold` DISABLE KEYS */;
INSERT INTO `tblhousehold` VALUES ('245435','Jane Bunal','Malipayon'),('343434','Jade Buenafe','Malipayon'),('343764','Jame Abad','Masagana'),('346463','Joan Abad','Mahiganon'),('645453','James Ampo','Masugtanon');
/*!40000 ALTER TABLE `tblhousehold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblresidents`
--

DROP TABLE IF EXISTS `tblresidents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblresidents` (
  `resID` varchar(500) NOT NULL,
  `houseID` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `bdate` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `purok` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resID`),
  KEY `Household_idx` (`houseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblresidents`
--

LOCK TABLES `tblresidents` WRITE;
/*!40000 ALTER TABLE `tblresidents` DISABLE KEYS */;
INSERT INTO `tblresidents` VALUES ('1533750a-8571-4b2a-9e78-147386762368','343434','Joan','Montez','Dela Cruz','','Male','1997-02-02 00:00:00','Single','09532678552','Malisamok','Joan','06393ffe3088cd2ed995c67a16b743742d6d33c72df24e2dd1866412b162028e',NULL),('3534750a-8571-4b2a-9e78-147386762368','343434','Johnny','Montero','Cabballo','','Male','1996-11-02 00:00:00','Single','09863836637','Maanyag','Johnny','06393ffe3088cd2ed995c67a16b743742d6d33c72df24e2dd1866412b162028e',NULL),('371b9588-be00-4587-ac6f-3caf9c010da4','245435','Jemma','','Ansa','','Female','1997-04-03 00:00:00','Single','084736644','Masagana','','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',''),('4532750a-8571-4b2a-9e78-147384762368','0161','John','Burki','Sombati','','Male','1998-12-19 00:00:00','Single','09873477373','Malipayon','John','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',''),('5532450a-8571-4b2a-9e78-147386762368','343764','Jame','Motanio','Cuballo','','Male','1996-12-02 00:00:00','Single','0986366363','Maligaya','Jame','06393ffe3088cd2ed995c67a16b743742d6d33c72df24e2dd1866412b162028e',NULL),('5be11183-7f9d-4052-baf4-e9500b5536b7','343434','Jade Mark','Erecilla','Escolano','','Male','1997-05-17 00:00:00','Single','09481924095','Masagana','Xlayer','828b3b4e79497c1903c6dc5884df3768dfb546fa1ae04c11488499d122a1a995','escolanojademark17@gmail.com'),('6532750a-8571-4b2a-9e78-147386762368','343764','Jessie','','Morales','','Female','1998-12-20 00:00:00','Single','093483838','Sambuhay','Jessie','e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',''),('6552740a-8571-4b2a-9e78-147386762368','343434','Lodi','Monte','Kumbate','','Male','1996-11-05 00:00:00','Single','0973663663','Maligaya','Lodi','06393ffe3088cd2ed995c67a16b743742d6d33c72df24e2dd1866412b162028e',NULL),('7532750a-8571-4b3a-9e78-147386762368','245435','Mike','Montezo','Dela Cruz','','Male','1997-02-02 00:00:00','Single','09532678552','Maligaya','Mike','06393ffe3088cd2ed995c67a16b743742d6d33c72df24e2dd1866412b162028e',NULL),('8532753a-8571-4b2a-9e78-147386762368','343764','Jessa Mae','Boldoy','Kolokoy','','Female','1997-12-16 00:00:00','Single','09338743773','Malisamok','Jessa','06393ffe3088cd2ed995c67a16b743742d6d33c72df24e2dd1866412b162028e',NULL),('9532350a-8571-4b2a-9e78-147386762368','343434','John','Dou','Cardos','','Male','1995-03-02 00:00:00','Married','09537576783','Malipayon','John123','5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5','escolanojademark@gmail.com');
/*!40000 ALTER TABLE `tblresidents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblusers`
--

DROP TABLE IF EXISTS `tblusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblusers` (
  `userID` varchar(500) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userID`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblusers`
--

LOCK TABLES `tblusers` WRITE;
/*!40000 ALTER TABLE `tblusers` DISABLE KEYS */;
INSERT INTO `tblusers` VALUES ('75db510e-50a6-413c-bfaa-8f82c6d5a226','Admin','1234','Admin','John Dou'),('955b510e-50a6-413c-bfaa-8f82c6d5a277','Admin1234','12345','Admin','JM'),('955b510e-50a6-414c-bfva-8f82c6d5a237','Clerk','1234','Clerk','Juan Dela Cruz'),('cf60c83b-ddbe-4bab-97b7-07ec216a067e','Xlayer','May171997','Admin','Jade Mark Escolano');
/*!40000 ALTER TABLE `tblusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bmis'
--

--
-- Dumping routines for database 'bmis'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddClearance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddClearance`(
	IN _clearID VARCHAR(500),
    IN _date DATETIME,
    IN _resID VARCHAR(500),
    IN _purpose VARCHAR(255),
    IN _type VARCHAR(255),
    IN _rstatus VARCHAR(255)
)
BEGIN
    INSERT INTO tblclearance (
		clearID,
        `date`,
        resID,
        purpose,
        `type`,
        `rstatus`
    )
    VALUES (
		_clearID,
        _date,
        _resID,
        _purpose,
        _type,
        _rstatus
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddftJob` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddftJob`(
	IN _ftjobID VARCHAR(500),
    IN _date DATETIME,
    IN _resID VARCHAR(500),
    IN _type VARCHAR(255),
    IN _rstatus VARCHAR(255)
)
BEGIN
    INSERT INTO tblftjob (
		ftjobID,
        `date`,
        resID,
        `type`,
        `rstatus`
    )
    VALUES (
		_ftjobID,
        _date,
        _resID,
        _type,
        _rstatus
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddHousehold` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddHousehold`(
IN _houseID VARCHAR(255),
IN _purok VARCHAR(255),
IN _head VARCHAR(255)
)
BEGIN
INSERT INTO tblhousehold(
houseID, purok, head) VALUES (
_houseID, _purok, _head);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddResident` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddResident`(
	IN _resID VARCHAR(500),
	IN _houseID VARCHAR(255),
    IN _fname VARCHAR(255),
    IN _mname VARCHAR(255),
    IN _lname VARCHAR(255),
    IN _ext VARCHAR(255),
    IN _gender VARCHAR(255),
    IN _bdate DATETIME,
    IN _status VARCHAR(255),
    IN _contact VARCHAR(255),
    IN _purok VARCHAR(255),
    IN _username VARCHAR(255),
    IN _password VARCHAR(255),
    IN _email VARCHAR(255)
)
BEGIN
    INSERT INTO tblresidents (
    	resID,
		houseID,
        fname,
        mname,
        lname,
        ext,
        gender,
        bdate,
        `status`,
        contact,
        purok,
        username,
        `password`,
        email
    )
    VALUES (
		_resID,
		_houseID,
        _fname,
        _mname,
        _lname,
        _ext,
        _gender,
        _bdate,
        _status,
        _contact,
        _purok,
        _username,
        _password,
        _email
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddUsers`(
    IN _userID VARCHAR(500),
    IN _name VARCHAR(255),
    IN _username VARCHAR(255),
    IN _password VARCHAR(255),
    IN _role VARCHAR(255)
)
BEGIN
    INSERT INTO tblusers (
        userID, `name`, username, `password`, `role`
    )
    VALUES (
        _userID, _name, _username, _password, _role
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CheckEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckEmail`(
IN _email VARCHAR(255))
BEGIN
SELECT * FROM tblresidents WHERE email = _email;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CheckUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckUser`(
IN _username VARCHAR(255))
BEGIN
SELECT * FROM tblresidents WHERE username = _username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CheckUsername` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckUsername`(
IN _username VARCHAR(255))
BEGIN
SELECT * FROM tblresidents WHERE username = _username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Clearance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Clearance`(
IN _resID INT
)
BEGIN
SELECT * FROM tblclearance WHERE resID = _resID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CountFemale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CountFemale`()
BEGIN
SELECT COUNT(*) FROM tblresidents WHERE gender = 'female';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CountHousehold` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CountHousehold`()
BEGIN
SELECT COUNT(*) FROM tblhousehold;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CountMale` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CountMale`()
BEGIN
SELECT COUNT(*) FROM tblresidents WHERE gender = 'male';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CountResidents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CountResidents`()
BEGIN
SELECT COUNT(*) FROM tblresidents;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteUsers`(
IN _userID VARCHAR(500))
BEGIN
    DELETE FROM tblusers WHERE userID = _userID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ForgotPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ForgotPassword`(
    IN _resID VARCHAR(255),
    IN _password VARCHAR(255)
)
BEGIN
    UPDATE tblresidents
    SET
        `password` = _password
    WHERE
        resID = _resID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `HouseID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `HouseID`(
    IN _houseID VARCHAR(255)
)
BEGIN
    SELECT h.*, r.*,
    TIMESTAMPDIFF(YEAR, r.bdate, CURDATE()) AS age,
    CONCAT(
        r.fname,
        ' ',
        CASE
            WHEN r.mname IS NOT NULL AND TRIM(r.mname) <> '' THEN CONCAT(SUBSTR(r.mname, 1, 1), '. ')
            ELSE ''
        END,
        r.lname,
        ' ',
        r.ext,
        ' '
    ) AS fullname
    FROM tblhousehold h
    INNER JOIN tblresidents r ON r.houseID = h.houseID
    WHERE h.houseID = _houseID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Profile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Profile`(
IN _resID VARCHAR(500)
)
BEGIN
SELECT * FROM tblresidents WHERE resID = _resID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RequestClearance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RequestClearance`(
IN _resID VARCHAR(255)
)
BEGIN
SELECT * FROM tblclearance WHERE resID = _resID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RequestFtJob` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RequestFtJob`(
IN _resID VARCHAR(255)
)
BEGIN
SELECT * FROM tblftjob WHERE resID = _resID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ResidentLogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ResidentLogin`(
    IN `_username` VARCHAR(255),
    IN `_password` VARCHAR(255)
)
BEGIN
    SELECT * FROM tblresidents 
    WHERE `username` = `_username` 
    AND `password` = `_password`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchClearance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchClearance`(
    IN search VARCHAR(255)
)
BEGIN
    SET @searchWildcard = CONCAT('%', search, '%');
    
    SELECT
        c.*,
        CONCAT(
            fname,
            ' ',
            CASE
                WHEN mname IS NOT NULL AND TRIM(mname) <> '' THEN CONCAT(SUBSTR(mname, 1, 1), '. ')
                ELSE ''
            END,
            lname,
            ' ',
            ext,
            ' '
        ) AS fullname, 
        r.*
    FROM
        tblclearance c
        INNER JOIN tblresidents r ON c.resID = r.resID 
    WHERE
        r.resID = search
        OR c.clearID = search
        OR CONCAT(
            fname,
            ' ',
            CASE
                WHEN mname IS NOT NULL AND TRIM(mname) <> '' THEN CONCAT(SUBSTR(mname, 1, 1), '. ')
                ELSE ''
            END,
            lname,
            ' ',
            ext,
            ' '
        ) LIKE @searchWildcard
    ORDER BY
        date DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchClearanceOnline` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchClearanceOnline`(
    IN search VARCHAR(255)
)
BEGIN
    SET @searchWildcard = CONCAT('%', search, '%');
    
    SELECT
        c.*,
        CONCAT(
            fname,
            ' ',
            CASE
                WHEN mname IS NOT NULL AND TRIM(mname) <> '' THEN CONCAT(SUBSTR(mname, 1, 1), '. ')
                ELSE ''
            END,
            lname,
            ' ',
            ext,
            ' '
        ) AS fullname, 
        r.*
    FROM
        tblclearance c
        INNER JOIN tblresidents r ON c.resID = r.resID 
    WHERE
        r.resID = search
        OR c.clearID = search
        OR CONCAT(
            fname,
            ' ',
            CASE
                WHEN mname IS NOT NULL AND TRIM(mname) <> '' THEN CONCAT(SUBSTR(mname, 1, 1), '. ')
                ELSE ''
            END,
            lname,
            ' ',
            ext,
            ' '
        ) LIKE @searchWildcard  AND `type` = "Online"
    ORDER BY
        date DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchClearanceWalkIn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchClearanceWalkIn`(
    IN search VARCHAR(255)
)
BEGIN
    SET @searchWildcard = CONCAT('%', search, '%');
    
    SELECT
        c.*,
        CONCAT(
            fname,
            ' ',
            CASE
                WHEN mname IS NOT NULL AND TRIM(mname) <> '' THEN CONCAT(SUBSTR(mname, 1, 1), '. ')
                ELSE ''
            END,
            lname,
            ' ',
            ext,
            ' '
        ) AS fullname, 
        r.*
    FROM
        tblclearance c
        INNER JOIN tblresidents r ON c.resID = r.resID 
    WHERE
        r.resID = search
        OR c.clearID = search
        OR CONCAT(
            fname,
            ' ',
            CASE
                WHEN mname IS NOT NULL AND TRIM(mname) <> '' THEN CONCAT(SUBSTR(mname, 1, 1), '. ')
                ELSE ''
            END,
            lname,
            ' ',
            ext,
            ' '
        ) LIKE @searchWildcard  AND `type` = "Walk in"
    ORDER BY
        date DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchftJob` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchftJob`(
    IN search VARCHAR(255)
)
BEGIN
    SET @searchWildcard = CONCAT('%', search, '%');
    
    SELECT
        c.*,
        CONCAT(
            fname,
            ' ',
            CASE
                WHEN mname IS NOT NULL AND TRIM(mname) <> '' THEN CONCAT(SUBSTR(mname, 1, 1), '. ')
                ELSE ''
            END,
            lname,
            ' ',
            ext,
            ' '
        ) AS fullname, 
        r.*
    FROM
        tblftjob c
        INNER JOIN tblresidents r ON c.resID = r.resID 
    WHERE
        r.resID = search
        OR c.ftjobID = search
        OR CONCAT(
            fname,
            ' ',
            CASE
                WHEN mname IS NOT NULL AND TRIM(mname) <> '' THEN CONCAT(SUBSTR(mname, 1, 1), '. ')
                ELSE ''
            END,
            lname,
            ' ',
            ext,
            ' '
        ) LIKE @searchWildcard
    ORDER BY
        date DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchHousehold` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchHousehold`(
IN search VARCHAR(255))
BEGIN
 SET @searchWildcard = CONCAT('%', search, '%');
 SELECT * FROM tblhousehold
 WHERE houseid = search or
		purok LIKE @searchWildcard OR
		head LIKE @searchWildcard;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchResident` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchResident`(
IN search VARCHAR(255))
BEGIN
    SET @searchWildcard = CONCAT('%', search, '%');
   
    SELECT
        r.*,
        h.*,
        TIMESTAMPDIFF(YEAR, r.bdate, CURDATE()) AS age,
        CONCAT(
            r.fname,
            ' ',
            CASE
                WHEN r.mname IS NOT NULL AND TRIM(r.mname) <> '' THEN CONCAT(SUBSTR(r.mname, 1, 1), '. ')
                ELSE ''
            END,
            r.lname,
            ' ',
            r.ext,
            ' '
        ) AS fullname
    FROM
        tblresidents r
        LEFT JOIN tblhousehold h ON r.houseID = h.houseID OR 
            (r.houseID IS NULL AND h.houseID IS NULL)
    WHERE
        r.resID = search OR
        CONCAT(
            r.fname,
            ' ',
            CASE
                WHEN r.mname IS NOT NULL AND TRIM(r.mname) <> '' THEN CONCAT(SUBSTR(r.mname, 1, 1), '. ')
                ELSE ''
            END,
            r.lname,
            ' ',
            r.ext,
            ' '
        ) LIKE @searchWildcard OR
        h.houseID LIKE @searchWildcard OR
        r.fname LIKE @searchWildcard OR
        r.mname LIKE @searchWildcard OR
        r.lname LIKE @searchWildcard OR
        r.ext LIKE @searchWildcard OR
        r.contact LIKE @searchWildcard
    ORDER BY
        r.fname ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateAdminPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateAdminPassword`(
    IN _userID VARCHAR(255),
    IN _password VARCHAR(255)
)
BEGIN
    UPDATE tblusers 
    SET `password` = _password 
    WHERE userID = _userID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateClearance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateClearance`(
    IN _clearID VARCHAR(500),
    IN _date DATETIME,
    IN _resID VARCHAR(500),
    IN _purpose VARCHAR(255),
    IN _type VARCHAR(255),
    IN _rstatus VARCHAR(255)
)
BEGIN
    UPDATE tblclearance
    SET 
        `date` = _date,
        resID = _resID,
        purpose = _purpose,
        `type` = _type,
        `rstatus` = _rstatus 
    WHERE clearID = _clearID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateftJob` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateftJob`(
    IN _ftjobID VARCHAR(500),
    IN _date DATETIME,
    IN _resID VARCHAR(500),
    IN _type VARCHAR(255),
    IN _rstatus VARCHAR(255)
)
BEGIN
    UPDATE tblftjob
    SET 
        `date` = _date,
        resID = _resID,
        `type` = _type,
        `rstatus` = _rstatus 
    WHERE ftjobID = _ftjobID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateHousehold` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateHousehold`(
    IN _houseID VARCHAR(255),
    IN _purok VARCHAR(255),
    IN _head VARCHAR(255)
)
BEGIN
    UPDATE tblhousehold
    SET purok = _purok, head = _head
    WHERE houseID = _houseID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdatePassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdatePassword`(
    IN _resID VARCHAR(255),
    IN _password VARCHAR(255)
)
BEGIN
    UPDATE tblresidents
    SET
        `password` = _password
    WHERE
        resID = _resID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateResident` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateResident`(
	IN _resID VARCHAR(500),
	IN _houseID VARCHAR(255),
    IN _fname VARCHAR(255),
    IN _mname VARCHAR(255),
    IN _lname VARCHAR(255),
    IN _ext VARCHAR(255),
    IN _gender VARCHAR(255),
    IN _bdate DATETIME,
    IN _status VARCHAR(255),
    IN _contact VARCHAR(255),
    IN _purok VARCHAR(255)
)
BEGIN
    UPDATE tblresidents
    SET
		houseID = _houseID,
        fname = _fname,
        mname = _mname,
        lname = _lname,
        ext = _ext,
        gender = _gender,
        bdate = _bdate,
        `status` = _status,
        contact = _contact,
        purok = _purok
    WHERE
        resID = _resID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateUsers`(
    IN _userID VARCHAR(500),
    IN _name VARCHAR(255),
    IN _username VARCHAR(255),
    IN _password VARCHAR(255),
    IN _role VARCHAR(255)
)
BEGIN
    UPDATE tblusers
    SET
        `name` = _name,
        username = _username,
        `password` = _password,
        `role` = _role
    WHERE
        userID = _userID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Userlogin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Userlogin`(
    IN `_username` VARCHAR(255),
    IN `_password` VARCHAR(255)
)
BEGIN
    SELECT * FROM tblusers 
    WHERE `username` = `_username` 
    AND `password` = `_password`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UsernameCheck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UsernameCheck`(
IN _username VARCHAR(255))
BEGIN
SELECT * FROM tblusers WHERE username = _username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ViewClearance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewClearance`()
BEGIN
SELECT
        c.*,
        TIMESTAMPDIFF(YEAR, r.bdate, CURDATE()) AS age,
        CONCAT(
            fname,
            ' ',
            CASE
                WHEN mname IS NOT NULL AND TRIM(mname) <> ' ' THEN CONCAT(SUBSTR(mname, 1, 1), '. ')
                ELSE ' '
            END,
            lname,
            ' ',
            ext,
            ' '
        ) AS fullname, r.*
    FROM
        tblclearance c
        INNER JOIN tblresidents r ON c.resID = r.resID
    ORDER BY
        date DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ViewftJob` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewftJob`()
BEGIN
SELECT
        c.*,
        TIMESTAMPDIFF(YEAR, r.bdate, CURDATE()) AS age,
        CONCAT(
            fname,
            ' ',
            CASE
                WHEN mname IS NOT NULL AND TRIM(mname) <> ' ' THEN CONCAT(SUBSTR(mname, 1, 1), '. ')
                ELSE ' '
            END,
            lname,
            ' ',
            ext,
            ' '
        ) AS fullname, r.*
    FROM
        tblftjob c
        INNER JOIN tblresidents r ON c.resID = r.resID
    ORDER BY
        date DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ViewHousehold` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewHousehold`()
BEGIN
SELECT * FROM tblhousehold;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ViewResidents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewResidents`()
BEGIN
SELECT
    r.*,
    h.*,
    TIMESTAMPDIFF(YEAR, r.bdate, CURDATE()) AS age,
    CONCAT(
        r.fname,
        ' ',
        CASE
            WHEN r.mname IS NOT NULL AND TRIM(r.mname) <> '' THEN CONCAT(SUBSTR(r.mname, 1, 1), '. ')
            ELSE ''
        END,
        r.lname,
        ' ',
        r.ext,
        ' '
    ) AS fullname
FROM
    tblresidents r
    LEFT JOIN tblhousehold h ON r.houseID = h.houseID OR 
			  (r.houseID IS NULL AND h.houseID IS NULL)
ORDER BY
    r.fname ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ViewUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ViewUsers`()
BEGIN
SELECT * FROM tblusers;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `WalkIn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `WalkIn`()
BEGIN
SELECT * FROM bmis.tblclearance;SELECT
        c.*,
        TIMESTAMPDIFF(YEAR, r.bdate, CURDATE()) AS age,
        CONCAT(
            fname,
            ' ',
            CASE
                WHEN mname IS NOT NULL AND TRIM(mname) <> ' ' THEN CONCAT(SUBSTR(mname, 1, 1), '. ')
                ELSE ' '
            END,
            lname,
            ' ',
            ext,
            ' '
        ) AS fullname, r.*
    FROM
        tblclearance c
        INNER JOIN tblresidents r ON c.resID = r.resID
        WHERE `type` = "Walk in"
    ORDER BY
        date DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-12  8:18:46
