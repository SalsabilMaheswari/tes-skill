-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2025 at 04:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba`
--
CREATE DATABASE IF NOT EXISTS `coba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `coba`;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loyaltylevels`
--

CREATE TABLE `loyaltylevels` (
  `id` int(11) NOT NULL,
  `level_name` varchar(50) NOT NULL,
  `discount_percentage` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loyaltylevels`
--

INSERT INTO `loyaltylevels` (`id`, `level_name`, `discount_percentage`) VALUES
(1, 'Bronze', 5.00),
(2, 'Silver', 10.00),
(3, 'Gold', 20.00);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_increment`
--

CREATE TABLE `salary_increment` (
  `id` int(11) NOT NULL,
  `age_from` int(11) NOT NULL,
  `age_to` int(11) NOT NULL,
  `salary_increment` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `salary_increment`
--

INSERT INTO `salary_increment` (`id`, `age_from`, `age_to`, `salary_increment`) VALUES
(1, 20, 30, 0.05),
(2, 31, 40, 0.10),
(3, 41, 50, 0.15),
(4, 51, 60, 0.20),
(5, 61, 70, 0.25),
(6, 71, 80, 0.30),
(7, 81, 90, 0.35);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('gpddnW7q0HVT06z6i2TWaKtsvAlyiZhH7iSqA4EY', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTk0wVklRWVZZbGFCenh1MGVaVjdWZzZ4Q2l2cVFab1R0U1hTWlVQZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1749725332),
('PNMsSCdS43GbWCXQemSBuwUkAARhidt4gY2UG2iB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic3YzMWwxTExYbkQ5NHhNZk1VWElCSjk2c0VWbnJGYmd1dkVRQWFqVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715566519),
('RC1OSWdHRpNVR1oPxosNSpW3UCfQenl1E2SOlIM4', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVBObHFkNG5qbGlJb1RicWRHOU9PUFlNZW9tM2g0NWtzd3hvT1J2aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715566655),
('s12h5nlQOEhbKplh7453RLoD0e4PhPmPG7OpnF8x', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSm5kbUdMZmRtaFNZSFRJbEJzRmVXWTV0aXYzNGZWbjd5SnhJeExoUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9DYWxjdWxhdGVGb3JtIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1715567536);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(11) NOT NULL,
  `income_from` int(11) NOT NULL,
  `income_to` int(11) NOT NULL,
  `percentage` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `income_from`, `income_to`, `percentage`) VALUES
(1, 0, 5400000, 0.00),
(2, 5400000, 5650000, 0.25),
(3, 5650000, 6300000, 0.75),
(4, 6300000, 6750000, 1.00),
(5, 6750000, 7500000, 1.25),
(6, 7500000, 8550000, 1.50),
(7, 8550000, 9650000, 1.75),
(8, 9650000, 10050000, 2.00),
(9, 10050000, 10350000, 2.25),
(10, 10350000, 10700000, 2.50),
(11, 10700000, 11050000, 3.00),
(12, 11050000, 11600000, 3.50),
(13, 11600000, 12500000, 4.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loyaltylevels`
--
ALTER TABLE `loyaltylevels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `salary_increment`
--
ALTER TABLE `salary_increment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loyaltylevels`
--
ALTER TABLE `loyaltylevels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `salary_increment`
--
ALTER TABLE `salary_increment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crud`;

-- --------------------------------------------------------

--
-- Table structure for table `crud_table`
--

