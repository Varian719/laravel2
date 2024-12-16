-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for laravel_db
DROP DATABASE IF EXISTS `laravel_db`;
CREATE DATABASE IF NOT EXISTS `laravel_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `laravel_db`;

-- Dumping structure for table laravel_db.mhs
DROP TABLE IF EXISTS `mhs`;
CREATE TABLE IF NOT EXISTS `mhs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fotomhs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel_db.mhs: ~0 rows (approximately)
DELETE FROM `mhs`;
/*!40000 ALTER TABLE `mhs` DISABLE KEYS */;
INSERT INTO `mhs` (`id`, `nama`, `nim`, `kelas`, `prodi`, `fotomhs`, `created_at`, `updated_at`) VALUES
	(1, 'VarianRhesa', '226661028', 'TRK5B', 'TRK', 'https://photos.fife.usercontent.google.com/pw/AP1GczPRVSm5xlEHH-44JJRZe_woJLwCEfnp0SQtuXn7Fg3zl4NVQspTKuGV=w511-h681-s-no?authuser=0', '2024-12-15 20:53:47', '2024-12-15 20:53:49'),
	(2, 'MuhammadBintangAlKausar', '226661049', 'TRK5B', 'TRK', 'https://photos.fife.usercontent.google.com/pw/AP1GczM_Y9gTSqYIKdUB_VHhs4gGgg5IA-yqF3xjWve_pecdLBaWXBUQowhM=w511-h681-s-no?authuser=0', '2024-12-15 21:02:16', '2024-12-15 21:02:16');
/*!40000 ALTER TABLE `mhs` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
