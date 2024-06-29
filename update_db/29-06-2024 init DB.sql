-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.38-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_lara_pos
DROP DATABASE IF EXISTS `db_lara_pos`;
CREATE DATABASE IF NOT EXISTS `db_lara_pos` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_lara_pos`;

-- Dumping structure for table db_lara_pos.cache
DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_lara_pos.cache: ~0 rows (approximately)

-- Dumping structure for table db_lara_pos.cache_locks
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_lara_pos.cache_locks: ~0 rows (approximately)

-- Dumping structure for table db_lara_pos.dosen
DROP TABLE IF EXISTS `dosen`;
CREATE TABLE IF NOT EXISTS `dosen` (
  `dosen_id` int(11) NOT NULL AUTO_INCREMENT,
  `dosen_prodi_id` int(11) NOT NULL DEFAULT '0',
  `dosen_npp` varchar(50) DEFAULT NULL,
  `dosen_nama` varchar(255) DEFAULT NULL,
  `dosen_jenis_kelamin` enum('L','P') DEFAULT NULL,
  `dosen_alamat` varchar(255) DEFAULT NULL,
  `dosen_no_hp` varchar(255) DEFAULT NULL,
  `dosen_email` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dosen_id`) USING BTREE,
  KEY `pembimbing_npp` (`dosen_npp`) USING BTREE,
  KEY `dosen_prodi_id` (`dosen_prodi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table db_lara_pos.dosen: ~9 rows (approximately)
INSERT INTO `dosen` (`dosen_id`, `dosen_prodi_id`, `dosen_npp`, `dosen_nama`, `dosen_jenis_kelamin`, `dosen_alamat`, `dosen_no_hp`, `dosen_email`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
	(1, 0, '123456', 'Nuril Esti KhomariahS.ST.,MT', 'P', 'Surabaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 0, '234567', 'Fridy Mandita, S.Kom., M.Sc', 'L', 'Surabaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 0, '345678', 'Muhamad FirdausS.Kom.,M.Kom', 'L', 'Mojokerto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 0, '456789', 'Ghaluh Indah Permata SariS.Kom.,M.Kom', 'L', 'Mojokerto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 0, '567890', 'Geri KusnantoS.Kom.,MM', 'L', 'Jombang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 0, '678901', 'Puteri Noraisya PrimandariS.ST.,M.IM', 'P', 'Jombang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 0, '789012', 'Elsen RonandoS.Si.,M.Si', 'L', 'Tuban', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 0, '890123', 'Anis Rahmawati AmnaS.Kom.,MBA	', 'P', 'Tuban', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 0, '123123123', 'tes ubah', 'L', 'nggaru2', '0823748234', NULL, '2024-03-27 13:26:29', NULL, '2024-03-27 06:53:31', NULL, NULL, NULL);

-- Dumping structure for table db_lara_pos.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_lara_pos.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table db_lara_pos.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_lara_pos.jobs: ~0 rows (approximately)

-- Dumping structure for table db_lara_pos.job_batches
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_lara_pos.job_batches: ~0 rows (approximately)

-- Dumping structure for table db_lara_pos.mahasiswa
DROP TABLE IF EXISTS `mahasiswa`;
CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `mhs_id` int(11) NOT NULL AUTO_INCREMENT,
  `mhs_email` varchar(250) NOT NULL DEFAULT '0',
  `mhs_prodi_id` int(11) DEFAULT NULL,
  `mhs_nbi` varchar(50) DEFAULT NULL,
  `mhs_foto_path` varchar(250) DEFAULT NULL,
  `mhs_nama` varchar(50) DEFAULT NULL,
  `mhs_alamat` varchar(50) DEFAULT NULL,
  `mhs_no_hp` varchar(50) DEFAULT NULL,
  `mhs_jenis_kelamin` enum('L','P') DEFAULT NULL,
  `mhs_tgl_lahir` date DEFAULT NULL,
  `mhs_pembimbing_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mhs_id`),
  KEY `mhs_nbi` (`mhs_nbi`),
  KEY `mhs_pembimbing_id` (`mhs_pembimbing_id`),
  KEY `mhs_prodi_id` (`mhs_prodi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table db_lara_pos.mahasiswa: ~10 rows (approximately)
INSERT INTO `mahasiswa` (`mhs_id`, `mhs_email`, `mhs_prodi_id`, `mhs_nbi`, `mhs_foto_path`, `mhs_nama`, `mhs_alamat`, `mhs_no_hp`, `mhs_jenis_kelamin`, `mhs_tgl_lahir`, `mhs_pembimbing_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
	(1, '0', 1, '1462200195', NULL, 'Abdul Rohman Masrifan', 'Jombang', NULL, 'L', '2021-10-13', 1, NULL, NULL, '2024-03-28 05:37:13', NULL, '2024-03-28 12:37:13', NULL),
	(2, '0', 2, '1472200001', NULL, 'Dina', 'Lamongan', NULL, 'P', '2021-10-12', 2, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, '0', 2, '1472200002', NULL, 'Angga', 'Surabaya', NULL, 'L', '2021-10-11', 3, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, '0', 2, '1472200003', NULL, 'Andi', 'Surabaya', NULL, 'L', '2021-10-12', 4, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, '0', 1, '1462200196', NULL, 'Bayu', 'Sidoarjo', NULL, 'L', '2021-10-13', 5, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, '0', 1, '1462200197', NULL, 'Boy', 'Mojokerto', NULL, 'L', '2021-10-13', 5, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, '0', 2, '1472200004', NULL, 'Zidan', 'Malang', NULL, 'L', '2021-10-13', 5, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, '0', 1, '1462200198', NULL, 'Andre', 'Sidoarjo', NULL, 'L', '2021-10-13', 5, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, '0', 3, '1482200195', NULL, 'Denti', 'Mojokerto', NULL, 'P', '2021-10-13', 5, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, '0', 2, '1472200005', NULL, 'Kuy', 'Bojonegoro', NULL, 'L', '2021-10-13', 5, NULL, NULL, NULL, NULL, NULL, NULL);

-- Dumping structure for table db_lara_pos.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_lara_pos.migrations: ~4 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2024_04_20_035100_create_personal_access_tokens_table', 2);

-- Dumping structure for table db_lara_pos.password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_lara_pos.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table db_lara_pos.penjualan
DROP TABLE IF EXISTS `penjualan`;
CREATE TABLE IF NOT EXISTS `penjualan` (
  `penjualan_id` int(11) NOT NULL AUTO_INCREMENT,
  `penjualan_no` char(50) DEFAULT NULL,
  `penjualan_pelanggan` varchar(250) DEFAULT NULL,
  `penjualan_tanggal` date DEFAULT NULL,
  `penjualan_total` float DEFAULT NULL,
  `penjualan_total_bayar` float DEFAULT NULL,
  `penjualan_total_kembalian` float DEFAULT NULL,
  `penjualan_cara_bayar` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` binary(50) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`penjualan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table db_lara_pos.penjualan: ~15 rows (approximately)
INSERT INTO `penjualan` (`penjualan_id`, `penjualan_no`, `penjualan_pelanggan`, `penjualan_tanggal`, `penjualan_total`, `penjualan_total_bayar`, `penjualan_total_kembalian`, `penjualan_cara_bayar`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
	(1, 'PJ/2406-0001', 'Pelanggan Umum', '2024-06-27', 20000, 20000, 0, 'Tunai', '2024-06-25 09:53:54', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-25 17:46:12', '1462200195@gmail.com', NULL, NULL),
	(2, 'PJ/2406-0002', 'Pelanggan Umum', '2024-06-24', 15000, 15000, 0, 'Tunai', '2024-06-25 09:54:11', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-25 17:46:39', '1462200195@gmail.com', NULL, NULL),
	(3, 'PJ/2406-0003', 'Pelanggan Umum', '2024-06-22', 35000, 40000, 5000, 'Tunai', '2024-06-25 12:21:16', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-25 15:27:03', '1462200195@gmail.com', NULL, NULL),
	(4, 'PJ/2406-0004', 'Pelanggan Umum', '2024-06-25', 20000, 20000, 0, 'Tunai', '2024-06-25 12:45:26', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-25 15:27:24', '1462200195@gmail.com', NULL, NULL),
	(5, 'PJ/2406-0005', 'Pelanggan Umum ubah', '2024-06-28', 820000, 1000000, 180000, 'Tunai', '2024-06-25 13:01:40', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-26 18:01:53', '1462200195@gmail.com', NULL, NULL),
	(6, 'PJ/2406-0006', 'Pelanggan Umum', '2024-06-28', 15000, 20000, 5000, 'Tunai', '2024-06-25 13:08:57', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-25 13:08:57', NULL, NULL, NULL),
	(7, 'PJ/2406-0007', 'Pelanggan Umum', '2024-06-22', 8999, 10000, 1001, 'Tunai', '2024-06-25 13:58:44', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-25 13:58:44', NULL, NULL, NULL),
	(8, 'PJ/2406-0008', 'Pelanggan Umum', '2024-06-25', 7000, 10000, 3000, 'Tunai', '2024-06-25 14:00:25', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-25 14:00:25', NULL, NULL, NULL),
	(9, 'PJ/2406-0009', 'Pelanggan Umum', '2024-06-22', 7000, 10000, 3000, 'Tunai', '2024-06-25 14:07:26', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-25 14:07:26', NULL, NULL, NULL),
	(10, 'PJ/2406-0010', 'Pelanggan Umum', '2024-06-21', 120000, 130000, 10000, 'Tunai', '2024-06-25 14:10:45', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-25 14:10:45', NULL, NULL, NULL),
	(11, 'PJ/2406-0011', 'Pelanggan Umum', '2024-06-21', 64000, 70000, 6000, 'Tunai', '2024-06-25 14:54:53', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-25 14:54:53', NULL, NULL, NULL),
	(12, 'PJ/2406-0012', 'Pelanggan Umum', '2024-06-26', 60000, 60000, 0, 'Tunai', '2024-06-25 14:55:37', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-25 14:55:37', NULL, NULL, NULL),
	(13, 'PJ/2406-0013', 'Pelanggan Umum', '2024-06-26', 8999, 10000, 1001, 'Tunai', '2024-06-25 17:47:50', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-25 17:47:50', NULL, NULL, NULL),
	(14, 'PJ/2406-0014', 'Pelanggan Umum', '2024-06-26', 60000, 60000, 0, 'Tunai', '2024-06-25 17:48:27', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-25 17:48:27', NULL, NULL, NULL),
	(15, 'PJ/2406-0015', 'Pelanggan Umum', '2024-06-26', 80000, 100000, 20000, 'Tunai', '2024-06-25 17:49:30', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-25 17:49:30', NULL, NULL, NULL),
	(16, 'PJ/2406-0016', 'Rohman', '2024-06-27', 25000, 25000, 0, 'Tunai', '2024-06-26 18:09:26', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-26 18:09:26', NULL, NULL, NULL),
	(17, 'PJ/2406-0017', 'Rizal', '2024-06-27', 50000, 50000, 0, 'Tunai', '2024-06-26 18:10:17', _binary 0x3134363232303031393540676d61696c2e636f6d000000000000000000000000000000000000000000000000000000000000, '2024-06-26 18:10:17', NULL, NULL, NULL);

-- Dumping structure for table db_lara_pos.penjualan_detail
DROP TABLE IF EXISTS `penjualan_detail`;
CREATE TABLE IF NOT EXISTS `penjualan_detail` (
  `pjual_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `pjual_detail_master_id` int(11) DEFAULT NULL,
  `pjual_detail_produk_id` int(11) DEFAULT NULL,
  `pjual_detail_qty` float DEFAULT NULL,
  `pjual_detail_harga` float DEFAULT NULL,
  `pjual_detail_diskon` int(11) DEFAULT NULL,
  `pjual_detail_diskon_rp` float DEFAULT NULL,
  `pjual_diskon_subtotal` float DEFAULT NULL,
  PRIMARY KEY (`pjual_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table db_lara_pos.penjualan_detail: ~19 rows (approximately)
INSERT INTO `penjualan_detail` (`pjual_detail_id`, `pjual_detail_master_id`, `pjual_detail_produk_id`, `pjual_detail_qty`, `pjual_detail_harga`, `pjual_detail_diskon`, `pjual_detail_diskon_rp`, `pjual_diskon_subtotal`) VALUES
	(1, 11, 15, 1, 15000, 0, 0, 15000),
	(2, 11, 6, 1, 50000, 0, 1000, 49000),
	(3, 12, 11, 3, 20000, 0, 0, 60000),
	(4, 5, 13, 1, 15000, 0, 0, 15000),
	(5, 5, 11, 1, 20000, 0, 0, 20000),
	(6, 5, 15, 1, 15000, 0, 0, 15000),
	(7, 5, 11, 2, 20000, 0, 0, 40000),
	(8, 5, 6, 15, 50000, 0, 0, 750000),
	(9, 1, 17, 1, 20000, 0, 0, 20000),
	(10, 2, 10, 3, 5000, 0, 0, 15000),
	(11, 3, 16, 1, 20000, 0, 0, 20000),
	(12, 3, 13, 1, 15000, 0, 0, 15000),
	(13, 4, 17, 1, 20000, 0, 0, 20000),
	(14, 13, 23, 1, 8999, 0, 0, 8999),
	(15, 14, 12, 3, 20000, 0, 0, 60000),
	(16, 15, 12, 4, 20000, 0, 0, 80000),
	(17, 16, 12, 1, 20000, 0, 0, 20000),
	(18, 16, 10, 1, 5000, 0, 0, 5000),
	(19, 17, 8, 1, 50000, 0, 0, 50000);

-- Dumping structure for table db_lara_pos.personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_lara_pos.personal_access_tokens: ~34 rows (approximately)
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
	(1, 'App\\Models\\AuthModel', 2, 'auth_token', 'a97a4f357a37f4209ceec7fd2c141540e1d8fe673bcfd984f1cdfd58968c9c2e', '["*"]', NULL, NULL, '2024-04-19 21:54:03', '2024-04-19 21:54:03'),
	(2, 'App\\Models\\AuthModel', 3, 'auth_token', '98b145f40e2c4def78b7bbcd2269d6a94f6164dd5b11caed6e487022ce87fb85', '["*"]', NULL, NULL, '2024-04-19 21:56:10', '2024-04-19 21:56:10'),
	(3, 'App\\Models\\AuthModel', 4, 'auth_token', 'efabeb68e0e661b70ef4210c23fddceb440d7ce9e4e6d3d982e8149e8201dcb6', '["*"]', NULL, NULL, '2024-04-19 21:56:27', '2024-04-19 21:56:27'),
	(4, 'App\\Models\\AuthModel', 5, 'auth_token', 'e4a2aed90f0afc2a7834354412d4a3eaf564ee046a3f17c4c64691ad7a6a280a', '["*"]', NULL, NULL, '2024-04-19 21:56:59', '2024-04-19 21:56:59'),
	(5, 'App\\Models\\AuthModel', 6, 'auth_token', 'd4310eb5fba15461cd51f90d436e799a5812f41e5c4711bd1d586690e0cb73e1', '["*"]', NULL, NULL, '2024-04-19 21:58:25', '2024-04-19 21:58:25'),
	(6, 'App\\Models\\AuthModel', 6, 'auth_token', 'c90307075777ca4ebc2e074806894a5670a9d1685cd95fedb44a774d6c6bc98d', '["*"]', NULL, NULL, '2024-04-19 21:58:53', '2024-04-19 21:58:53'),
	(7, 'App\\Models\\AuthModel', 6, 'auth_token', '5cae3595dbcf06db23fdd256a6b8eaf827d9ccddc7ba8e0a0c2d9befcdb53f34', '["*"]', NULL, NULL, '2024-04-19 21:58:58', '2024-04-19 21:58:58'),
	(8, 'App\\Models\\AuthModel', 6, 'auth_token', '8153223f7ffd91fe1577249c58f7c381963c9de31a59b7fb7d3ee2cf598ca866', '["*"]', NULL, NULL, '2024-04-19 21:59:49', '2024-04-19 21:59:49'),
	(9, 'App\\Models\\AuthModel', 6, 'auth_token', '473fc233a79ede3192e10d7af38e1ccc766f6d3fbf65c5f6842c8281210ff4da', '["*"]', NULL, NULL, '2024-04-19 22:00:48', '2024-04-19 22:00:48'),
	(10, 'App\\Models\\AuthModel', 6, 'auth_token', 'b3c59cde11788e2f675941d35b051aac1b8a59d2819f33551050bcb8179d83e3', '["*"]', NULL, NULL, '2024-04-19 22:00:56', '2024-04-19 22:00:56'),
	(11, 'App\\Models\\AuthModel', 6, 'auth_token', 'd26e5d81e92452a8f96520b9c89edf359f285911ed1f07875de07685e081b8b4', '["*"]', '2024-04-25 00:05:38', NULL, '2024-04-23 07:48:22', '2024-04-25 00:05:38'),
	(12, 'App\\Models\\AuthModel', 6, 'auth_token', '857a41216dd79f9c45ddfe838bcba4d2c442ce6dd6c21005c8101d96dd542091', '["*"]', NULL, NULL, '2024-04-23 07:56:22', '2024-04-23 07:56:22'),
	(13, 'App\\Models\\AuthModel', 6, 'auth_token', 'f871fe267b38a55e6f0d595599960dc5f8dafa48a3b678cfa76548ed070d7742', '["*"]', NULL, NULL, '2024-04-23 07:59:48', '2024-04-23 07:59:48'),
	(14, 'App\\Models\\AuthModel', 7, 'auth_token', '17db84b1d88e566259c931e7fb9d9a4381b3d07a1c3d82056bbada1c4f0a6db6', '["*"]', NULL, NULL, '2024-04-23 08:00:14', '2024-04-23 08:00:14'),
	(15, 'App\\Models\\AuthModel', 7, 'auth_token', '9f16badfd9a00f2a609699d2f4725714b70cc20b41c5a53b71f8c81261aad830', '["*"]', NULL, NULL, '2024-04-23 08:00:23', '2024-04-23 08:00:23'),
	(16, 'App\\Models\\AuthModel', 7, 'auth_token', '725bf666f02397bc4e514dbc56f6b0a4790c8751c18db6faf4bb8094ec34155a', '["*"]', NULL, NULL, '2024-04-23 08:00:45', '2024-04-23 08:00:45'),
	(17, 'App\\Models\\AuthModel', 7, 'auth_token', '3755b0e759c3230a316c675283b5d7459108f031ae4c6f96de0677fd45e26e88', '["*"]', NULL, NULL, '2024-04-23 08:01:29', '2024-04-23 08:01:29'),
	(18, 'App\\Models\\AuthModel', 6, 'auth_token', 'f40f9a5722f7b24f4b8f70b4b9514cbd99a153024cefec351ba46d53ce59dbef', '["*"]', NULL, NULL, '2024-04-23 08:01:45', '2024-04-23 08:01:45'),
	(19, 'App\\Models\\AuthModel', 6, 'auth_token', '207ffefcf3a41f337f3b1571b696b03d635ec8034c2df03c3afb14d90d880178', '["*"]', '2024-06-26 18:37:44', NULL, '2024-04-24 23:53:06', '2024-06-26 18:37:44'),
	(20, 'App\\Models\\AuthModel', 6, 'auth_token', '7abf0b7b3d3c6d2ef8a9c65fe05234f1a6c2278d595965cb50ea1a621e72ea58', '["*"]', NULL, NULL, '2024-04-25 01:33:45', '2024-04-25 01:33:45'),
	(21, 'App\\Models\\AuthModel', 6, 'auth_token', '14d9c3ccbf7d77773f19d16cdeb918d7bc3ca88e8cc6f5f086dd1476a87d4dfe', '["*"]', '2024-04-25 05:33:53', NULL, '2024-04-25 05:33:10', '2024-04-25 05:33:53'),
	(22, 'App\\Models\\AuthModel', 6, 'auth_token', 'eb87733749fa7b626744cde415c6255760d6abd786480c7640a3a59b9260d5a2', '["*"]', '2024-06-22 06:16:33', NULL, '2024-06-22 06:16:14', '2024-06-22 06:16:33'),
	(23, 'App\\Models\\AuthModel', 6, 'auth_token', '56adb9f4ed043469c5b1f01f1f85b29a20584e0fae9b511511c95e3696b7228f', '["*"]', '2024-06-22 06:59:06', NULL, '2024-06-22 06:58:01', '2024-06-22 06:59:06'),
	(24, 'App\\Models\\AuthModel', 6, 'auth_token', '443b2d2fd4df51ccc5923660d00799eaca5b0ad67544ab73e9336a372d0b2c08', '["*"]', NULL, NULL, '2024-06-22 07:08:11', '2024-06-22 07:08:11'),
	(25, 'App\\Models\\AuthModel', 6, 'auth_token', '2f72423372501a537d3b9ca7cacd14176c259e893003b09eb89f3f4cf0a5cfee', '["*"]', '2024-06-22 07:28:42', NULL, '2024-06-22 07:24:29', '2024-06-22 07:28:42'),
	(26, 'App\\Models\\AuthModel', 6, 'auth_token', 'df2022daa09e0c7df1f80a78152923ea866063a14ae101bf01eddc586add5959', '["*"]', NULL, NULL, '2024-06-22 07:29:07', '2024-06-22 07:29:07'),
	(27, 'App\\Models\\AuthModel', 6, 'auth_token', 'da4b7c10afc5b90fe998a46d5c3c9138a5efbbb8eb13c42a37765ff75735bbb0', '["*"]', '2024-06-22 07:59:13', NULL, '2024-06-22 07:32:18', '2024-06-22 07:59:13'),
	(28, 'App\\Models\\AuthModel', 6, 'auth_token', '48786275abdfd3328ee94386a82f0dfe5be13a52984914a36b318ca8824d254f', '["*"]', '2024-06-22 08:04:43', NULL, '2024-06-22 07:59:21', '2024-06-22 08:04:43'),
	(29, 'App\\Models\\AuthModel', 6, 'auth_token', '864e8868c233f1e88feb1995b00368119ecfab9c0d075cf76f85fa29dc0c1ed3', '["*"]', NULL, NULL, '2024-06-22 08:06:46', '2024-06-22 08:06:46'),
	(30, 'App\\Models\\AuthModel', 6, 'auth_token', 'df2410a9e847a2b75779f808344b9038e71bc457635f955d6d66e918a9f9d300', '["*"]', '2024-06-22 08:14:18', NULL, '2024-06-22 08:08:23', '2024-06-22 08:14:18'),
	(31, 'App\\Models\\AuthModel', 6, 'auth_token', '3019816e6df7963b64c02ea6ad1921c1f15deaa64dec9eb35e9694fac29e1999', '["*"]', NULL, NULL, '2024-06-22 08:14:32', '2024-06-22 08:14:32'),
	(32, 'App\\Models\\AuthModel', 6, 'auth_token', '2fb306ea8c324bdecc7a8424fc47048f628dfce0a9c619dddc4c9500a0eec724', '["*"]', NULL, NULL, '2024-06-22 08:15:20', '2024-06-22 08:15:20'),
	(33, 'App\\Models\\AuthModel', 6, 'auth_token', '5228db22135b3eadbba11e7ac8929de44e4868b0d64c6927db38c79532f46133', '["*"]', NULL, NULL, '2024-06-22 08:15:53', '2024-06-22 08:15:53'),
	(34, 'App\\Models\\AuthModel', 6, 'auth_token', '592eeb37a167b429eaea8d78df5e21537b01f39dcc65a04175d692d6ed437698', '["*"]', NULL, NULL, '2024-06-22 08:16:25', '2024-06-22 08:16:25'),
	(35, 'App\\Models\\AuthModel', 6, 'auth_token', '83fd21c22c24a9682ababb89ca4cd36a700b1719fd6fe880fc92ab10c4aba99e', '["*"]', NULL, NULL, '2024-06-22 08:19:33', '2024-06-22 08:19:33'),
	(36, 'App\\Models\\AuthModel', 6, 'auth_token', '024d276dcf9cd3e620a057062b61bc27b2f4ae0ca9116c3a953cc3fcd5b253ed', '["*"]', '2024-06-22 08:27:28', NULL, '2024-06-22 08:20:40', '2024-06-22 08:27:28'),
	(37, 'App\\Models\\AuthModel', 6, 'auth_token', '1099036928cc5a7f1a36c62b37283b87b4192d14be47980e0e3c0a5c9f26515d', '["*"]', '2024-06-22 10:12:10', NULL, '2024-06-22 08:36:05', '2024-06-22 10:12:10'),
	(38, 'App\\Models\\AuthModel', 6, 'auth_token', 'ea685c65fc1eaa7a51feed1b2f17f4a6b804dc4556f3acdd44e09e07f0d3f809', '["*"]', '2024-06-22 09:18:41', NULL, '2024-06-22 09:18:13', '2024-06-22 09:18:41'),
	(39, 'App\\Models\\AuthModel', 6, 'auth_token', 'c819fc31a7c3f65331e4e0021a8bf3b0ae9057ed8069e32958bf79aa22fe5a57', '["*"]', '2024-06-24 02:27:06', NULL, '2024-06-24 00:46:44', '2024-06-24 02:27:06'),
	(40, 'App\\Models\\AuthModel', 6, 'auth_token', '60640880fc8e0842ee635d155af09b43e466beaaff73d53f3bb31ad04cda0b48', '["*"]', NULL, NULL, '2024-06-24 02:36:18', '2024-06-24 02:36:18'),
	(41, 'App\\Models\\AuthModel', 6, 'auth_token', 'c06db6e1b087209df5f424b9f7708b604e6f324a09a43b419dad8bbba40ab5db', '["*"]', '2024-06-24 08:38:52', NULL, '2024-06-24 05:25:40', '2024-06-24 08:38:52'),
	(42, 'App\\Models\\AuthModel', 6, 'auth_token', 'ffe1639475d7dac831f0686c11bf3662269914f2679c7bb7f329f7c85010fbbb', '["*"]', '2024-06-25 08:30:10', NULL, '2024-06-24 08:39:00', '2024-06-25 08:30:10'),
	(43, 'App\\Models\\AuthModel', 6, 'auth_token', '3e444f46dee3fc1375d9ce5afbe5f0e57d39c652e8a86b63162ed9af54ad4202', '["*"]', '2024-06-26 11:45:25', NULL, '2024-06-25 08:30:47', '2024-06-26 11:45:25'),
	(44, 'App\\Models\\AuthModel', 6, 'auth_token', 'e39f2169d1dd3f680bd9e7f250198d3896b5cb5711d2731c173817de1075d03d', '["*"]', '2024-06-25 20:10:12', NULL, '2024-06-25 20:08:54', '2024-06-25 20:10:12'),
	(45, 'App\\Models\\AuthModel', 6, 'auth_token', '94a1a5e72a4e0437535d2adc80717595cfac59f972c2c70a861534ffaa3e1947', '["*"]', '2024-06-26 11:47:22', NULL, '2024-06-26 11:47:04', '2024-06-26 11:47:22'),
	(46, 'App\\Models\\AuthModel', 8, 'auth_token', '7ef8089bdb8b9a60aaaca1fae1801712488ebe43cfceac4125ecd474d737ab2b', '["*"]', NULL, NULL, '2024-06-26 18:28:01', '2024-06-26 18:28:01'),
	(47, 'App\\Models\\AuthModel', 8, 'auth_token', 'f8476f4c3efb6c3da60b99c95872f293b88276b024bb934dfad3c84edb0f6261', '["*"]', '2024-06-29 02:39:52', NULL, '2024-06-26 18:28:20', '2024-06-29 02:39:52'),
	(48, 'App\\Models\\AuthModel', 8, 'auth_token', '3f16716c65c4a8afe861a9433e53e51d1cbbf031341e549e68c948793220b02d', '["*"]', NULL, NULL, '2024-06-26 18:35:14', '2024-06-26 18:35:14');

-- Dumping structure for table db_lara_pos.prodi
DROP TABLE IF EXISTS `prodi`;
CREATE TABLE IF NOT EXISTS `prodi` (
  `prodi_id` int(11) NOT NULL AUTO_INCREMENT,
  `prodi_kode` char(50) DEFAULT NULL,
  `prodi_nama` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`prodi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table db_lara_pos.prodi: ~9 rows (approximately)
INSERT INTO `prodi` (`prodi_id`, `prodi_kode`, `prodi_nama`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
	(1, '146', 'Teknik Informatika', NULL, NULL, NULL, NULL, NULL, NULL),
	(2, '147', 'Teknik Mesin', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, '148', 'Teknik Industri', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, '149', 'Teknik Sipil', NULL, NULL, NULL, NULL, NULL, NULL),
	(5, '150', 'Teknik Elektro', NULL, NULL, NULL, NULL, NULL, NULL),
	(6, '151', 'Teknik Robotika', NULL, NULL, NULL, NULL, NULL, NULL),
	(7, '2001', 'Teknik Perguruan', '2024-03-27 13:58:28', 'mabot', '2024-03-27 07:18:20', 'mabot', '2024-03-27 14:18:20', NULL),
	(8, '201', 'Teknik x', '2024-03-27 14:19:39', 'mabot', '2024-03-27 07:23:39', NULL, '2024-03-27 14:18:20', NULL),
	(9, '160', 'namamu prod', '2024-04-25 13:14:04', '1462200195@gmail.com', '2024-04-25 06:14:04', NULL, NULL, NULL);

-- Dumping structure for table db_lara_pos.produk
DROP TABLE IF EXISTS `produk`;
CREATE TABLE IF NOT EXISTS `produk` (
  `produk_id` int(11) NOT NULL AUTO_INCREMENT,
  `produk_sku` varchar(50) NOT NULL,
  `produk_nama` varchar(255) NOT NULL,
  `produk_satuan` varchar(20) NOT NULL,
  `produk_kategori_id` int(11) DEFAULT NULL,
  `produk_stok` int(11) DEFAULT NULL,
  `produk_aktif` enum('Aktif','Tidak Aktif') DEFAULT 'Aktif',
  `produk_foto_path` varchar(255) DEFAULT NULL,
  `produk_harga` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(100) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`produk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Dumping data for table db_lara_pos.produk: ~23 rows (approximately)
INSERT INTO `produk` (`produk_id`, `produk_sku`, `produk_nama`, `produk_satuan`, `produk_kategori_id`, `produk_stok`, `produk_aktif`, `produk_foto_path`, `produk_harga`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
	(1, 'SKU001', 'Beras', 'Kg', 1, 100, 'Aktif', NULL, 13000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:51', 'Admin', NULL, NULL),
	(2, 'SKU002', 'Gula Pasir', 'Kg', 1, 50, 'Aktif', 'uploads/produk/SKU002/inet.png', 120000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:50', '1462200195@gmail.com', NULL, NULL),
	(3, 'SKU003', 'Minyak Goreng', 'Liter', 1, 75, 'Aktif', NULL, 5000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:45', 'Admin', NULL, NULL),
	(4, 'SKU004', 'Telur Ayam', 'Butir', 1, 120, 'Aktif', NULL, 50000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:51', 'Admin', NULL, NULL),
	(5, 'SKU005', 'Daging Sapi', 'Kg', 1, 90, 'Aktif', NULL, 5000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:53', 'Admin', NULL, NULL),
	(6, 'SKU006', 'Ikan Bandeng', 'Kg', 1, 60, 'Aktif', NULL, 50000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:52', 'Admin', NULL, NULL),
	(7, 'SKU007', 'Ayam Potong', 'Kg', 1, 200, 'Aktif', NULL, 7000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:53', 'Admin', NULL, NULL),
	(8, 'SKU008', 'Tepung Terigu', 'Kg', 1, 30, 'Aktif', NULL, 50000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:53', 'Admin', NULL, NULL),
	(9, 'SKU009', 'Susu Kental Manis', 'Kaleng', 1, 150, 'Aktif', NULL, 5000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:54', 'Admin', NULL, NULL),
	(10, 'SKU010', 'Sabun Mandi', 'Pcs', 2, 80, 'Aktif', NULL, 5000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:54', 'Admin', NULL, NULL),
	(11, 'SKU011', 'Pasta Gigi', 'Pcs', 2, 110, 'Aktif', NULL, 20000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:55', 'Admin', NULL, NULL),
	(12, 'SKU012', 'Shampoo', 'Botol', 2, 45, 'Aktif', NULL, 20000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:55', 'Admin', NULL, NULL),
	(13, 'SKU013', 'Sikat Gigi', 'Pcs', 2, 70, 'Aktif', NULL, 15000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:56', 'Admin', NULL, NULL),
	(14, 'SKU014', 'Tisu Basah', 'Pcs', 3, 100, 'Aktif', NULL, 7000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:53:33', 'Admin', NULL, NULL),
	(15, 'SKU015', 'Pembersih Lantai', 'Liter', 3, 55, 'Aktif', NULL, 15000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:57', 'Admin', NULL, NULL),
	(16, 'SKU016', 'Pelembut Pakaian', 'Liter', 3, 25, 'Aktif', NULL, 20000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:57', 'Admin', NULL, NULL),
	(17, 'SKU017', 'Parfum', 'Botol', 3, 85, 'Aktif', NULL, 20000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:58', 'Admin', NULL, NULL),
	(18, 'SKU018', 'Masker Wajah', 'Pcs', 3, 95, 'Aktif', NULL, 15000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:58', 'Admin', NULL, NULL),
	(19, 'SKU019', 'Hand Sanitizer ubah', 'Botolasdad', 3, 40, 'Aktif', NULL, 7111, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:58', '1462200195@gmail.com', NULL, NULL),
	(20, 'SKU020', 'Sunblock SPF 50', 'Botol', 3, 65, 'Aktif', NULL, 7000, '2024-06-21 16:42:18', 'Admin', '2024-06-26 17:28:59', 'Admin', NULL, NULL),
	(21, '90218309', 'coba 2', 'GR', 8, 2998, 'Aktif', 'uploads/produk/90218309/bot_backup_db.png', 8999, '2024-06-24 08:20:13', '1462200195@gmail.com', '2024-06-26 17:52:12', NULL, NULL, NULL),
	(22, '092830924', 'Tes inset oke', 'KG', 8, 100, 'Aktif', 'uploads/produk/092830924/WhatsApp Image 2024-06-22 at 00.12.21.jpeg', NULL, '2024-06-24 06:30:48', '1462200195@gmail.com', '2024-06-26 17:29:00', '1462200195@gmail.com', NULL, NULL),
	(23, '90218309', 'Aqua Botol', 'Botol', 1, 2998, 'Aktif', 'uploads/produk/90218309/WhatsApp Image 2024-06-22 at 00.31.31.jpeg', 8999, '2024-06-24 08:20:13', '1462200195@gmail.com', '2024-06-26 18:41:46', 'rohman@gmail.com', NULL, NULL);

-- Dumping structure for table db_lara_pos.produk_kategori
DROP TABLE IF EXISTS `produk_kategori`;
CREATE TABLE IF NOT EXISTS `produk_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_kode` varchar(50) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_status` enum('Aktif','Tidak Aktif') DEFAULT 'Aktif',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table db_lara_pos.produk_kategori: ~9 rows (approximately)
INSERT INTO `produk_kategori` (`kategori_id`, `kategori_kode`, `kategori_nama`, `kategori_status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
	(1, 'K001', 'Makanan ubah', 'Aktif', '2024-06-21 16:44:09', 'Admin', '2024-06-24 08:45:12', '1462200195@gmail.com', NULL, NULL),
	(2, 'K002', 'Barang Kebutuhan Sehari-hari', 'Aktif', '2024-06-21 16:44:09', 'Admin', '2024-06-21 16:44:09', 'Admin', NULL, NULL),
	(3, 'K003', 'Produk Kebersihan', 'Aktif', '2024-06-21 16:44:09', 'Admin', '2024-06-21 16:44:09', 'Admin', NULL, NULL),
	(4, 'K004', 'KALENGAN', 'Aktif', '2024-06-22 08:43:04', '1462200195@gmail.com', '2024-06-22 08:43:04', NULL, NULL, NULL),
	(5, 'K005', 'TV', 'Aktif', '2024-06-22 08:48:21', '1462200195@gmail.com', '2024-06-26 17:23:07', '1462200195@gmail.com', NULL, NULL),
	(6, 'K006', 'Radio', 'Aktif', '2024-06-22 08:49:15', '1462200195@gmail.com', '2024-06-26 17:23:07', NULL, NULL, NULL),
	(7, 'K007', 'Laptop', 'Aktif', '2024-06-22 08:49:37', '1462200195@gmail.com', '2024-06-26 17:22:20', NULL, NULL, NULL),
	(8, 'K008', 'Printer', 'Aktif', '2024-06-22 09:04:04', '1462200195@gmail.com', '2024-06-26 17:22:26', NULL, NULL, NULL),
	(9, 'K009', 'w', 'Aktif', '2024-06-22 09:11:21', '1462200195@gmail.com', '2024-06-26 17:23:06', NULL, NULL, NULL),
	(10, 'K010', 'qweqwe', 'Aktif', '2024-06-24 08:39:16', '1462200195@gmail.com', '2024-06-26 17:22:33', '1462200195@gmail.com', NULL, NULL);

-- Dumping structure for table db_lara_pos.sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_lara_pos.sessions: ~4 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('lG6BNADFcx7JWOoilsubVISqCZvtkmzOFQk9y5zU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVFrdUZRODRPcmFnNVpSQm4yRjNESnpudnRhMndtVGo0UExxdm81aiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719452280),
	('nehKR2xJzZyB300qLU5olOBvDr18fN21GXSRNBc9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkxySFgwMzFlb1V0UjI3bm44Z1g0NlB4N0tFMll1eVlrbHQyUTlDSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWsiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1719452685),
	('Ov3xa7OYd8s16Oi3T8lBQP1qIRzVd1lTLLlw2yKC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOExCVTJQek5HWVdCcUcxNFg0aUxqelQxS0QxM1Z2UkxlUUNKdlRUNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZW5qdWFsYW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1719653989),
	('SXLo19HjPBuaQRaoTkeB7j0rjU1F4V3zx5tQAgEY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmNJbFJVMlNaVUVNYWFqVDZMVHRxTE5EZFpOTFBncXJMVGU5Q0ZQTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719427707);

-- Dumping structure for table db_lara_pos.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_mahasiswa` bigint(20) unsigned NOT NULL DEFAULT '0',
  `id_dosen` bigint(20) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `id_mahasiswa` (`id_mahasiswa`),
  KEY `id_dosen` (`id_dosen`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table db_lara_pos.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `id_mahasiswa`, `id_dosen`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(6, 1, 0, '1462200195', '1462200195@gmail.com', NULL, '$2y$12$55v9tby0DooEXTc8JtbYtOWp3dJEnm5V5ixkt3lngqqPf5nKBXIuy', NULL, '2024-04-19 21:58:25', '2024-04-19 21:58:25'),
	(7, 0, 0, '1462200196', '1462200196@gmail.com', NULL, '$2y$12$spiRCf5gzWiqxtHL8blwJeK0kNhSUTc2lTkBt9W9eRltNTD6iT9fK', NULL, '2024-04-23 08:00:14', '2024-04-23 08:00:14'),
	(8, 0, 0, 'rohman', 'rohman@gmail.com', NULL, '$2y$12$Tx7OyZGJcC5tjP/hFwxhOOdsQ5IWzVAiAkMbOpRcCg3373WsnOhOG', NULL, '2024-06-26 18:28:01', '2024-06-26 18:28:01');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
