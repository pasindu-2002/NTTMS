-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 04, 2023 at 11:10 AM
-- Server version: 8.0.34
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nttms`
--

-- --------------------------------------------------------

--
-- Table structure for table `asign_module`
--

DROP TABLE IF EXISTS `asign_module`;
CREATE TABLE IF NOT EXISTS `asign_module` (
  `epf_no` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `module_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `batch_code` varchar(20) NOT NULL,
  `session_type` varchar(50) NOT NULL,
  `date` date DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `asign_module`
--

INSERT INTO `asign_module` (`epf_no`, `module_code`, `batch_code`, `session_type`, `date`, `id`) VALUES
('Sandaruwani Pathirage', 'Final Project VIVA', 'DSE22.2F', 'Morning & Evening', '2023-10-06', 1),
('Ashanthi Kurukulasuriya', 'GUI VIVA', 'DSE22.2F', 'Morning & Evening', '2023-10-13', 2),
('Sandaruwani Pathirage', 'OOP', 'DSE22.2F', 'Morning & Evening', '2023-10-04', 3);

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
CREATE TABLE IF NOT EXISTS `batch` (
  `course_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `batch_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `course_director` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`batch_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`course_code`, `batch_code`, `course_director`) VALUES
('DSE', 'DSE23.2F', 'Thilini Dharmasena'),
('HNDSE', 'HNDSE23.2F', 'Sandaruwani Pathirage');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `course_code` varchar(20) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `duration` double NOT NULL,
  `faculty` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`course_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_code`, `course_name`, `duration`, `faculty`) VALUES
('BSCS', ' BSc (Hons) Computing', 24, 'Computing'),
('DSE', 'Diploma in Software Engineering ', 12, 'Computing'),
('HNDSE', 'Higher National Diploma in Software Engineering', 12, 'Computing');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
CREATE TABLE IF NOT EXISTS `lecturer` (
  `epf_no` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tele_no` int NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`epf_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`epf_no`, `name`, `email`, `tele_no`, `password`) VALUES
('100', 'Sandaruwani Pathirage', 'sadaruwanipathirage@gmail.com', 123456789, 'abc123'),
('150', 'Thilini Dharmasena', 'ppp@gmail.com', 1234567, 'abc123'),
('160', 'Supun Asanga', '123@gmail.com', 123456, 'abc123'),
('admin', 'Admin', '', 705073843, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `module_code` varchar(20) NOT NULL,
  `hours` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  PRIMARY KEY (`module_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`module_code`, `hours`, `name`, `course_code`) VALUES
('OOP', 45, 'OOP', 'DSE'),
('PF', 45, 'PF', 'DSE'),
('Static', 60, 'Static', 'HNDSE');

-- --------------------------------------------------------

--
-- Table structure for table `po_staff`
--

DROP TABLE IF EXISTS `po_staff`;
CREATE TABLE IF NOT EXISTS `po_staff` (
  `epf_no` varchar(50) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tele_no` int NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`epf_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `po_staff`
--

INSERT INTO `po_staff` (`epf_no`, `fullname`, `email`, `tele_no`, `password`) VALUES
('102', 'Pasindu Aluthwalahewa', 'pasindualthwalahewa@gmial.come', 705073843, 'abc123'),
('103', 'Sahan', 'cxz@gmail.com', 1234567, 'abc123'),
('admin', 'admin', '', 705073843, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `batch` varchar(20) NOT NULL,
  `index_no` varchar(20) NOT NULL,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(25) NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`index_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`batch`, `index_no`, `name`, `password`, `image`) VALUES
('', 'admin', 'Admin', 'admin', NULL),
('DSE22.2F', 'gadse222f-001', 'MENDIS T P S', 'abc123', ''),
('DSE22.2F', 'gadse222f-016', 'ERANGA A H P', 'abc123', 'erangaahp.jpg'),
('DSE22.2F', 'gadse222f-020', 'M M R CHANDIMA', 'abc123', ''),
('DSE22.2F', 'gadse222f-030', 'KAUSHALYA M G T P', 'abc123', ''),
('DSE22.2F', 'gadse222f-036', 'PEIRIS K S S ', 'abc123', ''),
('HNDSE23.2F', 'gahndse22.2f-011', 'ERANGA A H P', 'abc123', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
