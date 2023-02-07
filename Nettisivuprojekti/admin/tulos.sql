-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 08:33 PM
-- Server version: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arkham`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `tulos` (
  `id` int(1) NOT NULL,
  `pvm` date,
  `tapahtuma` text,
  `hinta` int,
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;
--
-- Dumping data for table `tulos`
--

INSERT INTO `tulos` (`id`, `pvm`, `tapahtuma`, `hinta`) VALUES
(1, '2022-09-09', 'myynti', 100),
(2, '2022-10-09', 'myynti', 100),
(3, '2022-10-09', 'tukkuostos', -75),
(4, '2022-11-09', 'myynti', 100),
(5, '2022-11-09', 'myynti', 100),
(6, '2022-10-09', 'myynti', 100),
(7, '2022-10-09', 'tukkuostos', -75),
(8, '2022-09-10', 'myynti', 100),
(9, '2022-09-10', 'myynti', 100),
(10, '2022-10-10', 'tukkuostos', -75),
(11, '2022-10-10', 'myynti', 100),
(12, '2022-10-22', 'myynti', 100),
(13, '2022-10-10', 'myynti', 100),
(14, '2022-10-22', 'tukkuostos', -75),
(15, '2022-10-10', 'myynti', 100),
(16, '2022-10-22', 'myynti', 100),
(17, '2022-00-09', 'tukkuostos', -75),
(18, '2022-00-22', 'myynti', 100),
(19, '2022-10-10', 'myynti', 100),
(20, '2022-10-24', 'tukkuostos', -75);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `tulos`
--
ALTER TABLE `tulos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tulos`
--
ALTER TABLE `tulos`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

