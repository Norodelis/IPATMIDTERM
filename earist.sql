-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2025 at 05:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `earist`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificate_of_registration`
--

CREATE TABLE `certificate_of_registration` (
  `registration_no` varchar(50) NOT NULL,
  `academic_year_term` varchar(50) DEFAULT NULL,
  `student_no` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  `email_address` varchar(100) DEFAULT NULL,
  `college` varchar(100) DEFAULT NULL,
  `program` varchar(100) DEFAULT NULL,
  `major` varchar(100) DEFAULT NULL,
  `year_level` varchar(20) DEFAULT NULL,
  `curriculum` varchar(100) DEFAULT NULL,
  `scholarship_discount` varchar(100) DEFAULT NULL,
  `subject_code` varchar(20) DEFAULT NULL,
  `subject_title` varchar(100) DEFAULT NULL,
  `lec_units` varchar(5) DEFAULT NULL,
  `lab_units` varchar(5) DEFAULT NULL,
  `credit_units` varchar(5) DEFAULT NULL,
  `tuition_units` varchar(5) DEFAULT NULL,
  `subject_section` varchar(20) DEFAULT NULL,
  `subject_schedule_room` varchar(100) DEFAULT NULL,
  `subject_faculty` varchar(100) DEFAULT NULL,
  `total_lec_units` varchar(5) DEFAULT NULL,
  `total_lab_units` varchar(5) DEFAULT NULL,
  `total_credit_units` varchar(5) DEFAULT NULL,
  `total_tuition` varchar(5) DEFAULT NULL,
  `tuition` decimal(10,2) DEFAULT NULL,
  `athletic_fee` decimal(10,2) DEFAULT NULL,
  `cultural_fee` decimal(10,2) DEFAULT NULL,
  `development_fee` decimal(10,2) DEFAULT NULL,
  `guidance_fee` decimal(10,2) DEFAULT NULL,
  `library_fee` decimal(10,2) DEFAULT NULL,
  `medical_dental_fee` decimal(10,2) DEFAULT NULL,
  `registration_fee` decimal(10,2) DEFAULT NULL,
  `computer_fee` decimal(10,2) DEFAULT NULL,
  `laboratory_fee` decimal(10,2) DEFAULT NULL,
  `total_assessment` decimal(10,2) DEFAULT NULL,
  `less_financial_aid` decimal(10,2) DEFAULT NULL,
  `net_assessed` decimal(10,2) DEFAULT NULL,
  `credit_memo` decimal(10,2) DEFAULT NULL,
  `total_discount` decimal(10,2) DEFAULT NULL,
  `total_payment` decimal(10,2) DEFAULT NULL,
  `outstanding_balance` decimal(10,2) DEFAULT NULL,
  `first_payment_due` date DEFAULT NULL,
  `second_payment_due` date DEFAULT NULL,
  `third_payment_due` date DEFAULT NULL,
  `payment_validation_date` date DEFAULT NULL,
  `official_receipt` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `code` varchar(50) DEFAULT NULL,
  `subject_title` varchar(255) DEFAULT NULL,
  `lec` int(11) DEFAULT NULL,
  `lab` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `tuition` int(11) DEFAULT NULL,
  `section` varchar(50) DEFAULT NULL,
  `schedule_room` varchar(100) DEFAULT NULL,
  `faculty` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`code`, `subject_title`, `lec`, `lab`, `credit`, `tuition`, `section`, `schedule_room`, `faculty`) VALUES
('DBMSLAB2', 'Database Management System 2 (Laboratory)', 0, 2, 1, 1, 'BSINFOTECH2A', 'M 06:00PM-09:00PM', 'Carlos, Erannie'),
('DBMSLEC2', 'Database Management System 2 (Lecture)', 2, 0, 2, 2, 'BSINFOTECH2A', 'W 11:00AM-01:00PM', 'Carlos, Erannie'),
('GEELECCP', 'Communicative Proficiency in Business Correspondence and Research Writing', 3, 0, 3, 3, 'BSINFOTECH2A', 'T 07:00AM-10:00AM', 'Pardito, Ramil'),
('GEPEHF2', 'Physical Activity Towards Health and Fitness II', 2, 0, 2, 2, 'BSINFOTECH2A', 'T 03:00PM-05:00PM', 'Tolentino, Ferdinand'),
('INTCHIL', 'Introduction to Human Computer Interaction (Laboratory)', 0, 2, 1, 1, 'BSINFOTECH2A', 'M 04:00PM-06:00PM', 'Macasil, Ma. Jasmine Rose'),
('INTCHILEC', 'Introduction to Human Computer Interaction (Lecture)', 2, 0, 2, 2, 'BSINFOTECH2A', 'W 04:00PM-06:00PM', 'Macasil, Ma. Jasmine Rose'),
('IPATLAB1', 'Integrative Programming and Technologies 1 (Laboratory)', 0, 2, 1, 1, 'BSINFOTECH2A', 'W 02:00PM-05:00PM', 'San Jose, Dhani'),
('IPATLEC1', 'Integrative Programming and Technologies 1 (Lecture)', 2, 0, 2, 2, 'BSINFOTECH2A', 'H 11:00AM-01:00PM', 'San Jose, Dhani'),
('NETWORK1L', 'Networking 1 (Laboratory)', 0, 2, 1, 1, 'BSINFOTECH2A', 'T 11:00AM-02:00PM', 'Almazan, Edmund'),
('NETWORK1C', 'Networking 1 (Lecture)', 2, 0, 2, 2, 'BSINFOTECH2A', 'H 08:00AM-10:00AM', 'Almazan, Edmund'),
('WEBDVLC1', 'Web Development 2 (Laboratory)', 0, 2, 1, 1, 'BSINFOTECH2A', 'T 07:00AM-10:00AM', 'Sison, Edgardo'),
('WEBDVLC2', 'Web Development 2 (Lecture)', 2, 0, 2, 2, 'BSINFOTECH2A', 'M 08:00AM-10:00AM', 'Sison, Edgardo');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
