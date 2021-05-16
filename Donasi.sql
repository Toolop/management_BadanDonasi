-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 16, 2021 at 06:34 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Donasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `Badan_amal`
--

CREATE TABLE `Badan_amal` (
  `id_company` varchar(10) NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Badan_amal`
--

INSERT INTO `Badan_amal` (`id_company`, `username`, `password`, `alamat`, `nama`) VALUES
('1', 'toolop', 'sdkartika22', 'jalan nusa bangsa', 'Donasi Kartika'),
('2', 'armortitan', 'sdkartika22', 'jalan jalan', 'Donasi Saya'),
('3', 'kartika', 'sdkartika22', 'jalan buntu', 'Donasi Kartika II'),
('4', 'kitabisa', 'sdkartika22', 'jalan buntu', 'Donasi Kitabisa'),
('5', 'hidayah123', 'sdkartika', 'jalan mangga ', 'Badan Hidayah'),
('6', 'sejahterabanget', 'sdkartika22', 'jalan buntu', 'Badan Sejahtera');

-- --------------------------------------------------------

--
-- Table structure for table `Barang`
--

CREATE TABLE `Barang` (
  `id_donasi` varchar(10) NOT NULL,
  `jumlah` int(10) DEFAULT NULL,
  `jenis` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Barang`
--

INSERT INTO `Barang` (`id_donasi`, `jumlah`, `jenis`) VALUES
('10', 100, 'Buku'),
('12', 50, 'Baju'),
('13', 20, 'Kebutuhan Pokok'),
('15', 15, 'Baju'),
('16', 15, 'Buku'),
('17', 20, 'Kebutuhan Pokok'),
('18', 10, 'Baju'),
('20', 10, 'Baju'),
('22', 10, 'Buku'),
('4', 10, 'Baju'),
('5', 10, 'Baju'),
('7', 3, 'Buku'),
('8', 3, 'Buku');

-- --------------------------------------------------------

--
-- Table structure for table `Donasi`
--

CREATE TABLE `Donasi` (
  `id_donatur` varchar(10) DEFAULT NULL,
  `id_donasi` varchar(10) NOT NULL,
  `tgl_donasi` date DEFAULT NULL,
  `id_company` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Donasi`
--

INSERT INTO `Donasi` (`id_donatur`, `id_donasi`, `tgl_donasi`, `id_company`) VALUES
('1', '1', '2021-05-10', '1'),
('3', '10', '2021-05-12', '1'),
('4', '11', '2021-05-14', '1'),
('4', '12', '2021-05-14', '1'),
('1', '13', '2021-05-15', '1'),
('5', '14', '2021-05-15', '1'),
('5', '15', '2021-05-15', '1'),
('5', '16', '2021-05-15', '2'),
('5', '17', '2021-05-15', '1'),
('1', '18', '2021-05-15', '1'),
('6', '19', '2021-05-15', '1'),
('1', '2', '2021-05-10', '1'),
('6', '20', '2021-05-15', '1'),
('7', '21', '2021-05-16', '1'),
('7', '22', '2021-05-16', '1'),
('1', '3', '2021-05-10', '1'),
('1', '4', '2021-05-10', '1'),
('1', '5', '2021-05-10', '1'),
('1', '6', '2021-05-12', '1'),
('1', '7', '2021-05-12', '1'),
('1', '8', '2021-05-12', '2'),
('3', '9', '2021-05-12', '1');

-- --------------------------------------------------------

--
-- Table structure for table `Donatur`
--

CREATE TABLE `Donatur` (
  `id_donatur` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `no_telepon` varchar(13) DEFAULT NULL,
  `tipe` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Donatur`
--

INSERT INTO `Donatur` (`id_donatur`, `username`, `Password`, `nama`, `alamat`, `no_telepon`, `tipe`) VALUES
('1', 'toolop', 'sdkartika22', 'Rafi Arya Nugraha', 'Jalan Nusa Indah', '081540867030', 'Personal'),
('2', 'laras', 'smanli', 'Laras Nurul', 'Jalan Buntu', '081540867080', 'Organisasi'),
('3', 'kyurita', 'rafiarya', 'ita', 'jl nusa indah', '081394611264', 'Personal'),
('4', 'bambang', 'smanlibengkulu', 'Bambang', 'jalan jalan ke tanah abang', '087557781234', 'Personal'),
('5', 'jamalganteng', 'sdkartika22', 'Jamal', 'jl Nusa indah ', '081540867030', 'Personal'),
('6', 'Jhonyganteng', 'sdkartika22', 'Jhony', 'Jalan Nusa Indah', '081540867030', 'Organisasi'),
('7', 'siapasaya', 'sdkartika22', 'Siapa', 'jalan jalan', '08123456789', 'Personal');

-- --------------------------------------------------------

--
-- Table structure for table `Kotak_amal`
--

CREATE TABLE `Kotak_amal` (
  `id_kotak` varchar(10) NOT NULL,
  `id_company` varchar(10) DEFAULT NULL,
  `id_pegawai` varchar(6) DEFAULT NULL,
  `alamat` varchar(120) DEFAULT NULL,
  `jumlah_uang` int(15) DEFAULT NULL,
  `tgl_penarikan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Kotak_amal`
--

INSERT INTO `Kotak_amal` (`id_kotak`, `id_company`, `id_pegawai`, `alamat`, `jumlah_uang`, `tgl_penarikan`) VALUES
('1', '1', '111', 'jalan nusa indah', 110000, '2021-05-10'),
('2', '1', '110', 'jalan Nusa Bangsa ', 10000, '2021-05-10'),
('3', '1', '113', 'Masjid Baitul Rahman', 100000, '2021-05-15'),
('4', '1', '112', 'Jalan rahmat', 90000, '2021-05-15');

-- --------------------------------------------------------

--
-- Table structure for table `Pegawai`
--

CREATE TABLE `Pegawai` (
  `id_pegawai` varchar(6) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `no_telepon` varchar(13) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `id_company` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Pegawai`
--

INSERT INTO `Pegawai` (`id_pegawai`, `nama`, `no_telepon`, `tgl_masuk`, `id_company`) VALUES
('1', 'Jamal', '0874923847', '2012-12-12', '6'),
('110', 'Rafi Arya', '08123755778', '2018-12-23', '1'),
('111', 'Laras Nurul', '081540867030', '2012-12-23', '1'),
('112', 'Tiwi', '081234589', '2015-12-23', '1'),
('113', 'Bamnbang', '0812345430', '2017-12-23', '1'),
('114', 'Jarwo', '0812435430', '2017-12-10', '1'),
('210', 'Randi Baraku', '08123456789', '2018-12-23', '2');

-- --------------------------------------------------------

--
-- Table structure for table `Penerima`
--

CREATE TABLE `Penerima` (
  `id_pegawai` varchar(6) DEFAULT NULL,
  `id_company` varchar(10) DEFAULT NULL,
  `id_penerima` varchar(10) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `alamat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Ponsel_penerima`
--

CREATE TABLE `Ponsel_penerima` (
  `id_penerima` varchar(10) NOT NULL,
  `nomor_hp1` varchar(13) NOT NULL,
  `nomor_hp2` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Uang`
--

CREATE TABLE `Uang` (
  `id_donasi` varchar(10) NOT NULL,
  `jumlah_total` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Uang`
--

INSERT INTO `Uang` (`id_donasi`, `jumlah_total`) VALUES
('1', 1000),
('11', 50000),
('14', 100000),
('19', 50000),
('2', 10000),
('21', 10000),
('3', 100000),
('6', 50000),
('9', 1000000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Badan_amal`
--
ALTER TABLE `Badan_amal`
  ADD PRIMARY KEY (`id_company`);

--
-- Indexes for table `Barang`
--
ALTER TABLE `Barang`
  ADD PRIMARY KEY (`id_donasi`);

--
-- Indexes for table `Donasi`
--
ALTER TABLE `Donasi`
  ADD PRIMARY KEY (`id_donasi`),
  ADD KEY `id_donatur` (`id_donatur`),
  ADD KEY `id_company` (`id_company`);

--
-- Indexes for table `Donatur`
--
ALTER TABLE `Donatur`
  ADD PRIMARY KEY (`id_donatur`);

--
-- Indexes for table `Kotak_amal`
--
ALTER TABLE `Kotak_amal`
  ADD PRIMARY KEY (`id_kotak`),
  ADD KEY `id_company` (`id_company`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `Pegawai`
--
ALTER TABLE `Pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_company` (`id_company`);

--
-- Indexes for table `Penerima`
--
ALTER TABLE `Penerima`
  ADD PRIMARY KEY (`id_penerima`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_company` (`id_company`);

--
-- Indexes for table `Ponsel_penerima`
--
ALTER TABLE `Ponsel_penerima`
  ADD KEY `id_penerima` (`id_penerima`);

--
-- Indexes for table `Uang`
--
ALTER TABLE `Uang`
  ADD PRIMARY KEY (`id_donasi`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Barang`
--
ALTER TABLE `Barang`
  ADD CONSTRAINT `Barang_ibfk_1` FOREIGN KEY (`id_donasi`) REFERENCES `Donasi` (`id_donasi`) ON UPDATE CASCADE;

--
-- Constraints for table `Donasi`
--
ALTER TABLE `Donasi`
  ADD CONSTRAINT `Donasi_ibfk_1` FOREIGN KEY (`id_donatur`) REFERENCES `Donatur` (`id_donatur`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Donasi_ibfk_2` FOREIGN KEY (`id_company`) REFERENCES `Badan_amal` (`id_company`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Kotak_amal`
--
ALTER TABLE `Kotak_amal`
  ADD CONSTRAINT `Kotak_amal_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `Badan_amal` (`id_company`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Kotak_amal_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `Pegawai` (`id_pegawai`) ON UPDATE CASCADE;

--
-- Constraints for table `Pegawai`
--
ALTER TABLE `Pegawai`
  ADD CONSTRAINT `Pegawai_ibfk_1` FOREIGN KEY (`id_company`) REFERENCES `Badan_amal` (`id_company`) ON UPDATE CASCADE;

--
-- Constraints for table `Penerima`
--
ALTER TABLE `Penerima`
  ADD CONSTRAINT `Penerima_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `Pegawai` (`id_pegawai`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Penerima_ibfk_2` FOREIGN KEY (`id_company`) REFERENCES `Badan_amal` (`id_company`) ON UPDATE CASCADE;

--
-- Constraints for table `Ponsel_penerima`
--
ALTER TABLE `Ponsel_penerima`
  ADD CONSTRAINT `Ponsel_penerima_ibfk_1` FOREIGN KEY (`id_penerima`) REFERENCES `Penerima` (`id_penerima`);

--
-- Constraints for table `Uang`
--
ALTER TABLE `Uang`
  ADD CONSTRAINT `Uang_ibfk_1` FOREIGN KEY (`id_donasi`) REFERENCES `Donasi` (`id_donasi`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
