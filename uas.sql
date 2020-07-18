-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2020 at 11:27 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `prov`
--

CREATE TABLE `prov` (
  `id_prov` int(3) NOT NULL,
  `prov` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prov`
--

INSERT INTO `prov` (`id_prov`, `prov`) VALUES
(1, 'Aceh'),
(2, 'Bali'),
(3, 'Kepulauan Bangka Belitung'),
(4, 'Banten'),
(5, 'Bengkulu'),
(6, 'Jawa Tengah'),
(7, 'Kalimantan Tengah'),
(8, 'Sulawesi Tengah'),
(9, 'Jawa Timur'),
(10, 'Kalimantan Timur'),
(11, 'Nusa Tenggara Timur'),
(12, 'Gorontalo'),
(13, 'DKI Jakarta'),
(14, 'Jambi'),
(15, 'Lampung'),
(16, 'Maluku'),
(17, 'Kalimantan Utara'),
(18, 'Maluku Utara'),
(19, 'Sulawesi Utara'),
(20, 'Sumatera Utara'),
(21, 'Papua'),
(22, 'Riau'),
(23, 'Kepulauan Riau'),
(24, 'Sulawesi Tenggara'),
(25, 'Kalimantan Selatan'),
(26, 'Sulawesi Selatan'),
(27, 'Sumatera Selatan'),
(28, 'Jawa Barat'),
(29, 'Kalimantan Barat'),
(30, 'Nusa Tenggara Barat'),
(31, 'Papua Barat'),
(32, 'Sulawesi Barat'),
(33, 'Sumatera Barat'),
(34, 'DI Yoygyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `relawan`
--

CREATE TABLE `relawan` (
  `id` int(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `id_prov` varchar(3) NOT NULL,
  `email` varchar(50) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `ahli` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relawan`
--

INSERT INTO `relawan` (`id`, `nama`, `alamat`, `id_prov`, `email`, `hp`, `ahli`) VALUES
(1, 'q', 'w', 'as', 'd', 'a', 'd'),
(2, 'Agus', 'bojong', '<br', 'ka@gmail', '084522255', 'IT'),
(3, 'q', 'qq', '2', 'asda', 'x', 'as');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', '123456', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `prov`
--
ALTER TABLE `prov`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indexes for table `relawan`
--
ALTER TABLE `relawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `prov`
--
ALTER TABLE `prov`
  MODIFY `id_prov` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `relawan`
--
ALTER TABLE `relawan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
