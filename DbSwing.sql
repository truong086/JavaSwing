CREATE DATABASE  IF NOT EXISTS `btl` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `btl`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: btl
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `bacsi`
--

DROP TABLE IF EXISTS `bacsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bacsi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manhanvien` int NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `diachi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gioitinh` int DEFAULT NULL,
  `thanhtich` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `noicongtac` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `chucvu_id` int DEFAULT NULL,
  `ngayvao` date DEFAULT NULL,
  PRIMARY KEY (`manhanvien`),
  UNIQUE KEY `id` (`id`),
  KEY `chucvu_id` (`chucvu_id`),
  CONSTRAINT `bacsi_ibfk_1` FOREIGN KEY (`manhanvien`) REFERENCES `taikhoan` (`tentaikhoan`),
  CONSTRAINT `bacsi_ibfk_2` FOREIGN KEY (`chucvu_id`) REFERENCES `chucvu` (`machucvu`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bacsi`
--

LOCK TABLES `bacsi` WRITE;
/*!40000 ALTER TABLE `bacsi` DISABLE KEYS */;
INSERT INTO `bacsi` VALUES (1,12,'AVC','2022-01-10','ACD','a@gmail.com',1,'acv','HN',12345,'2022-10-10');
/*!40000 ALTER TABLE `bacsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benhnhan`
--

DROP TABLE IF EXISTS `benhnhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benhnhan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mabenhnhan` int NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `diachi` varchar(200) DEFAULT NULL,
  `gioitinh` int DEFAULT NULL,
  `nhommau` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tinhtrang` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `chucvu_id` int DEFAULT NULL,
  `doituong_id` int DEFAULT NULL,
  `ngayvao` date DEFAULT NULL,
  PRIMARY KEY (`mabenhnhan`),
  UNIQUE KEY `id` (`id`),
  KEY `nhommau` (`nhommau`),
  KEY `chucvu_id` (`chucvu_id`),
  KEY `doituong_id` (`doituong_id`),
  CONSTRAINT `benhnhan_ibfk_1` FOREIGN KEY (`mabenhnhan`) REFERENCES `taikhoan` (`tentaikhoan`),
  CONSTRAINT `benhnhan_ibfk_2` FOREIGN KEY (`nhommau`) REFERENCES `nhommau` (`ten`),
  CONSTRAINT `benhnhan_ibfk_3` FOREIGN KEY (`chucvu_id`) REFERENCES `chucvu` (`machucvu`),
  CONSTRAINT `benhnhan_ibfk_4` FOREIGN KEY (`doituong_id`) REFERENCES `doituong` (`madoituong`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benhnhan`
--

LOCK TABLES `benhnhan` WRITE;
/*!40000 ALTER TABLE `benhnhan` DISABLE KEYS */;
/*!40000 ALTER TABLE `benhnhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chucvu`
--

DROP TABLE IF EXISTS `chucvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chucvu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `machucvu` int NOT NULL,
  `tenchucvu` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ngaytao` datetime DEFAULT NULL,
  `tienluong_id` int DEFAULT NULL,
  `khenthuong` int DEFAULT NULL,
  PRIMARY KEY (`machucvu`),
  UNIQUE KEY `id` (`id`),
  KEY `tienluong_id` (`tienluong_id`),
  CONSTRAINT `chucvu_ibfk_1` FOREIGN KEY (`tienluong_id`) REFERENCES `tienluong` (`matienluong`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chucvu`
--

LOCK TABLES `chucvu` WRITE;
/*!40000 ALTER TABLE `chucvu` DISABLE KEYS */;
INSERT INTO `chucvu` VALUES (4,12345,'Nhân Viên','2022-10-10 00:00:00',1,11111);
/*!40000 ALTER TABLE `chucvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuochen`
--

DROP TABLE IF EXISTS `cuochen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuochen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bacsi` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `benhnhan` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `noidung` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuochen`
--

LOCK TABLES `cuochen` WRITE;
/*!40000 ALTER TABLE `cuochen` DISABLE KEYS */;
INSERT INTO `cuochen` VALUES (1,'ABX','ABC','MMMMMM','2022-10-10 00:00:00'),(2,'MNB','KKKf','ÁDq','2022-10-10 00:00:00');
/*!40000 ALTER TABLE `cuochen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doituong`
--

DROP TABLE IF EXISTS `doituong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doituong` (
  `id` int NOT NULL AUTO_INCREMENT,
  `madoituong` int NOT NULL,
  `tendoituong` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ngaythem` datetime DEFAULT NULL,
  PRIMARY KEY (`madoituong`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doituong`
--

LOCK TABLES `doituong` WRITE;
/*!40000 ALTER TABLE `doituong` DISABLE KEYS */;
INSERT INTO `doituong` VALUES (1,1,'ABC','2020-10-10 00:00:00');
/*!40000 ALTER TABLE `doituong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `giuongngu`
--

DROP TABLE IF EXISTS `giuongngu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `giuongngu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `giuong_id` int DEFAULT NULL,
  `benhnhan_id` int DEFAULT NULL,
  `thoigiannam` date DEFAULT NULL,
  `thoigianra` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `giuong_id` (`giuong_id`),
  KEY `benhnhan_id` (`benhnhan_id`),
  CONSTRAINT `giuongngu_ibfk_1` FOREIGN KEY (`giuong_id`) REFERENCES `loaigiuong` (`id`),
  CONSTRAINT `giuongngu_ibfk_2` FOREIGN KEY (`benhnhan_id`) REFERENCES `benhnhan` (`mabenhnhan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `giuongngu`
--

LOCK TABLES `giuongngu` WRITE;
/*!40000 ALTER TABLE `giuongngu` DISABLE KEYS */;
/*!40000 ALTER TABLE `giuongngu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mabenhnhan` int DEFAULT NULL,
  `ngayra` datetime DEFAULT NULL,
  `phuongphapdieutri` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `mieuta` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `thuoc_id` int DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  `tongtienthuoc` int DEFAULT NULL,
  `tongtien` int DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mabenhnhan` (`mabenhnhan`),
  KEY `thuoc_id` (`thuoc_id`),
  CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`mabenhnhan`) REFERENCES `benhnhan` (`mabenhnhan`),
  CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`thuoc_id`) REFERENCES `sanpham` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadonnhap`
--

DROP TABLE IF EXISTS `hoadonnhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadonnhap` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tensanpham` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `maloai` int DEFAULT NULL,
  `gianhap` int DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  `makho` int DEFAULT NULL,
  `nhanvien_id` int DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `maloai` (`maloai`),
  KEY `makho` (`makho`),
  KEY `nhanvien_id` (`nhanvien_id`),
  CONSTRAINT `hoadonnhap_ibfk_1` FOREIGN KEY (`maloai`) REFERENCES `loaisanpham` (`id`),
  CONSTRAINT `hoadonnhap_ibfk_2` FOREIGN KEY (`makho`) REFERENCES `kho` (`id`),
  CONSTRAINT `hoadonnhap_ibfk_3` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`manhanvien`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadonnhap`
--

LOCK TABLES `hoadonnhap` WRITE;
/*!40000 ALTER TABLE `hoadonnhap` DISABLE KEYS */;
INSERT INTO `hoadonnhap` VALUES (1,'ACX',1,12334,1233998,5,12,'2022-10-10');
/*!40000 ALTER TABLE `hoadonnhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kho`
--

DROP TABLE IF EXISTS `kho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kho` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sanppham_id` int DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  `soluongnhap` int DEFAULT NULL,
  `daban` int DEFAULT NULL,
  `tonkho` int DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sanppham_id` (`sanppham_id`),
  CONSTRAINT `kho_ibfk_1` FOREIGN KEY (`sanppham_id`) REFERENCES `sanpham` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kho`
--

LOCK TABLES `kho` WRITE;
/*!40000 ALTER TABLE `kho` DISABLE KEYS */;
INSERT INTO `kho` VALUES (5,2,1000,500,300,200,'2022-10-10'),(7,2,200000,23455,1000,134558899,'2022-02-10'),(8,2,2345,4339,3444,400,'2021-10-10');
/*!40000 ALTER TABLE `kho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaigiuong`
--

DROP TABLE IF EXISTS `loaigiuong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaigiuong` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tengiuong` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaigiuong`
--

LOCK TABLES `loaigiuong` WRITE;
/*!40000 ALTER TABLE `loaigiuong` DISABLE KEYS */;
INSERT INTO `loaigiuong` VALUES (1,'ABC',123,'2020-10-10');
/*!40000 ALTER TABLE `loaigiuong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaisanpham`
--

DROP TABLE IF EXISTS `loaisanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaisanpham` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tenloai` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaisanpham`
--

LOCK TABLES `loaisanpham` WRITE;
/*!40000 ALTER TABLE `loaisanpham` DISABLE KEYS */;
INSERT INTO `loaisanpham` VALUES (1,'ABC','2020-10-10');
/*!40000 ALTER TABLE `loaisanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manhanvien` int NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `diachi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gioitinh` int DEFAULT NULL,
  `thanhtich` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `noicongtac` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `chucvu_id` int DEFAULT NULL,
  `ngayvao` date DEFAULT NULL,
  PRIMARY KEY (`manhanvien`),
  UNIQUE KEY `id` (`id`),
  KEY `chucvu_id` (`chucvu_id`),
  CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`manhanvien`) REFERENCES `taikhoan` (`tentaikhoan`),
  CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`chucvu_id`) REFERENCES `chucvu` (`machucvu`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (2,12,'AVC','2022-01-10','ACD','a@gmail.com',1,'acv','HN',12345,'2022-10-10');
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhataitro`
--

DROP TABLE IF EXISTS `nhataitro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhataitro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manhataitro` int NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `diachi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gioitinh` int DEFAULT NULL,
  `sodienthoai` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `tinhtrangbenh` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `taitro` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  PRIMARY KEY (`manhataitro`),
  UNIQUE KEY `id` (`id`),
  KEY `taitro` (`taitro`),
  CONSTRAINT `nhataitro_ibfk_1` FOREIGN KEY (`manhataitro`) REFERENCES `taikhoan` (`tentaikhoan`),
  CONSTRAINT `nhataitro_ibfk_2` FOREIGN KEY (`taitro`) REFERENCES `nhommau` (`ten`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhataitro`
--

LOCK TABLES `nhataitro` WRITE;
/*!40000 ALTER TABLE `nhataitro` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhataitro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhommau`
--

DROP TABLE IF EXISTS `nhommau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhommau` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ngaytao` date DEFAULT NULL,
  PRIMARY KEY (`ten`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhommau`
--

LOCK TABLES `nhommau` WRITE;
/*!40000 ALTER TABLE `nhommau` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhommau` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phanhoi`
--

DROP TABLE IF EXISTS `phanhoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phanhoi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nguoigui_id` int DEFAULT NULL,
  `nguoinhan_id` int DEFAULT NULL,
  `tieude` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `chucvu` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `noidung` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ngaygui` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nguoigui_id` (`nguoigui_id`),
  KEY `nguoinhan_id` (`nguoinhan_id`),
  CONSTRAINT `phanhoi_ibfk_1` FOREIGN KEY (`nguoigui_id`) REFERENCES `taikhoan` (`tentaikhoan`),
  CONSTRAINT `phanhoi_ibfk_2` FOREIGN KEY (`nguoinhan_id`) REFERENCES `taikhoan` (`tentaikhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phanhoi`
--

LOCK TABLES `phanhoi` WRITE;
/*!40000 ALTER TABLE `phanhoi` DISABLE KEYS */;
INSERT INTO `phanhoi` VALUES (1,12345,12345,'ABC','Admin','ABC','2020-10-10');
/*!40000 ALTER TABLE `phanhoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanpham` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tensanpham` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `loaisanpham_id` int DEFAULT NULL,
  `mieuta` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `giaban` int DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `loaisanpham_id` (`loaisanpham_id`),
  CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`loaisanpham_id`) REFERENCES `loaisanpham` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
INSERT INTO `sanpham` VALUES (2,'ABC',1,'ABCs',123,'2020-10-10');
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tentaikhoan` int NOT NULL,
  `matkhau` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `phanquyen` int DEFAULT NULL,
  PRIMARY KEY (`tentaikhoan`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES (9,12,'12',2),(7,123,'123',2),(1,12345,'5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5',1),(5,123455,'12345',3),(2,123456,'12345',2),(6,1234511,'5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5',1);
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thacmac`
--

DROP TABLE IF EXISTS `thacmac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thacmac` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nguoigui_id` int DEFAULT NULL,
  `tieude` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sodienthoai` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `diachi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `noidung` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `trangthai` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ngaygui` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nguoigui_id` (`nguoigui_id`),
  CONSTRAINT `thacmac_ibfk_1` FOREIGN KEY (`nguoigui_id`) REFERENCES `taikhoan` (`tentaikhoan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thacmac`
--

LOCK TABLES `thacmac` WRITE;
/*!40000 ALTER TABLE `thacmac` DISABLE KEYS */;
INSERT INTO `thacmac` VALUES (1,12345,'ABC','0912314','ABC@gmail.com','Hà Nội','Test',NULL,'2020-10-10');
/*!40000 ALTER TABLE `thacmac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tienluong`
--

DROP TABLE IF EXISTS `tienluong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tienluong` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matienluong` int NOT NULL,
  `tienluong` int DEFAULT NULL,
  `ngaycong` int DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  PRIMARY KEY (`matienluong`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tienluong`
--

LOCK TABLES `tienluong` WRITE;
/*!40000 ALTER TABLE `tienluong` DISABLE KEYS */;
INSERT INTO `tienluong` VALUES (1,1,9000,30,'2022-10-10');
/*!40000 ALTER TABLE `tienluong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yta`
--

DROP TABLE IF EXISTS `yta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manhanvien` int NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `diachi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gioitinh` int DEFAULT NULL,
  `thanhtich` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `noicongtac` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `chucvu_id` int DEFAULT NULL,
  `ngayvao` date DEFAULT NULL,
  PRIMARY KEY (`manhanvien`),
  UNIQUE KEY `id` (`id`),
  KEY `chucvu_id` (`chucvu_id`),
  CONSTRAINT `yta_ibfk_1` FOREIGN KEY (`manhanvien`) REFERENCES `taikhoan` (`tentaikhoan`),
  CONSTRAINT `yta_ibfk_2` FOREIGN KEY (`chucvu_id`) REFERENCES `chucvu` (`machucvu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yta`
--

LOCK TABLES `yta` WRITE;
/*!40000 ALTER TABLE `yta` DISABLE KEYS */;
/*!40000 ALTER TABLE `yta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-12 20:18:12
