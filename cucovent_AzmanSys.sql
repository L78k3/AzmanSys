-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2019 at 09:08 PM
-- Server version: 5.7.25
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cucovent_AzmanSys`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblBooking`
--

CREATE TABLE `tblBooking` (
  `BookinID` int(11) NOT NULL,
  `CusID` int(11) NOT NULL,
  `FlightID` int(11) NOT NULL,
  `Booking_DateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Total_BookingCost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblCustomer`
--

CREATE TABLE `tblCustomer` (
  `CusID` int(11) NOT NULL,
  `CusFName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CusLName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CusTelNum` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblFlight`
--

CREATE TABLE `tblFlight` (
  `FlightID` int(11) NOT NULL,
  `F_Depar_DateTime` datetime NOT NULL,
  `F_Arrival_DateTime` datetime NOT NULL,
  `F_Departure_City` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `F_Arrival_City` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `F_Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblBooking`
--
ALTER TABLE `tblBooking`
  ADD PRIMARY KEY (`BookinID`),
  ADD KEY `CusID` (`CusID`),
  ADD KEY `FlightID` (`FlightID`);

--
-- Indexes for table `tblCustomer`
--
ALTER TABLE `tblCustomer`
  ADD PRIMARY KEY (`CusID`);

--
-- Indexes for table `tblFlight`
--
ALTER TABLE `tblFlight`
  ADD PRIMARY KEY (`FlightID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblBooking`
--
ALTER TABLE `tblBooking`
  MODIFY `BookinID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblCustomer`
--
ALTER TABLE `tblCustomer`
  MODIFY `CusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblFlight`
--
ALTER TABLE `tblFlight`
  MODIFY `FlightID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
