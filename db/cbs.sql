-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2023 at 04:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(30) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `question` varchar(100) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) DEFAULT NULL,
  `id_type` varchar(20) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `gender` varchar(15) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `id_type`, `number`, `gender`, `country`, `address`, `phone`, `email`, `name`) VALUES
('devendrajohari', 'Aadhar Card', '504840044464', 'Devendra', 'Male', 'India', 'Hathipur-Kothar', '6386946873', 'devendrajohari9@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `intercab`
--

CREATE TABLE `intercab` (
  `username` varchar(30) DEFAULT NULL,
  `driver` varchar(20) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(30) DEFAULT NULL,
  `car` varchar(15) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `ref` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `intercity`
--

CREATE TABLE `intercity` (
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `driver` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `car` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `intracity`
--

CREATE TABLE `intracity` (
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `driver` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `car` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `intransport`
--

CREATE TABLE `intransport` (
  `name` varchar(20) DEFAULT NULL,
  `dname` varchar(20) DEFAULT NULL,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `truck` varchar(20) DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL,
  `distance` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `dname` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `truck` varchar(20) DEFAULT NULL,
  `distance` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
