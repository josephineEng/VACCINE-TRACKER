-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 02:33 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `confirmPassword` varchar(255) NOT NULL,
  `healthCenterName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`id`, `email`, `name`, `password`, `role`, `confirmPassword`, `healthCenterName`) VALUES
(1, 'chiller@gmail.com', 'katende', 'katende', 'SuperAdmin', 'katende', NULL),
(2, 'katende@gmail.com', 'katende', 'katende', 'Admin', 'katende', 'Kirydongo Health centre'),
(3, 'daaki@gmail.com', 'daaki', 'katende', 'Admin', 'katende', 'Kawala'),
(4, 'daaki@gmail.com', 'Katende Nicholas', 'katende', 'Admin', 'katende', 'kawempe'),
(5, 'richarddaaki4@gmail.com', 'Daaki Benjamin Richard', '123', 'Admin', '123', 'Kirydongo Health centre'),
(6, 'betty@gmail.com', 'Happy Betty', 'happy', 'Admin', 'happy', 'Mulago');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `bookingId` int(11) NOT NULL,
  `vaccineName` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `healthCenterName` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`bookingId`, `vaccineName`, `place`, `date`, `healthCenterName`, `name`, `email`) VALUES
(1, 'Astra', 'Paris', '2021-12-06', '2', 'Katende Nicholas', 'katznicho@gmail.com'),
(2, 'Astra', 'Paris', '2021-12-23', '2', 'Katende Nicholas', 'katznicho@gmail.com'),
(3, 'Astra', 'Paris', '2021-12-08', '6', 'hfhfjd', 'katznicho@gmail.com'),
(4, 'Astra', 'Paris', '2021-12-06', '6', 'Katende Nicholas', 'katznicho@gmail.com'),
(5, 'Astra', 'Paris', '2021-12-31', '6', 'Katende Nicholas', 'katznicho@gmail.com'),
(6, 'Astra', 'Paris', '2021-11-30', '3', 'Katende Nicholas', 'katznicho@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `healthcentres`
--

CREATE TABLE `healthcentres` (
  `healthCenterId` int(11) NOT NULL,
  `healthCenterName` varchar(255) NOT NULL,
  `totalPatients` varchar(255) DEFAULT NULL,
  `totalVaccines` varchar(255) DEFAULT NULL,
  `receiveDate` date DEFAULT NULL,
  `receiveMonth` varchar(255) DEFAULT NULL,
  `vaccineName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `healthcentres`
--

INSERT INTO `healthcentres` (`healthCenterId`, `healthCenterName`, `totalPatients`, `totalVaccines`, `receiveDate`, `receiveMonth`, `vaccineName`) VALUES
(2, 'Mulago', '250', NULL, NULL, NULL, NULL),
(3, 'Kawala', '100', NULL, NULL, NULL, NULL),
(5, 'Man', '420', NULL, NULL, NULL, NULL),
(6, 'Kirydongo Health centre', '90', NULL, NULL, NULL, NULL),
(7, 'kawwempe', '100', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `healthcentrevaccines`
--

CREATE TABLE `healthcentrevaccines` (
  `id` int(11) NOT NULL,
  `healthCenterId` varchar(255) DEFAULT NULL,
  `batchNo` varchar(255) DEFAULT NULL,
  `totalDoses` varchar(255) DEFAULT NULL,
  `remainingDoses` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `healthcentrevaccines`
--

INSERT INTO `healthcentrevaccines` (`id`, `healthCenterId`, `batchNo`, `totalDoses`, `remainingDoses`) VALUES
(34, '2', '1234', '21', '20'),
(35, '3', '1234', '10', '10'),
(36, '5', '1234', '46', '46'),
(37, '6', '1234', '9', '9'),
(38, '7', '1234', '10', '10'),
(39, '2', '1234', '21', '20'),
(40, '3', '1234', '10', '10'),
(41, '5', '1234', '46', '46'),
(42, '6', '1234', '9', '9'),
(43, '7', '1234', '10', '10'),
(44, '2', '0011', '87', '84'),
(45, '3', '0011', '43', '43'),
(46, '5', '0011', '184', '184'),
(47, '6', '0011', '39', '39'),
(48, '7', '0011', '43', '43'),
(49, '2', '0011', '87', '84'),
(50, '3', '0011', '43', '43'),
(51, '5', '0011', '184', '184'),
(52, '6', '0011', '39', '39'),
(53, '7', '0011', '43', '43');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patientsId` int(11) NOT NULL,
  `healthCenterName` varchar(255) NOT NULL,
  `NIN` varchar(255) NOT NULL,
  `dateOfVaccination` date DEFAULT current_timestamp(),
  `returnDate` date DEFAULT NULL,
  `typeOfVaccine` varchar(255) NOT NULL,
  `batchNumber` varchar(255) DEFAULT NULL,
  `patientName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patientsId`, `healthCenterName`, `NIN`, `dateOfVaccination`, `returnDate`, `typeOfVaccine`, `batchNumber`, `patientName`) VALUES
(1, 'Kirydongo Health centre', 'reueidjdo0wkjmwe94jm', '2021-12-06', '2021-12-16', 'root', '1', 'Katende Nicholas'),
(3, '10', 'reueidjdo0wkjmwe94jm', '2021-12-06', '2021-12-16', 'VacconeThree', '0011', 'maama'),
(4, '10', 'm3e355', '2021-12-06', '2021-12-16', 'VacconeThree', '0011', 'daaki');

-- --------------------------------------------------------

--
-- Table structure for table `vaccines`
--

CREATE TABLE `vaccines` (
  `vaccineId` int(11) NOT NULL,
  `totalNumber` varchar(100) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `batchNumber` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccines`
--

INSERT INTO `vaccines` (`vaccineId`, `totalNumber`, `type`, `status`, `batchNumber`) VALUES
(1, '100', 'vaccineOne', 'Done', '1234'),
(2, '400', 'VacconeThree', 'Done', '0011'),
(3, '500', 'vaccineFour', 'available', '1100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`bookingId`);

--
-- Indexes for table `healthcentres`
--
ALTER TABLE `healthcentres`
  ADD PRIMARY KEY (`healthCenterId`);

--
-- Indexes for table `healthcentrevaccines`
--
ALTER TABLE `healthcentrevaccines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patientsId`);

--
-- Indexes for table `vaccines`
--
ALTER TABLE `vaccines`
  ADD PRIMARY KEY (`vaccineId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `bookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `healthcentres`
--
ALTER TABLE `healthcentres`
  MODIFY `healthCenterId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `healthcentrevaccines`
--
ALTER TABLE `healthcentrevaccines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patientsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vaccines`
--
ALTER TABLE `vaccines`
  MODIFY `vaccineId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
