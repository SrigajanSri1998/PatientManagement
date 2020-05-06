-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 21, 2020 at 02:06 PM
-- Server version: 5.7.26
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patientmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `patientId` int(11) NOT NULL AUTO_INCREMENT,
  `patientName` varchar(25) NOT NULL,
  `phoneNo` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `patientAddress` varchar(255) NOT NULL,
  `ambulanceId` varchar(25) DEFAULT NULL,
  `doctorId` varchar(25) DEFAULT NULL,
  `appointmentId` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`patientId`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientId`, `patientName`, `phoneNo`, `age`, `gender`, `patientAddress`, `ambulanceId`, `doctorId`, `appointmentId`) VALUES
(34, 'kajan', '3222', 22, 'male', 'Jaffna', '', '', ''),
(36, 'alex', '0373723', 24, 'male', 'Jaffna', NULL, NULL, NULL),
(37, 'sdff', 'dfa', 33, 'dfas', 'dsfa', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
