-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 08:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basisdata_latihan2`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen1`
--

CREATE TABLE `dosen1` (
  `dosen_id` int(11) NOT NULL,
  `nama_depan_dosen` varchar(255) NOT NULL,
  `nama_belakang_dosen` varchar(255) NOT NULL,
  `nama_dosen` varchar(255) GENERATED ALWAYS AS (concat(`nama_depan_dosen`,' ',`nama_belakang_dosen`)) STORED,
  `email_dosen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuliah`
--

CREATE TABLE `kuliah` (
  `id_kuliah` int(11) NOT NULL,
  `nama_kuliah` varchar(255) NOT NULL,
  `no_dept` varchar(255) NOT NULL,
  `dosen_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen1`
--
ALTER TABLE `dosen1`
  ADD PRIMARY KEY (`dosen_id`),
  ADD UNIQUE KEY `email_dosen` (`email_dosen`),
  ADD KEY `dosen_id` (`dosen_id`);

--
-- Indexes for table `kuliah`
--
ALTER TABLE `kuliah`
  ADD PRIMARY KEY (`id_kuliah`),
  ADD KEY `dosen_id` (`dosen_id`),
  ADD KEY `dosen_id_2` (`dosen_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kuliah`
--
ALTER TABLE `kuliah`
  ADD CONSTRAINT `fk_kuliah_dosen1` FOREIGN KEY (`dosen_id`) REFERENCES `dosen1` (`dosen_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
