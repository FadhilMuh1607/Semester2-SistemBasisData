-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2022 at 02:05 AM
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
-- Database: `distributor`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` char(10) NOT NULL,
  `jenis_barang` varchar(20) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `harga_barang` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` char(10) NOT NULL,
  `nama_customer` varchar(30) NOT NULL,
  `no_telephone` int(15) NOT NULL,
  `alamat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplyer`
--

CREATE TABLE `supplyer` (
  `id_supplyer` char(10) NOT NULL,
  `nama_supplyer` varchar(30) NOT NULL,
  `no_telephone` int(15) NOT NULL,
  `alamat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_barang`
--

CREATE TABLE `transaksi_barang` (
  `kode_transaksi` char(10) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `jumlah_barang` int(10) NOT NULL,
  `nama_supplyer` varchar(30) NOT NULL,
  `nama_customer` varchar(30) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`nama_barang`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`nama_customer`);

--
-- Indexes for table `supplyer`
--
ALTER TABLE `supplyer`
  ADD PRIMARY KEY (`nama_supplyer`);

--
-- Indexes for table `transaksi_barang`
--
ALTER TABLE `transaksi_barang`
  ADD PRIMARY KEY (`kode_transaksi`),
  ADD KEY `nama_barang` (`nama_barang`),
  ADD KEY `nama_customer` (`nama_customer`),
  ADD KEY `nama_supplyer` (`nama_supplyer`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi_barang`
--
ALTER TABLE `transaksi_barang`
  ADD CONSTRAINT `transaksi_barang_ibfk_1` FOREIGN KEY (`nama_barang`) REFERENCES `barang` (`nama_barang`),
  ADD CONSTRAINT `transaksi_barang_ibfk_2` FOREIGN KEY (`nama_customer`) REFERENCES `customer` (`nama_customer`),
  ADD CONSTRAINT `transaksi_barang_ibfk_3` FOREIGN KEY (`nama_supplyer`) REFERENCES `supplyer` (`nama_supplyer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
