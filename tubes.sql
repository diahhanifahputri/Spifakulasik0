-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2018 at 03:35 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Table structure for table `bpbds`
--

CREATE TABLE `bpbds` (
  `id` int(10) UNSIGNED NOT NULL,
  `namaBpbd` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passwordB` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailB` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_dinas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_laporan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jadwal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` int(11) NOT NULL,
  `jabatan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bpbds`
--

INSERT INTO `bpbds` (`id`, `namaBpbd`, `passwordB`, `emailB`, `id_dinas`, `id_laporan`, `id_jadwal`, `nip`, `jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Kamaludin Anjasmara', '0aa4284aeae8b57f235d99d6ebe80c8a', 'kamal@bpbd.com', '101107281', '', '', 17523200, 'Staff', NULL, NULL),
(2, 'Amin Nur Rohim', 'b2458e675f90e3284e4d91a53ef18b64', 'amin@bpbd.com', '101107281', '', '', 17523201, 'Staff', NULL, NULL),
(3, 'diah', 'e10adc3949ba59abbe56e057f20f883e', 'diah@bpbd.com', '', '', '', 0, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dinass`
--

CREATE TABLE `dinass` (
  `id` int(10) UNSIGNED NOT NULL,
  `passwordD` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailD` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaD` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutP` int(11) NOT NULL,
  `id_laporan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dinass`
--

INSERT INTO `dinass` (`id`, `passwordD`, `emailD`, `namaD`, `urutP`, `id_laporan`, `created_at`, `updated_at`) VALUES
(1, '5AD75FCEE4EDE71F0617503BB94EE7EB', 'kiwil@dinas.com', 'Kiwil', 0, '', NULL, NULL),
(2, '1C085380A06820852309C31C27B75850', 'habib@dinas.com', 'Habib Ardi', 0, '', NULL, NULL),
(3, '', 'yodddd@mail.com', 'Yogi', 0, '', NULL, NULL),
(4, 'e10adc3949ba59abbe56e057f20f883e', 'aisy@dinas.com', 'aisy', 0, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jadwals`
--

CREATE TABLE `jadwals` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_laporan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktuK` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laporans`
--

CREATE TABLE `laporans` (
  `id` int(10) UNSIGNED NOT NULL,
  `namaLaporan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisInfra` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penyebabB` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kerusakan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterbatasan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporans`
--

INSERT INTO `laporans` (`id`, `namaLaporan`, `jenisInfra`, `penyebabB`, `kerusakan`, `keterbatasan`, `gambar`, `lokasi`, `created_at`, `updated_at`) VALUES
(15, 'bangunan sekolah', 'bangunan ', 'gempa bumi', 'bangunan kelas roboh', 'hanya 1 kelas yang bisa dipakai', '', '', NULL, NULL),
(16, 'kebakaran pasar sinanjul', 'sebagian tempat berjualan tidak bisa untuk berjualan', 'kebakaran', 'sebagian kanan wilayah pasar rusak terbakar', 'sebagian kiri pasar bisa untuk berjualan', '', '', NULL, NULL),
(17, 'Perumahan sekarpetak', 'bangunan rumah', 'tanah longsor', 'tertimbun', 'perkarangan rumah di sebelah barat', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_12_11_093624_pelapor_table', 1),
(3, '2018_12_11_093839_dinas_table', 1),
(4, '2018_12_11_093947_bpbd_table', 1),
(5, '2018_12_11_094145_laporan_table', 1),
(6, '2018_12_11_094355_jadwal_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pelapors`
--

CREATE TABLE `pelapors` (
  `id` int(10) UNSIGNED NOT NULL,
  `passwordP` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailP` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaP` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noKtp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelapors`
--

INSERT INTO `pelapors` (`id`, `passwordP`, `emailP`, `namaP`, `noKtp`, `created_at`, `updated_at`) VALUES
(1, '7e786711757c7990d18e20bbe47fa983', 'yogi@gmail.com', 'Yogi Nadianto', 17523039, NULL, NULL),
(2, '21149d00dccbdcf61ec30243b64c0916', 'ari@gmail.com', 'Ari Satrio', 17523205, NULL, NULL),
(3, 'de726b6dc86d315d45db45b3fed2ed5f', 'dewangga@gmail.com', 'Rizal Dewangga', 17523239, NULL, NULL),
(4, 'de04c70fa07841c2aa721e3bcfbf2ffa', '17523190@students.uii.ac.id', 'Sifa Salafiah', 2147483647, NULL, NULL),
(5, '0e84e169571a8a23318eb77ff1a1f0b0', 'ariespe@gmail.com', 'Ari Satria', 17523206, NULL, NULL),
(6, 'e10adc3949ba59abbe56e057f20f883e', '17523190@students.uii.ac.id', 'Ari Satria', 676544, NULL, NULL),
(7, 'e10adc3949ba59abbe56e057f20f883e', 'rizal@gmail.com', 'Rizal Dewangga', 17523001, NULL, NULL),
(9, 'e10adc3949ba59abbe56e057f20f883e', 'aisy@gmail.com', 'aisy', 17523237, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bpbds`
--
ALTER TABLE `bpbds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dinass`
--
ALTER TABLE `dinass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwals`
--
ALTER TABLE `jadwals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporans`
--
ALTER TABLE `laporans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelapors`
--
ALTER TABLE `pelapors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bpbds`
--
ALTER TABLE `bpbds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dinass`
--
ALTER TABLE `dinass`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jadwals`
--
ALTER TABLE `jadwals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laporans`
--
ALTER TABLE `laporans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pelapors`
--
ALTER TABLE `pelapors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