CREATE TABLE `crud_table` (
  `id` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crud_table`
--

INSERT INTO `crud_table` (`id`, `data`) VALUES
(1, 'tes'),
(2, 'tes');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `name`, `email`, `contact`, `address`) VALUES
(1, '', '', '', ''),
(2, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crud_table`
--
ALTER TABLE `crud_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crud_table`
--
ALTER TABLE `crud_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `is_4`
--
CREATE DATABASE IF NOT EXISTS `is_4` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `is_4`;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_death` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`, `date_of_birth`, `date_of_death`, `created_at`, `updated_at`) VALUES
(1, 'eren', 'yeager', '2024-05-10', '2024-05-31', '2024-05-10 03:12:22', '2024-05-10 03:12:37'),
(2, 'tere', 'liye', '2024-05-10', '2024-05-31', '2024-05-10 03:19:43', '2024-05-10 03:19:43');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `isbn` varchar(15) NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `summary`, `isbn`, `author_id`, `created_at`, `updated_at`) VALUES
(1, 'tentang kamu', 'aiueo', '9786020', 2, '2024-05-10 03:33:50', '2024-05-10 03:33:50'),
(2, 'attack on titan', '-', '928276353728', 1, '2024-05-10 03:38:04', '2024-05-10 03:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `book_genre`
--

CREATE TABLE `book_genre` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_genre`
--

INSERT INTO `book_genre` (`id`, `book_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Romance', NULL, NULL),
(2, 'Fiction', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_10_014324_create_authors_table', 2),
(5, '2024_05_10_014412_create_genres_table', 2),
(6, '2024_05_10_014434_create_books_table', 2),
(7, '2024_05_10_014447_create_book_genre_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `premium_rates`
--

CREATE TABLE `premium_rates` (
  `id` int(11) NOT NULL,
  `age_from` int(11) NOT NULL,
  `age_to` int(11) NOT NULL,
  `premium_rate` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `premium_rates`
--

INSERT INTO `premium_rates` (`id`, `age_from`, `age_to`, `premium_rate`) VALUES
(1, 0, 20, 1.00),
(2, 21, 30, 1.50),
(3, 31, 40, 2.00),
(4, 41, 50, 2.50),
(5, 51, 60, 3.00),
(6, 61, 70, 3.50),
(7, 71, 80, 4.00),
(8, 81, 99, 4.50);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('B5ElD7s4koO5grpfbBhNnn79hju63qn2cHpZ8nAb', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia1RtSEloZElzVnZnWkNuSm9WbWM2cUp1ZGJMbm9lblljSFc0TXhlMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYWxjdWxhdGVfcHJlbWl1bSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715340135),
('UBzfJ7dQrE2HQKurrBatYyyd64lQzVeW6apRUnnn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3FrS2J5b2xibFlzT2tsTEtKaE1GMGtpdm9UdWFhSmlZS2VFZmRZRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYWxjdWxhdGVfcHJlbWl1bSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715331523),
('YvyRuJALNKhJAZRooJfXFLlhuCW98Pt1fYZM78GQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGJweXY2djBkeXJ4eTZETHJ0aEhOcEV6OWlrTGZaZFZTd2xyVkM2USI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ib29rIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1715312284);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_isbn_unique` (`isbn`);

--
-- Indexes for table `book_genre`
--
ALTER TABLE `book_genre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `premium_rates`
--
ALTER TABLE `premium_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_genre`
--
ALTER TABLE `book_genre`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `premium_rates`
--
ALTER TABLE `premium_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `kasir`
--
CREATE DATABASE IF NOT EXISTS `kasir` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kasir`;

-- --------------------------------------------------------

--
-- Table structure for table `detailpesanan`
--

CREATE TABLE `detailpesanan` (
  `iddetailpesanan` int(11) NOT NULL,
  `idorder` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detailpesanan`
--

INSERT INTO `detailpesanan` (`iddetailpesanan`, `idorder`, `idproduk`, `qty`) VALUES
(21, 20240005, 11, 8),
(22, 20240005, 10, 1),
(23, 20240007, 11, 1),
(24, 20240007, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `masuk`
--

CREATE TABLE `masuk` (
  `idmasuk` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `tanggalmasuk` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masuk`
--

INSERT INTO `masuk` (`idmasuk`, `idproduk`, `qty`, `tanggalmasuk`) VALUES
(2, 5, 5, '2024-04-24 14:18:13'),
(10, 8, 5, '2024-05-04 14:46:47'),
(12, 12, 9, '2024-05-05 09:14:55'),
(14, 10, 10, '2024-05-06 03:29:43'),
(15, 11, 9, '2024-05-06 05:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idpelanggan` int(11) NOT NULL,
  `namapelanggan` varchar(30) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`idpelanggan`, `namapelanggan`, `notelp`, `alamat`) VALUES
(3, 'echa', '081246637827', 'swiss'),
(4, 'mahes', '0903298289', 'korut'),
(5, 'kesya', '081234458689', 'new beverly hills, cikarang'),
(6, 'jung kalvin', '0812344', 'lemah abang'),
(7, 'syafiraaa', '0818982384', 'sbh, lemah abang, cikarang'),
(8, 'putri', '0938109382098', 'jawa'),
(9, 'nada', '0203980982', 'tambun');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `idorder` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `idpelanggan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`idorder`, `tanggal`, `idpelanggan`) VALUES
(20240003, '2024-04-29 01:05:20', 4),
(20240004, '2024-04-29 01:29:57', 5),
(20240005, '2024-05-04 10:21:13', 6),
(20240007, '2024-05-06 01:58:10', 8);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idproduk` int(11) NOT NULL,
  `namaproduk` varchar(20) NOT NULL,
  `deskripsi` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `namaproduk`, `deskripsi`, `harga`, `stock`) VALUES
(10, 'penghapus', 'faber castell', 2000, 5),
(11, 'pensil', 'inul', 1000, 9);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(35) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpesanan`
--
ALTER TABLE `detailpesanan`
  ADD PRIMARY KEY (`iddetailpesanan`),
  ADD UNIQUE KEY `idorder` (`idorder`,`idproduk`),
  ADD KEY `idproduk` (`idproduk`);

--
-- Indexes for table `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`idmasuk`),
  ADD UNIQUE KEY `idproduk` (`idproduk`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`idorder`),
  ADD UNIQUE KEY `idpelanggan` (`idpelanggan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detailpesanan`
--
ALTER TABLE `detailpesanan`
  MODIFY `iddetailpesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `masuk`
--
ALTER TABLE `masuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `idpelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `idorder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20240008;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idproduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailpesanan`
--
ALTER TABLE `detailpesanan`
  ADD CONSTRAINT `detailpesanan_ibfk_1` FOREIGN KEY (`idproduk`) REFERENCES `produk` (`idproduk`),
  ADD CONSTRAINT `detailpesanan_ibfk_2` FOREIGN KEY (`idorder`) REFERENCES `pesanan` (`idorder`);

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`idpelanggan`) REFERENCES `pelanggan` (`idpelanggan`);

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`idproduk`) REFERENCES `masuk` (`idproduk`);
--
-- Database: `miniprojek`
--
CREATE DATABASE IF NOT EXISTS `miniprojek` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `miniprojek`;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `npk` int(10) NOT NULL,
  `namaguru` varchar(50) NOT NULL,
  `jk` enum('Female','Male') NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`npk`, `namaguru`, `jk`, `alamat`) VALUES
(9, 'Melly', 'Female', 'Riau'),
(12, 'Putri', 'Female', 'Kranji'),
(21, 'Nada', 'Female', 'Tambun Selatan'),
(78, 'syafira', 'Female', 'bekasi');

-- --------------------------------------------------------

--
-- Table structure for table `jadwalmengajar`
--

CREATE TABLE `jadwalmengajar` (
  `idmengajar` int(11) NOT NULL,
  `npk` int(11) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `idpelajaran` int(11) NOT NULL,
  `idkelas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwalmengajar`
--

INSERT INTO `jadwalmengajar` (`idmengajar`, `npk`, `hari`, `jam_mulai`, `jam_selesai`, `idpelajaran`, `idkelas`) VALUES
(1, 2, 'Monday', '08:10:00', '09:30:00', 91, 3),
(2, 2, 'Wednesday', '09:00:00', '10:00:00', 123, 5),
(3, 78, 'Monday', '07:38:00', '09:31:00', 123, 11),
(4, 12, 'Wednesday', '10:00:00', '11:30:00', 91, 11),
(7, 9, 'Monday', '09:10:00', '12:00:00', 91, 13);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `idkelas` int(11) NOT NULL,
  `kelas` enum('X','XI','XII') NOT NULL,
  `namakelas` varchar(20) NOT NULL,
  `npk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`idkelas`, `kelas`, `namakelas`, `npk`) VALUES
(11, 'XII', 'RPL 2', 0),
(12, 'X', 'TKJ 2', 0),
(13, 'X', 'ips 3', 21),
(15, 'X', 'IPA 4', 12);

-- --------------------------------------------------------

--
-- Table structure for table `matapelajaran`
--

CREATE TABLE `matapelajaran` (
  `idpelajaran` varchar(11) NOT NULL,
  `namapelajaran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matapelajaran`
--

INSERT INTO `matapelajaran` (`idpelajaran`, `namapelajaran`) VALUES
('091', 'pai'),
('123', 'pkn'),
('B10', 'Bahasa Indonesia'),
('IP4', 'IPA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`npk`);

--
-- Indexes for table `jadwalmengajar`
--
ALTER TABLE `jadwalmengajar`
  ADD PRIMARY KEY (`idmengajar`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`idkelas`);

--
-- Indexes for table `matapelajaran`
--
ALTER TABLE `matapelajaran`
  ADD PRIMARY KEY (`idpelajaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwalmengajar`
--
ALTER TABLE `jadwalmengajar`
  MODIFY `idmengajar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `idkelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"miniprojek\",\"table\":\"guru\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-04-24 06:20:48', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `pubites`
--
CREATE DATABASE IF NOT EXISTS `pubites` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pubites`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `last_updated` datetime NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `last_updated`, `username`, `password`, `name`) VALUES
(1, '2024-03-17 15:04:56', 'admin', 'mahes', 'Salsabil Maheswari');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `bank` varchar(150) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id_bank`, `date_created`, `last_updated`, `bank`, `status`) VALUES
(1, '2024-04-01 04:54:29', '0000-00-00 00:00:00', 'BCA', 'Y'),
(2, '2024-04-01 04:54:35', '0000-00-00 00:00:00', 'Mandiri', 'Y'),
(3, '2024-04-01 05:19:36', '0000-00-00 00:00:00', 'BNI', 'Y'),
(4, '2024-04-01 05:19:45', '0000-00-00 00:00:00', 'BRI', 'Y'),
(5, '2024-04-01 05:19:57', '0000-00-00 00:00:00', 'Citibank', 'Y'),
(6, '2024-04-01 05:20:07', '0000-00-00 00:00:00', 'CIMB Niaga', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id_checkout` int(11) NOT NULL,
  `date_order` datetime NOT NULL,
  `date_delivery` datetime DEFAULT NULL,
  `nama` varchar(150) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `alamat` enum('SBH','NBH','Paviliun','Kost','Univ') NOT NULL,
  `detail` varchar(255) NOT NULL,
  `payment` enum('Transfer','E-Wallet') NOT NULL,
  `status` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id_checkout`, `date_order`, `date_delivery`, `nama`, `telp`, `alamat`, `detail`, `payment`, `status`) VALUES
(1, '2024-05-07 14:23:18', NULL, 'jeny', '', 'Univ', 'pucc', 'Transfer', 3),
(2, '2024-05-07 20:56:45', NULL, 'risol', '08098998', 'Kost', 'jjhuh', 'Transfer', 3),
(3, '2024-05-07 21:01:10', NULL, 'hesun', '0912989283', 'NBH', 'n namsm', 'E-Wallet', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(70) NOT NULL,
  `pesan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `date_created`, `nama`, `email`, `pesan`) VALUES
(1, '2024-04-25 10:06:32', 'jeny', 'jeny01@gmail.com', 'Kami ingin mengusulkan kerja sama dalam bentuk  kolaborasi proyek. Kami yakin bahwa kolaborasi ini akan memberikan manfaat besar bagi kedua belah pihak.');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL,
  `last_updated` datetime NOT NULL,
  `title` varchar(100) NOT NULL,
  `about` text NOT NULL,
  `slogan` varchar(150) NOT NULL,
  `maps` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `last_updated`, `title`, `about`, `slogan`, `maps`) VALUES
(1, '2024-05-05 17:37:36', 'PUBITES', 'Kami adalah tim yang berdedikasi untuk membantu brand UMKM makanan dalam mempromosikan bisnis mereka dan mencapai kesuksesan yang lebih besar. Dengan pengalaman dan pengetahuan yang luas di bidang pemasaran dan teknologi, kami berkomitmen untuk memberikan solusi yang efektif dan mudah digunakan bagi UMKM agar dapat menjangkau pelanggan potensial dan memperluas jangkauan bisnis mereka. Kami percaya bahwa setiap UMKM makanan memiliki potensi besar untuk berkembang dan kami siap membantu mewujudkan impian mereka. Terima kasih telah mempercayakan kami untuk membantu bisnis Anda.\r\n\r\n', 'Indulge in Exquisite Flavors at PUBITES', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.835160001308!2d107.1700771!3d-6.285387600000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6984caf1187f73%3A0x75b5d9d8efd9a3e8!2sPresident%20University%2C%20Mekarmukti%2C%20Kec.%20Cikarang%20Utara%2C%20Kabupaten%20Bekasi%2C%20Jawa%20Barat!5e0!3m2!1sid!2sid!4v1704802262755!5m2!1sid!2sid');

-- --------------------------------------------------------

--
-- Table structure for table `menu_umkm`
--

CREATE TABLE `menu_umkm` (
  `id_menu` int(11) NOT NULL,
  `id_umkm` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `menu` varchar(50) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `foto_menu` varchar(255) NOT NULL,
  `stok` int(7) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu_umkm`
--

INSERT INTO `menu_umkm` (`id_menu`, `id_umkm`, `date_created`, `last_updated`, `menu`, `harga`, `foto_menu`, `stok`, `status`) VALUES
(10, 10, '2024-05-07 14:18:50', '2024-05-07 21:00:25', 'dumpling', '10000', 'drawing.png', 16, 'N'),
(11, 11, '2024-05-07 21:00:09', '0000-00-00 00:00:00', 'mie ayam', '15000', 'instagram (3).png', 87, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_checkout` int(11) NOT NULL,
  `id_umkm` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `qty` int(7) NOT NULL,
  `bukti_tf` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_checkout`, `id_umkm`, `id_menu`, `qty`, `bukti_tf`) VALUES
(1, 1, 4, 3, 1, '6ad410326a494ec2b5eeea6a7a1334ee.jpg'),
(2, 1, 3, 4, 1, '52d02728-4d82-4d16-8a42-93e9bd498db2.jpg'),
(3, 2, 1, 1, 4, 'Untitled.jpg'),
(4, 3, 1, 1, 2, 'coffeebg.jpg'),
(5, 4, 1, 1, 1, 'Untitled.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id_review` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `rating` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id_review`, `id_menu`, `date_created`, `nama`, `email`, `pesan`, `rating`) VALUES
(6, 11, '2025-08-18 13:41:24', 'Salsabil Maheswari', 'salsabilmaheswari86@gmail.com', 'good', 5),
(7, 11, '2025-08-18 13:41:54', 'Salsabil Maheswari', 'salsabilmaheswari86@gmail.com', 'good', 5),
(8, 11, '2025-08-18 13:42:51', 'Salsabil Maheswari', 'salsabilmaheswari86@gmail.com', 'good taste', 5);

-- --------------------------------------------------------

--
-- Table structure for table `umkm`
--

CREATE TABLE `umkm` (
  `id_umkm` int(11) NOT NULL,
  `id_bank` int(11) DEFAULT NULL,
  `id_wallet` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(70) NOT NULL,
  `nama_umkm` varchar(150) NOT NULL,
  `deskripsi_umkm` text NOT NULL,
  `foto_umkm` varchar(255) NOT NULL,
  `telp_umkm` varchar(15) NOT NULL,
  `rek_wallet` varchar(100) DEFAULT NULL,
  `rek_bank` varchar(100) DEFAULT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `umkm`
--

INSERT INTO `umkm` (`id_umkm`, `id_bank`, `id_wallet`, `date_created`, `last_updated`, `username`, `password`, `nama_umkm`, `deskripsi_umkm`, `foto_umkm`, `telp_umkm`, `rek_wallet`, `rek_bank`, `status`) VALUES
(10, 4, 1, '2024-05-07 14:09:28', '0000-00-00 00:00:00', 'dynastychindo', '123', 'dynasty chindo', '-', 'gambar.jpg', '098928982098', '908098873439 (Rey)', '09100823 (Rey)', 'Y'),
(11, 4, 3, '2024-05-07 20:59:34', '0000-00-00 00:00:00', 'rotiway', '123', 'nanamin', 'nanamin', 'gambar.jpg', '08098998', 'i897888', '717278292991', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id_wallet` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `wallet` varchar(150) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id_wallet`, `date_created`, `last_updated`, `wallet`, `status`) VALUES
(1, '2024-04-01 05:18:45', '2024-04-01 05:19:08', 'Gopay', 'Y'),
(3, '2024-04-01 05:19:26', '0000-00-00 00:00:00', 'OVO', 'Y'),
(4, '2024-04-01 05:19:29', '0000-00-00 00:00:00', 'DANA', 'Y'),
(5, '2024-04-01 05:22:27', '0000-00-00 00:00:00', 'ShopeePay', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id_checkout`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `menu_umkm`
--
ALTER TABLE `menu_umkm`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indexes for table `umkm`
--
ALTER TABLE `umkm`
  ADD PRIMARY KEY (`id_umkm`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id_wallet`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id_checkout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_umkm`
--
ALTER TABLE `menu_umkm`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `umkm`
--
ALTER TABLE `umkm`
  MODIFY `id_umkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id_wallet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk_id_menu` FOREIGN KEY (`id_menu`) REFERENCES `menu_umkm` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu_umkm` (`id_menu`);
--
-- Database: `pubites2`
--
CREATE DATABASE IF NOT EXISTS `pubites2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pubites2`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `last_updated` datetime NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `last_updated`, `username`, `password`, `name`) VALUES
(1, '2024-03-17 15:04:56', 'admin', 'mahes', 'Salsabil Maheswari');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id_checkout` int(11) NOT NULL,
  `date_order` datetime NOT NULL,
  `date_delivery` datetime DEFAULT NULL,
  `nama` varchar(150) NOT NULL,
  `alamat` enum('SBH','NBH','Paviliun','Kost','Univ') NOT NULL,
  `detail` varchar(255) NOT NULL,
  `payment` enum('Transfer','Cash','Wallet') NOT NULL,
  `bukti_tf` varchar(255) NOT NULL,
  `status` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(70) NOT NULL,
  `pesan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL,
  `last_updated` datetime NOT NULL,
  `title` varchar(100) NOT NULL,
  `about` text NOT NULL,
  `slogan` varchar(150) NOT NULL,
  `maps` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `last_updated`, `title`, `about`, `slogan`, `maps`) VALUES
(1, '2024-03-17 15:05:19', 'PUBITES', 'Kami adalah tim yang berdedikasi untuk membantu brand UMKM makanan dalam mempromosikan bisnis mereka dan mencapai kesuksesan yang lebih besar. Dengan pengalaman dan pengetahuan yang luas di bidang pemasaran dan teknologi, kami berkomitmen untuk memberikan solusi yang efektif dan mudah digunakan bagi UMKM agar dapat menjangkau pelanggan potensial dan memperluas jangkauan bisnis mereka. Kami percaya bahwa setiap UMKM makanan memiliki potensi besar untuk berkembang dan kami siap membantu mewujudkan impian mereka. Terima kasih telah mempercayakan kami untuk membantu bisnis Anda.', 'Indulge in Exquisite Flavors at PUBITES', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.835160001308!2d107.1700771!3d-6.285387600000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6984caf1187f73%3A0x75b5d9d8efd9a3e8!2sPresident%20University%2C%20Mekarmukti%2C%20Kec.%20Cikarang%20Utara%2C%20Kabupaten%20Bekasi%2C%20Jawa%20Barat!5e0!3m2!1sid!2sid!4v1704802262755!5m2!1sid!2sid');

-- --------------------------------------------------------

--
-- Table structure for table `menu_umkm`
--

CREATE TABLE `menu_umkm` (
  `id_menu` int(11) NOT NULL,
  `id_umkm` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `menu` varchar(50) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `foto_menu` varchar(255) NOT NULL,
  `stok` int(7) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu_umkm`
--

INSERT INTO `menu_umkm` (`id_menu`, `id_umkm`, `date_created`, `last_updated`, `menu`, `harga`, `foto_menu`, `stok`, `status`) VALUES
(2, 3, '2024-03-09 23:40:09', '2024-03-14 09:20:54', 'Seblak Corner', '12000', 'seblak.png', 0, 'Y'),
(3, 4, '2024-03-09 23:42:36', '0000-00-00 00:00:00', 'Lil Churros', '42000', 'churros.png', 0, 'Y'),
(4, 3, '2024-03-14 09:26:10', '2024-03-17 17:46:31', 'Pempek 4.0', '16000', 'pempekpaket3.jpg', 41, 'Y'),
(5, 3, '2024-03-17 17:53:41', '2024-03-17 21:32:18', 'Thomas Shelby Coconut', '7500', 'kelapa.png', 286, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_checkout` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `qty` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_checkout`, `id_menu`, `qty`) VALUES
(25, 1, 5, 2),
(26, 1, 4, 1),
(27, 2, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id_review` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `rating` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id_review`, `id_menu`, `date_created`, `nama`, `email`, `pesan`, `rating`) VALUES
(2, 3, '2024-03-14 08:07:03', 'Rizky Fadillah', 'rizkyfadillah@gmail.com', 'Lil Churros sangat negros!!', 5),
(3, 2, '2024-03-14 08:15:00', '123', '123@gmail.com', 'test', 2);

-- --------------------------------------------------------

--
-- Table structure for table `umkm`
--

CREATE TABLE `umkm` (
  `id_umkm` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(70) NOT NULL,
  `nama_umkm` varchar(150) NOT NULL,
  `deskripsi_umkm` text NOT NULL,
  `foto_umkm` varchar(255) NOT NULL,
  `telp_umkm` varchar(15) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `umkm`
--

INSERT INTO `umkm` (`id_umkm`, `date_created`, `last_updated`, `username`, `password`, `nama_umkm`, `deskripsi_umkm`, `foto_umkm`, `telp_umkm`, `status`) VALUES
(3, '2024-03-09 23:38:43', '2024-03-17 02:15:12', 'foodstreet', '12345', 'Food Street Corner', 'Food Street Corner tempat nongkrong buat kamu yang estetik dan kekinian!', 'night-street-pictures-uw68crpvd1xng1nx.jpg', '911', 'Y'),
(4, '2024-03-09 23:40:54', '2024-03-17 02:15:57', 'Ambazone', 'amba123', 'Cafe Roma', 'Cafe Roma Numero Uno', 'wp3146366.jpg', '088888888', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id_checkout`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `menu_umkm`
--
ALTER TABLE `menu_umkm`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`);

--
-- Indexes for table `umkm`
--
ALTER TABLE `umkm`
  ADD PRIMARY KEY (`id_umkm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id_checkout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_umkm`
--
ALTER TABLE `menu_umkm`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `umkm`
--
ALTER TABLE `umkm`
  MODIFY `id_umkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `pucanteen`
--
CREATE DATABASE IF NOT EXISTS `pucanteen` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pucanteen`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `last_updated` datetime NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `last_updated`, `username`, `password`, `name`) VALUES
(1, '2024-03-17 15:04:56', 'admin', 'mahes', 'Salsabil Maheswari');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id_checkout` int(11) NOT NULL,
  `date_order` datetime NOT NULL,
  `date_delivery` datetime DEFAULT NULL,
  `nama` varchar(150) NOT NULL,
  `jamambil` enum('10:00','11:30','13:00','14:30','16:00') NOT NULL,
  `phone` varchar(15) NOT NULL,
  `payment` enum('Cash','Transfer','Wallet') NOT NULL,
  `bukti` varchar(255) NOT NULL,
  `status` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id_checkout`, `date_order`, `date_delivery`, `nama`, `jamambil`, `phone`, `payment`, `bukti`, `status`) VALUES
(4, '2024-05-01 20:44:16', '2024-05-02 10:05:12', 'mahes', '11:30', '081234556789', 'Transfer', 'coffeebg2.jpg', 1),
(5, '2024-05-02 10:06:30', '2024-05-02 10:06:55', 'jeny', '10:00', '08132388848', 'Transfer', 'churros (3).png', 1),
(6, '2024-05-02 10:24:31', '2024-05-02 10:24:50', 'admin', '14:30', '081927398273', 'Wallet', 'coffeebg2.jpg', 1),
(7, '2024-05-02 11:17:55', '2024-05-02 11:18:39', 'mahes', '11:30', '089172767', 'Transfer', 'cookies.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(70) NOT NULL,
  `pesan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `date_created`, `nama`, `email`, `pesan`) VALUES
(1, '2024-04-24 19:31:04', 'jeny', 'jeny01@gmail.com', 'i want to work together'),
(2, '2024-05-02 10:10:59', 'mahes', 'maheswarisalsabil@gmail.com', 'i want to work together');

-- --------------------------------------------------------

--
-- Table structure for table `konten`
--

CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL,
  `last_updated` datetime NOT NULL,
  `title` varchar(100) NOT NULL,
  `about` text NOT NULL,
  `slogan` varchar(150) NOT NULL,
  `maps` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `konten`
--

INSERT INTO `konten` (`id_konten`, `last_updated`, `title`, `about`, `slogan`, `maps`) VALUES
(1, '2024-04-24 19:13:56', 'PUcanteen', 'Selamat datang di PUcanteen! Kami adalah tempat yang menyediakan berbagai pilihan makanan dan minuman untuk memenuhi kebutuhan kuliner Anda di tengah-tengah kesibukan perkuliahan. Dengan beragam menu yang lezat dan harga yang terjangkau, kami berkomitmen untuk memberikan pengalaman kuliner yang memuaskan bagi seluruh mahasiswa dan pengunjung kampus. Mari kunjungi kami dan nikmati hidangan lezat kami di PUcanteen!\r\n\r\n', 'Eating, chilling, and thriving on campus!', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.835160001308!2d107.1700771!3d-6.285387600000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6984caf1187f73%3A0x75b5d9d8efd9a3e8!2sPresident%20University%2C%20Mekarmukti%2C%20Kec.%20Cikarang%20Utara%2C%20Kabupaten%20Bekasi%2C%20Jawa%20Barat!5e0!3m2!1sid!2sid!4v1704802262755!5m2!1sid!2sid');

-- --------------------------------------------------------

--
-- Table structure for table `menu_umkm`
--

CREATE TABLE `menu_umkm` (
  `id_menu` int(11) NOT NULL,
  `id_umkm` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `menu` varchar(50) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `foto_menu` varchar(255) NOT NULL,
  `stok` int(7) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu_umkm`
--

INSERT INTO `menu_umkm` (`id_menu`, `id_umkm`, `date_created`, `last_updated`, `menu`, `harga`, `foto_menu`, `stok`, `status`) VALUES
(8, 5, '2024-05-01 12:25:42', '2024-05-01 19:26:26', 'mie ayam', '5000', '001de26a2589bdaec333ba614dbde9c1.png', 5, 'Y'),
(9, 6, '2024-05-01 20:42:54', '2024-05-01 20:43:21', 'jus wortel', '10000', 'menu.jpg', 1, 'Y'),
(10, 6, '2024-05-02 11:20:12', '0000-00-00 00:00:00', 'jus', '5000', 'Eating donuts-bro.png', 10, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_checkout` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `qty` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_checkout`, `id_menu`, `qty`) VALUES
(25, 1, 5, 2),
(26, 1, 4, 1),
(27, 2, 4, 3),
(28, 3, 6, 2),
(29, 3, 6, 2),
(30, 4, 9, 3),
(31, 5, 9, 2),
(32, 6, 9, 2),
(33, 7, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id_review` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `rating` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id_review`, `id_menu`, `date_created`, `nama`, `email`, `pesan`, `rating`) VALUES
(5, 9, '2024-05-02 10:07:35', 'jeny', 'maheswarisalsabil@gmail.com', 'enak', 5);

-- --------------------------------------------------------

--
-- Table structure for table `umkm`
--

CREATE TABLE `umkm` (
  `id_umkm` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(70) NOT NULL,
  `nama_umkm` varchar(150) NOT NULL,
  `deskripsi_umkm` text NOT NULL,
  `foto_umkm` varchar(255) NOT NULL,
  `telp_umkm` varchar(15) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `umkm`
--

INSERT INTO `umkm` (`id_umkm`, `date_created`, `last_updated`, `username`, `password`, `nama_umkm`, `deskripsi_umkm`, `foto_umkm`, `telp_umkm`, `status`) VALUES
(5, '2024-04-24 19:18:09', '2024-04-24 19:35:38', 'jeny123', '123', 'kantin siskal', 'menyajikan berbagai macam makanan jajanan dan minuman ringan yang lezat dan segar. Dari makanan cepat saji yang nikmat hingga camilan favorit, serta minuman segar yang menyegarkan', 'kantin.jpg', '081234567812', 'Y'),
(6, '2024-05-01 20:42:19', '0000-00-00 00:00:00', 'mahes321', '321', 'kantin sehat', 'menyediakan makanan dan minuman sehat', 'umkm.png', '081236437638', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id_checkout`);

--
-- Indexes for table `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indexes for table `menu_umkm`
--
ALTER TABLE `menu_umkm`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id_review`);

--
-- Indexes for table `umkm`
--
ALTER TABLE `umkm`
  ADD PRIMARY KEY (`id_umkm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id_checkout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_umkm`
--
ALTER TABLE `menu_umkm`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `umkm`
--
ALTER TABLE `umkm`
  MODIFY `id_umkm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `sales_system`
--
CREATE DATABASE IF NOT EXISTS `sales_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sales_system`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `stock`, `price`, `create_at`, `size`) VALUES
(17, 'NEW BALANCE 530 unisex sneakers shoes - silver', 5, 960000.00, '2025-05-16 15:16:58', '37'),
(18, 'NEW BALANCE 530 unisex sneakers shoes - silver', 95, 960000.00, '2025-05-16 15:17:15', '36'),
(19, 'Men sneakers shoes - black', 2, 1245000.00, '2025-05-16 15:25:32', '41');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `product_id`, `quantity`, `total_price`, `created_at`) VALUES
(18, '6828a980860e2', 17, 95, 91200000.00, '2025-05-17 22:21:36'),
(19, '6828a980860e2', 19, 3, 3735000.00, '2025-05-17 22:21:36'),
(20, '6828a980860e2', 18, 5, 4800000.00, '2025-05-17 22:21:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `urbanfarming`
--
CREATE DATABASE IF NOT EXISTS `urbanfarming` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `urbanfarming`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agronomists`
--

CREATE TABLE `agronomists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `certification` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `farm_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(3, 'agronomist'),
(2, 'farmer');

-- --------------------------------------------------------

--
-- Table structure for table `tanaman`
--

CREATE TABLE `tanaman` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `spesies` varchar(100) NOT NULL,
  `lokasi` varchar(150) DEFAULT NULL,
  `farmer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tanaman`
--

INSERT INTO `tanaman` (`id`, `nama`, `spesies`, `lokasi`, `farmer_id`, `created_at`, `updated_at`) VALUES
(3, 'daun jeruk', 'C. sinensis', 'bogor', NULL, '2025-08-28 14:29:12', '2025-08-28 22:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role_id`) VALUES
(3, 'superadmin', 'admin@example.com', '$2a$10$rJn3DTdcH2XuljqOTOykEeujfE7k1zgAtCPr.dUPHoN8oBE9xlKy6', 1),
(5, 'haha', 'haha@gmail.com', '$2a$10$TvjcxH.NE7tgEvFKthyzwOf9w5nqzWs0abN4cWVplLsPH4uTFjNuC', 2),
(13, 'maheswarisalsa', 'maheswarisalsa@gmail.com', '$2a$10$SZNfe5P3OvQVHaUA.PdrbeLRRMBQQRq0098dh3HhKGqgxxdI.gL7y', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `agronomists`
--
ALTER TABLE `agronomists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tanaman`
--
ALTER TABLE `tanaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `farmer_id` (`farmer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `agronomists`
--
ALTER TABLE `agronomists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tanaman`
--
ALTER TABLE `tanaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `fk_admin_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `agronomists`
--
ALTER TABLE `agronomists`
  ADD CONSTRAINT `fk_agronomist_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `farmers`
--
ALTER TABLE `farmers`
  ADD CONSTRAINT `fk_farmer_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tanaman`
--
ALTER TABLE `tanaman`
  ADD CONSTRAINT `fk_tanaman_farmer` FOREIGN KEY (`farmer_id`) REFERENCES `farmers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;
--
-- Database: `user`
--
CREATE DATABASE IF NOT EXISTS `user` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user`;

-- --------------------------------------------------------

--
-- Table structure for table `tableuser`
--

CREATE TABLE `tableuser` (
  `userid` int(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tableuser`
--

INSERT INTO `tableuser` (`userid`, `username`, `password`) VALUES
(1, 'tes123', '$2y$10$TxIb0vGJxb/vZRYVdhGPC.PQsvG5yJmv6emhdF/X0ewzPCKYWKCbu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tableuser`
--
ALTER TABLE `tableuser`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tableuser`
--
ALTER TABLE `tableuser`
  MODIFY `userid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
