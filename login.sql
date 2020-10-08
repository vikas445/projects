-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2019 at 07:20 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked_passenger`
--

CREATE TABLE `booked_passenger` (
  `pnr` int(11) NOT NULL,
  `name` text NOT NULL,
  `express` text NOT NULL,
  `from1` text NOT NULL,
  `to1` text NOT NULL,
  `date` date NOT NULL,
  `class` text NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booked_passenger`
--

INSERT INTO `booked_passenger` (`pnr`, `name`, `express`, `from1`, `to1`, `date`, `class`, `adult`, `children`) VALUES
(100, 'panda2', 'Vidharbha', 'kanpur', 'Dadar', '2019-09-26', 'A/C', 1, 0),
(101, 'panda2', 'Vidharbha', 'Mumbai Cst', 'Dadar', '2019-09-26', 'A/C', 1, 12),
(102, 'vikas mandape', 'Vidharbha', 'Mumbai Cst', 'Dadar', '2019-09-26', 'A/C', 1, 0),
(103, 'vikas mandape', 'Vidharbha', 'Mumbai Cst', 'Dadar', '2019-09-26', 'A/C', 1, 0),
(104, 'vikas mandape', 'Vidharbha', 'Mumbai Cst', 'Dadar', '2019-09-26', 'A/C', 1, 0),
(105, 'vikas mandape', 'Vidharbha', 'Mumbai Cst', 'Dadar', '2019-09-26', 'A/C', 1, 0),
(106, 'vikas mandape', 'Vidharbha', 'Mumbai Cst', 'Dadar', '2019-09-26', 'A/C', 1, 0),
(107, 'vikas mandape', 'Vidharbha', 'Mumbai Cst', 'Dadar', '2019-09-26', 'A/C', 1, 0),
(108, 'vikas mandape', 'Vidharbha', 'Dadar', 'Akola Junction ', '2019-09-27', 'Sleeper', 1, 0),
(109, 'vikas mandape', 'Vidharbha', 'Dadar', 'Akola Junction ', '2019-09-27', 'Sleeper', 1, 0),
(110, 'vikas', 'Hatia', 'Nasik Road ', 'Bhusaval Junction', '2019-09-27', 'Generel', 1, 0),
(111, 'vikas', 'Vidharbha', 'Igatpuri', 'Shegaon', '2019-09-26', 'Sleeper', 1, 0),
(112, 'vikas mandape', 'Vidharbha', 'Dadar', 'Igatpuri', '2019-09-26', 'Sleeper', 1, 0),
(113, 'asdf', 'Vidharbha', 'Igatpuri', 'Shegaon', '0000-00-00', 'Sleeper', 1, 0),
(114, 'asdf', 'Vidharbha', 'Igatpuri', 'Shegaon', '0000-00-00', 'Sleeper', 1, 0),
(115, 'asdf', 'Vidharbha', 'Dadar', 'Kalyan Junction', '2019-09-27', 'Sleeper', 1, 0),
(116, 'vikas mandape', 'Vidharbha', 'Mumbai Cst', 'Igatpuri', '2019-09-26', 'Sleeper', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

CREATE TABLE `credit_card` (
  `card_number` int(11) NOT NULL,
  `cvv` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `credit_card`
--

INSERT INTO `credit_card` (`card_number`, `cvv`, `balance`) VALUES
(1111111111, 111, 5250);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` text NOT NULL,
  `phoneno` tinytext NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `phoneno`, `email`, `message`) VALUES
('vikas', '8652281988', 'vikas@gmail.com', 'nice!');

-- --------------------------------------------------------

--
-- Table structure for table `hatia_express`
--

CREATE TABLE `hatia_express` (
  `station_id` int(11) NOT NULL,
  `station_name` text NOT NULL,
  `arrive` text NOT NULL,
  `departure` text NOT NULL,
  `distance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hatia_express`
--

INSERT INTO `hatia_express` (`station_id`, `station_name`, `arrive`, `departure`, `distance`) VALUES
(1, 'Lokmanyatilak', '1:30', '1:35', 250),
(2, 'Kalyan', '2:30', '2:35', 350),
(3, 'Nasik', '3:45', '3:45', 450),
(4, 'Bhusaval', '4:30', '4:45', 550),
(5, 'Chalisgaon', '5:30', '5:45', 550),
(6, 'Nagpur', '6:30', '6:45', 650),
(7, 'Gondia', '7:30', '7:45', 750),
(8, 'Hatia', '8:30', '8:45', 850);

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `name` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `dob` date NOT NULL,
  `mobno` text NOT NULL,
  `state` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rajdhani_express`
--

CREATE TABLE `rajdhani_express` (
  `station_id` int(11) NOT NULL,
  `station_name` text NOT NULL,
  `arrive` text NOT NULL,
  `departure` text NOT NULL,
  `distance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rajdhani_express`
--

INSERT INTO `rajdhani_express` (`station_id`, `station_name`, `arrive`, `departure`, `distance`) VALUES
(1, 'Bangalore', '1:30', '1:35', 250),
(2, 'Dadar', '2:30', '2:35', 350),
(3, 'Sai P Nilayam', '3:45', '3:45', 450),
(4, 'Raichur', '4:30', '4:45', 550),
(5, 'Chalisgaon', '5:30', '5:45', 550),
(6, 'Nagpur', '6:30', '6:45', 650),
(7, 'Gondia', '7:30', '7:45', 750),
(8, 'vashim', '8:30', '8:45', 850);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `password1` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `dob` date NOT NULL,
  `mobno` text NOT NULL,
  `state` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`firstname`, `lastname`, `username`, `password`, `password1`, `email`, `address`, `dob`, `mobno`, `state`) VALUES
('vikas', 'mandape', 'vikas', '123', '123', 'vikas@gmail.com', 'panvel', '2019-09-28', '2147483647', '0'),
('samrit', 'kadam', 'samrit', '123', '123', 'vikas@gmail.com', 'manasarovar', '2019-09-27', '865777777', 'maharashtra');

-- --------------------------------------------------------

--
-- Table structure for table `vidharbha_express`
--

CREATE TABLE `vidharbha_express` (
  `station_id` int(11) NOT NULL,
  `station_name` text NOT NULL,
  `arrive` text NOT NULL,
  `departure` text NOT NULL,
  `distance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vidharbha_express`
--

INSERT INTO `vidharbha_express` (`station_id`, `station_name`, `arrive`, `departure`, `distance`) VALUES
(1, 'Mumbai cst', '1:30', '1:35', 250),
(2, 'Dadar', '2:30', '2:35', 350),
(3, 'Kalyan', '3:45', '3:45', 450),
(4, 'Igatpuri', '4:30', '4:45', 550),
(5, 'Chalisgaon', '5:30', '5:45', 550),
(6, 'Nagpur', '6:30', '6:45', 650),
(7, 'Shegaon', '7:30', '7:45', 750),
(8, 'Akola', '8:30', '8:45', 850);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked_passenger`
--
ALTER TABLE `booked_passenger`
  ADD PRIMARY KEY (`pnr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked_passenger`
--
ALTER TABLE `booked_passenger`
  MODIFY `pnr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
