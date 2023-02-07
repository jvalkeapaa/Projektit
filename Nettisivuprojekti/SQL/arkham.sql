-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 06:09 AM
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

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `nimi` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `nimi`, `username`, `email`, `password`, `created_at`) VALUES
(3, 'kalle', 'testaaja', 'alksd@htomail.com', '$2y$10$rCxJun1YM32RZQ433zX6IOcscGVtU39ihlWpeDCml6K8HwL/NWI4C', '2022-12-09 06:38:23'),
(4, 'kalle', 'testaaja1', 'testaaja@testaaja.fi', '$2y$10$hikUUfg2mdK/A28uE7eT9Oi6xqaNHQwqieaLm84qxQy2oHOjmPlom', '2022-12-09 06:38:51'),
(5, 'kalle', 'testaaja2', 'asdasdasdasdasd@com', '$2y$10$1xGMNU501nf6LYvlaNArBeTwS7SkGxDzAIK9BJK5Bm./xO0Ud7PA2', '2022-12-09 06:39:32');

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
(12, '2022-11-24', 'joonas valkeapÃ¤Ã¤', 'testi@testi.fi', 'Muodoton', NULL, 'toimi nyt perkele'),
(13, '2022-12-21', 'joonas valkeapÃ¤Ã¤', 'asdasdasdasdasd@com', 'Uppopaistettu', 'Muu', 'joko saa huilata');

-- --------------------------------------------------------

--
-- Table structure for table `tulos`
--

CREATE TABLE `tulos` (
  `ID` int(11) NOT NULL,
  `pvm` date NOT NULL,
  `tapahtuma` varchar(30) NOT NULL,
  `hinta` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tulos`
--

INSERT INTO `tulos` (`ID`, `pvm`, `tapahtuma`, `hinta`) VALUES
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
(20, '2022-10-24', 'tukkuostos', -75),
(21, '2022-09-09', 'myynti', 130),
(22, '2022-10-09', 'myynti', 142),
(23, '2022-10-09', 'tukkuostos', -121),
(24, '2022-11-09', 'myynti', 473),
(25, '2022-11-09', 'myynti', 237),
(26, '2022-10-09', 'myynti', 126),
(27, '2022-10-09', 'tukkuostos', -231),
(28, '2022-09-10', 'myynti', 463),
(29, '2022-09-10', 'myynti', 475),
(30, '2022-10-10', 'tukkuostos', -143),
(31, '2022-10-10', 'myynti', 743),
(32, '2022-10-22', 'myynti', 123),
(33, '2022-10-10', 'myynti', 235),
(34, '2022-10-22', 'tukkuostos', -320),
(35, '2022-10-10', 'myynti', 254),
(36, '2022-10-22', 'myynti', 643),
(37, '2022-00-09', 'tukkuostos', -321),
(38, '2022-00-22', 'myynti', 234),
(39, '2022-10-10', 'myynti', 7322),
(40, '2022-10-24', 'tukkuostos', -475),
(41, '2021-09-09', 'myynti', 620),
(42, '2021-10-09', 'myynti', 520),
(43, '2021-10-09', 'tukkuostos', -475),
(44, '2022-11-09', 'myynti', 531),
(45, '2022-12-15', 'myynti', 523),
(46, '2022-12-13', 'myynti', 112),
(47, '2022-12-12', 'tukkuostos', -245),
(48, '2022-02-10', 'myynti', 253),
(49, '2022-02-10', 'myynti', 642),
(50, '2022-12-11', 'tukkuostos', -124),
(51, '2022-12-12', 'myynti', 836),
(52, '2022-12-16', 'myynti', 1254),
(53, '2022-12-10', 'myynti', 826),
(54, '2022-12-13', 'tukkuostos', -1000),
(55, '2022-12-13', 'myynti', 517),
(56, '2022-12-15', 'myynti', 583),
(57, '2022-02-09', 'tukkuostos', -240),
(58, '2022-02-22', 'myynti', 287),
(59, '2022-12-12', 'myynti', 986),
(60, '2022-12-24', 'tukkuostos', -800);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'arkhamadmin', '$2y$10$QMb0eBCNVUrmWlCA9qkr1e0upVlH6vOlvdlK4L/nPYA55W/N5hDtO', '2022-12-07 18:30:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `asiakkaat`
--
ALTER TABLE `asiakkaat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tulos`
--
ALTER TABLE `tulos`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `asiakkaat`
--
ALTER TABLE `asiakkaat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
