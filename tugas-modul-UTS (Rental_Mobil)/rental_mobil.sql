-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2022 at 05:10 PM
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
-- Database: `rental_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` char(10) NOT NULL,
  `plat_nomor` char(10) NOT NULL,
  `merk` varchar(15) NOT NULL,
  `jenis` varchar(15) NOT NULL,
  `harga_sewa` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `plat_nomor`, `merk`, `jenis`, `harga_sewa`) VALUES
('MBL-1', 'D-2145-AB', 'SUZUKI', 'APV', 950000),
('MBL-2', 'D-6435-HG', 'TOYOTA', 'AVANZA', 1200000),
('MBL-3', 'D-9384-GH', 'DAIHATSU', 'GRANDMAX', 1200000),
('MBL-4', 'D-6272-JK', 'HONDA', 'CIVIC', 8000000),
('MBL-5', 'D-0149-TG', 'JEEP', 'OFF-ROAD', 5700000),
('MBL-6', 'D-4232-KK', 'TOYOYA', 'ALPHARD', 6000000),
('MBL-7', 'D-2184-RE', 'HONDA', 'JAZZ', 1200000),
('MBL-8', 'D-6358-CV', 'MITSUBISHI', 'PICK-UP', 900000);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` char(10) NOT NULL,
  `nama_pegawai` varchar(40) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `nomor_kontak` int(15) NOT NULL,
  `jam_kerja` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `alamat`, `nomor_kontak`, `jam_kerja`) VALUES
('PGW-1', 'Ari Setya', 'Buah Batu', 857941, '09:00:00'),
('PGW-2', 'Gina Putri', 'Baleendah', 864172, '09:00:00'),
('PGW-3', 'Dhika Gumelar', 'Batununggal', 8745281, '09:00:00'),
('PGW-4', 'Fikri Jalaludin', 'Dayeuhkolot', 893457, '15:00:00'),
('PGW-5', 'Fauzan Bilah', 'Lembang', 892375, '15:00:00'),
('PGW-6', 'Agus Suhendra', 'Kiaracondong', 871305, '15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` char(10) NOT NULL,
  `nama_pelanggan` varchar(40) NOT NULL,
  `nomor_kontak` int(15) NOT NULL,
  `alamat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `nomor_kontak`, `alamat`) VALUES
('PLG-1', 'Jaka Saputra', 8673482, 'Ciparay'),
('PLG-2', 'Asep putra', 816374, 'Bojongsoang'),
('PLG-3', 'Rini Supriyani', 87724, 'Cimekar'),
('PLG-4', 'Rianto Subagja', 842184, 'Cicendo'),
('PLG-5', 'Fitri Oktaviani', 8638243, 'Regol');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_rental`
--

CREATE TABLE `transaksi_rental` (
  `nomor_transaksi` char(10) NOT NULL,
  `id_pelanggan` char(10) NOT NULL,
  `id_pegawai` char(10) NOT NULL,
  `id_mobil` varchar(10) NOT NULL,
  `tanggal_sewa` date DEFAULT NULL,
  `tanggal_pengembalian` date DEFAULT NULL,
  `total_harga` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_rental`
--

INSERT INTO `transaksi_rental` (`nomor_transaksi`, `id_pelanggan`, `id_pegawai`, `id_mobil`, `tanggal_sewa`, `tanggal_pengembalian`, `total_harga`) VALUES
('TRS-1', 'PLG-1', 'PGW-3', 'MBL-7', '2022-01-13', '2022-01-17', 4800000),
('TRS-2', 'PLG-2', 'PGW-4', 'MBL-2', '2022-01-07', '2022-01-10', 3600000),
('TRS-3', 'PLG-4', 'PGW-1', 'MBL-8', '2022-03-14', '2022-03-16', 1800000),
('TRS-4', 'PLG-5', 'PGW-2', 'MBL-6', '2022-04-10', '2022-04-11', 6000000),
('TRS-5', 'PLG-3', 'PGW-5', 'MBL-1', '2022-03-15', '2022-03-17', 1900000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `transaksi_rental`
--
ALTER TABLE `transaksi_rental`
  ADD PRIMARY KEY (`nomor_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_mobil` (`id_mobil`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi_rental`
--
ALTER TABLE `transaksi_rental`
  ADD CONSTRAINT `transaksi_rental_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `transaksi_rental_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`),
  ADD CONSTRAINT `transaksi_rental_ibfk_3` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
