-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2025 at 12:04 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-appointments`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_time` datetime NOT NULL,
  `finish_time` datetime NOT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `comments` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `start_time`, `finish_time`, `price`, `comments`, `created_at`, `updated_at`, `deleted_at`, `client_id`, `employee_id`) VALUES
(1, '2025-04-07 11:00:00', '2025-04-07 13:00:00', NULL, NULL, '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL, 3, 2),
(2, '2025-04-05 22:00:00', '2025-04-05 23:00:00', NULL, NULL, '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL, 10, 2),
(3, '2025-04-05 20:00:00', '2025-04-05 22:00:00', NULL, NULL, '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL, 1, 4),
(4, '2025-04-05 03:00:00', '2025-04-05 04:00:00', NULL, NULL, '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL, 8, 3),
(5, '2025-04-07 05:00:00', '2025-04-07 07:00:00', NULL, NULL, '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL, 10, 4),
(6, '2025-04-05 10:00:00', '2025-04-05 11:00:00', NULL, NULL, '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL, 10, 3),
(7, '2025-04-06 08:00:00', '2025-04-06 10:00:00', NULL, NULL, '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL, 3, 4),
(8, '2025-04-04 19:00:00', '2025-04-04 21:00:00', NULL, NULL, '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL, 3, 2),
(9, '2025-04-04 07:00:00', '2025-04-04 08:00:00', NULL, NULL, '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL, 10, 4),
(10, '2025-04-05 21:00:00', '2025-04-05 22:00:00', NULL, NULL, '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL, 3, 2),
(11, '2025-04-25 16:45:00', '2025-04-26 20:45:00', '35000.00', 'This bookig of gulshan singh  for Son Marrige .', '2025-04-03 03:45:40', '2025-04-03 03:45:40', NULL, 12, 6);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_service`
--

CREATE TABLE `appointment_service` (
  `appointment_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointment_service`
--

INSERT INTO `appointment_service` (`appointment_id`, `service_id`) VALUES
(11, 2),
(11, 8);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `phone`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dr. Jovani Bogan', '+1.283.353.1655', 'melba.williamson@macejkovic.org', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(2, 'Timmothy Larson IV', '819-722-3981', 'kirlin.jordi@cole.net', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(3, 'Joannie Cole', '1-258-441-1753 x70844', 'al97@trantow.com', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(4, 'Mrs. Princess Collier', '+1 (956) 250-8054', 'connor.hamill@greenfelder.org', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(5, 'Cheyanne Shields', '526-445-1484 x07048', 'krajcik.edgardo@gmail.com', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(6, 'Antonetta Medhurst V', '451.915.1925 x54503', 'marilou18@hotmail.com', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(7, 'Mr. Mohammed Kihn PhD', '(812) 830-9573 x4658', 'thelma81@larkin.info', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(8, 'Ms. Iva Fahey', '261.908.8500 x115', 'izabella.johnston@gmail.com', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(9, 'Laverna Ullrich', '+1-861-614-2655', 'kunze.veronica@medhurst.com', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(10, 'Dr. Percival Moen', '+1-202-762-8376', 'dayton.bruen@yahoo.com', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(11, 'Pawan Kumar', '9576026987', 'pawan.raj713@gmail.com', '2025-04-03 03:41:54', '2025-04-03 03:42:14', '2025-04-03 03:42:14'),
(12, 'Pawan Kumar', '8709963796', 'pawan.raj713@gmail.com', '2025-04-03 03:44:17', '2025-04-03 03:44:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Garnet Lowe', 'gkoepp@hotmail.com', '(906) 394-6418 x57004', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(2, 'Mr. Benedict Schneider II', 'clay88@hotmail.com', '226-799-8650 x851', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(3, 'Miss Annabell Cartwright', 'batz.jerad@weimann.com', '(389) 565-9124', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(4, 'Kattie Thompson', 'xruecker@yahoo.com', '1-315-307-7106 x9208', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(5, 'Estella Corwin', 'runolfsdottir.dion@yahoo.com', '(493) 808-4398 x9124', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(6, 'Pawan Kumar', 'pawan.raj713@gmail.com', '8709963796', '2025-04-03 03:43:35', '2025-04-03 03:43:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_service`
--

CREATE TABLE `employee_service` (
  `employee_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_service`
--

INSERT INTO `employee_service` (`employee_id`, `service_id`) VALUES
(6, 3),
(6, 9);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`manipulations`)),
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`custom_properties`)),
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`responsive_images`)),
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_09_19_000000_create_media_table', 1),
(8, '2019_09_19_000001_create_permissions_table', 1),
(9, '2019_09_19_000002_create_roles_table', 1),
(10, '2019_09_19_000003_create_users_table', 1),
(11, '2019_09_19_000004_create_services_table', 1),
(12, '2019_09_19_000005_create_employees_table', 1),
(13, '2019_09_19_000006_create_clients_table', 1),
(14, '2019_09_19_000007_create_appointments_table', 1),
(15, '2019_09_19_000008_create_permission_role_pivot_table', 1),
(16, '2019_09_19_000009_create_role_user_pivot_table', 1),
(17, '2019_09_19_000010_create_employee_service_pivot_table', 1),
(18, '2019_09_19_000011_create_appointment_service_pivot_table', 1),
(19, '2019_09_19_000012_add_relationship_fields_to_appointments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(2, 'permission_create', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(3, 'permission_edit', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(4, 'permission_show', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(5, 'permission_delete', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(6, 'permission_access', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(7, 'role_create', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(8, 'role_edit', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(9, 'role_show', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(10, 'role_delete', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(11, 'role_access', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(12, 'user_create', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(13, 'user_edit', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(14, 'user_show', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(15, 'user_delete', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(16, 'user_access', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(17, 'service_create', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(18, 'service_edit', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(19, 'service_show', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(20, 'service_delete', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(21, 'service_access', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(22, 'employee_create', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(23, 'employee_edit', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(24, 'employee_show', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(25, 'employee_delete', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(26, 'employee_access', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(27, 'client_create', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(28, 'client_edit', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(29, 'client_show', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(30, 'client_delete', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(31, 'client_access', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(32, 'appointment_create', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(33, 'appointment_edit', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(34, 'appointment_show', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(35, 'appointment_delete', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL),
(36, 'appointment_access', '2019-09-19 06:44:15', '2019-09-19 06:44:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '2019-09-19 06:38:28', '2019-09-19 06:38:28', NULL),
(2, 'User', '2019-09-19 06:38:28', '2019-09-19 06:38:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dolorum', '13.00', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(2, 'voluptatum', '19.00', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(3, 'explicabo', '15.00', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(4, 'ut', '80.00', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(5, 'quia', '42.00', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(6, 'itaque', '11.00', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(7, 'quasi', '19.00', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(8, 'aut', '32.00', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(9, 'earum', '77.00', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL),
(10, 'molestias', '88.00', '2025-04-03 03:27:05', '2025-04-03 03:27:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$Y.jEitizf.DW3V7gxCnMr.SdWN2i1w4gobo28vTLGaFajqcjUl8Oy', NULL, '2019-09-19 06:38:28', '2019-09-19 06:38:28', NULL),
(2, 'Raja Babu', 'rajababu@gmail.com', NULL, '$2y$10$uLsg/xdYOJoBgXDRVcblMOO1JsHrlZJ9rWgu6c8f3amZOrqUS0I3m', NULL, '2025-04-03 03:50:26', '2025-04-03 03:50:26', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_fk_360714` (`client_id`),
  ADD KEY `employee_fk_360715` (`employee_id`);

--
-- Indexes for table `appointment_service`
--
ALTER TABLE `appointment_service`
  ADD KEY `appointment_id_fk_360720` (`appointment_id`),
  ADD KEY `service_id_fk_360720` (`service_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_service`
--
ALTER TABLE `employee_service`
  ADD KEY `employee_id_fk_360622` (`employee_id`),
  ADD KEY `service_id_fk_360622` (`service_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_360589` (`role_id`),
  ADD KEY `permission_id_fk_360589` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_360598` (`user_id`),
  ADD KEY `role_id_fk_360598` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `client_fk_360714` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `employee_fk_360715` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `appointment_service`
--
ALTER TABLE `appointment_service`
  ADD CONSTRAINT `appointment_id_fk_360720` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_id_fk_360720` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_service`
--
ALTER TABLE `employee_service`
  ADD CONSTRAINT `employee_id_fk_360622` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_id_fk_360622` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_360589` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_360589` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_360598` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_360598` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
