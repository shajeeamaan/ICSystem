-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2016 at 08:40 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itmname` varchar(50) NOT NULL,
  `itmbuyprice` int(50) NOT NULL,
  `itemsellprice` int(50) NOT NULL,
  `qty` int(10) NOT NULL,
  `category` varchar(50) NOT NULL,
  `exp` varchar(50) NOT NULL,
  `supname` varchar(50) NOT NULL,
  `suptell` varchar(50) NOT NULL,
  `supeml` varchar(50) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itmname`, `itmbuyprice`, `itemsellprice`, `qty`, `category`, `exp`, `supname`, `suptell`, `supeml`, `id`) VALUES
('OREO CRÈME BISCUITS ', 700, 740, 40, 'Food', '23.4.2017', 'Nabisco ', '0110000000', 'orio@gmail.com', 1),
('Fanta', 80, 100, 77, 'Food', '24.5.2018', 'Cocacola', '1234567890', 'cocacola@gmail.com', 2),
('Munchee Gold Mari', 28, 35, 100, 'Food', '24.5.2018', 'Munchee', '0110000000', 'munchee@gmail.com', 3),
('Kottu Mee', 35, 40, 70, 'Food', '24.5.2018', 'Preema', '0110000000', 'preema@gmail.com', 4),
('KIST TOMATO SAUCE ', 250, 350, 50, 'Food', '13.11.2019', 'Kist', '0110000000', 'kist@gmail.com', 5),
('Astra', 200, 300, 50, 'Food', '28.10.2017', 'Uniliver', '011000000', 'unlivier@gmail.com', 6);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `access` varchar(20) NOT NULL,
  `tell` varchar(14) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `eml` varchar(50) NOT NULL,
  `psw` varchar(50) NOT NULL,
  `id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`fname`, `lname`, `access`, `tell`, `uname`, `eml`, `psw`, `id`) VALUES
('Shajee', 'amaan', 'Admin', '0710159928', 'shajeeamaan', 'shajeeamaan@yahoo.com', 'helloworldshajee', 1),
('Supitha', 'Weerasinghe', 'Cashier', '0710159928', 'supithaweerasinghe', 'supitha@gmail.com', 'supitha123', 2),
('Sample', 'User', 'Admin', '0000000000', 'sampleuser', 'sampleuser@gmail.com', 'sample', 3),
('Rajith', 'Konara', 'Cashier', '012345679', 'rajithkonara', 'rajitha@gmali.com', 'rajith123', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `id` int(5) NOT NULL,
  `itmname` varchar(50) NOT NULL,
  `itmprice` int(6) NOT NULL,
  `qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`id`, `itmname`, `itmprice`, `qty`) VALUES
(1, 'AtlasPen', 15, 2),
(2, 'Astra', 40, 3),
(3, 'Fanta', 100, 2),
(1, 'AtlasPen', 15, 5),
(2, 'Astra', 40, 4),
(3, 'Fanta', 100, 6),
(1, 'AtlasPen', 15, 40),
(1, 'AtlasPen', 15, 3),
(2, 'Astra', 40, 4),
(3, 'Fanta', 100, 2),
(1, 'AtlasPen', 15, 3),
(1, 'AtlasPen', 15, 3),
(1, 'AtlasPen', 15, 3),
(2, 'Astra', 40, 3),
(1, 'AtlasPen', 15, 30),
(2, 'Astra', 40, 3),
(3, 'Fanta', 100, 4),
(4, 'cocacola', 100, 5),
(4, 'cocacola', 100, 105),
(4, 'cocacola', 100, 100),
(1, 'aaa', 40, 1),
(2, 'Astra', 40, 1),
(1, 'aaa', 40, 2),
(3, 'Fanta', 100, 10),
(1, 'aaa', 40, 10),
(1, 'OREO CRÈME BISCUITS ', 740, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tempsell`
--

CREATE TABLE `tempsell` (
  `id` int(5) NOT NULL,
  `itmname` varchar(50) NOT NULL,
  `itmprice` int(6) NOT NULL,
  `qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempsell`
--

INSERT INTO `tempsell` (`id`, `itmname`, `itmprice`, `qty`) VALUES
(1, 'OREO CRÈME BISCUITS ', 740, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
