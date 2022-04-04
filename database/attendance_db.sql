-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 03:16 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_sheet`
--

CREATE TABLE `attendance_sheet` (
  `attendance_sheet_id` int(11) NOT NULL,
  `person_id` int(10) NOT NULL,
  `course_id` int(10) NOT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_status_id` int(10) NOT NULL,
  `remarks` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_sheet`
--

INSERT INTO `attendance_sheet` (`attendance_sheet_id`, `person_id`, `course_id`, `attendance_date`, `attendance_status_id`, `remarks`) VALUES
(3, 2, 1, '2022-04-04', 1, ''),
(4, 2, 2, '2022-04-04', 2, 'injury'),
(5, 2, 7, '2022-04-04', 3, 'late 30mins'),
(6, 2, 8, '2022-04-04', 0, NULL),
(7, 3, 1, '2022-04-04', 0, NULL),
(8, 3, 2, '2022-04-04', 0, NULL),
(9, 3, 6, '2022-04-04', 0, NULL),
(10, 3, 7, '2022-04-04', 0, NULL),
(11, 3, 8, '2022-04-04', 0, NULL),
(12, 4, 3, '2022-04-04', 0, NULL),
(13, 5, 3, '2022-04-04', 0, NULL),
(14, 6, 4, '2022-04-04', 0, NULL),
(15, 6, 5, '2022-04-04', 0, NULL),
(16, 2, 1, '2022-04-05', 0, NULL),
(17, 2, 2, '2022-04-05', 0, NULL),
(18, 2, 7, '2022-04-05', 0, NULL),
(19, 2, 8, '2022-04-05', 0, NULL),
(20, 3, 1, '2022-04-05', 0, NULL),
(21, 3, 2, '2022-04-05', 0, NULL),
(22, 3, 6, '2022-04-05', 0, NULL),
(23, 3, 7, '2022-04-05', 0, NULL),
(24, 3, 8, '2022-04-05', 0, NULL),
(25, 4, 3, '2022-04-05', 0, NULL),
(26, 5, 3, '2022-04-05', 0, NULL),
(27, 6, 4, '2022-04-05', 0, NULL),
(28, 6, 5, '2022-04-05', 0, NULL),
(29, 2, 1, '2022-04-06', 0, NULL),
(30, 2, 2, '2022-04-06', 0, NULL),
(31, 2, 7, '2022-04-06', 0, NULL),
(32, 2, 8, '2022-04-06', 0, NULL),
(33, 3, 1, '2022-04-06', 0, NULL),
(34, 3, 2, '2022-04-06', 0, NULL),
(35, 3, 6, '2022-04-06', 0, NULL),
(36, 3, 7, '2022-04-06', 0, NULL),
(37, 3, 8, '2022-04-06', 0, NULL),
(38, 4, 3, '2022-04-06', 0, NULL),
(39, 5, 3, '2022-04-06', 0, NULL),
(40, 6, 4, '2022-04-06', 0, NULL),
(41, 6, 5, '2022-04-06', 0, NULL),
(42, 2, 1, '2022-04-07', 0, NULL),
(43, 2, 2, '2022-04-07', 0, NULL),
(44, 2, 7, '2022-04-07', 0, NULL),
(45, 2, 8, '2022-04-07', 0, NULL),
(46, 3, 1, '2022-04-07', 0, NULL),
(47, 3, 2, '2022-04-07', 0, NULL),
(48, 3, 6, '2022-04-07', 0, NULL),
(49, 3, 7, '2022-04-07', 0, NULL),
(50, 3, 8, '2022-04-07', 0, NULL),
(51, 4, 3, '2022-04-07', 0, NULL),
(52, 5, 3, '2022-04-07', 0, NULL),
(53, 6, 4, '2022-04-07', 0, NULL),
(54, 6, 5, '2022-04-07', 0, NULL),
(55, 2, 1, '2022-04-08', 0, NULL),
(56, 2, 2, '2022-04-08', 0, NULL),
(57, 2, 7, '2022-04-08', 0, NULL),
(58, 2, 8, '2022-04-08', 0, NULL),
(59, 3, 1, '2022-04-08', 0, NULL),
(60, 3, 2, '2022-04-08', 0, NULL),
(61, 3, 6, '2022-04-08', 0, NULL),
(62, 3, 7, '2022-04-08', 0, NULL),
(63, 3, 8, '2022-04-08', 0, NULL),
(64, 4, 3, '2022-04-08', 0, NULL),
(65, 5, 3, '2022-04-08', 0, NULL),
(66, 6, 4, '2022-04-08', 0, NULL),
(67, 6, 5, '2022-04-08', 0, NULL),
(68, 2, 1, '2022-04-03', 0, NULL),
(69, 2, 2, '2022-04-03', 0, NULL),
(70, 2, 7, '2022-04-03', 0, NULL),
(71, 2, 8, '2022-04-03', 0, NULL),
(72, 3, 1, '2022-04-03', 0, NULL),
(73, 3, 2, '2022-04-03', 0, NULL),
(74, 3, 6, '2022-04-03', 0, NULL),
(75, 3, 7, '2022-04-03', 0, NULL),
(76, 3, 8, '2022-04-03', 0, NULL),
(77, 4, 3, '2022-04-03', 0, NULL),
(78, 5, 3, '2022-04-03', 0, NULL),
(79, 6, 4, '2022-04-03', 0, NULL),
(80, 6, 5, '2022-04-03', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendance_status`
--

