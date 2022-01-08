-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 04:00 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kepegawaian`
--

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `kode_divisi` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `golongan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`kode_divisi`, `jabatan`, `golongan`) VALUES
('1', 'Guru', '3A'),
('2', 'Guru', '1B'),
('3', 'Kepala Sekolah', '3A');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `kode_pegawai` varchar(11) NOT NULL,
  `NIP` varchar(20) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `agama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`kode_pegawai`, `NIP`, `nama_pegawai`, `status`, `alamat`, `no_telpon`, `jenis_kelamin`, `agama`) VALUES
('1', '12345', 'Wahyu Safari', 'Belum Menikah', 'Banjarbaru', '087814998287', 'Laki-Laki', 'Islam'),
('2', '222', 'Ujang', 'Belum Menikah', 'Martapura', '1234567', 'Laki-Laki', 'Islam');

-- --------------------------------------------------------

--
-- Table structure for table `pengajian`
--

CREATE TABLE `pengajian` (
  `kode_gaji` varchar(50) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `bulan_gaji` varchar(50) NOT NULL,
  `total_gaji` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengajian`
--

INSERT INTO `pengajian` (`kode_gaji`, `nama_pegawai`, `jabatan`, `bulan_gaji`, `total_gaji`, `status`) VALUES
('2', 'Ujang', 'Kepala Sekolah', 'April', '2000000', 'Terbayar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`kode_divisi`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`kode_pegawai`);

--
-- Indexes for table `pengajian`
--
ALTER TABLE `pengajian`
  ADD PRIMARY KEY (`kode_gaji`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
