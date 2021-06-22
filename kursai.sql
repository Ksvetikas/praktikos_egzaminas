-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 12:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egzaminas`
--

-- --------------------------------------------------------

--
-- Table structure for table `kursai`
--

CREATE TABLE `kursai` (
  `kurso_id` int(11) NOT NULL,
  `kurso_autorius` int(11) NOT NULL,
  `trumpas_aprasas` varchar(200) NOT NULL,
  `ilgas_aprasas` varchar(1000) NOT NULL,
  `nuotraukos_kelias` varchar(200) DEFAULT NULL,
  `populiarumas` int(11) DEFAULT NULL,
  `kaina` decimal(10,2) DEFAULT NULL,
  `sukurimo_data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kursai`
--
ALTER TABLE `kursai`
  ADD PRIMARY KEY (`kurso_id`),
  ADD KEY `kurso_autorius` (`kurso_autorius`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kursai`
--
ALTER TABLE `kursai`
  MODIFY `kurso_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kursai`
--
ALTER TABLE `kursai`
  ADD CONSTRAINT `kursai_ibfk_1` FOREIGN KEY (`kurso_autorius`) REFERENCES `autoriai` (`autoriaus_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
