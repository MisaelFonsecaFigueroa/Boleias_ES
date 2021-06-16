-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 13-Jun-2021 às 22:02
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `m1_boleias`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `boleias`
--

CREATE TABLE `boleias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `origem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destino` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paragens` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lugares` int(11) NOT NULL,
  `idiomas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preco` double(8,2) DEFAULT NULL,
  `carro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `boleias`
--

INSERT INTO `boleias` (`id`, `created_at`, `updated_at`, `origem`, `destino`, `paragens`, `lugares`, `idiomas`, `preco`, `carro`, `user_id`, `date`, `deleted_at`) VALUES
(1, '2021-06-11 17:42:48', '2021-06-11 18:29:35', 'sdafs', 'fgasdfga', 'sdasfasf', 2, 'sfafs', 243.00, 'sfafs', 1, '2021-06-17', '2021-06-11 18:29:35'),
(2, '2021-06-11 17:44:45', '2021-06-11 18:29:32', 'sfagdg', 'sdfafgg', 'sfasff', 23, 'sfasfgag', 35.00, 'sfafgasfg', 1, '2021-06-25', '2021-06-11 18:29:32'),
(3, '2021-06-11 18:31:14', '2021-06-11 18:31:14', 'sdafgagga', 'sfagsdga', 'sfasgag', 2, 'ddgdhg', 35.00, 'sfffg', 1, '2021-06-17', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_11_30_103307_create_sessions_table', 1),
(7, '2020_12_01_055549_create_roles_table', 1),
(8, '2020_12_01_055557_create_permissions_table', 1),
(9, '2020_12_01_075730_create_permission_role_pivot_table', 1),
(10, '2020_12_01_075804_create_role_user_pivot_table', 1),
(11, '2021_06_09_192951_add_phone_to_users_table', 1),
(12, '2021_06_10_170904_create_boleias_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_access', NULL, NULL, NULL),
(2, 'task_access', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `role_user`
--

CREATE TABLE `role_user` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
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
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(1, 1),
(2, 2),
(2, 53),
(2, 54);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('nyRZCqtdIaK1e895owGOsXKmzPJTuqetAKS4Us3p', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiTGU0eldlVWxDVFlOR2pjSGFtOWFmaFVpb3dxQmxmSkRLNXc3c09aUyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDE4MGh5MmdLMjFRNHpSSFYwb0tXVWVwTjN2a1EycXp4bk1JM0REeW1wV3F2b21FaGxIOGIuIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQxODBoeTJnSzIxUTR6UkhWMG9LV1VlcE4zdmtRMnF6eG5NSTNERHltcFdxdm9tRWhsSDhiLiI7fQ==', 1623441085),
('UYyK0uQ4lsppy3hGFd9355LYzpvs5wBNiGOkndyR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:89.0) Gecko/20100101 Firefox/89.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicmRvYUo1OEYyd1dENXNZVG5LdVVmbGxtWjVZR0hJWGNZaDhlaVRuOCI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1623438036);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '932293394', NULL, '$2y$10$180hy2gK21Q4zRHV0oKWUepN3vkQ2qzxnMI3DDympWqvomEhlH8b.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'User', 'user@user.com', '932568895', NULL, '$2y$10$2FsyMtLAlVgFWz4uSvcxHublDAlOeZJ8KBP579Xt78JnrtVWNEPsW', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Darrin Kihn', 'carolina.mitchell@example.org', '933265950', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'v8gR6xLxFX', NULL, NULL, '2021-06-11 13:06:11', '2021-06-11 13:06:11'),
(4, 'Mr. Ryley Hansen MD', 'jon45@example.org', '937107521', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'HxcQmPE44h', NULL, NULL, '2021-06-11 13:06:11', '2021-06-11 13:06:11'),
(5, 'Adolphus Anderson', 'savion.kozey@example.org', '933882439', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'zjV16WdwWC', NULL, NULL, '2021-06-11 13:06:11', '2021-06-11 13:06:11'),
(6, 'Ms. Delphia Block', 'kiel.gaylord@example.org', '930941797', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'Ug0gSCCwCP', NULL, NULL, '2021-06-11 13:06:12', '2021-06-11 13:06:12'),
(7, 'Bret Bashirian', 'zfahey@example.net', '932372325', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '29XAbVu1A1', NULL, NULL, '2021-06-11 13:06:12', '2021-06-11 13:06:12'),
(8, 'Libbie Nicolas', 'keith.ondricka@example.com', '933048145', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'AFIwS4BG0c', NULL, NULL, '2021-06-11 13:06:12', '2021-06-11 13:06:12'),
(9, 'Prof. Kathleen King', 'lueilwitz.greg@example.net', '935054512', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'AECpe2hCYu', NULL, NULL, '2021-06-11 13:06:12', '2021-06-11 13:06:12'),
(10, 'Carlotta Moen', 'xledner@example.org', '938994938', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ihJlRj3nn2', NULL, NULL, '2021-06-11 13:06:12', '2021-06-11 13:06:12'),
(11, 'Dr. Tyrel Huel Jr.', 'odeckow@example.org', '938182597', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '4selUA2fWp', NULL, NULL, '2021-06-11 13:06:12', '2021-06-11 13:06:12'),
(12, 'Ms. Dolly Johnson Jr.', 'fahey.payton@example.com', '932005187', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'PFX782j6ot', NULL, NULL, '2021-06-11 13:06:13', '2021-06-11 13:06:13'),
(13, 'Gregory Fritsch DVM', 'randi.lakin@example.net', '937365893', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '231W8OgJfy', NULL, NULL, '2021-06-11 13:06:13', '2021-06-11 13:06:13'),
(14, 'Libbie Heathcote III', 'iblock@example.net', '930053328', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'yqSkQtjidu', NULL, NULL, '2021-06-11 13:06:13', '2021-06-11 13:06:13'),
(15, 'Zena Stoltenberg', 'horacio.konopelski@example.com', '931312473', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '4jHDZYUZSG', NULL, NULL, '2021-06-11 13:06:13', '2021-06-11 13:06:13'),
(16, 'Alanna Erdman', 'romaguera.brenna@example.com', '936764399', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'nYRdOaLKEx', NULL, NULL, '2021-06-11 13:06:13', '2021-06-11 13:06:13'),
(17, 'Santina Ernser', 'chaz96@example.net', '935149086', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'zW3fEFqefD', NULL, NULL, '2021-06-11 13:06:14', '2021-06-11 13:06:14'),
(18, 'Precious Daugherty', 'freida15@example.org', '936613681', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'EfqP9fLLIa', NULL, NULL, '2021-06-11 13:06:14', '2021-06-11 13:06:14'),
(19, 'Alva Hettinger', 'greenholt.adah@example.org', '937558411', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'dQEr3JDeWY', NULL, NULL, '2021-06-11 13:06:14', '2021-06-11 13:06:14'),
(20, 'Dr. Kirstin Reichert DDS', 'candida.quitzon@example.org', '937509350', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ozRSujOngJ', NULL, NULL, '2021-06-11 13:06:14', '2021-06-11 13:06:14'),
(21, 'Lincoln Daugherty', 'ohara.asia@example.org', '938680053', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '41vhdKNse5', NULL, NULL, '2021-06-11 13:06:14', '2021-06-11 13:06:14'),
(22, 'Clifford Homenick', 'iturner@example.net', '933531658', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'QSNvg9X5Ef', NULL, NULL, '2021-06-11 13:06:14', '2021-06-11 13:06:14'),
(23, 'Ferne Rath', 'epurdy@example.com', '936740711', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '4ZLQ4wazYu', NULL, NULL, '2021-06-11 13:06:15', '2021-06-11 13:06:15'),
(24, 'Branson Wilderman', 'lind.jermaine@example.com', '937177610', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'niIClsFZPT', NULL, NULL, '2021-06-11 13:06:15', '2021-06-11 13:06:15'),
(25, 'Florian Lakin I', 'eddie.effertz@example.com', '938844552', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'UdoLqzFNol', NULL, NULL, '2021-06-11 13:06:15', '2021-06-11 13:06:15'),
(26, 'Allen Stracke', 'hallie.gislason@example.com', '931643127', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'q33rnh8UNY', NULL, NULL, '2021-06-11 13:06:15', '2021-06-11 13:06:15'),
(27, 'Prof. Conor Hayes', 'hadley12@example.com', '937450282', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'lxtppNd1vx', NULL, NULL, '2021-06-11 13:06:15', '2021-06-11 13:06:15'),
(28, 'Prof. Benton Morar', 'virgie.yundt@example.com', '938019522', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '26c0FoTMqP', NULL, NULL, '2021-06-11 13:06:15', '2021-06-11 13:06:15'),
(29, 'Dr. Eulah Dibbert', 'nmurphy@example.org', '936083059', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'ejWj1vbg3Q', NULL, NULL, '2021-06-11 13:06:16', '2021-06-11 13:06:16'),
(30, 'Mrs. Alessia Schaden', 'dixie18@example.org', '934265441', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'g7MC4DaPQp', NULL, NULL, '2021-06-11 13:06:16', '2021-06-11 13:06:16'),
(31, 'Dr. Anibal Crist', 'pedro55@example.net', '938969751', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'efJl4ksm7k', NULL, NULL, '2021-06-11 13:06:16', '2021-06-11 13:06:16'),
(32, 'Reece Dicki', 'neva.feil@example.com', '938516371', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'In3nQG1joR', NULL, NULL, '2021-06-11 13:06:16', '2021-06-11 13:06:16'),
(33, 'Winston Carter', 'uleffler@example.org', '937915940', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'KG2J8fBeOT', NULL, NULL, '2021-06-11 13:06:16', '2021-06-11 13:06:16'),
(34, 'Blanche Haag', 'name11@example.org', '936656561', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'v7BHdsXqhq', NULL, NULL, '2021-06-11 13:06:16', '2021-06-11 13:06:16'),
(35, 'Keira Turcotte', 'danielle21@example.com', '933709797', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'dCrm3dnotc', NULL, NULL, '2021-06-11 13:06:17', '2021-06-11 13:06:17'),
(36, 'Miss Carrie Aufderhar', 'cartwright.mallory@example.net', '938385105', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '9OGHuEKaGB', NULL, NULL, '2021-06-11 13:06:17', '2021-06-11 13:06:17'),
(37, 'Reina White DDS', 'dgottlieb@example.net', '931358074', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'QpjYH3s5GK', NULL, NULL, '2021-06-11 13:06:17', '2021-06-11 13:06:17'),
(38, 'Ludie Baumbach', 'bkoch@example.net', '932642630', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'R1Ao9TAL2B', NULL, NULL, '2021-06-11 13:06:17', '2021-06-11 13:06:17'),
(39, 'Vernie Greenfelder', 'dschneider@example.org', '937995949', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'c4jmFPQMcX', NULL, NULL, '2021-06-11 13:06:17', '2021-06-11 13:06:17'),
(40, 'Adell Klein', 'jaime.luettgen@example.com', '931541330', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '2Uw2S12054', NULL, NULL, '2021-06-11 13:06:17', '2021-06-11 13:06:17'),
(41, 'Camilla Buckridge', 'monroe77@example.com', '932446058', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'K2p2EIqSzz', NULL, NULL, '2021-06-11 13:06:18', '2021-06-11 13:06:18'),
(42, 'Jayda Lindgren II', 'reba28@example.com', '936881430', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'YKHuhQ4erK', NULL, NULL, '2021-06-11 13:06:18', '2021-06-11 13:06:18'),
(43, 'Dr. Isidro Mertz Sr.', 'ryan.jett@example.com', '936850123', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'jBQ2cm3QPT', NULL, NULL, '2021-06-11 13:06:18', '2021-06-11 13:06:18'),
(44, 'Ibrahim Grady', 'qhowe@example.com', '933369314', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '8c0bp0c8zq', NULL, NULL, '2021-06-11 13:06:18', '2021-06-11 13:06:18'),
(45, 'Eldora Jacobs Sr.', 'stroman.darrel@example.org', '938430232', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'zQhiuv7wlA', NULL, NULL, '2021-06-11 13:06:18', '2021-06-11 13:06:18'),
(46, 'Bryana Kuphal', 'hosinski@example.com', '938763299', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'j2tdKxOWV3', NULL, NULL, '2021-06-11 13:06:19', '2021-06-11 13:06:19'),
(47, 'Dr. Rogelio Russel', 'cflatley@example.com', '937320481', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '0Q6wivH92N', NULL, NULL, '2021-06-11 13:06:19', '2021-06-11 13:06:19'),
(48, 'Armando Barton', 'barton.delpha@example.com', '931165420', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'JwtZp3UvyZ', NULL, NULL, '2021-06-11 13:06:19', '2021-06-11 13:06:19'),
(49, 'Catharine Ernser', 'kelvin27@example.net', '936762429', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'GRbiitKpGz', NULL, NULL, '2021-06-11 13:06:19', '2021-06-11 13:06:19'),
(50, 'Mr. Curt Gutkowski IV', 'yasmeen85@example.com', '932054285', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'EtKsMobDRy', NULL, NULL, '2021-06-11 13:06:20', '2021-06-11 13:06:20'),
(51, 'Mr. Jovanny Conroy', 'lowell.beatty@example.org', '932089524', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, 'xpVagPkBTJ', NULL, NULL, '2021-06-11 13:06:20', '2021-06-11 13:06:20'),
(52, 'Melvin Ratke', 'julio43@example.com', '932542098', '2021-06-11 13:06:11', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, '5DN507JNil', NULL, NULL, '2021-06-11 13:06:20', '2021-06-11 13:06:20'),
(53, 'teste', 'teste@gmail.com', '953397545', '2021-06-11 17:28:06', '12345678', NULL, NULL, NULL, NULL, NULL, '2021-06-11 17:28:06', '2021-06-11 17:28:06'),
(54, 'Teste3', 'teste2@gmail.com', '963852745', '2021-06-11 17:29:12', '12345678', NULL, NULL, NULL, NULL, NULL, '2021-06-11 17:29:12', '2021-06-11 18:11:28');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `boleias`
--
ALTER TABLE `boleias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `permission_role_role_id_foreign` (`role_id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Índices para tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `boleias`
--
ALTER TABLE `boleias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
