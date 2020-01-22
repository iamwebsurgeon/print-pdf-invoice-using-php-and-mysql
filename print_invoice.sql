-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 22, 2020 at 06:42 PM
-- Server version: 5.7.26
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `print_invoice`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

DROP TABLE IF EXISTS `bills`;
CREATE TABLE IF NOT EXISTS `bills` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(255) NOT NULL,
  `patient_age` int(11) NOT NULL,
  `patient_gender` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `ref_from_name` varchar(255) NOT NULL,
  `ref_to_name` varchar(255) NOT NULL,
  `weight_mri` varchar(255) NOT NULL,
  `scan_type` varchar(255) NOT NULL,
  `test_type` varchar(255) NOT NULL,
  `charges` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `lab_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`bill_id`, `patient_name`, `patient_age`, `patient_gender`, `contact_no`, `ref_from_name`, `ref_to_name`, `weight_mri`, `scan_type`, `test_type`, `charges`, `discount`, `net_amount`, `lab_id`, `created_at`, `updated_at`) VALUES
(1, 'Mehmood Khalil', 13, 'male', '03347711220', 'Dr. Qasim', 'Dr. Asif', 'bwp', 'Test Type 1', 'abcc', '30000', '2500', '27500', 2, '2020-01-22 22:44:57', NULL),
(2, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 22:46:57', NULL),
(3, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 22:55:22', NULL),
(4, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 22:56:33', NULL),
(5, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 22:57:22', NULL),
(6, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 22:58:18', NULL),
(7, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 22:59:36', NULL),
(8, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 23:00:24', NULL),
(9, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 23:01:04', NULL),
(10, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 23:01:36', NULL),
(11, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 23:04:28', NULL),
(12, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 23:05:20', NULL),
(13, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 23:05:50', NULL),
(14, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 23:07:49', NULL),
(15, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 23:08:37', NULL),
(16, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 23:10:28', NULL),
(17, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 23:10:51', NULL),
(18, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 23:12:17', NULL),
(19, 'Mehmood Khalil', 23, 'male', '03341122334', 'Dr. Noman', 'Dr. Kashif', 'bwp', 'Test Type 1', 'abcc', '30000', '10000', '20000', 2, '2020-01-22 23:13:11', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
