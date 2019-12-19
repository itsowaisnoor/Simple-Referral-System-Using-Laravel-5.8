-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 19, 2019 at 01:01 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `referral`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_12_19_084903_add_referred_by_column_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referred_by` int(10) UNSIGNED DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `referred_by`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'owais', 'itsowaisnoor@gmail.com', NULL, NULL, '$2y$10$.1R3zR6yQEXHqbbm501.ZOMusM7q8ijWOrPEfWU8uVSxux64c4xfO', NULL, '2019-12-19 02:30:19', '2019-12-19 02:30:19'),
(4, 'owais', 'itsowaisnossor@gmail.com', 1, NULL, '$2y$10$qEJjhkJrgmrwSyKwXrM9aeuPmOB2TDhTx6fZ631A8Qijb0PJ9yQvq', NULL, '2019-12-19 03:27:11', '2019-12-19 03:27:11'),
(5, 'owais', 'test@test.com', 1, NULL, '$2y$10$zYe5uxyc7WFS7kNbcaypBuSnAroOHTlL/90wQyzJ8eHdiqdg/54Se', NULL, '2019-12-19 04:39:21', '2019-12-19 04:39:21'),
(6, 'owais', 'itsowasdsdsdisnoor@gmail.com', 1, NULL, '$2y$10$nru0zFtE3hy45xQuFSlWiu1MVk/UUqYw/fKdufofdCpkmwBZrc.FC', NULL, '2019-12-19 04:40:18', '2019-12-19 04:40:18'),
(7, 'owais', 'jsjsj@hshsh.ksksk', 1, NULL, '$2y$10$D89bMV4mSaQ8YvltCkQJpOZz5yIIL6XK2t4z4sjO6fMXXIiYDqtbG', NULL, '2019-12-19 05:04:36', '2019-12-19 05:04:36'),
(8, 'test', 'test@hdhd.jdjd', 1, NULL, '$2y$10$cI0zuNw/7WEJWQRqg6YpQeY2109eNOABNkw2THR.TYGvdQtJXBiPa', NULL, '2019-12-19 05:05:59', '2019-12-19 05:05:59'),
(9, 'hbh', 'itsowgggggaisnoor@gmail.com', 1, NULL, '$2y$10$ep2o/D0pETabCkr0zCiQAegf/pMgIi2GRoEaQaCRyOE1TGQZyuFgG', NULL, '2019-12-19 05:16:16', '2019-12-19 05:16:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
