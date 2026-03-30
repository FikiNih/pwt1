-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 30, 2026 at 05:09 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jadwal`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `Kd_guru` varchar(5) NOT NULL,
  `Id_guru` int(11) NOT NULL,
  `Nm_guru` varchar(50) NOT NULL,
  `Jenkel` varchar(10) NOT NULL,
  `Pend_terakhir` varchar(20) NOT NULL,
  `HP` varchar(13) NOT NULL,
  `Alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel jadwal_kelas`
--

CREATE TABLE `tabel jadwal_kelas` (
  `Id_jadwal` int(11) NOT NULL,
  `Id_kelas` int(11) NOT NULL,
  `Thn_ajaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel kelas`
--

CREATE TABLE `tabel kelas` (
  `Id_kelas` int(11) NOT NULL,
  `Nm_kelas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel mapel`
--

CREATE TABLE `tabel mapel` (
  `Kd_mapel` varchar(5) NOT NULL,
  `Nm_mapel` varchar(35) NOT NULL,
  `Kkm` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel siswa`
--

CREATE TABLE `tabel siswa` (
  `Nis` varchar(10) NOT NULL,
  `Id_user` int(11) NOT NULL,
  `Nm_siswa` varchar(50) NOT NULL,
  `Jenkel` varchar(10) NOT NULL,
  `HP` varchar(13) NOT NULL,
  `Id_kelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','guru','siswa','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `role`) VALUES
(1, 'sigma', 'sigma1', 'admin'),
(2, 'Fiki', 'aku123', 'admin'),
(3, 'Rex', 'rex1', 'guru'),
(4, 'jubaedah', 'guru1', 'guru'),
(5, 'kulah', 'akuaja', 'siswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`Kd_guru`);

--
-- Indexes for table `tabel jadwal_kelas`
--
ALTER TABLE `tabel jadwal_kelas`
  ADD PRIMARY KEY (`Id_jadwal`);

--
-- Indexes for table `tabel kelas`
--
ALTER TABLE `tabel kelas`
  ADD PRIMARY KEY (`Id_kelas`);

--
-- Indexes for table `tabel mapel`
--
ALTER TABLE `tabel mapel`
  ADD PRIMARY KEY (`Kd_mapel`);

--
-- Indexes for table `tabel siswa`
--
ALTER TABLE `tabel siswa`
  ADD PRIMARY KEY (`Nis`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
