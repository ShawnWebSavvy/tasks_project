-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2024 at 10:29 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tasks_project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `archived_tasks`
--

CREATE TABLE `archived_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `archivetasks`
--

CREATE TABLE `archivetasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `due_date` date NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `assigned_to` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `archivetasks`
--

INSERT INTO `archivetasks` (`id`, `task_id`, `title`, `description`, `due_date`, `created_by`, `assigned_to`, `created_at`, `updated_at`, `archived_at`) VALUES
(6, 3, 'title', 'description', '2024-07-10', 1, 4, '2024-07-11 06:26:23', '2024-07-11 06:26:23', NULL),
(7, 5, 'title', 'description', '2024-07-10', 1, 2, '2024-07-11 06:26:46', '2024-07-11 06:26:46', NULL),
(8, 7, 'title', 'description', '2024-07-10', 1, 3, '2024-07-11 06:27:02', '2024-07-11 06:27:02', NULL);

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
(55, '2024_07_10_172732_create_archived_tasks_table', 1),
(56, '0001_01_01_000000_create_users_table', 2),
(57, '0001_01_01_000001_create_cache_table', 2),
(58, '0001_01_01_000002_create_jobs_table', 2),
(59, '2024_07_10_131828_create_statuses_table', 2),
(60, '2024_07_10_131829_create_tasks_table', 2),
(61, '2024_07_10_152632_create_archivetasks_table', 2);

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
('m6uR2dgl9r0OkQRFydgEfmwDalYcjB5u8rOFcUwR', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTzFlZFlSV3JGVW9jT0pHbjJGUlNNM01aRlo5V2o3SWE1eGlPa2IyMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcmNoaXZlIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3MjA2ODY0MDE7fX0=', 1720686478),
('RKxNBr0tfrVIb1uWGoUA1aXiyO4GCbUDcUmlgJw6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSzE5UHJ6dHVXQU12VHE0Q0p5OWlPR3R4ZHFsNUhRbHVFb0VLUFR4aiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Rhc2tzP3BhZ2U9MiI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdGFza3M/cGFnZT0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1720679476);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Created', '2024-07-10 15:39:41', '2024-07-10 15:39:41'),
(2, 'Closed', '2024-07-10 15:39:41', '2024-07-10 15:39:41'),
(3, 'In Progress', '2024-07-10 15:39:41', '2024-07-10 15:39:41'),
(4, 'Reassigned', '2024-07-10 15:39:41', '2024-07-10 15:39:41'),
(5, 'Pending Client', '2024-07-10 15:39:41', '2024-07-10 15:39:41'),
(6, 'Pending Internal', '2024-07-10 15:39:41', '2024-07-10 15:39:41'),
(7, 'Re-Opened', '2024-07-10 15:39:41', '2024-07-10 15:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `due_date` date NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `assigned_to` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `due_date`, `status_id`, `created_by`, `assigned_to`, `created_at`, `updated_at`) VALUES
(4, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:42', '2024-07-10 15:39:42'),
(6, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:42', '2024-07-10 15:39:42'),
(8, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:42', '2024-07-10 15:39:42'),
(9, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:42', '2024-07-10 15:39:42'),
(13, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:42', '2024-07-10 15:39:42'),
(14, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:42', '2024-07-10 15:39:42'),
(15, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:42', '2024-07-10 15:39:42'),
(16, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:42', '2024-07-10 15:39:42'),
(17, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:42', '2024-07-10 15:39:42'),
(18, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:43', '2024-07-10 15:39:43'),
(19, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:43', '2024-07-10 15:39:43'),
(20, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:43', '2024-07-10 15:39:43'),
(21, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:43', '2024-07-10 15:39:43'),
(22, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:43', '2024-07-10 15:39:43'),
(23, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:43', '2024-07-10 15:39:43'),
(24, 'title', 'description', '2024-07-10', 1, 1, 3, '2024-07-10 15:39:43', '2024-07-10 15:42:17'),
(25, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:43', '2024-07-10 15:39:43'),
(26, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:43', '2024-07-10 15:39:43'),
(27, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:43', '2024-07-10 15:39:43'),
(28, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:43', '2024-07-10 15:39:43'),
(29, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:43', '2024-07-10 15:39:43'),
(30, 'title', 'description', '2024-07-10', 1, 1, 2, '2024-07-10 15:39:43', '2024-07-10 15:39:43'),
(31, 'title', 'description', '2024-07-10', 6, 1, 2, '2024-07-10 15:42:39', '2024-07-10 15:42:39'),
(32, 'aaaaa', 'aaaa', '2024-07-11', 6, 1, 2, '2024-07-10 16:58:38', '2024-07-10 16:58:38'),
(33, 'title', 'description', '2024-07-10', 6, 1, 2, '2024-07-11 05:24:29', '2024-07-11 05:24:29'),
(34, 'title', 'description', '2024-07-10', 6, 1, 2, '2024-07-11 05:40:22', '2024-07-11 05:40:22'),
(35, 'title', 'description', '2024-07-10', 6, 1, 3, '2024-07-11 06:01:49', '2024-07-11 06:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `role`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Base', 'Cloud', 'admin', 'base@cloud.com', '2024-07-10 15:39:39', '$2y$12$mfxNcphYRcDOMll/HuKvMu607JYHSY8oeEkIP42Nxl/U/H84Z28ky', '5gRWxJsPjT', '2024-07-10 15:39:39', '2024-07-10 15:39:39'),
(2, 'Shawn', 'Whelan', 'admin', 'shawn@websavvy.co.za', '2024-07-10 15:39:40', '$2y$12$19zDBZhFTO9XH47Of4NRSOBYwc6NBH9mg7ZKORO2.S6w/PbRVDHPy', '50NI0Gm38rnlIUKGbJ2aCOQR7gfUAePitccVgIAkaEcA47kvmkCuXDjSVF8I', '2024-07-10 15:39:40', '2024-07-10 15:39:40'),
(3, 'Grant', 'Surname', 'user', 'grant@websavvy.co.za', '2024-07-10 15:39:40', '$2y$12$pydXQiO2Fo9eJMznMOvlxuit3jni0VqLOgcGrZyCPmxs42FwyqGke', 'MeaI64ui2DTAa6MDrcev8bg0hWZCnC68vxilah8v0SGMMZNqXAn8kvsI55k1', '2024-07-10 15:39:40', '2024-07-10 15:39:40'),
(4, 'Mark', 'Surname', 'user', 'mark@websavvy.co.za', '2024-07-10 15:39:40', '$2y$12$AIvMcJu.NpMTyFA3AqJfD.GstgOf5l/ff4f9tQJIinkd8rQ/glNrG', '1A96Q1QLXCcjKraGeeDEuE582CKzmXuzBJtgnK77dao8leHplCU55ft20DMI', '2024-07-10 15:39:41', '2024-07-10 15:39:41'),
(5, 'Paul', 'Surname', 'user', 'paul@websavvy.co.za', '2024-07-10 15:39:41', '$2y$12$Ni4WgWVSwzx4H8PkAg5/5.x29mXZCuH.pDOAyFAIvTJfUxPtkNFvK', 'wowQCC8NYL', '2024-07-10 15:39:41', '2024-07-10 15:39:41'),
(6, 'Meta Fadel Sr.', 'Prof. Gaetano Pagac', 'user', 'dstracke@example.net', '2024-07-10 15:39:41', '$2y$12$3/P6gSv8KuJjc2KcWOLaCexBTK7CwiEbU8wJcKciSJZrOEmUiUsyK', 'leINHQVDfK', '2024-07-10 15:39:41', '2024-07-10 15:39:41'),
(7, 'Durward Cummerata', 'Joy Ortiz PhD', 'user', 'kcormier@example.com', '2024-07-10 15:39:41', '$2y$12$3/P6gSv8KuJjc2KcWOLaCexBTK7CwiEbU8wJcKciSJZrOEmUiUsyK', '1e0p2T24Tt', '2024-07-10 15:39:41', '2024-07-10 15:39:41'),
(8, 'Mrs. Barbara Zboncak Jr.', 'Lourdes Grant', 'user', 'howe.julius@example.net', '2024-07-10 15:39:41', '$2y$12$3/P6gSv8KuJjc2KcWOLaCexBTK7CwiEbU8wJcKciSJZrOEmUiUsyK', 'Q8KbZQxxgD', '2024-07-10 15:39:41', '2024-07-10 15:39:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archived_tasks`
--
ALTER TABLE `archived_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archivetasks`
--
ALTER TABLE `archivetasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `archivetasks_created_by_foreign` (`created_by`),
  ADD KEY `archivetasks_assigned_to_foreign` (`assigned_to`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_status_id_foreign` (`status_id`),
  ADD KEY `tasks_created_by_foreign` (`created_by`),
  ADD KEY `tasks_assigned_to_foreign` (`assigned_to`);

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
-- AUTO_INCREMENT for table `archived_tasks`
--
ALTER TABLE `archived_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archivetasks`
--
ALTER TABLE `archivetasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archivetasks`
--
ALTER TABLE `archivetasks`
  ADD CONSTRAINT `archivetasks_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `archivetasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_assigned_to_foreign` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tasks_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
