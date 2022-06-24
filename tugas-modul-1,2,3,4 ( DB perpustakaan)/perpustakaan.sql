-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 07:52 AM
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
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `kode_anggota` char(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nim` char(10) NOT NULL,
  `prodi` varchar(20) NOT NULL,
  `angkatan` int(11) NOT NULL,
  `alamat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`kode_anggota`, `nama`, `nim`, `prodi`, `angkatan`, `alamat`) VALUES
('P-001', 'Fadhil Muhammad', '213051023', 'Teknologi Komputer', 2021, 'Ciparay'),
('P-002', 'Ali Mustopa', '213051005', 'Teknologi Komputer', 2021, 'Ciparay'),
('P-003', 'Alfan Almarogy', '213051007', 'Teknologi Komputer', 2021, 'Ciparay'),
('P-004', 'Dede Ridwan', '213051016', 'Teknologi Komputer', 2021, 'Ciparay'),
('P-005', 'Deden Rizky Abdul Malik', '213051017', 'Teknologi Komputer', 2021, 'Ciparay');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` char(10) NOT NULL,
  `judul` varchar(40) NOT NULL,
  `tahun_terbit` char(6) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `penerbit` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `tahun_terbit`, `pengarang`, `penerbit`) VALUES
('111', 'Basis Data', '2012', 'Andi', 'Informatika'),
('112', 'Web Design', '2014', 'Khairul', 'Galamedia'),
('113', 'Algoritma', '2010', 'Rinaldi', 'Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `kode_pinjam` char(10) NOT NULL,
  `kode_anggota` char(10) NOT NULL,
  `id_buku` char(10) NOT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `denda` int(11) DEFAULT NULL,
  `kode_petugas` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`kode_pinjam`, `kode_anggota`, `id_buku`, `tanggal_pinjam`, `tanggal_kembali`, `denda`, `kode_petugas`) VALUES
('KP01', 'P-001', '111', '2018-04-12', '2018-04-18', 0, 'A1'),
('KP02', 'P-002', '112', '2018-04-13', '2018-04-19', 0, 'A2');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `kode_petugas` char(10) NOT NULL,
  `nama` char(20) NOT NULL,
  `jabatan` char(10) NOT NULL,
  `jam_tugas` char(10) NOT NULL,
  `telephone` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`kode_petugas`, `nama`, `jabatan`, `jam_tugas`, `telephone`) VALUES
('A1', 'Jono', 'Staff 1', '09:00', 8111),
('A2', 'Yeni', 'Staff 1', '14:00', 82111);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`kode_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`kode_pinjam`),
  ADD KEY `kode_anggota` (`kode_anggota`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `kode_petugas` (`kode_petugas`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`kode_petugas`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`kode_anggota`) REFERENCES `anggota` (`kode_anggota`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `peminjaman_ibfk_3` FOREIGN KEY (`kode_petugas`) REFERENCES `petugas` (`kode_petugas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
