-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 05 Feb 2021 pada 03.15
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `kode jurusan` char(2) NOT NULL,
  `nama jurursan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`kode jurusan`, `nama jurursan`) VALUES
('TI', 'Teknik informatika'),
('TK', 'Teknik komputer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasis`
--

CREATE TABLE `mahasis` (
  `nik` char(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis kelamin` char(1) NOT NULL,
  `tanggal lahir` date NOT NULL,
  `jurusan` char(10) NOT NULL,
  `umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasis`
--

INSERT INTO `mahasis` (`nik`, `nama`, `jenis kelamin`, `tanggal lahir`, `jurusan`, `umur`) VALUES
('1909011', 'Doni cahya', 'l', '2001-12-09', 'TI', 19),
('19090113', 'wawan', 'l', '2000-11-07', 'TK', 20);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kode jurusan`);

--
-- Indeks untuk tabel `mahasis`
--
ALTER TABLE `mahasis`
  ADD PRIMARY KEY (`nik`),
  ADD KEY `jurusan` (`jurusan`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `mahasis`
--
ALTER TABLE `mahasis`
  ADD CONSTRAINT `mahasis_ibfk_1` FOREIGN KEY (`jurusan`) REFERENCES `jurusan` (`kode jurusan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
