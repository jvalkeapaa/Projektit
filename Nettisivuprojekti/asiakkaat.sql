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
-- Table structure for table `asiakkaat`
--

CREATE TABLE `asiakkaat` (
  `id` int(11) NOT NULL,
  `pvm` date DEFAULT NULL,
  `nimi` text,
  `email` text,
  `ruoka` text,
  `erikoiset` text,
  `viesti` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asiakkaat`
--

INSERT INTO `asiakkaat` (`id`, `pvm`, `nimi`, `email`, `ruoka`, `erikoiset`, `viesti`) VALUES
(1, '2022-09-09', 'Kalle', 'kalle.kaalipaa@email.com', NULL, NULL, 'SQL 5/5'),
(2, '2022-10-10', 'Jerry', 'jerry.mestari@email.com', NULL, NULL, 'SQL 5/5'),
(12, '2022-11-24', 'joonas valkeapÃ¤Ã¤', 'testi@testi.fi', 'Muodoton', NULL, 'toimi nyt perkele');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asiakkaat`
--
ALTER TABLE `asiakkaat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asiakkaat`
--
ALTER TABLE `asiakkaat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