CREATE TABLE `attendance_status` (
  `attendance_status_id` int(5) NOT NULL,
  `status_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_status`
--

INSERT INTO `attendance_status` (`attendance_status_id`, `status_name`) VALUES
(0, ''),
(1, 'Present'),
(2, 'Absent'),
(3, 'Late');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(10) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `course_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_code`, `course_name`) VALUES
(1, 'CCS0043', 'APPLICATION DEVELOPMENT AND EMERGING TECHNOLOGIES (LEC)'),
(2, 'CCS0043L', 'APPLICATION DEVELOPMENT AND EMERGING TECHNOLOGIES (LAB)'),
(3, 'GED0043', 'SPECIALIZE ENGLISH PROGRAM 3'),
(4, 'GED0083', 'COLLEGE PHYSICS 2 (LEC)'),
(5, 'GED0083L', 'COLLEGE PHYSICS 2 (LAB)'),
(6, 'IT0015', 'NETWORKING 2'),
(7, 'IT0037', 'SYSTEM ANALYSIS AND DESIGN'),
(8, 'IT0089', 'IT SPECIALIZATION 7 – FUNDAMENTALS OF ANALYTICS MODELING');

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `major_id` int(10) NOT NULL,
  `major` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`major_id`, `major`) VALUES
(1, 'Computer Science'),
(2, 'Information Technology'),
(3, 'Business Administration'),
(4, 'Pharmacy'),
(5, 'Applied Physics');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `position_Id` int(10) NOT NULL,
  `person_number` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `email`, `first_name`, `last_name`, `password`, `position_Id`, `person_number`, `created_at`, `updated_at`) VALUES
