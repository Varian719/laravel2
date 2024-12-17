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

-- Dumping data for table laravel_db.cache: ~0 rows (approximately)
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;

-- Dumping data for table laravel_db.cache_locks: ~0 rows (approximately)
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;

-- Dumping data for table laravel_db.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping data for table laravel_db.jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping data for table laravel_db.job_batches: ~0 rows (approximately)
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;

-- Dumping data for table laravel_db.mhs: ~2 rows (approximately)
/*!40000 ALTER TABLE `mhs` DISABLE KEYS */;
REPLACE INTO `mhs` (`id`, `nama`, `nim`, `kelas`, `prodi`, `fotomhs`, `created_at`, `updated_at`) VALUES
	(1, 'Varian Rhesa', '226661028', 'TRK5B', 'TRK', 'https://i.ibb.co.com/RhKrfjL/Formal-photo.jpg', '2024-12-15 20:53:47', '2024-12-15 20:53:49'),
	(2, 'Muhammad Bintang Al Kausar', '226661049', 'TRK5B', 'TRK', 'https://i.ibb.co.com/zn4JwTz/IMG-20241215-WA0013.jpg', '2024-12-15 21:02:16', '2024-12-15 21:02:16'),
	(3, 'Rizky Catur Riznanda', '226661051', 'TRK5B', 'TRK', 'https://i.ibb.co.com/87v1pQY/Whats-App-Image-2024-12-16-at-19-45-43.jpg', '2024-12-16 20:16:12', '2024-12-16 20:16:13'),
	(4, 'Armand Maulana', '226661034', 'TRK5B', 'TRK', 'https://i.ibb.co.com/wK44SSH/Whats-App-Image-2024-12-16-at-19-48-14.jpg', '2024-12-16 20:18:06', '2024-12-16 20:18:07'),
	(5, 'Muhammad Fauzi Ariyo', '2266661035', 'TRK5B', 'TRK', 'https://i.ibb.co.com/Fqpr6Rj/Whats-App-Image-2024-12-16-at-19-50-13.jpg', '2024-12-16 20:19:59', '2024-12-16 20:20:00'),
	(6, 'Andrian Pramana Putra', '226661047', 'TRK5B', 'TRK', 'https://i.ibb.co.com/MVyjG4c/Whats-App-Image-2024-12-15-at-17-40-23.jpg', '2024-12-16 20:28:59', '2024-12-16 20:29:01');
/*!40000 ALTER TABLE `mhs` ENABLE KEYS */;

-- Dumping data for table laravel_db.migrations: ~6 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2024_11_13_053046_create_mhs_table', 1),
	(5, '2024_11_13_081030_create_personal_access_tokens_table', 1),
	(6, '2024_12_03_141703_update_mhs_table.', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping data for table laravel_db.password_reset_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;

-- Dumping data for table laravel_db.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping data for table laravel_db.sessions: ~0 rows (approximately)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
REPLACE INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('uNhiXiAZC6nkM2YWDoDe6n4onjIUQNaAWuXLmRgj', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:133.0) Gecko/20100101 Firefox/133.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2RnaWJackNYZTJxaEJGdGpsUkhTbTEzRTA4ZkNCOVlGTWwxbGFnMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1734352282);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Dumping data for table laravel_db.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
