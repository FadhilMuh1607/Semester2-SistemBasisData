-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 09:09 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblbuku`
--

CREATE TABLE `tblbuku` (
  `Kd_buku` int(10) NOT NULL,
  `Judul` varchar(50) NOT NULL,
  `Kd_peng` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbuku`
--

INSERT INTO `tblbuku` (`Kd_buku`, `Judul`, `Kd_peng`) VALUES
(1, 'Pemrograman C++', 1),
(2, 'Pengantar Basis Data', 1),
(3, 'Panduan Microsoft Office', 2),
(4, 'Pemrograman Visual dBase', 1),
(5, 'Sistem Pakar', 4),
(6, 'Pemrograman C++', 3),
(7, 'Visual C++', 6),
(8, 'QBasic', 5),
(9, 'Pemrograman Pascal', 8),
(10, 'Pemrograman Pascal', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tblgaji`
--

CREATE TABLE `tblgaji` (
  `Nama` varchar(50) NOT NULL,
  `Gaji` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblgaji`
--

INSERT INTO `tblgaji` (`Nama`, `Gaji`) VALUES
('Rina', 600000),
('Aji', 700000),
('Sita', 500000),
('wiwid', 1000000),
('Edi', 600000),
('Vita', 750000);

-- --------------------------------------------------------

--
-- Table structure for table `tblpengarang`
--

CREATE TABLE `tblpengarang` (
  `Kd_peng` int(10) NOT NULL,
  `Nama_peng` varchar(50) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Kota` varchar(50) NOT NULL,
  `Kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpengarang`
--

INSERT INTO `tblpengarang` (`Kd_peng`, `Nama_peng`, `Alamat`, `Kota`, `Kelamin`) VALUES
(1, 'Ashadi', 'Jl. Beo no.34', 'Yogya', 'P'),
(2, 'Rian H', 'Jl. Solo no.123', 'Yogya', 'P'),
(3, 'Suadi Marwan', 'Jl. Semangka no.II/1', 'Bandung', 'P'),
(4, 'Siti Halimah', 'Jl. Sukaria no.5', 'Solo', 'W'),
(5, 'Amir Hamzah', 'Jl. Gajah Mada no.18A', 'Kudus', 'P'),
(6, 'Suparman', 'Jl. Setia no.1', 'Jakarta', 'P'),
(7, 'Jaja M', 'Jl. Hangtuah no.3', 'Bandung', 'P'),
(8, 'Saman', 'Jl. Gedong Kuning', 'Yogya', 'P'),
(9, 'Anwar Juniardi', 'Jl. Tidar no.6A', 'Magelang', 'P'),
(10, 'Fatmawati', 'Jl. Renjana no.4', 'Bogor', 'W');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