(1, 'admin@feu.edu.ph', 'admin 1', 'admin', '6c7ca345f63f835cb353ff15bd6c5e052ec08e7a', 1, 1, '2020-04-25 03:49:43', '2022-04-04 11:02:18'),
(2, 'user1@feu.edu.ph', 'User', '1', '12dea96fec20593566ab75692c9949596833adc9', 3, NULL, '2022-04-04 11:02:05', '2022-04-04 11:02:21'),
(3, 'user2@feu.edu.ph', 'User', '2', '12dea96fec20593566ab75692c9949596833adc9', 3, NULL, '2022-04-04 11:02:05', '2022-04-04 11:02:21'),
(4, 'user3@feu.edu.ph', 'User', '3', '12dea96fec20593566ab75692c9949596833adc9', 3, NULL, '2022-04-04 11:02:05', '2022-04-04 11:02:21'),
(5, 'user4@feu.edu.ph', 'User', '4', '12dea96fec20593566ab75692c9949596833adc9', 3, NULL, '2022-04-04 11:02:05', '2022-04-04 11:02:21'),
(6, 'user5@feu.edu.ph', 'User', '5', '12dea96fec20593566ab75692c9949596833adc9', 3, NULL, '2022-04-04 11:02:05', '2022-04-04 11:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `person_major`
--

CREATE TABLE `person_major` (
  `person_major_id` int(10) NOT NULL,
  `person_id` int(10) NOT NULL,
  `major_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_major`
--

INSERT INTO `person_major` (`person_major_id`, `person_id`, `major_id`) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 4, 3),
(4, 5, 4),
(5, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `person_position`
--

CREATE TABLE `person_position` (
  `position_id` int(10) NOT NULL,
  `position` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_position`
--

INSERT INTO `person_position` (`position_id`, `position`) VALUES
(1, 'Admin'),
(2, 'Staff'),
(3, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `person_section`
--

CREATE TABLE `person_section` (
  `person_section_id` int(10) NOT NULL,
  `person_id` int(10) NOT NULL,
  `section_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person_section`
--

INSERT INTO `person_section` (`person_section_id`, `person_id`, `section_id`) VALUES
(1, 2, 1),
(2, 3, 2),
(3, 4, 3),
(4, 5, 4),
(5, 6, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `section_id` int(10) NOT NULL,
  `section_name` varchar(20) NOT NULL,
  `year_level` int(11) DEFAULT NULL,
  `section_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`section_id`, `section_name`, `year_level`, `section_type_id`) VALUES
(1, '1-A', 1, 1),
(2, '1-B', 1, 1),
(3, '2-A', 2, 1),
(4, '2-B', 2, 1),
(5, '2-C', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `section_type`
--

CREATE TABLE `section_type` (
  `section_type_id` int(10) NOT NULL,
  `section_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section_type`
--

INSERT INTO `section_type` (`section_type_id`, `section_type`) VALUES
(1, 'Regular'),
(2, 'Irregular');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(10) NOT NULL,
  `status_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`) VALUES
(1, 'Pending'),
(2, 'Approved'),
(3, 'Rejected'),
(4, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `year_id` int(10) NOT NULL,
  `academic_year` varchar(255) NOT NULL,
  `is_current` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`year_id`, `academic_year`, `is_current`) VALUES
(1, '2022-2023', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_sheet`
--
ALTER TABLE `attendance_sheet`
  ADD PRIMARY KEY (`attendance_sheet_id`),
  ADD KEY `faculty_id` (`person_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `attendance_status`
--
ALTER TABLE `attendance_status`
  ADD PRIMARY KEY (`attendance_status_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`major_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`),
  ADD UNIQUE KEY `username` (`email`),
  ADD KEY `position_id` (`position_Id`) USING BTREE;

--
-- Indexes for table `person_major`
--
ALTER TABLE `person_major`
  ADD PRIMARY KEY (`person_major_id`),
  ADD KEY `person_id` (`person_id`) USING BTREE,
  ADD KEY `course_id` (`major_id`) USING BTREE;

--
-- Indexes for table `person_position`
--
ALTER TABLE `person_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `person_section`
--
ALTER TABLE `person_section`
  ADD PRIMARY KEY (`person_section_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`section_id`),
  ADD KEY `section_type_id` (`section_type_id`);

--
-- Indexes for table `section_type`
--
ALTER TABLE `section_type`
  ADD PRIMARY KEY (`section_type_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`year_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_sheet`
--
ALTER TABLE `attendance_sheet`
  MODIFY `attendance_sheet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `attendance_status`
--
ALTER TABLE `attendance_status`
  MODIFY `attendance_status_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `major_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `person_major`
--
ALTER TABLE `person_major`
  MODIFY `person_major_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `person_position`
--
ALTER TABLE `person_position`
  MODIFY `position_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `person_section`
--
ALTER TABLE `person_section`
  MODIFY `person_section_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `section_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `section_type`
--
ALTER TABLE `section_type`
  MODIFY `section_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `year_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
