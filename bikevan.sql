-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 28, 2024 at 08:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rent`
--

-- --------------------------------------------------------

--
-- Table structure for table `additionalHistory`
--

CREATE TABLE `additionalHistory` (
  `id` int(10) UNSIGNED NOT NULL,
  `vId` varchar(255) DEFAULT NULL,
  `vname` varchar(500) NOT NULL DEFAULT ' ',
  `totalLoss` varchar(555) NOT NULL DEFAULT ' ',
  `totalLossOwners` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `structuredDamage` varchar(500) NOT NULL DEFAULT ' ',
  `structuredDamageOwners` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `airBagDeployment` varchar(500) NOT NULL DEFAULT ' ',
  `airBagDeploymentOwners` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ',
  `odoMeterCheck` varchar(500) NOT NULL DEFAULT ' ',
  `odoMeterCheckOwners` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ',
  `accidentDamage` varchar(500) NOT NULL DEFAULT '',
  `accidentDamageOwners` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ',
  `manufacturerRecall` varchar(500) NOT NULL DEFAULT ' ',
  `manufacturerRecallOwners` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ',
  `basicWarranty` varchar(500) NOT NULL DEFAULT ' ',
  `basicWarrantyOwners` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `additionalHistory`
--

INSERT INTO `additionalHistory` (`id`, `vId`, `vname`, `totalLoss`, `totalLossOwners`, `structuredDamage`, `structuredDamageOwners`, `airBagDeployment`, `airBagDeploymentOwners`, `odoMeterCheck`, `odoMeterCheckOwners`, `accidentDamage`, `accidentDamageOwners`, `manufacturerRecall`, `manufacturerRecallOwners`, `basicWarranty`, `basicWarrantyOwners`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a786', ' ', 'No total loss reported to CARFAX.', '[\"No issues reported\",\"No issues reported\",\"No issues reported\",\"No issues reported\"]', 'No structural damage reported to CARFAX.', '[\"No issues reported\",\"No issues reported\",\"No issues reported\",\"No issues reported\"]', 'No airbag deployment reported to CARFAX.', '[\"No issues reported\",\"No issues reported\",\"No issues reported\",\"No issues reported\"]', 'No indication of an odometer rollback.', '[\"No issues reported\",\"No issues reported\",\"No issues reported\",\"No issues reported\"]', 'No accidents or damage reported to CARFAX.', '[\"No issues reported\",\"No issues reported\",\"No issues reported\",\"No issues reported\"]', 'At least 1 manufacturer recall requires repair.', '[\"No issues reported\",\"No issues reported\",\"No issues reported\",\"No issues reported\"]', 'Original warranty estimated to have expired.', '[\"Warranty Expired.\",\"Warranty Expired.\",\"Warranty Expired.\",\"Warranty Expired.\"]', '2024-11-27 13:22:45', '2024-11-27 13:22:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 2, 17, 'Dashboard', 'icon-chart-bar', '/', NULL, NULL, '2024-11-27 12:51:34'),
(2, 0, 11, 'Admin', 'icon-water', NULL, NULL, NULL, '2024-11-27 12:51:34'),
(3, 2, 12, 'Admin Users', 'icon-users', 'auth/users', NULL, NULL, '2024-11-27 12:51:34'),
(4, 2, 13, 'Roles', 'icon-user', 'auth/roles', NULL, NULL, '2024-11-27 12:51:34'),
(5, 2, 14, 'Permission', 'icon-ban', 'auth/permissions', NULL, NULL, '2024-11-27 12:51:34'),
(6, 2, 15, 'Menu', 'icon-bars', 'auth/menu', NULL, NULL, '2024-11-27 12:51:34'),
(7, 2, 16, 'Operation log', 'icon-history', 'auth/logs', NULL, NULL, '2024-11-27 12:51:34'),
(8, 2, 18, 'Helpers', 'icon-cogs', '', NULL, '2024-09-30 05:46:43', '2024-11-27 12:51:34'),
(9, 8, 20, 'Scaffold', 'icon-keyboard', 'helpers/scaffold', NULL, '2024-09-30 05:46:43', '2024-11-27 12:51:34'),
(10, 8, 21, 'Database terminal', 'icon-database', 'helpers/terminal/database', NULL, '2024-09-30 05:46:43', '2024-11-27 12:51:35'),
(11, 8, 22, 'Laravel artisan', 'icon-terminal', 'helpers/terminal/artisan', NULL, '2024-09-30 05:46:43', '2024-11-27 12:51:35'),
(18, 8, 19, 'routes', 'icon-list', 'http://127.0.0.1:8000/admin/helpers/routes', NULL, '2024-09-30 06:31:39', '2024-11-27 12:51:34'),
(23, 0, 25, 'Settings', 'icon-sliders-h', 'settings', NULL, '2024-09-30 11:24:55', '2024-11-27 14:28:15'),
(55, 0, 23, 'Contact Us', 'icon-user-clock', 'contactus', NULL, '2024-11-26 04:50:04', '2024-11-27 14:28:15'),
(56, 0, 24, 'Downloaded Files', 'icon-file-download', 'downloaded-docs', NULL, '2024-11-26 08:44:00', '2024-11-27 14:28:15'),
(57, 0, 1, 'Vehicles Recordes', 'icon-car', NULL, NULL, '2024-11-26 08:49:10', '2024-11-27 12:51:34'),
(58, 0, 10, 'Uploaded Media', 'icon-file-image', 'media', NULL, '2024-11-26 09:03:02', '2024-11-27 12:51:34'),
(59, 57, 2, 'Vehicle History Reports', 'icon-car-side', 'vehicle-history-reports', NULL, '2024-11-26 09:08:13', '2024-11-27 12:51:34'),
(60, 57, 3, 'Additional Histories', 'icon-ad', 'additional-histories', NULL, '2024-11-26 22:45:34', '2024-11-27 12:51:34'),
(61, 57, 4, 'Title Histories', 'icon-pen-nib', 'title-histories', NULL, '2024-11-27 03:47:18', '2024-11-27 12:51:34'),
(62, 57, 5, 'Ownership Histories', 'icon-crown', 'ownership-histories', NULL, '2024-11-27 06:40:12', '2024-11-27 12:51:34'),
(63, 57, 6, 'Owners lists', 'icon-user-clock', 'owners-lists', NULL, '2024-11-27 10:13:36', '2024-11-27 12:51:34'),
(64, 66, 8, 'Glossaries', 'icon-file-import', 'glossaries', NULL, '2024-11-27 11:50:16', '2024-11-27 12:51:34'),
(65, 66, 9, 'PDF settings', 'icon-file-pdf', 'report-settings', NULL, '2024-11-27 12:06:55', '2024-11-27 12:51:34'),
(66, 0, 7, 'Report Setting', 'icon-file-signature', NULL, NULL, '2024-11-27 12:50:09', '2024-11-27 12:51:34'),
(67, 0, 26, 'Pages Design', 'icon-code', 'pagesDesigns', NULL, '2024-11-27 14:21:05', '2024-11-27 14:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(4635, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2024-10-24 12:39:46', '2024-10-24 12:39:46'),
(4636, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/images\",\"fn\":\"selectFile\"}', '2024-10-24 12:39:48', '2024-10-24 12:39:48'),
(4637, 2, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/images\",\"fn\":\"selectFile\"}', '2024-10-24 12:41:03', '2024-10-24 12:41:03'),
(4638, 1, 'admin/seo', 'GET', '127.0.0.1', '[]', '2024-10-24 12:47:16', '2024-10-24 12:47:16'),
(4639, 1, 'admin/seo/1/edit', 'GET', '127.0.0.1', '[]', '2024-10-24 12:47:20', '2024-10-24 12:47:20'),
(4640, 1, 'admin/seo/1', 'PUT', '127.0.0.1', '{\"keywords\":\"Rent your stuff,\\r\\nMake money renting,\\r\\nEarn extra cash renting items,\\r\\nPeer-to-peer rentals,\\r\\nLocal item rentals,\",\"description\":\"Why buy something you\'ll only use once? The Local Rent lets you earn extra cash by renting out your stuff and save big by borrowing from neighbors. Perfect for those who want to live smart, experience more, and keep their wallets happy.\\r\\n\\r\\nThe Local Rent: Make & Save Money by Renting Out Your Stuff Locally\\r\\nhttps:\\/\\/www.thelocalrent.com\\r\\nWhy buy something you\'ll only use once? The Local Rent lets you earn extra cash by renting out your stuff and save big by borrowing from neighbors. Perfect for those who want to live smart, experience more, and keep their wallets happy.\",\"_token\":\"YGPZCtnG8ozo1yE1RLCsd8qHQdkZCz6f9nir3igS\",\"_method\":\"PUT\"}', '2024-10-24 12:49:15', '2024-10-24 12:49:15'),
(4641, 1, 'admin/seo', 'GET', '127.0.0.1', '[]', '2024-10-24 12:49:15', '2024-10-24 12:49:15'),
(4642, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-10-24 13:06:21', '2024-10-24 13:06:21'),
(4643, 1, 'admin/seo', 'GET', '127.0.0.1', '[]', '2024-10-24 13:06:25', '2024-10-24 13:06:25'),
(4644, 1, 'admin/seo/1/edit', 'GET', '127.0.0.1', '[]', '2024-10-24 13:06:27', '2024-10-24 13:06:27'),
(4645, 1, 'admin/seo', 'GET', '127.0.0.1', '[]', '2024-10-24 13:06:54', '2024-10-24 13:06:54'),
(4646, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-16 00:24:23', '2024-11-16 00:24:23'),
(4647, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-16 00:24:58', '2024-11-16 00:24:58'),
(4648, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-16 00:25:02', '2024-11-16 00:25:02'),
(4649, 1, 'admin/settings/1', 'PUT', '127.0.0.1', '{\"websiteName\":\"bikevan\",\"email\":\"maarkhoorsn@gmail.com\",\"phone\":\"03097676179\",\"showWhatsapp\":\"1\",\"showWhatsapp_cb\":\"on\",\"whatsappNumber\":\"+923097676179\",\"showFacebook\":\"1\",\"showFacebook_cb\":\"on\",\"facebookLink\":\"https:\\/\\/facebook.com\",\"showInstagram\":\"1\",\"showInstagram_cb\":\"on\",\"instagramLink\":\"https:instagram.com\",\"showPrivacyPolicy\":\"1\",\"showPrivacyPolicy_cb\":\"on\",\"showShippingPolicy\":\"1\",\"showShippingPolicy_cb\":\"on\",\"showReturnRefundPolicy\":\"1\",\"showReturnRefundPolicy_cb\":\"on\",\"showTermsCondition\":\"1\",\"showTermsCondition_cb\":\"on\",\"_token\":\"9eLe6uwn5xDKIyGJBC2aQf8P1w34B5wfd09viqVN\",\"_method\":\"PUT\"}', '2024-11-16 00:25:52', '2024-11-16 00:25:52'),
(4650, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-16 00:25:52', '2024-11-16 00:25:52'),
(4651, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-16 03:43:16', '2024-11-16 03:43:16'),
(4652, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 04:08:46', '2024-11-26 04:08:46'),
(4653, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-26 04:09:25', '2024-11-26 04:09:25'),
(4654, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-26 04:09:25', '2024-11-26 04:09:25'),
(4655, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-26 04:13:01', '2024-11-26 04:13:01'),
(4656, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-26 04:13:16', '2024-11-26 04:13:16'),
(4657, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2024-11-26 04:13:17', '2024-11-26 04:13:17'),
(4658, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-26 04:13:27', '2024-11-26 04:13:27'),
(4659, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-26 04:13:35', '2024-11-26 04:13:35'),
(4660, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2024-11-26 04:15:25', '2024-11-26 04:15:25'),
(4661, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 04:16:30', '2024-11-26 04:16:30'),
(4662, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:16:34', '2024-11-26 04:16:34'),
(4663, 1, 'admin/auth/menu/49', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:16:39', '2024-11-26 04:16:39'),
(4664, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:16:39', '2024-11-26 04:16:39'),
(4665, 1, 'admin/auth/menu/46', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:16:44', '2024-11-26 04:16:44'),
(4666, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:16:45', '2024-11-26 04:16:45'),
(4667, 1, 'admin/auth/menu/44', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:16:48', '2024-11-26 04:16:48'),
(4668, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:16:49', '2024-11-26 04:16:49'),
(4669, 1, 'admin/auth/menu/43', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:16:53', '2024-11-26 04:16:53'),
(4670, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:16:53', '2024-11-26 04:16:53'),
(4671, 1, 'admin/auth/menu/45', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:16:57', '2024-11-26 04:16:57'),
(4672, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:16:58', '2024-11-26 04:16:58'),
(4673, 1, 'admin/auth/menu/39', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:17:02', '2024-11-26 04:17:02'),
(4674, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:17:03', '2024-11-26 04:17:03'),
(4675, 1, 'admin/auth/menu/17', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:17:06', '2024-11-26 04:17:06'),
(4676, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:17:07', '2024-11-26 04:17:07'),
(4677, 1, 'admin/auth/menu/38', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:20:40', '2024-11-26 04:20:40'),
(4678, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:20:40', '2024-11-26 04:20:40'),
(4679, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:20:50', '2024-11-26 04:20:50'),
(4680, 1, 'admin/auth/menu/48', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:20:53', '2024-11-26 04:20:53'),
(4681, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:20:53', '2024-11-26 04:20:53'),
(4682, 1, 'admin/auth/menu/16', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:21:17', '2024-11-26 04:21:17'),
(4683, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:21:17', '2024-11-26 04:21:17'),
(4684, 1, 'admin/auth/menu/52', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:21:22', '2024-11-26 04:21:22'),
(4685, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:21:22', '2024-11-26 04:21:22'),
(4686, 1, 'admin/auth/menu/50', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:21:25', '2024-11-26 04:21:25'),
(4687, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:21:25', '2024-11-26 04:21:25'),
(4688, 1, 'admin/auth/menu/36', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:21:40', '2024-11-26 04:21:40'),
(4689, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:21:41', '2024-11-26 04:21:41'),
(4690, 1, 'admin/auth/menu/35', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:21:46', '2024-11-26 04:21:46'),
(4691, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:21:46', '2024-11-26 04:21:46'),
(4692, 1, 'admin/auth/menu/21', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:21:49', '2024-11-26 04:21:49'),
(4693, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:21:49', '2024-11-26 04:21:49'),
(4694, 1, 'admin/auth/menu/34', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:21:53', '2024-11-26 04:21:53'),
(4695, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:21:53', '2024-11-26 04:21:53'),
(4696, 1, 'admin/auth/menu/51', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:22:07', '2024-11-26 04:22:07'),
(4697, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:22:07', '2024-11-26 04:22:07'),
(4698, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 04:22:27', '2024-11-26 04:22:27'),
(4699, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 04:22:31', '2024-11-26 04:22:31'),
(4700, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-26 04:22:33', '2024-11-26 04:22:33'),
(4701, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 04:22:44', '2024-11-26 04:22:44'),
(4702, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:22:47', '2024-11-26 04:22:47'),
(4703, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-11-26 04:22:48', '2024-11-26 04:22:48'),
(4704, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:22:50', '2024-11-26 04:22:50'),
(4705, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-11-26 04:22:53', '2024-11-26 04:22:53'),
(4706, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-11-26 04:22:53', '2024-11-26 04:22:53'),
(4707, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-11-26 04:22:54', '2024-11-26 04:22:54'),
(4708, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-11-26 04:22:57', '2024-11-26 04:22:57'),
(4709, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-26 04:23:05', '2024-11-26 04:23:05'),
(4710, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-11-26 04:23:06', '2024-11-26 04:23:06'),
(4711, 1, 'admin/helpers/terminal/artisan', 'GET', '127.0.0.1', '[]', '2024-11-26 04:23:08', '2024-11-26 04:23:08'),
(4712, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-11-26 04:23:10', '2024-11-26 04:23:10'),
(4713, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-11-26 04:27:22', '2024-11-26 04:27:22'),
(4714, 1, 'admin/helpers/routes', 'GET', '127.0.0.1', '[]', '2024-11-26 04:27:27', '2024-11-26 04:27:27'),
(4715, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 04:27:39', '2024-11-26 04:27:39'),
(4716, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-26 04:28:23', '2024-11-26 04:28:23'),
(4717, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:32:01', '2024-11-26 04:32:01'),
(4718, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Contact Us\",\"icon\":\"icon-address-card\",\"uri\":\"contactUs\",\"roles\":[null],\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:32:45', '2024-11-26 04:32:45'),
(4719, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:32:45', '2024-11-26 04:32:45'),
(4720, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 04:32:49', '2024-11-26 04:32:49'),
(4721, 1, 'admin/contactUs', 'GET', '127.0.0.1', '[]', '2024-11-26 04:32:51', '2024-11-26 04:32:51'),
(4722, 1, 'admin/contactUs', 'GET', '127.0.0.1', '[]', '2024-11-26 04:33:17', '2024-11-26 04:33:17'),
(4723, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-11-26 04:33:49', '2024-11-26 04:33:49'),
(4724, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:34:17', '2024-11-26 04:34:17'),
(4725, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-11-26 04:35:15', '2024-11-26 04:35:15'),
(4726, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2024-11-26 04:35:17', '2024-11-26 04:35:17'),
(4727, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2024-11-26 04:35:19', '2024-11-26 04:35:19'),
(4728, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:35:21', '2024-11-26 04:35:21'),
(4729, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 04:35:24', '2024-11-26 04:35:24'),
(4730, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 04:35:30', '2024-11-26 04:35:30'),
(4731, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 04:35:32', '2024-11-26 04:35:32'),
(4732, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-26 04:35:37', '2024-11-26 04:35:37'),
(4733, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"contactUs\",\"model_name\":\"App\\\\Models\\\\contactUs\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\contactUsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"message\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:45:33', '2024-11-26 04:45:33'),
(4734, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-26 04:47:27', '2024-11-26 04:47:27'),
(4735, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"contactUs\",\"model_name\":\"App\\\\Models\\\\contactUs\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\contactUsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":\"username\",\"comment\":\"username\"},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":\"user@gmail.com\",\"comment\":\"useremail\"},{\"name\":\"message\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":\"Empty\",\"comment\":\"usermsg\"}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:49:45', '2024-11-26 04:49:45'),
(4736, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-26 04:49:45', '2024-11-26 04:49:45'),
(4737, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"contactUs\",\"model_name\":\"App\\\\Models\\\\contactUs\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\contactUsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"name\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":\"username\",\"comment\":\"username\"},{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":\"user@gmail.com\",\"comment\":\"useremail\"},{\"name\":\"message\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":\"Empty\",\"comment\":\"usermsg\"}],\"timestamps\":\"on\",\"primary_key\":\"id\",\"_token\":\"Rcvx8xvtHDcBGio9cZHBsr60H5QanZWtuyr7nWYK\"}', '2024-11-26 04:50:04', '2024-11-26 04:50:04'),
(4738, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-26 04:50:04', '2024-11-26 04:50:04'),
(4739, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 08:15:34', '2024-11-26 08:15:34'),
(4740, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-26 08:15:46', '2024-11-26 08:15:46'),
(4741, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 08:16:00', '2024-11-26 08:16:00'),
(4742, 1, 'admin/auth/menu/55/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 08:16:02', '2024-11-26 08:16:02'),
(4743, 1, 'admin/auth/menu/55', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Contact-uses\",\"icon\":\"icon-file\",\"uri\":\"contactus\",\"roles\":[null],\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\",\"_method\":\"PUT\"}', '2024-11-26 08:16:07', '2024-11-26 08:16:07'),
(4744, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 08:16:07', '2024-11-26 08:16:07'),
(4745, 1, 'admin/auth/menu/55/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 08:16:10', '2024-11-26 08:16:10'),
(4746, 1, 'admin/auth/menu/55', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Contact-uses\",\"icon\":\"icon-user-clock\",\"uri\":\"contactus\",\"roles\":[null],\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\",\"_method\":\"PUT\"}', '2024-11-26 08:16:25', '2024-11-26 08:16:25'),
(4747, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 08:16:25', '2024-11-26 08:16:25'),
(4748, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 08:16:57', '2024-11-26 08:16:57'),
(4749, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:17:23', '2024-11-26 08:17:23'),
(4750, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:17:38', '2024-11-26 08:17:38'),
(4751, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 08:17:59', '2024-11-26 08:17:59'),
(4752, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:18:03', '2024-11-26 08:18:03'),
(4753, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 08:18:07', '2024-11-26 08:18:07'),
(4754, 1, 'admin/auth/menu/54', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 08:18:10', '2024-11-26 08:18:10'),
(4755, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 08:18:10', '2024-11-26 08:18:10'),
(4756, 1, 'admin/auth/menu/55/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 08:18:13', '2024-11-26 08:18:13'),
(4757, 1, 'admin/auth/menu/55', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Contact Us\",\"icon\":\"icon-user-clock\",\"uri\":\"contactus\",\"roles\":[null],\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\",\"_method\":\"PUT\"}', '2024-11-26 08:18:18', '2024-11-26 08:18:18'),
(4758, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 08:18:19', '2024-11-26 08:18:19'),
(4759, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 08:18:24', '2024-11-26 08:18:24'),
(4760, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:18:26', '2024-11-26 08:18:26'),
(4761, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-26 08:19:09', '2024-11-26 08:19:09'),
(4762, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:19:10', '2024-11-26 08:19:10'),
(4763, 1, 'admin/contactus', 'GET', '127.0.0.1', '{\"_export_\":\"all\"}', '2024-11-26 08:19:13', '2024-11-26 08:19:13'),
(4764, 1, 'admin/contactus/create', 'GET', '127.0.0.1', '[]', '2024-11-26 08:19:46', '2024-11-26 08:19:46'),
(4765, 1, 'admin/contactus', 'POST', '127.0.0.1', '{\"name\":\"john\",\"email\":\"john@gmail.com\",\"message\":\"need this id record\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 08:20:07', '2024-11-26 08:20:07'),
(4766, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:20:07', '2024-11-26 08:20:07'),
(4767, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:20:35', '2024-11-26 08:20:35'),
(4768, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:20:47', '2024-11-26 08:20:47'),
(4769, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:21:10', '2024-11-26 08:21:10'),
(4770, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:21:10', '2024-11-26 08:21:10'),
(4771, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:22:03', '2024-11-26 08:22:03'),
(4772, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-26 08:22:37', '2024-11-26 08:22:37'),
(4773, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-26 08:23:35', '2024-11-26 08:23:35'),
(4774, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 08:23:38', '2024-11-26 08:23:38'),
(4775, 1, 'admin/settings/1', 'PUT', '127.0.0.1', '{\"websiteName\":\"bikevan\",\"websiteLogo_file_del_\":\"images\\/logo.png,\",\"webisteMiniLogo_file_del_\":\"images\\/logo_1.png,\",\"email\":\"maarkhoorsn@gmail.com\",\"phone\":\"03097676179\",\"showWhatsapp\":\"1\",\"showWhatsapp_cb\":\"on\",\"whatsappNumber\":\"+923097676179\",\"showFacebook\":\"1\",\"showFacebook_cb\":\"on\",\"facebookLink\":\"https:\\/\\/facebook.com\",\"showInstagram\":\"1\",\"showInstagram_cb\":\"on\",\"instagramLink\":\"https:instagram.com\",\"showPrivacyPolicy\":\"1\",\"showPrivacyPolicy_cb\":\"on\",\"showShippingPolicy\":\"1\",\"showShippingPolicy_cb\":\"on\",\"showReturnRefundPolicy\":\"1\",\"showReturnRefundPolicy_cb\":\"on\",\"showTermsCondition\":\"1\",\"showTermsCondition_cb\":\"on\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\",\"_method\":\"PUT\"}', '2024-11-26 08:24:05', '2024-11-26 08:24:05'),
(4776, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-26 08:24:06', '2024-11-26 08:24:06'),
(4777, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-26 08:24:08', '2024-11-26 08:24:08'),
(4778, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-26 08:25:01', '2024-11-26 08:25:01'),
(4779, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-26 08:32:31', '2024-11-26 08:32:31'),
(4780, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"downloadedDoc\",\"model_name\":\"App\\\\Models\\\\downloadedDoc\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\downloadedDocController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"1\":{\"name\":\"userName\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"email\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"2\":{\"name\":\"phone\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"0\":{\"name\":\"type\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"4\":{\"name\":\"package\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"transactionId\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"12\":{\"name\":\"cardNumber\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"6\":{\"name\":\"vehicleId\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"7\":{\"name\":\"vehicleType\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"8\":{\"name\":\"make\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"9\":{\"name\":\"model\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"10\":{\"name\":\"bodyStyle\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"11\":{\"name\":\"price\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 08:44:00', '2024-11-26 08:44:00'),
(4781, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-26 08:44:00', '2024-11-26 08:44:00'),
(4782, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 08:44:23', '2024-11-26 08:44:23'),
(4783, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-26 08:44:25', '2024-11-26 08:44:25'),
(4784, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-26 08:44:57', '2024-11-26 08:44:57'),
(4785, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-26 08:44:59', '2024-11-26 08:44:59'),
(4786, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 08:45:00', '2024-11-26 08:45:00'),
(4787, 1, 'admin/auth/menu/56/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 08:45:02', '2024-11-26 08:45:02'),
(4788, 1, 'admin/auth/menu/56', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Downloaded Docs\",\"icon\":\"icon-file-download\",\"uri\":\"downloaded-docs\",\"roles\":[null],\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\",\"_method\":\"PUT\"}', '2024-11-26 08:45:16', '2024-11-26 08:45:16'),
(4789, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 08:45:16', '2024-11-26 08:45:16'),
(4790, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 08:45:19', '2024-11-26 08:45:19'),
(4791, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-26 08:45:23', '2024-11-26 08:45:23'),
(4792, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-26 08:45:26', '2024-11-26 08:45:26'),
(4793, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 08:45:27', '2024-11-26 08:45:27'),
(4794, 1, 'admin/auth/menu/56/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 08:45:31', '2024-11-26 08:45:31'),
(4795, 1, 'admin/auth/menu/56', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Downloaded Files\",\"icon\":\"icon-file-download\",\"uri\":\"downloaded-docs\",\"roles\":[null],\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\",\"_method\":\"PUT\"}', '2024-11-26 08:45:42', '2024-11-26 08:45:42'),
(4796, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 08:45:42', '2024-11-26 08:45:42'),
(4797, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 08:45:46', '2024-11-26 08:45:46'),
(4798, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-26 08:45:50', '2024-11-26 08:45:50'),
(4799, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:46:09', '2024-11-26 08:46:09'),
(4800, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:46:29', '2024-11-26 08:46:29'),
(4801, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:46:29', '2024-11-26 08:46:29'),
(4802, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:47:12', '2024-11-26 08:47:12'),
(4803, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:47:12', '2024-11-26 08:47:12'),
(4804, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:47:30', '2024-11-26 08:47:30'),
(4805, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-26 08:47:51', '2024-11-26 08:47:51'),
(4806, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-26 08:47:52', '2024-11-26 08:47:52'),
(4807, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-26 08:47:54', '2024-11-26 08:47:54'),
(4808, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 08:48:04', '2024-11-26 08:48:04'),
(4809, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Vehicles Recordes\",\"icon\":\"icon-car\",\"uri\":null,\"roles\":[null],\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 08:49:10', '2024-11-26 08:49:10'),
(4810, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 08:49:10', '2024-11-26 08:49:10'),
(4811, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-26 08:51:56', '2024-11-26 08:51:56'),
(4812, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-26 09:02:08', '2024-11-26 09:02:08'),
(4813, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2024-11-26 09:02:12', '2024-11-26 09:02:12'),
(4814, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-26 09:02:16', '2024-11-26 09:02:16'),
(4815, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 09:02:19', '2024-11-26 09:02:19'),
(4816, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Uploaded Media\",\"icon\":\"icon-file-image\",\"uri\":\"media\",\"roles\":[null],\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:03:02', '2024-11-26 09:03:02'),
(4817, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 09:03:02', '2024-11-26 09:03:02'),
(4818, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 09:03:05', '2024-11-26 09:03:05'),
(4819, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2024-11-26 09:03:09', '2024-11-26 09:03:09'),
(4820, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"vehicleHistoryReports\",\"model_name\":\"App\\\\Models\\\\vehicleHistoryReports\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\vehicleHistoryReportsController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"vehicleName\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"title\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"desc\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"points\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"footerDesc\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"price\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:08:13', '2024-11-26 09:08:13'),
(4821, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-26 09:08:14', '2024-11-26 09:08:14'),
(4822, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 09:08:55', '2024-11-26 09:08:55'),
(4823, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 09:08:57', '2024-11-26 09:08:57'),
(4824, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 09:18:05', '2024-11-26 09:18:05'),
(4825, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 09:18:07', '2024-11-26 09:18:07'),
(4826, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:18:11', '2024-11-26 09:18:11'),
(4827, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:19:06', '2024-11-26 09:19:06'),
(4828, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:19:06', '2024-11-26 09:19:06'),
(4829, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:19:49', '2024-11-26 09:19:49'),
(4830, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:20:58', '2024-11-26 09:20:58'),
(4831, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"nameabc\",\"title\":\"titlea\",\"desc\":\"desca\",\"points\":{\"new_1\":{\"Points\":\"points a\",\"_remove_\":\"0\"},\"new_2\":{\"Points\":\"asdfgetr\",\"_remove_\":\"0\"}},\"footerDesc\":\"footersazs\",\"price\":\"21345\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:26:48', '2024-11-26 09:26:48'),
(4832, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:26:48', '2024-11-26 09:26:48'),
(4833, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"nameabc\",\"title\":\"titlea\",\"desc\":\"desca\",\"points\":{\"new_1\":{\"Points\":\"points a\",\"_remove_\":\"0\"},\"new_2\":{\"Points\":\"asdfgetr\",\"_remove_\":\"0\"}},\"footerDesc\":\"footersazs\",\"price\":\"21345\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:35:31', '2024-11-26 09:35:31'),
(4834, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:35:32', '2024-11-26 09:35:32'),
(4835, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"nameabc\",\"title\":\"titlea\",\"desc\":\"desca\",\"points\":{\"new_1\":{\"Points\":\"points a\",\"_remove_\":\"0\"},\"new_2\":{\"Points\":\"asdfgetr\",\"_remove_\":\"0\"}},\"footerDesc\":\"footersazs\",\"price\":\"21345\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:36:48', '2024-11-26 09:36:48'),
(4836, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:36:48', '2024-11-26 09:36:48'),
(4837, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"nameabc\",\"title\":\"titlea\",\"desc\":\"desca\",\"points\":{\"new_1\":{\"points\":\"asd\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"ddd\",\"_remove_\":\"0\"}},\"footerDesc\":\"footersazs\",\"price\":\"21345\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:37:00', '2024-11-26 09:37:00'),
(4838, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:37:01', '2024-11-26 09:37:01'),
(4839, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"nameabc\",\"title\":\"titlea\",\"desc\":\"desca\",\"points\":{\"new_1\":{\"points\":\"asd\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"ddd\",\"_remove_\":\"0\"}},\"footerDesc\":\"footersazs\",\"price\":\"21345\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:44:11', '2024-11-26 09:44:11'),
(4840, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:44:12', '2024-11-26 09:44:12'),
(4841, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"nameabc\",\"title\":\"titlea\",\"desc\":\"desca\",\"points\":{\"new_1\":{\"points\":\"asd\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"ddd\",\"_remove_\":\"0\"}},\"footerDesc\":\"footersazs\",\"price\":\"21345\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:45:32', '2024-11-26 09:45:32'),
(4842, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:45:32', '2024-11-26 09:45:32'),
(4843, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"nameabc\",\"title\":\"titlea\",\"desc\":\"desca\",\"points\":{\"new_1\":{\"points\":\"asd\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"ddd\",\"_remove_\":\"0\"}},\"footerDesc\":\"footersazs\",\"price\":\"21345\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:45:33', '2024-11-26 09:45:33'),
(4844, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:45:34', '2024-11-26 09:45:34'),
(4845, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"nameabc\",\"title\":\"titlea\",\"desc\":\"desca\",\"points\":{\"new_1\":{\"points\":\"asd\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"ddd\",\"_remove_\":\"0\"}},\"footerDesc\":\"footersazs\",\"price\":\"21345\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:52:42', '2024-11-26 09:52:42'),
(4846, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:52:43', '2024-11-26 09:52:43'),
(4847, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"nameabc\",\"title\":\"titlea\",\"desc\":\"desca\",\"points\":{\"new_1\":{\"points\":\"asd\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"ddd\",\"_remove_\":\"0\"}},\"footerDesc\":\"footersazs\",\"price\":\"21345\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:53:05', '2024-11-26 09:53:05'),
(4848, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:53:08', '2024-11-26 09:53:08'),
(4849, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 09:53:10', '2024-11-26 09:53:10'),
(4850, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 09:53:38', '2024-11-26 09:53:38'),
(4851, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:53:41', '2024-11-26 09:53:41'),
(4852, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 09:53:43', '2024-11-26 09:53:43'),
(4853, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:53:45', '2024-11-26 09:53:45'),
(4854, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 09:55:37', '2024-11-26 09:55:37'),
(4855, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:55:38', '2024-11-26 09:55:38'),
(4856, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 09:55:40', '2024-11-26 09:55:40'),
(4857, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 09:55:41', '2024-11-26 09:55:41'),
(4858, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:55:42', '2024-11-26 09:55:42'),
(4859, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:55:49', '2024-11-26 09:55:49'),
(4860, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 09:55:56', '2024-11-26 09:55:56'),
(4861, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:55:57', '2024-11-26 09:55:57'),
(4862, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"sad\",\"title\":\"asd\",\"desc\":\"d\",\"points\":{\"new_1\":{\"points\":\"jjjjjj\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"gggg\",\"_remove_\":\"0\"}},\"footerDesc\":\"as\",\"price\":\"as\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:56:14', '2024-11-26 09:56:14'),
(4863, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:56:14', '2024-11-26 09:56:14'),
(4864, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"sad\",\"title\":\"asd\",\"desc\":\"d\",\"points\":{\"new_1\":{\"points\":\"jjjjjj\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"gggg\",\"_remove_\":\"0\"}},\"footerDesc\":\"as\",\"price\":\"as\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:57:25', '2024-11-26 09:57:25'),
(4865, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:57:25', '2024-11-26 09:57:25'),
(4866, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"sad\",\"title\":\"asd\",\"desc\":\"d\",\"points\":{\"new_1\":{\"points\":\"jjjjjj\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"gggg\",\"_remove_\":\"0\"}},\"footerDesc\":\"as\",\"price\":\"as\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:57:27', '2024-11-26 09:57:27'),
(4867, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:57:27', '2024-11-26 09:57:27'),
(4868, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:57:28', '2024-11-26 09:57:28'),
(4869, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"d\",\"title\":\"ads\",\"desc\":\"dsf\",\"points\":{\"new_1\":{\"points\":\"ffff\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"bbbbb\",\"_remove_\":\"0\"}},\"footerDesc\":\"z\",\"price\":\"s\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/vehicle-history-reports\"}', '2024-11-26 09:57:43', '2024-11-26 09:57:43'),
(4870, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:57:44', '2024-11-26 09:57:44'),
(4871, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"d\",\"title\":\"ads\",\"desc\":\"dsf\",\"points\":{\"new_1\":{\"points\":\"ffff\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"bbbbb\",\"_remove_\":\"0\"}},\"footerDesc\":\"z\",\"price\":\"s\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:59:39', '2024-11-26 09:59:39'),
(4872, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:59:40', '2024-11-26 09:59:40'),
(4873, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"d\",\"title\":\"ads\",\"desc\":\"dsf\",\"points\":{\"new_1\":{\"points\":\"ffff\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"bbbbb\",\"_remove_\":\"0\"}},\"footerDesc\":\"z\",\"price\":\"s\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 09:59:41', '2024-11-26 09:59:41'),
(4874, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 09:59:41', '2024-11-26 09:59:41'),
(4875, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"d\",\"title\":\"ads\",\"desc\":\"dsf\",\"points\":{\"new_1\":{\"points\":\"ffff\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"bbbbb\",\"_remove_\":\"0\"}},\"footerDesc\":\"z\",\"price\":\"s\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 10:00:34', '2024-11-26 10:00:34'),
(4876, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:00:34', '2024-11-26 10:00:34'),
(4877, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"d\",\"title\":\"ads\",\"desc\":\"dsf\",\"points\":{\"new_1\":{\"points\":\"ffff\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"bbbbb\",\"_remove_\":\"0\"}},\"footerDesc\":\"z\",\"price\":\"s\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 10:00:51', '2024-11-26 10:00:51'),
(4878, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:00:51', '2024-11-26 10:00:51'),
(4879, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"d\",\"title\":\"ads\",\"desc\":\"dsf\",\"points\":{\"new_1\":{\"points\":\"ffff\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"bbbbb\",\"_remove_\":\"0\"}},\"footerDesc\":\"z\",\"price\":\"s\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 10:03:13', '2024-11-26 10:03:13'),
(4880, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:03:45', '2024-11-26 10:03:45'),
(4881, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:03:47', '2024-11-26 10:03:47'),
(4882, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"sad\",\"title\":\"c\",\"desc\":\"ca\",\"points\":{\"new_1\":{\"points\":\"sasssssss\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"aaaaaa\",\"_remove_\":\"0\"}},\"footerDesc\":\"asdf\",\"price\":\"fs\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 10:04:04', '2024-11-26 10:04:04'),
(4883, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:04:04', '2024-11-26 10:04:04'),
(4884, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"sad\",\"title\":\"c\",\"desc\":\"ca\",\"points\":{\"new_1\":{\"points\":\"sasssssss\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"aaaaaa\",\"_remove_\":\"0\"}},\"footerDesc\":\"asdf\",\"price\":\"fs\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/vehicle-history-reports\"}', '2024-11-26 10:04:21', '2024-11-26 10:04:21'),
(4885, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:04:21', '2024-11-26 10:04:21'),
(4886, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 10:11:59', '2024-11-26 10:11:59'),
(4887, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:12:03', '2024-11-26 10:12:03'),
(4888, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:12:05', '2024-11-26 10:12:05'),
(4889, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:12:06', '2024-11-26 10:12:06'),
(4890, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 10:14:24', '2024-11-26 10:14:24'),
(4891, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:14:26', '2024-11-26 10:14:26'),
(4892, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:02', '2024-11-26 10:15:02'),
(4893, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:12', '2024-11-26 10:15:12'),
(4894, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"sad\",\"title\":\"as\",\"desc\":\"as\",\"points\":{\"new_1\":{\"points\":\"aaa\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"sss\",\"_remove_\":\"0\"}},\"footerDesc\":\"dfg\",\"price\":\"er\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 10:15:25', '2024-11-26 10:15:25'),
(4895, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:25', '2024-11-26 10:15:25'),
(4896, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:42', '2024-11-26 10:15:42'),
(4897, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:42', '2024-11-26 10:15:42'),
(4898, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:42', '2024-11-26 10:15:42'),
(4899, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:43', '2024-11-26 10:15:43'),
(4900, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:43', '2024-11-26 10:15:43'),
(4901, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:44', '2024-11-26 10:15:44'),
(4902, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:44', '2024-11-26 10:15:44'),
(4903, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:44', '2024-11-26 10:15:44'),
(4904, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:45', '2024-11-26 10:15:45'),
(4905, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:45', '2024-11-26 10:15:45'),
(4906, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:46', '2024-11-26 10:15:46'),
(4907, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:46', '2024-11-26 10:15:46'),
(4908, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:47', '2024-11-26 10:15:47'),
(4909, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:47', '2024-11-26 10:15:47'),
(4910, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:48', '2024-11-26 10:15:48'),
(4911, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:48', '2024-11-26 10:15:48'),
(4912, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:49', '2024-11-26 10:15:49'),
(4913, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:49', '2024-11-26 10:15:49'),
(4914, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:49', '2024-11-26 10:15:49'),
(4915, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:50', '2024-11-26 10:15:50'),
(4916, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:50', '2024-11-26 10:15:50'),
(4917, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:15:59', '2024-11-26 10:15:59'),
(4918, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:16:02', '2024-11-26 10:16:02'),
(4919, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"asdf\",\"title\":\"as\",\"desc\":\"asdc\",\"points\":{\"new_1\":{\"points\":\"yyyyyy\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"aaaaa\",\"_remove_\":\"0\"}},\"footerDesc\":\"sd\",\"price\":\"asd\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 10:16:15', '2024-11-26 10:16:15'),
(4920, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:16:16', '2024-11-26 10:16:16'),
(4921, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"asdf\",\"title\":\"as\",\"desc\":\"asdc\",\"points\":{\"new_1\":{\"points\":\"yyyyyy\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"aaaaa\",\"_remove_\":\"0\"}},\"footerDesc\":\"sd\",\"price\":\"asd\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 10:16:55', '2024-11-26 10:16:55'),
(4922, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:16:56', '2024-11-26 10:16:56'),
(4923, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:09', '2024-11-26 10:17:09'),
(4924, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:09', '2024-11-26 10:17:09'),
(4925, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:10', '2024-11-26 10:17:10'),
(4926, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:10', '2024-11-26 10:17:10'),
(4927, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:11', '2024-11-26 10:17:11'),
(4928, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:11', '2024-11-26 10:17:11'),
(4929, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:12', '2024-11-26 10:17:12'),
(4930, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:12', '2024-11-26 10:17:12'),
(4931, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:12', '2024-11-26 10:17:12'),
(4932, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:13', '2024-11-26 10:17:13'),
(4933, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:13', '2024-11-26 10:17:13'),
(4934, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:13', '2024-11-26 10:17:13'),
(4935, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:14', '2024-11-26 10:17:14'),
(4936, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:14', '2024-11-26 10:17:14'),
(4937, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:15', '2024-11-26 10:17:15');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(4938, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:15', '2024-11-26 10:17:15'),
(4939, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:15', '2024-11-26 10:17:15'),
(4940, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:16', '2024-11-26 10:17:16'),
(4941, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:16', '2024-11-26 10:17:16'),
(4942, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:17', '2024-11-26 10:17:17'),
(4943, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:17', '2024-11-26 10:17:17'),
(4944, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:17:18', '2024-11-26 10:17:18'),
(4945, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:19:19', '2024-11-26 10:19:19'),
(4946, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:19:21', '2024-11-26 10:19:21'),
(4947, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:19:22', '2024-11-26 10:19:22'),
(4948, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:19:36', '2024-11-26 10:19:36'),
(4949, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:19:38', '2024-11-26 10:19:38'),
(4950, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:20:02', '2024-11-26 10:20:02'),
(4951, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:20:02', '2024-11-26 10:20:02'),
(4952, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:20:12', '2024-11-26 10:20:12'),
(4953, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"wef\",\"title\":\"3\",\"desc\":\"2\",\"points\":{\"new_1\":{\"points\":\"34567\",\"_remove_\":\"0\"},\"new_2\":{\"points\":\"23456\",\"_remove_\":\"0\"}},\"footerDesc\":\"fghj\",\"price\":\"hjk\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 10:20:27', '2024-11-26 10:20:27'),
(4954, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:20:27', '2024-11-26 10:20:27'),
(4955, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:20:40', '2024-11-26 10:20:40'),
(4956, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:20:52', '2024-11-26 10:20:52'),
(4957, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:20:54', '2024-11-26 10:20:54'),
(4958, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:22:15', '2024-11-26 10:22:15'),
(4959, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:22:15', '2024-11-26 10:22:15'),
(4960, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:22:47', '2024-11-26 10:22:47'),
(4961, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:23:03', '2024-11-26 10:23:03'),
(4962, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:23:12', '2024-11-26 10:23:12'),
(4963, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"sd\",\"title\":\"sda\",\"desc\":\"asd\",\"points\":[\"111111\",\"222222\"],\"footerDesc\":\"ads\",\"price\":\"asd\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 10:35:58', '2024-11-26 10:35:58'),
(4964, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:35:58', '2024-11-26 10:35:58'),
(4965, 1, 'admin/vehicle-history-reports/1', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 10:36:11', '2024-11-26 10:36:11'),
(4966, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:11', '2024-11-26 10:36:11'),
(4967, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:33', '2024-11-26 10:36:33'),
(4968, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:35', '2024-11-26 10:36:35'),
(4969, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:37', '2024-11-26 10:36:37'),
(4970, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:37', '2024-11-26 10:36:37'),
(4971, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:38', '2024-11-26 10:36:38'),
(4972, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:38', '2024-11-26 10:36:38'),
(4973, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:39', '2024-11-26 10:36:39'),
(4974, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:39', '2024-11-26 10:36:39'),
(4975, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:39', '2024-11-26 10:36:39'),
(4976, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:40', '2024-11-26 10:36:40'),
(4977, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:40', '2024-11-26 10:36:40'),
(4978, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:41', '2024-11-26 10:36:41'),
(4979, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:41', '2024-11-26 10:36:41'),
(4980, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:41', '2024-11-26 10:36:41'),
(4981, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:42', '2024-11-26 10:36:42'),
(4982, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:42', '2024-11-26 10:36:42'),
(4983, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:43', '2024-11-26 10:36:43'),
(4984, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:43', '2024-11-26 10:36:43'),
(4985, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:44', '2024-11-26 10:36:44'),
(4986, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:44', '2024-11-26 10:36:44'),
(4987, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:44', '2024-11-26 10:36:44'),
(4988, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:45', '2024-11-26 10:36:45'),
(4989, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:36:45', '2024-11-26 10:36:45'),
(4990, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:24', '2024-11-26 10:39:24'),
(4991, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:25', '2024-11-26 10:39:25'),
(4992, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:25', '2024-11-26 10:39:25'),
(4993, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:25', '2024-11-26 10:39:25'),
(4994, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:26', '2024-11-26 10:39:26'),
(4995, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:26', '2024-11-26 10:39:26'),
(4996, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:27', '2024-11-26 10:39:27'),
(4997, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:27', '2024-11-26 10:39:27'),
(4998, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:28', '2024-11-26 10:39:28'),
(4999, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:28', '2024-11-26 10:39:28'),
(5000, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:28', '2024-11-26 10:39:28'),
(5001, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:29', '2024-11-26 10:39:29'),
(5002, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:29', '2024-11-26 10:39:29'),
(5003, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:30', '2024-11-26 10:39:30'),
(5004, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:30', '2024-11-26 10:39:30'),
(5005, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:30', '2024-11-26 10:39:30'),
(5006, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:31', '2024-11-26 10:39:31'),
(5007, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:31', '2024-11-26 10:39:31'),
(5008, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:32', '2024-11-26 10:39:32'),
(5009, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:32', '2024-11-26 10:39:32'),
(5010, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:33', '2024-11-26 10:39:33'),
(5011, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:35', '2024-11-26 10:39:35'),
(5012, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:36', '2024-11-26 10:39:36'),
(5013, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:36', '2024-11-26 10:39:36'),
(5014, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:37', '2024-11-26 10:39:37'),
(5015, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:37', '2024-11-26 10:39:37'),
(5016, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:37', '2024-11-26 10:39:37'),
(5017, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:38', '2024-11-26 10:39:38'),
(5018, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:38', '2024-11-26 10:39:38'),
(5019, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:39', '2024-11-26 10:39:39'),
(5020, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:39', '2024-11-26 10:39:39'),
(5021, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:39', '2024-11-26 10:39:39'),
(5022, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:40', '2024-11-26 10:39:40'),
(5023, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:40', '2024-11-26 10:39:40'),
(5024, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:41', '2024-11-26 10:39:41'),
(5025, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:41', '2024-11-26 10:39:41'),
(5026, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:42', '2024-11-26 10:39:42'),
(5027, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:42', '2024-11-26 10:39:42'),
(5028, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:43', '2024-11-26 10:39:43'),
(5029, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:43', '2024-11-26 10:39:43'),
(5030, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:44', '2024-11-26 10:39:44'),
(5031, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:39:44', '2024-11-26 10:39:44'),
(5032, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:40:31', '2024-11-26 10:40:31'),
(5033, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:40:47', '2024-11-26 10:40:47'),
(5034, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:41:06', '2024-11-26 10:41:06'),
(5035, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:41:10', '2024-11-26 10:41:10'),
(5036, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:41:12', '2024-11-26 10:41:12'),
(5037, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:41:13', '2024-11-26 10:41:13'),
(5038, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:41:15', '2024-11-26 10:41:15'),
(5039, 1, 'admin/vehicle-history-reports/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:42:17', '2024-11-26 10:42:17'),
(5040, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:30', '2024-11-26 10:43:30'),
(5041, 1, 'admin/vehicle-history-reports/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 10:43:34', '2024-11-26 10:43:34'),
(5042, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:34', '2024-11-26 10:43:34'),
(5043, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:36', '2024-11-26 10:43:36'),
(5044, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"vghj\",\"title\":\"werty\",\"desc\":\"wert\",\"points\":[\"1111234\",\"2345\"],\"footerDesc\":\"ewr\",\"price\":\"werg\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 10:43:51', '2024-11-26 10:43:51'),
(5045, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:51', '2024-11-26 10:43:51'),
(5046, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:54', '2024-11-26 10:43:54'),
(5047, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:54', '2024-11-26 10:43:54'),
(5048, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:55', '2024-11-26 10:43:55'),
(5049, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:55', '2024-11-26 10:43:55'),
(5050, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:56', '2024-11-26 10:43:56'),
(5051, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:56', '2024-11-26 10:43:56'),
(5052, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:57', '2024-11-26 10:43:57'),
(5053, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:57', '2024-11-26 10:43:57'),
(5054, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:57', '2024-11-26 10:43:57'),
(5055, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:58', '2024-11-26 10:43:58'),
(5056, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:58', '2024-11-26 10:43:58'),
(5057, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:59', '2024-11-26 10:43:59'),
(5058, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:59', '2024-11-26 10:43:59'),
(5059, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:43:59', '2024-11-26 10:43:59'),
(5060, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:44:00', '2024-11-26 10:44:00'),
(5061, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:44:00', '2024-11-26 10:44:00'),
(5062, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:44:01', '2024-11-26 10:44:01'),
(5063, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:44:01', '2024-11-26 10:44:01'),
(5064, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:44:01', '2024-11-26 10:44:01'),
(5065, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:44:02', '2024-11-26 10:44:02'),
(5066, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:44:02', '2024-11-26 10:44:02'),
(5067, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:44:06', '2024-11-26 10:44:06'),
(5068, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:44:31', '2024-11-26 10:44:31'),
(5069, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:44:53', '2024-11-26 10:44:53'),
(5070, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:44:54', '2024-11-26 10:44:54'),
(5071, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:45:04', '2024-11-26 10:45:04'),
(5072, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:46', '2024-11-26 10:46:46'),
(5073, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:50', '2024-11-26 10:46:50'),
(5074, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:51', '2024-11-26 10:46:51'),
(5075, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:51', '2024-11-26 10:46:51'),
(5076, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:52', '2024-11-26 10:46:52'),
(5077, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:52', '2024-11-26 10:46:52'),
(5078, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:53', '2024-11-26 10:46:53'),
(5079, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:53', '2024-11-26 10:46:53'),
(5080, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:53', '2024-11-26 10:46:53'),
(5081, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:54', '2024-11-26 10:46:54'),
(5082, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:54', '2024-11-26 10:46:54'),
(5083, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:55', '2024-11-26 10:46:55'),
(5084, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:55', '2024-11-26 10:46:55'),
(5085, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:56', '2024-11-26 10:46:56'),
(5086, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:56', '2024-11-26 10:46:56'),
(5087, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:56', '2024-11-26 10:46:56'),
(5088, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:57', '2024-11-26 10:46:57'),
(5089, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:57', '2024-11-26 10:46:57'),
(5090, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:58', '2024-11-26 10:46:58'),
(5091, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:58', '2024-11-26 10:46:58'),
(5092, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:58', '2024-11-26 10:46:58'),
(5093, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:46:59', '2024-11-26 10:46:59'),
(5094, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:48:18', '2024-11-26 10:48:18'),
(5095, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:48:21', '2024-11-26 10:48:21'),
(5096, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:49:44', '2024-11-26 10:49:44'),
(5097, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:52:07', '2024-11-26 10:52:07'),
(5098, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:53:52', '2024-11-26 10:53:52'),
(5099, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:53:54', '2024-11-26 10:53:54'),
(5100, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 10:53:55', '2024-11-26 10:53:55'),
(5101, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"vehicleName\":\"dfgh\",\"title\":\"j\",\"desc\":\"kioik\",\"points\":[\"11111\",\"22222\"],\"footerDesc\":\"uio\",\"price\":\"uik\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\"}', '2024-11-26 10:54:09', '2024-11-26 10:54:09'),
(5102, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:54:09', '2024-11-26 10:54:09'),
(5103, 1, 'admin/vehicle-history-reports/4/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 10:54:18', '2024-11-26 10:54:18'),
(5104, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:55:06', '2024-11-26 10:55:06'),
(5105, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:56:28', '2024-11-26 10:56:28'),
(5106, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 10:57:13', '2024-11-26 10:57:13'),
(5107, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:11:36', '2024-11-26 11:11:36'),
(5108, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:11:51', '2024-11-26 11:11:51'),
(5109, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:11:52', '2024-11-26 11:11:52'),
(5110, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:13:12', '2024-11-26 11:13:12'),
(5111, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:13:37', '2024-11-26 11:13:37'),
(5112, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:13:48', '2024-11-26 11:13:48'),
(5113, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:15:09', '2024-11-26 11:15:09'),
(5114, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 11:15:25', '2024-11-26 11:15:25'),
(5115, 1, 'admin/vehicle-history-reports/3', 'PUT', '127.0.0.1', '{\"vehicleName\":\"vghj\",\"title\":\"werty\",\"desc\":\"wert\",\"points\":[\"12345\",\"baskdlf\"],\"footerDesc\":\"ewr\",\"price\":\"10\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\",\"_method\":\"PUT\"}', '2024-11-26 11:15:39', '2024-11-26 11:15:39'),
(5116, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:15:39', '2024-11-26 11:15:39'),
(5117, 1, 'admin/vehicle-history-reports/4/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 11:16:23', '2024-11-26 11:16:23'),
(5118, 1, 'admin/vehicle-history-reports/4', 'PUT', '127.0.0.1', '{\"vehicleName\":\"dfgh\",\"title\":\"j\",\"desc\":\"kioik\",\"points\":[\"11111\"],\"footerDesc\":\"uio\",\"price\":\"uik\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\",\"_method\":\"PUT\"}', '2024-11-26 11:16:26', '2024-11-26 11:16:26'),
(5119, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:16:26', '2024-11-26 11:16:26'),
(5120, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:36:41', '2024-11-26 11:36:41'),
(5121, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:37:25', '2024-11-26 11:37:25'),
(5122, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:08', '2024-11-26 11:39:08'),
(5123, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:11', '2024-11-26 11:39:11'),
(5124, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:11', '2024-11-26 11:39:11'),
(5125, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:12', '2024-11-26 11:39:12'),
(5126, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:12', '2024-11-26 11:39:12'),
(5127, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:13', '2024-11-26 11:39:13'),
(5128, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:13', '2024-11-26 11:39:13'),
(5129, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:14', '2024-11-26 11:39:14'),
(5130, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:14', '2024-11-26 11:39:14'),
(5131, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:15', '2024-11-26 11:39:15'),
(5132, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:15', '2024-11-26 11:39:15'),
(5133, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:15', '2024-11-26 11:39:15'),
(5134, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:16', '2024-11-26 11:39:16'),
(5135, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:16', '2024-11-26 11:39:16'),
(5136, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:17', '2024-11-26 11:39:17'),
(5137, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:17', '2024-11-26 11:39:17'),
(5138, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:18', '2024-11-26 11:39:18'),
(5139, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:18', '2024-11-26 11:39:18'),
(5140, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:18', '2024-11-26 11:39:18'),
(5141, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:19', '2024-11-26 11:39:19'),
(5142, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:19', '2024-11-26 11:39:19'),
(5143, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:20', '2024-11-26 11:39:20'),
(5144, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:25', '2024-11-26 11:39:25'),
(5145, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:28', '2024-11-26 11:39:28'),
(5146, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:39:50', '2024-11-26 11:39:50'),
(5147, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:51:23', '2024-11-26 11:51:23'),
(5148, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:53:43', '2024-11-26 11:53:43'),
(5149, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:53:43', '2024-11-26 11:53:43'),
(5150, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:53:49', '2024-11-26 11:53:49'),
(5151, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:53:51', '2024-11-26 11:53:51'),
(5152, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:53:52', '2024-11-26 11:53:52'),
(5153, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:53:57', '2024-11-26 11:53:57'),
(5154, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:54:44', '2024-11-26 11:54:44'),
(5155, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:55:29', '2024-11-26 11:55:29'),
(5156, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 11:55:50', '2024-11-26 11:55:50'),
(5157, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 11:56:05', '2024-11-26 11:56:05'),
(5158, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 11:56:08', '2024-11-26 11:56:08'),
(5159, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 11:56:58', '2024-11-26 11:56:58'),
(5160, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 11:57:03', '2024-11-26 11:57:03'),
(5161, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 11:57:04', '2024-11-26 11:57:04'),
(5162, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 11:57:21', '2024-11-26 11:57:21'),
(5163, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 11:59:17', '2024-11-26 11:59:17'),
(5164, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 12:00:27', '2024-11-26 12:00:27'),
(5165, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:00:29', '2024-11-26 12:00:29'),
(5166, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:00:31', '2024-11-26 12:00:31'),
(5167, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:18:26', '2024-11-26 12:18:26'),
(5168, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:18:40', '2024-11-26 12:18:40'),
(5169, 1, 'admin/vehicle-history-reports/4', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"isShowImg\":\"on\",\"after-save\":\"exit\"}', '2024-11-26 12:18:41', '2024-11-26 12:18:41'),
(5170, 1, 'admin/vehicle-history-reports/4', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"isShowImg\":\"off\",\"after-save\":\"exit\"}', '2024-11-26 12:18:43', '2024-11-26 12:18:43'),
(5171, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:14', '2024-11-26 12:19:14'),
(5172, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:16', '2024-11-26 12:19:16'),
(5173, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:20', '2024-11-26 12:19:20'),
(5174, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:21', '2024-11-26 12:19:21'),
(5175, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:22', '2024-11-26 12:19:22'),
(5176, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:22', '2024-11-26 12:19:22'),
(5177, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:23', '2024-11-26 12:19:23'),
(5178, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:23', '2024-11-26 12:19:23'),
(5179, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:23', '2024-11-26 12:19:23'),
(5180, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:24', '2024-11-26 12:19:24'),
(5181, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:24', '2024-11-26 12:19:24'),
(5182, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:25', '2024-11-26 12:19:25'),
(5183, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:25', '2024-11-26 12:19:25'),
(5184, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:26', '2024-11-26 12:19:26'),
(5185, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:26', '2024-11-26 12:19:26'),
(5186, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:26', '2024-11-26 12:19:26'),
(5187, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:27', '2024-11-26 12:19:27'),
(5188, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:27', '2024-11-26 12:19:27'),
(5189, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:28', '2024-11-26 12:19:28'),
(5190, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:28', '2024-11-26 12:19:28'),
(5191, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:28', '2024-11-26 12:19:28'),
(5192, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:29', '2024-11-26 12:19:29'),
(5193, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:29', '2024-11-26 12:19:29'),
(5194, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:30', '2024-11-26 12:19:30'),
(5195, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:44', '2024-11-26 12:19:44'),
(5196, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:44', '2024-11-26 12:19:44'),
(5197, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:45', '2024-11-26 12:19:45'),
(5198, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:45', '2024-11-26 12:19:45'),
(5199, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:46', '2024-11-26 12:19:46'),
(5200, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:46', '2024-11-26 12:19:46'),
(5201, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:19:47', '2024-11-26 12:19:47'),
(5202, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:26:40', '2024-11-26 12:26:40'),
(5203, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:27:04', '2024-11-26 12:27:04'),
(5204, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:27:11', '2024-11-26 12:27:11'),
(5205, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:27:12', '2024-11-26 12:27:12'),
(5206, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:27:25', '2024-11-26 12:27:25'),
(5207, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:27:54', '2024-11-26 12:27:54'),
(5208, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:27:55', '2024-11-26 12:27:55'),
(5209, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:04', '2024-11-26 12:28:04'),
(5210, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:07', '2024-11-26 12:28:07'),
(5211, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:08', '2024-11-26 12:28:08'),
(5212, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:08', '2024-11-26 12:28:08'),
(5213, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:09', '2024-11-26 12:28:09'),
(5214, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:09', '2024-11-26 12:28:09'),
(5215, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:10', '2024-11-26 12:28:10'),
(5216, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:10', '2024-11-26 12:28:10'),
(5217, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:11', '2024-11-26 12:28:11'),
(5218, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:11', '2024-11-26 12:28:11'),
(5219, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:11', '2024-11-26 12:28:11'),
(5220, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:12', '2024-11-26 12:28:12'),
(5221, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:12', '2024-11-26 12:28:12'),
(5222, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:13', '2024-11-26 12:28:13'),
(5223, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:13', '2024-11-26 12:28:13'),
(5224, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:14', '2024-11-26 12:28:14'),
(5225, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:14', '2024-11-26 12:28:14'),
(5226, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:14', '2024-11-26 12:28:14'),
(5227, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:15', '2024-11-26 12:28:15'),
(5228, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:15', '2024-11-26 12:28:15'),
(5229, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:16', '2024-11-26 12:28:16'),
(5230, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:16', '2024-11-26 12:28:16'),
(5231, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:18', '2024-11-26 12:28:18'),
(5232, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:28:50', '2024-11-26 12:28:50'),
(5233, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:29:35', '2024-11-26 12:29:35'),
(5234, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:30:21', '2024-11-26 12:30:21'),
(5235, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:30:23', '2024-11-26 12:30:23'),
(5236, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:31:01', '2024-11-26 12:31:01'),
(5237, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:31:33', '2024-11-26 12:31:33'),
(5238, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:31:50', '2024-11-26 12:31:50'),
(5239, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:31:50', '2024-11-26 12:31:50'),
(5240, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:32:12', '2024-11-26 12:32:12'),
(5241, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:32:13', '2024-11-26 12:32:13'),
(5242, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:33:20', '2024-11-26 12:33:20'),
(5243, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:33:20', '2024-11-26 12:33:20'),
(5244, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:33:21', '2024-11-26 12:33:21'),
(5245, 1, 'admin/vehicle-history-reports/4', 'GET', '127.0.0.1', '[]', '2024-11-26 12:33:45', '2024-11-26 12:33:45'),
(5246, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:34:05', '2024-11-26 12:34:05'),
(5247, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:34:09', '2024-11-26 12:34:09'),
(5248, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:34:22', '2024-11-26 12:34:22'),
(5249, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:35:02', '2024-11-26 12:35:02'),
(5250, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:35:02', '2024-11-26 12:35:02'),
(5251, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:35:08', '2024-11-26 12:35:08'),
(5252, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:36:31', '2024-11-26 12:36:31'),
(5253, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:36:51', '2024-11-26 12:36:51'),
(5254, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-26 12:36:51', '2024-11-26 12:36:51'),
(5255, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:37:24', '2024-11-26 12:37:24'),
(5256, 1, 'admin/vehicle-history-reports/4/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 12:37:26', '2024-11-26 12:37:26'),
(5257, 1, 'admin/vehicle-history-reports/4', 'PUT', '127.0.0.1', '{\"isShowImg\":\"0\",\"vehicleName\":\"dfgh\",\"title\":\"j\",\"desc\":\"kioik\",\"points\":[\"231212\",\"dfghjkl;\"],\"footerDesc\":\"uio\",\"price\":\"uik\",\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\",\"_method\":\"PUT\"}', '2024-11-26 12:37:35', '2024-11-26 12:37:35'),
(5258, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:37:35', '2024-11-26 12:37:35'),
(5259, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:38:17', '2024-11-26 12:38:17'),
(5260, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:38:34', '2024-11-26 12:38:34'),
(5261, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:39:06', '2024-11-26 12:39:06'),
(5262, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:42:43', '2024-11-26 12:42:43'),
(5263, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 12:42:45', '2024-11-26 12:42:45'),
(5264, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 12:42:52', '2024-11-26 12:42:52'),
(5265, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 12:42:56', '2024-11-26 12:42:56'),
(5266, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 12:43:03', '2024-11-26 12:43:03'),
(5267, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 12:43:04', '2024-11-26 12:43:04'),
(5268, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 12:43:56', '2024-11-26 12:43:56'),
(5269, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 12:44:02', '2024-11-26 12:44:02'),
(5270, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 12:44:09', '2024-11-26 12:44:09'),
(5271, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 12:44:26', '2024-11-26 12:44:26'),
(5272, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 12:44:28', '2024-11-26 12:44:28'),
(5273, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-26 12:45:00', '2024-11-26 12:45:00'),
(5274, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:47:52', '2024-11-26 12:47:52'),
(5275, 1, 'admin/vehicle-history-reports/3/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 12:47:55', '2024-11-26 12:47:55'),
(5276, 1, 'admin/auth/menu/59/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 12:48:07', '2024-11-26 12:48:07'),
(5277, 1, 'admin/auth/menu/59', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Vehicle-history-reports\",\"icon\":\"icon-car-side\",\"uri\":\"vehicle-history-reports\",\"roles\":[null],\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\",\"_method\":\"PUT\"}', '2024-11-26 12:49:29', '2024-11-26 12:49:29'),
(5278, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 12:49:29', '2024-11-26 12:49:29'),
(5279, 1, 'admin/auth/menu/59/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 12:49:33', '2024-11-26 12:49:33'),
(5280, 1, 'admin/auth/menu/59', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Vehicle History Reports\",\"icon\":\"icon-car-side\",\"uri\":\"vehicle-history-reports\",\"roles\":[null],\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\",\"_method\":\"PUT\"}', '2024-11-26 12:49:41', '2024-11-26 12:49:41'),
(5281, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 12:49:41', '2024-11-26 12:49:41'),
(5282, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 12:50:09', '2024-11-26 12:50:09'),
(5283, 1, 'admin/auth/menu/59/edit', 'GET', '127.0.0.1', '[]', '2024-11-26 12:50:34', '2024-11-26 12:50:34'),
(5284, 1, 'admin/auth/menu/59', 'PUT', '127.0.0.1', '{\"parent_id\":\"57\",\"search_terms\":null,\"title\":\"Vehicle History Reports\",\"icon\":\"icon-car-side\",\"uri\":\"vehicle-history-reports\",\"roles\":[null],\"_token\":\"Pk2LqA8XyaUWbEWhwdl4hdhQczyNiAMgaks7ijhC\",\"_method\":\"PUT\"}', '2024-11-26 12:50:41', '2024-11-26 12:50:41'),
(5285, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-26 12:50:41', '2024-11-26 12:50:41'),
(5286, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 12:50:47', '2024-11-26 12:50:47'),
(5287, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2024-11-26 12:50:57', '2024-11-26 12:50:57'),
(5288, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-26 12:51:01', '2024-11-26 12:51:01'),
(5289, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-26 13:27:18', '2024-11-26 13:27:18'),
(5290, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 22:21:53', '2024-11-26 22:21:53'),
(5291, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-26 22:21:59', '2024-11-26 22:21:59'),
(5292, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"additionalHistory\",\"model_name\":\"App\\\\Models\\\\additionalHistory\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\additionalHistoryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"0\":{\"name\":\"vId\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"15\":{\"name\":\"vname\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"1\":{\"name\":\"totalLoss\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"2\":{\"name\":\"totalLossOwners\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"structuredDamage\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"4\":{\"name\":\"structuredDamageOwners\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"airBagDeployment\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"6\":{\"name\":\"airBagDeploymentOwners\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"7\":{\"name\":\"odoMeterCheck\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"8\":{\"name\":\"odoMeterCheckOwners\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"9\":{\"name\":\"accidentDamage\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"10\":{\"name\":\"accidentDamageOwners\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"11\":{\"name\":\"manufacturerRecall\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"12\":{\"name\":\"manufacturerRecallOwners\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"13\":{\"name\":\"basicWarranty\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},\"14\":{\"name\":\"basicWarrantyOwners\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-26 22:45:34', '2024-11-26 22:45:34'),
(5293, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-26 22:45:34', '2024-11-26 22:45:34'),
(5294, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 22:48:11', '2024-11-26 22:48:11'),
(5295, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-26 22:48:13', '2024-11-26 22:48:13'),
(5296, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-26 22:48:16', '2024-11-26 22:48:16'),
(5297, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-26 22:48:18', '2024-11-26 22:48:18'),
(5298, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-26 23:18:23', '2024-11-26 23:18:23'),
(5299, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-26 23:18:25', '2024-11-26 23:18:25'),
(5300, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-26 23:21:02', '2024-11-26 23:21:02'),
(5301, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-26 23:21:02', '2024-11-26 23:21:02'),
(5302, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-26 23:25:32', '2024-11-26 23:25:32'),
(5303, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-26 23:30:30', '2024-11-26 23:30:30'),
(5304, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-26 23:33:22', '2024-11-26 23:33:22'),
(5305, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-26 23:33:30', '2024-11-26 23:33:30'),
(5306, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-26 23:33:56', '2024-11-26 23:33:56'),
(5307, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-26 23:34:44', '2024-11-26 23:34:44'),
(5308, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-26 23:34:53', '2024-11-26 23:34:53'),
(5309, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-26 23:36:38', '2024-11-26 23:36:38'),
(5310, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-26 23:36:38', '2024-11-26 23:36:38'),
(5311, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-26 23:39:31', '2024-11-26 23:39:31'),
(5312, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-26 23:41:33', '2024-11-26 23:41:33'),
(5313, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 00:36:10', '2024-11-27 00:36:10'),
(5314, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 00:36:10', '2024-11-27 00:36:10'),
(5315, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 00:37:02', '2024-11-27 00:37:02'),
(5316, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 00:37:03', '2024-11-27 00:37:03'),
(5317, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 00:37:03', '2024-11-27 00:37:03'),
(5318, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 00:38:17', '2024-11-27 00:38:17'),
(5319, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 00:38:17', '2024-11-27 00:38:17'),
(5320, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 00:38:20', '2024-11-27 00:38:20');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(5321, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 00:38:23', '2024-11-27 00:38:23'),
(5322, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 00:38:43', '2024-11-27 00:38:43'),
(5323, 1, 'admin/auth/menu/56/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 00:38:59', '2024-11-27 00:38:59'),
(5324, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 00:39:00', '2024-11-27 00:39:00'),
(5325, 1, 'admin/auth/menu/60/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 00:39:02', '2024-11-27 00:39:02'),
(5326, 1, 'admin/auth/menu/60', 'PUT', '127.0.0.1', '{\"parent_id\":\"57\",\"search_terms\":null,\"title\":\"Additional-histories\",\"icon\":\"icon-ad\",\"uri\":\"additional-histories\",\"roles\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 00:39:39', '2024-11-27 00:39:39'),
(5327, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 00:39:40', '2024-11-27 00:39:40'),
(5328, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 00:39:43', '2024-11-27 00:39:43'),
(5329, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 00:39:53', '2024-11-27 00:39:53'),
(5330, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 00:39:57', '2024-11-27 00:39:57'),
(5331, 1, 'admin/auth/menu/60/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 00:40:01', '2024-11-27 00:40:01'),
(5332, 1, 'admin/auth/menu/60', 'PUT', '127.0.0.1', '{\"parent_id\":\"57\",\"search_terms\":null,\"title\":\"Additional Histories\",\"icon\":\"icon-ad\",\"uri\":\"additional-histories\",\"roles\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 00:40:09', '2024-11-27 00:40:09'),
(5333, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 00:40:10', '2024-11-27 00:40:10'),
(5334, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 00:40:13', '2024-11-27 00:40:13'),
(5335, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 00:40:18', '2024-11-27 00:40:18'),
(5336, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-27 00:40:24', '2024-11-27 00:40:24'),
(5337, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-27 01:11:40', '2024-11-27 01:11:40'),
(5338, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"isShowImg\":\"off\",\"vehicleName\":\"wef\",\"title\":\"wqe\",\"desc\":\"sdzxc\",\"points\":[\"23\",\"1231\"],\"footerDesc\":\"sd\",\"price\":\"09\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 01:12:06', '2024-11-27 01:12:06'),
(5339, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 01:12:06', '2024-11-27 01:12:06'),
(5340, 1, 'admin/vehicle-history-reports/5/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 01:12:21', '2024-11-27 01:12:21'),
(5341, 1, 'admin/vehicle-history-reports/5', 'PUT', '127.0.0.1', '{\"isShowImg\":\"0\",\"vehicleName\":\"wef\",\"title\":\"wqe\",\"desc\":\"sdzxc\",\"points\":[\"23\",\"1231\"],\"footerDesc\":\"sd\",\"price\":\"09\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 01:12:25', '2024-11-27 01:12:25'),
(5342, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 01:12:25', '2024-11-27 01:12:25'),
(5343, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 01:14:56', '2024-11-27 01:14:56'),
(5344, 1, 'admin/vehicle-history-reports/5/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 01:14:59', '2024-11-27 01:14:59'),
(5345, 1, 'admin/vehicle-history-reports/5', 'PUT', '127.0.0.1', '{\"isShowImg\":\"0\",\"vehicleName\":\"wef\",\"title\":\"wqe\",\"desc\":\"sdzxc\",\"points\":[\"23\",\"1231\"],\"footerDesc\":\"sd\",\"price\":\"09\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 01:15:01', '2024-11-27 01:15:01'),
(5346, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 01:15:01', '2024-11-27 01:15:01'),
(5347, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-27 01:15:05', '2024-11-27 01:15:05'),
(5348, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"isShowImg\":null,\"vehicleName\":\"dsf\",\"title\":\"s\",\"desc\":\"sd\",\"points\":[\"12345\"],\"footerDesc\":\"qwdewfrd\",\"price\":\"12\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 01:15:17', '2024-11-27 01:15:17'),
(5349, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 01:15:17', '2024-11-27 01:15:17'),
(5350, 1, 'admin/vehicle-history-reports/6/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 01:17:05', '2024-11-27 01:17:05'),
(5351, 1, 'admin/vehicle-history-reports/6', 'PUT', '127.0.0.1', '{\"isShowImg\":\"0\",\"vehicleName\":\"dsf\",\"title\":\"s\",\"desc\":\"sd\",\"points\":[\"12345\"],\"footerDesc\":\"qwdewfrd\",\"price\":\"12\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 01:17:07', '2024-11-27 01:17:07'),
(5352, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 01:17:07', '2024-11-27 01:17:07'),
(5353, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-27 01:17:10', '2024-11-27 01:17:10'),
(5354, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"isShowImg\":null,\"vehicleName\":\"asd\",\"title\":\"asd\",\"desc\":\"asd\",\"points\":[\"123\",\"12\"],\"footerDesc\":\"dcs\",\"price\":\"12\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 01:17:25', '2024-11-27 01:17:25'),
(5355, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 01:17:26', '2024-11-27 01:17:26'),
(5356, 1, 'admin/vehicle-history-reports/7/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 01:18:33', '2024-11-27 01:18:33'),
(5357, 1, 'admin/vehicle-history-reports/7', 'PUT', '127.0.0.1', '{\"isShowImg\":\"0\",\"vehicleName\":\"asd\",\"title\":\"asd\",\"desc\":\"asd\",\"points\":[\"123\",\"12\"],\"footerDesc\":\"dcs\",\"price\":\"12\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 01:18:34', '2024-11-27 01:18:34'),
(5358, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 01:18:34', '2024-11-27 01:18:34'),
(5359, 1, 'admin/vehicle-history-reports/7/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 01:22:02', '2024-11-27 01:22:02'),
(5360, 1, 'admin/vehicle-history-reports/7', 'PUT', '127.0.0.1', '{\"isShowImg\":\"0\",\"vehicleName\":\"asd\",\"title\":\"asd\",\"desc\":\"asd\",\"points\":[\"123\",\"12\"],\"footerDesc\":\"dcs\",\"price\":\"12\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 01:22:04', '2024-11-27 01:22:04'),
(5361, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 01:22:04', '2024-11-27 01:22:04'),
(5362, 1, 'admin/vehicle-history-reports/7/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 01:22:54', '2024-11-27 01:22:54'),
(5363, 1, 'admin/vehicle-history-reports/7', 'PUT', '127.0.0.1', '{\"isShowImg\":\"0\",\"vehicleName\":\"asd\",\"title\":\"asd\",\"desc\":\"asd\",\"points\":[\"123\",\"12\"],\"footerDesc\":\"dcs\",\"price\":\"12\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 01:22:56', '2024-11-27 01:22:56'),
(5364, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 01:22:56', '2024-11-27 01:22:56'),
(5365, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-27 01:22:59', '2024-11-27 01:22:59'),
(5366, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"isShowImg\":null,\"vehicleName\":\"sad\",\"title\":\"asd\",\"desc\":\"asd\",\"points\":[\"23\"],\"footerDesc\":\"12ed\",\"price\":\"121\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 01:23:10', '2024-11-27 01:23:10'),
(5367, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 01:23:11', '2024-11-27 01:23:11'),
(5368, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 01:23:44', '2024-11-27 01:23:44'),
(5369, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 01:27:55', '2024-11-27 01:27:55'),
(5370, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 01:28:40', '2024-11-27 01:28:40'),
(5371, 1, 'admin/additional-histories', 'POST', '127.0.0.1', '{\"vid\":\"bFqO69\",\"search_terms\":null,\"totalLoss\":\"1\",\"totalLossOwners\":[\"11\"],\"structuredDamage\":\"2\",\"structuredDamageOwners\":[\"22\"],\"airBagDeployment\":\"3\",\"airBagDeploymentOwners\":[\"33\"],\"odoMeterCheck\":\"4\",\"odoMeterCheckOwners\":[\"44\",\"55\"],\"accidentDamage\":\"5\",\"manufacturerRecall\":\"6\",\"manufacturerRecallOwners\":[\"66\"],\"basicWarranty\":\"7\",\"basicWarrantyOwners\":[\"77\"],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 01:33:57', '2024-11-27 01:33:57'),
(5372, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 01:33:58', '2024-11-27 01:33:58'),
(5373, 1, 'admin/additional-histories', 'POST', '127.0.0.1', '{\"vid\":\"bFqO69\",\"search_terms\":null,\"totalLoss\":\"1\",\"totalLossOwners\":[\"11\"],\"structuredDamage\":\"2\",\"structuredDamageOwners\":[\"22\"],\"airBagDeployment\":\"3\",\"airBagDeploymentOwners\":[\"33\"],\"odoMeterCheck\":\"4\",\"odoMeterCheckOwners\":[\"44\",\"55\",\"44\",\"55\"],\"accidentDamage\":\"5\",\"manufacturerRecall\":\"6\",\"manufacturerRecallOwners\":[\"66\"],\"basicWarranty\":\"7\",\"basicWarrantyOwners\":[\"77\"],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 01:37:31', '2024-11-27 01:37:31'),
(5374, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 01:37:31', '2024-11-27 01:37:31'),
(5375, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 01:50:21', '2024-11-27 01:50:21'),
(5376, 1, 'admin/additional-histories', 'POST', '127.0.0.1', '{\"vid\":\"VtldUo\",\"search_terms\":null,\"totalLoss\":\"1\",\"totalLossOwners\":[\"11\"],\"structuredDamage\":\"2\",\"structuredDamageOwners\":[\"22\"],\"airBagDeployment\":\"3\",\"airBagDeploymentOwners\":[\"33\"],\"odoMeterCheck\":\"4\",\"odoMeterCheckOwners\":[\"44\",\"55\"],\"accidentDamage\":\"5\",\"manufacturerRecall\":\"6\",\"manufacturerRecallOwners\":[\"66\"],\"basicWarranty\":\"7\",\"basicWarrantyOwners\":[\"77\"],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 01:51:04', '2024-11-27 01:51:04'),
(5377, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 01:51:04', '2024-11-27 01:51:04'),
(5378, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 01:54:47', '2024-11-27 01:54:47'),
(5379, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:00:26', '2024-11-27 02:00:26'),
(5380, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:01:58', '2024-11-27 02:01:58'),
(5381, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:03:01', '2024-11-27 02:03:01'),
(5382, 1, 'admin/additional-histories/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:03:04', '2024-11-27 02:03:04'),
(5383, 1, 'admin/additional-histories/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:04:06', '2024-11-27 02:04:06'),
(5384, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:04:19', '2024-11-27 02:04:19'),
(5385, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 02:04:22', '2024-11-27 02:04:22'),
(5386, 1, 'admin/additional-histories', 'POST', '127.0.0.1', '{\"vid\":\"abc\",\"search_terms\":null,\"totalLoss\":\"1\",\"totalLossOwners\":[\"11\"],\"structuredDamage\":\"2\",\"structuredDamageOwners\":[\"22\"],\"airBagDeployment\":\"3\",\"airBagDeploymentOwners\":[\"33\"],\"odoMeterCheck\":\"4\",\"odoMeterCheckOwners\":[\"44\"],\"accidentDamage\":\"5\",\"accidentDamageOwners\":[\"55\"],\"manufacturerRecall\":\"6\",\"manufacturerRecallOwners\":[\"66\"],\"basicWarranty\":\"7\",\"basicWarrantyOwners\":[\"77\"],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 02:04:58', '2024-11-27 02:04:58'),
(5387, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:04:58', '2024-11-27 02:04:58'),
(5388, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:05:15', '2024-11-27 02:05:15'),
(5389, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:11:54', '2024-11-27 02:11:54'),
(5390, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:12:02', '2024-11-27 02:12:02'),
(5391, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:12:05', '2024-11-27 02:12:05'),
(5392, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:13:13', '2024-11-27 02:13:13'),
(5393, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:13:15', '2024-11-27 02:13:15'),
(5394, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 02:13:17', '2024-11-27 02:13:17'),
(5395, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:13:19', '2024-11-27 02:13:19'),
(5396, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:13:20', '2024-11-27 02:13:20'),
(5397, 1, 'admin/additional-histories/2', 'PUT', '127.0.0.1', '{\"vid\":\"abc\",\"search_terms\":null,\"totalLoss\":\"1\",\"totalLossOwners\":[\"11\"],\"structuredDamage\":\"2\",\"structuredDamageOwners\":[\"22\"],\"airBagDeployment\":\"3\",\"airBagDeploymentOwners\":[\"33\"],\"odoMeterCheck\":\"4\",\"odoMeterCheckOwners\":[\"44\"],\"accidentDamage\":\"5\",\"accidentDamageOwners\":[\"55\"],\"manufacturerRecall\":\"6\",\"manufacturerRecallOwners\":[\"66\"],\"basicWarranty\":\"7\",\"basicWarrantyOwners\":[\"77\"],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 02:13:26', '2024-11-27 02:13:26'),
(5398, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:13:26', '2024-11-27 02:13:26'),
(5399, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:14:12', '2024-11-27 02:14:12'),
(5400, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:14:14', '2024-11-27 02:14:14'),
(5401, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:14:17', '2024-11-27 02:14:17'),
(5402, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:14:56', '2024-11-27 02:14:56'),
(5403, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:14:58', '2024-11-27 02:14:58'),
(5404, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:14:58', '2024-11-27 02:14:58'),
(5405, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:14:59', '2024-11-27 02:14:59'),
(5406, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:14:59', '2024-11-27 02:14:59'),
(5407, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:00', '2024-11-27 02:15:00'),
(5408, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:00', '2024-11-27 02:15:00'),
(5409, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:00', '2024-11-27 02:15:00'),
(5410, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:01', '2024-11-27 02:15:01'),
(5411, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:01', '2024-11-27 02:15:01'),
(5412, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:02', '2024-11-27 02:15:02'),
(5413, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:02', '2024-11-27 02:15:02'),
(5414, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:03', '2024-11-27 02:15:03'),
(5415, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:03', '2024-11-27 02:15:03'),
(5416, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:03', '2024-11-27 02:15:03'),
(5417, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:04', '2024-11-27 02:15:04'),
(5418, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:04', '2024-11-27 02:15:04'),
(5419, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:05', '2024-11-27 02:15:05'),
(5420, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:05', '2024-11-27 02:15:05'),
(5421, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:05', '2024-11-27 02:15:05'),
(5422, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:06', '2024-11-27 02:15:06'),
(5423, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:06', '2024-11-27 02:15:06'),
(5424, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:15:59', '2024-11-27 02:15:59'),
(5425, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:17:43', '2024-11-27 02:17:43'),
(5426, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:19:19', '2024-11-27 02:19:19'),
(5427, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:19:21', '2024-11-27 02:19:21'),
(5428, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:19:22', '2024-11-27 02:19:22'),
(5429, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:19:26', '2024-11-27 02:19:26'),
(5430, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:19:54', '2024-11-27 02:19:54'),
(5431, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:23:40', '2024-11-27 02:23:40'),
(5432, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:23:41', '2024-11-27 02:23:41'),
(5433, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:23:42', '2024-11-27 02:23:42'),
(5434, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 02:23:44', '2024-11-27 02:23:44'),
(5435, 1, 'admin/vehicle-history-reports/8/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:23:49', '2024-11-27 02:23:49'),
(5436, 1, 'admin/vehicle-history-reports/8', 'PUT', '127.0.0.1', '{\"isShowImg\":\"0\",\"vehicleName\":\"sad\",\"title\":\"asd\",\"desc\":\"asd\",\"points\":[\"23\"],\"footerDesc\":\"12ed\",\"price\":\"121\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 02:23:51', '2024-11-27 02:23:51'),
(5437, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 02:23:51', '2024-11-27 02:23:51'),
(5438, 1, 'admin/vehicle-history-reports/8/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:23:53', '2024-11-27 02:23:53'),
(5439, 1, 'admin/vehicle-history-reports/8', 'PUT', '127.0.0.1', '{\"isShowImg\":\"0\",\"vehicleName\":\"sad\",\"title\":\"asd\",\"desc\":\"asd\",\"points\":[\"23\"],\"footerDesc\":\"12ed\",\"price\":\"121\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 02:23:57', '2024-11-27 02:23:57'),
(5440, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 02:23:57', '2024-11-27 02:23:57'),
(5441, 1, 'admin/vehicle-history-reports/8/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:24:02', '2024-11-27 02:24:02'),
(5442, 1, 'admin/vehicle-history-reports/8', 'PUT', '127.0.0.1', '{\"isShowImg\":\"0\",\"vehicleName\":\"sad\",\"title\":\"asd\",\"desc\":\"asd\",\"points\":[\"23\"],\"footerDesc\":\"12ed\",\"price\":\"121\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 02:24:03', '2024-11-27 02:24:03'),
(5443, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 02:24:03', '2024-11-27 02:24:03'),
(5444, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:24:05', '2024-11-27 02:24:05'),
(5445, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:24:08', '2024-11-27 02:24:08'),
(5446, 1, 'admin/additional-histories/2', 'PUT', '127.0.0.1', '{\"vId\":\"bFqO69\",\"search_terms\":null,\"totalLoss\":\"1\",\"totalLossOwners\":[\"11\"],\"structuredDamage\":\"2\",\"structuredDamageOwners\":[\"22\"],\"airBagDeployment\":\"3\",\"airBagDeploymentOwners\":[\"33\"],\"odoMeterCheck\":\"4\",\"odoMeterCheckOwners\":[\"44\"],\"accidentDamage\":\"5\",\"accidentDamageOwners\":[\"55\"],\"manufacturerRecall\":\"6\",\"manufacturerRecallOwners\":[\"66\"],\"basicWarranty\":\"7\",\"basicWarrantyOwners\":[\"77\"],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 02:24:12', '2024-11-27 02:24:12'),
(5447, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:24:12', '2024-11-27 02:24:12'),
(5448, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:25:43', '2024-11-27 02:25:43'),
(5449, 1, 'admin/additional-histories/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:25:56', '2024-11-27 02:25:56'),
(5450, 1, 'admin/additional-histories/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:27:29', '2024-11-27 02:27:29'),
(5451, 1, 'admin/additional-histories/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:28:34', '2024-11-27 02:28:34'),
(5452, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:28:36', '2024-11-27 02:28:36'),
(5453, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:28:38', '2024-11-27 02:28:38'),
(5454, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 02:28:40', '2024-11-27 02:28:40'),
(5455, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:28:41', '2024-11-27 02:28:41'),
(5456, 1, 'admin/additional-histories/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:28:42', '2024-11-27 02:28:42'),
(5457, 1, 'admin/additional-histories/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:29:58', '2024-11-27 02:29:58'),
(5458, 1, 'admin/additional-histories/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 02:31:02', '2024-11-27 02:31:02'),
(5459, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:31:45', '2024-11-27 02:31:45'),
(5460, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:37:55', '2024-11-27 02:37:55'),
(5461, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:38:57', '2024-11-27 02:38:57'),
(5462, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:40:55', '2024-11-27 02:40:55'),
(5463, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:42:39', '2024-11-27 02:42:39'),
(5464, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:42:40', '2024-11-27 02:42:40'),
(5465, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:46:58', '2024-11-27 02:46:58'),
(5466, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:47:11', '2024-11-27 02:47:11'),
(5467, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 02:47:20', '2024-11-27 02:47:20'),
(5468, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:00:33', '2024-11-27 03:00:33'),
(5469, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:00:54', '2024-11-27 03:00:54'),
(5470, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:01:30', '2024-11-27 03:01:30'),
(5471, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vName\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 03:01:41', '2024-11-27 03:01:41'),
(5472, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vName\":\"bFqO69\",\"search_terms\":null}', '2024-11-27 03:01:47', '2024-11-27 03:01:47'),
(5473, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vName\":\"abc\",\"search_terms\":null}', '2024-11-27 03:01:49', '2024-11-27 03:01:49'),
(5474, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vName\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 03:01:52', '2024-11-27 03:01:52'),
(5475, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vName\":\"bFqO69\",\"search_terms\":null}', '2024-11-27 03:01:56', '2024-11-27 03:01:56'),
(5476, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vName\":\"bFqO69\",\"search_terms\":null}', '2024-11-27 03:02:14', '2024-11-27 03:02:14'),
(5477, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vName\":\"bFqO69\",\"search_terms\":null}', '2024-11-27 03:02:16', '2024-11-27 03:02:16'),
(5478, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vName\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 03:02:18', '2024-11-27 03:02:18'),
(5479, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vName\":\"abc\",\"search_terms\":null}', '2024-11-27 03:02:21', '2024-11-27 03:02:21'),
(5480, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vName\":\"bFqO69\",\"search_terms\":null}', '2024-11-27 03:02:24', '2024-11-27 03:02:24'),
(5481, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vName\":\"bFqO69\",\"search_terms\":null}', '2024-11-27 03:03:15', '2024-11-27 03:03:15'),
(5482, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vName\":\"bFqO69\",\"search_terms\":null}', '2024-11-27 03:04:01', '2024-11-27 03:04:01'),
(5483, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vName\":\"abc\",\"search_terms\":null}', '2024-11-27 03:04:04', '2024-11-27 03:04:04'),
(5484, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vName\":\"abc\",\"search_terms\":null}', '2024-11-27 03:04:31', '2024-11-27 03:04:31'),
(5485, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 03:04:35', '2024-11-27 03:04:35'),
(5486, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"abc\",\"search_terms\":null}', '2024-11-27 03:04:40', '2024-11-27 03:04:40'),
(5487, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"bFqO69\",\"search_terms\":null}', '2024-11-27 03:04:42', '2024-11-27 03:04:42'),
(5488, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 03:04:46', '2024-11-27 03:04:46'),
(5489, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 03:16:02', '2024-11-27 03:16:02'),
(5490, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 03:18:04', '2024-11-27 03:18:04'),
(5491, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 03:18:18', '2024-11-27 03:18:18'),
(5492, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 03:18:18', '2024-11-27 03:18:18'),
(5493, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 03:19:43', '2024-11-27 03:19:43'),
(5494, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 03:20:54', '2024-11-27 03:20:54'),
(5495, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 03:21:04', '2024-11-27 03:21:04'),
(5496, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 03:21:08', '2024-11-27 03:21:08'),
(5497, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:21:10', '2024-11-27 03:21:10'),
(5498, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:22:59', '2024-11-27 03:22:59'),
(5499, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:23:11', '2024-11-27 03:23:11'),
(5500, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:24:33', '2024-11-27 03:24:33'),
(5501, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:25:44', '2024-11-27 03:25:44'),
(5502, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:26:06', '2024-11-27 03:26:06'),
(5503, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:26:24', '2024-11-27 03:26:24'),
(5504, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:26:33', '2024-11-27 03:26:33'),
(5505, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 03:27:23', '2024-11-27 03:27:23'),
(5506, 1, 'admin/vehicle-history-reports/5', 'GET', '127.0.0.1', '[]', '2024-11-27 03:27:27', '2024-11-27 03:27:27'),
(5507, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 03:28:01', '2024-11-27 03:28:01'),
(5508, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:28:02', '2024-11-27 03:28:02'),
(5509, 1, 'admin/vehicle-history-reports/8', 'GET', '127.0.0.1', '[]', '2024-11-27 03:28:06', '2024-11-27 03:28:06'),
(5510, 1, 'admin/vehicle-history-reports/7', 'GET', '127.0.0.1', '[]', '2024-11-27 03:28:13', '2024-11-27 03:28:13'),
(5511, 1, 'admin/vehicle-history-reports/8', 'GET', '127.0.0.1', '[]', '2024-11-27 03:28:18', '2024-11-27 03:28:18'),
(5512, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:28:55', '2024-11-27 03:28:55'),
(5513, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:29:04', '2024-11-27 03:29:04'),
(5514, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:29:36', '2024-11-27 03:29:36'),
(5515, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 03:30:37', '2024-11-27 03:30:37'),
(5516, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-27 03:31:29', '2024-11-27 03:31:29'),
(5517, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:31:58', '2024-11-27 03:31:58'),
(5518, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"titleHistory\",\"model_name\":\"App\\\\Models\\\\titleHistory\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\titleHistoryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"vId\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"vName\",\"type\":\"string\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"titles\",\"type\":\"json\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 03:47:18', '2024-11-27 03:47:18'),
(5519, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-27 03:47:18', '2024-11-27 03:47:18'),
(5520, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 03:52:49', '2024-11-27 03:52:49'),
(5521, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 03:52:51', '2024-11-27 03:52:51'),
(5522, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 03:52:52', '2024-11-27 03:52:52'),
(5523, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 03:53:47', '2024-11-27 03:53:47'),
(5524, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 03:56:00', '2024-11-27 03:56:00'),
(5525, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 03:56:57', '2024-11-27 03:56:57'),
(5526, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 03:57:14', '2024-11-27 03:57:14'),
(5527, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 03:59:07', '2024-11-27 03:59:07'),
(5528, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 03:59:10', '2024-11-27 03:59:10'),
(5529, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 03:59:45', '2024-11-27 03:59:45'),
(5530, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:00:09', '2024-11-27 04:00:09'),
(5531, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:01:52', '2024-11-27 04:01:52'),
(5532, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:02:16', '2024-11-27 04:02:16'),
(5533, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:02:32', '2024-11-27 04:02:32'),
(5534, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:05:05', '2024-11-27 04:05:05'),
(5535, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:05:46', '2024-11-27 04:05:46'),
(5536, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:05:47', '2024-11-27 04:05:47'),
(5537, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:06:00', '2024-11-27 04:06:00'),
(5538, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:06:17', '2024-11-27 04:06:17'),
(5539, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:07:02', '2024-11-27 04:07:02'),
(5540, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:07:18', '2024-11-27 04:07:18'),
(5541, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:07:43', '2024-11-27 04:07:43'),
(5542, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:07:50', '2024-11-27 04:07:50'),
(5543, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:11:27', '2024-11-27 04:11:27'),
(5544, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:11:31', '2024-11-27 04:11:31'),
(5545, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:38:06', '2024-11-27 04:38:06'),
(5546, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:38:16', '2024-11-27 04:38:16'),
(5547, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:38:49', '2024-11-27 04:38:49'),
(5548, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:41:08', '2024-11-27 04:41:08'),
(5549, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:42:12', '2024-11-27 04:42:12'),
(5550, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:42:34', '2024-11-27 04:42:34'),
(5551, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:43:45', '2024-11-27 04:43:45'),
(5552, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:43:55', '2024-11-27 04:43:55'),
(5553, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:44:38', '2024-11-27 04:44:38'),
(5554, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:47:28', '2024-11-27 04:47:28'),
(5555, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:48:37', '2024-11-27 04:48:37'),
(5556, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:52:46', '2024-11-27 04:52:46'),
(5557, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:54:36', '2024-11-27 04:54:36'),
(5558, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:55:10', '2024-11-27 04:55:10'),
(5559, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:55:11', '2024-11-27 04:55:11'),
(5560, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:55:11', '2024-11-27 04:55:11'),
(5561, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:55:22', '2024-11-27 04:55:22'),
(5562, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:55:48', '2024-11-27 04:55:48'),
(5563, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:55:57', '2024-11-27 04:55:57'),
(5564, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:56:06', '2024-11-27 04:56:06'),
(5565, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:56:17', '2024-11-27 04:56:17'),
(5566, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:57:48', '2024-11-27 04:57:48'),
(5567, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:58:04', '2024-11-27 04:58:04'),
(5568, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:58:05', '2024-11-27 04:58:05'),
(5569, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 04:58:17', '2024-11-27 04:58:17'),
(5570, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:00:00', '2024-11-27 05:00:00'),
(5571, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:00:54', '2024-11-27 05:00:54'),
(5572, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:00:54', '2024-11-27 05:00:54'),
(5573, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:00:54', '2024-11-27 05:00:54'),
(5574, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:01:02', '2024-11-27 05:01:02'),
(5575, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:02:55', '2024-11-27 05:02:55'),
(5576, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:03:15', '2024-11-27 05:03:15'),
(5577, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:03:31', '2024-11-27 05:03:31'),
(5578, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:05:03', '2024-11-27 05:05:03'),
(5579, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:05:09', '2024-11-27 05:05:09'),
(5580, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:05:17', '2024-11-27 05:05:17'),
(5581, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:05:31', '2024-11-27 05:05:31'),
(5582, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:05:47', '2024-11-27 05:05:47'),
(5583, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:13:37', '2024-11-27 05:13:37'),
(5584, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:15:12', '2024-11-27 05:15:12'),
(5585, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:16:25', '2024-11-27 05:16:25'),
(5586, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:17:09', '2024-11-27 05:17:09'),
(5587, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:19:46', '2024-11-27 05:19:46'),
(5588, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:20:29', '2024-11-27 05:20:29'),
(5589, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:20:42', '2024-11-27 05:20:42'),
(5590, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:21:30', '2024-11-27 05:21:30'),
(5591, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:21:44', '2024-11-27 05:21:44'),
(5592, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:22:01', '2024-11-27 05:22:01'),
(5593, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:22:51', '2024-11-27 05:22:51'),
(5594, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:30:59', '2024-11-27 05:30:59'),
(5595, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:31:07', '2024-11-27 05:31:07'),
(5596, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:31:50', '2024-11-27 05:31:50'),
(5597, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:33:02', '2024-11-27 05:33:02'),
(5598, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:33:20', '2024-11-27 05:33:20'),
(5599, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:35:16', '2024-11-27 05:35:16'),
(5600, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:36:03', '2024-11-27 05:36:03'),
(5601, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:37:30', '2024-11-27 05:37:30'),
(5602, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:37:49', '2024-11-27 05:37:49'),
(5603, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:53:01', '2024-11-27 05:53:01'),
(5604, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 05:54:18', '2024-11-27 05:54:18'),
(5605, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 06:05:00', '2024-11-27 06:05:00'),
(5606, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 06:05:45', '2024-11-27 06:05:45'),
(5607, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 06:05:55', '2024-11-27 06:05:55'),
(5608, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 06:06:22', '2024-11-27 06:06:22'),
(5609, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 06:07:17', '2024-11-27 06:07:17'),
(5610, 1, 'admin/title-histories', 'POST', '127.0.0.1', '{\"vId\":\"abc\",\"search_terms\":null,\"title1\":\"t1\",\"desc1\":\"d1\",\"ownerslist1\":[\"1\",\"2\"],\"title2\":\"t2\",\"desc2\":\"d2\",\"ownerslist2\":[\"11\",\"22\"],\"title3\":\"t3\",\"desc3\":\"d3\",\"ownerslist3\":[\"111\",\"222\"],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 06:07:53', '2024-11-27 06:07:53'),
(5611, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:07:53', '2024-11-27 06:07:53'),
(5612, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:08:35', '2024-11-27 06:08:35'),
(5613, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:08:59', '2024-11-27 06:08:59'),
(5614, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:11:25', '2024-11-27 06:11:25'),
(5615, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:12:47', '2024-11-27 06:12:47'),
(5616, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:14:55', '2024-11-27 06:14:55'),
(5617, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:15:48', '2024-11-27 06:15:48'),
(5618, 1, 'admin/vehicle-history-reports/3', 'GET', '127.0.0.1', '[]', '2024-11-27 06:16:05', '2024-11-27 06:16:05'),
(5619, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 06:17:06', '2024-11-27 06:17:06'),
(5620, 1, 'admin/auth/menu/61/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 06:17:08', '2024-11-27 06:17:08'),
(5621, 1, 'admin/auth/menu/61', 'PUT', '127.0.0.1', '{\"parent_id\":\"57\",\"search_terms\":null,\"title\":\"Title Histories\",\"icon\":\"icon-pen-nib\",\"uri\":\"title-histories\",\"roles\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 06:18:02', '2024-11-27 06:18:02'),
(5622, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 06:18:02', '2024-11-27 06:18:02'),
(5623, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 06:18:10', '2024-11-27 06:18:10'),
(5624, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 06:18:14', '2024-11-27 06:18:14'),
(5625, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:18:18', '2024-11-27 06:18:18'),
(5626, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:18:43', '2024-11-27 06:18:43'),
(5627, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:18:54', '2024-11-27 06:18:54'),
(5628, 1, 'admin/title-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"abc\",\"search_terms\":null}', '2024-11-27 06:18:59', '2024-11-27 06:18:59'),
(5629, 1, 'admin/title-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"bFqO69\",\"search_terms\":null}', '2024-11-27 06:19:05', '2024-11-27 06:19:05'),
(5630, 1, 'admin/title-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 06:19:09', '2024-11-27 06:19:09'),
(5631, 1, 'admin/title-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"abc\",\"search_terms\":null}', '2024-11-27 06:19:12', '2024-11-27 06:19:12'),
(5632, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:29:10', '2024-11-27 06:29:10'),
(5633, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 06:29:16', '2024-11-27 06:29:16'),
(5634, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:29:20', '2024-11-27 06:29:20'),
(5635, 1, 'admin/title-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 06:29:25', '2024-11-27 06:29:25'),
(5636, 1, 'admin/title-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"bFqO69\",\"search_terms\":null}', '2024-11-27 06:29:30', '2024-11-27 06:29:30'),
(5637, 1, 'admin/title-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"abc\",\"search_terms\":null}', '2024-11-27 06:29:32', '2024-11-27 06:29:32'),
(5638, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 06:29:35', '2024-11-27 06:29:35'),
(5639, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:29:55', '2024-11-27 06:29:55'),
(5640, 1, 'admin/title-histories/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 06:29:58', '2024-11-27 06:29:58'),
(5641, 1, 'admin/title-histories/1', 'PUT', '127.0.0.1', '{\"vId\":\"bFqO69\",\"search_terms\":null,\"title1\":\"t1\",\"desc1\":\"d1\",\"ownerslist1\":[\"1\",\"2\"],\"title2\":\"t2\",\"desc2\":\"d2\",\"ownerslist2\":[\"11\",\"22\"],\"title3\":\"t3\",\"desc3\":\"d3\",\"ownerslist3\":[\"111\",\"222\"],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 06:32:00', '2024-11-27 06:32:00'),
(5642, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:32:01', '2024-11-27 06:32:01'),
(5643, 1, 'admin/title-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"bFqO69\",\"search_terms\":null}', '2024-11-27 06:32:08', '2024-11-27 06:32:08'),
(5644, 1, 'admin/title-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"abc\",\"search_terms\":null}', '2024-11-27 06:32:14', '2024-11-27 06:32:14'),
(5645, 1, 'admin/title-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"VtldUo\",\"search_terms\":null}', '2024-11-27 06:32:16', '2024-11-27 06:32:16'),
(5646, 1, 'admin/title-histories', 'GET', '127.0.0.1', '{\"id\":null,\"vId\":\"bFqO69\",\"search_terms\":null}', '2024-11-27 06:32:19', '2024-11-27 06:32:19'),
(5647, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 06:32:23', '2024-11-27 06:32:23'),
(5648, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:33:02', '2024-11-27 06:33:02'),
(5649, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:33:11', '2024-11-27 06:33:11'),
(5650, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-27 06:33:31', '2024-11-27 06:33:31'),
(5651, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"ownershipHistory\",\"model_name\":\"App\\\\Models\\\\ownershipHistory\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ownershipHistoryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"yearpurchased\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"yearpurchasedowners\",\"type\":\"json\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"typeofowner\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"typeofowners\",\"type\":\"json\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"ownershiplength\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"ownershiplengthowners\",\"type\":\"json\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"provinces\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"provincesowners\",\"type\":\"json\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"milesperyear\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"milesperyearowners\",\"type\":\"json\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"lastodometerreading\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"lastodometerreadingowners\",\"type\":\"json\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 06:40:12', '2024-11-27 06:40:12'),
(5652, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-27 06:40:12', '2024-11-27 06:40:12'),
(5653, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 06:40:40', '2024-11-27 06:40:40'),
(5654, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:40:43', '2024-11-27 06:40:43'),
(5655, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 06:40:47', '2024-11-27 06:40:47'),
(5656, 1, 'admin/auth/menu/62/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 06:40:49', '2024-11-27 06:40:49'),
(5657, 1, 'admin/auth/menu/62', 'PUT', '127.0.0.1', '{\"parent_id\":\"57\",\"search_terms\":null,\"title\":\"Ownership Histories\",\"icon\":\"icon-crown\",\"uri\":\"ownership-histories\",\"roles\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 06:41:18', '2024-11-27 06:41:18'),
(5658, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 06:41:18', '2024-11-27 06:41:18'),
(5659, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 06:41:22', '2024-11-27 06:41:22'),
(5660, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:41:26', '2024-11-27 06:41:26'),
(5661, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:47:51', '2024-11-27 06:47:51'),
(5662, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:50:36', '2024-11-27 06:50:36');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(5663, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:51:32', '2024-11-27 06:51:32'),
(5664, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:53:46', '2024-11-27 06:53:46'),
(5665, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 06:54:19', '2024-11-27 06:54:19'),
(5666, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 07:16:21', '2024-11-27 07:16:21'),
(5667, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 07:16:23', '2024-11-27 07:16:23'),
(5668, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 07:29:23', '2024-11-27 07:29:23'),
(5669, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 07:30:23', '2024-11-27 07:30:23'),
(5670, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 07:31:51', '2024-11-27 07:31:51'),
(5671, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 07:33:30', '2024-11-27 07:33:30'),
(5672, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 07:35:39', '2024-11-27 07:35:39'),
(5673, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 07:35:39', '2024-11-27 07:35:39'),
(5674, 1, 'admin/ownership-histories', 'POST', '127.0.0.1', '{\"vId\":\"VtldUo\",\"search_terms\":null,\"yearpurchased\":\"1\",\"yearpurchasedowners\":[\"11\"],\"typeofowner\":\"2\",\"typeofowners\":[\"22\"],\"ownershiplength\":\"3\",\"ownershiplengthowners\":[\"33\"],\"provinces\":\"4\",\"provincesowners\":[\"44\"],\"milesperyear\":\"5\",\"milesperyearowners\":[\"55\"],\"lastodometerreading\":\"6\",\"lastodometerreadingowners\":[\"66\",\"77\"],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 07:36:24', '2024-11-27 07:36:24'),
(5675, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 07:36:25', '2024-11-27 07:36:25'),
(5676, 1, 'admin/ownership-histories', 'POST', '127.0.0.1', '{\"vId\":\"VtldUo\",\"search_terms\":null,\"yearpurchased\":\"1\",\"yearpurchasedowners\":[\"11\"],\"typeofowner\":\"2\",\"typeofowners\":[\"22\"],\"ownershiplength\":\"3\",\"ownershiplengthowners\":[\"33\"],\"provinces\":\"4\",\"provincesowners\":[\"44\"],\"milesperyear\":\"5\",\"milesperyearowners\":[\"55\"],\"lastodometerreading\":\"6\",\"lastodometerreadingowners\":[\"66\",\"77\"],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 07:37:40', '2024-11-27 07:37:40'),
(5677, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 07:37:40', '2024-11-27 07:37:40'),
(5678, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 07:40:26', '2024-11-27 07:40:26'),
(5679, 1, 'admin/vehicle-history-reports/7', 'GET', '127.0.0.1', '[]', '2024-11-27 07:40:29', '2024-11-27 07:40:29'),
(5680, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 07:40:34', '2024-11-27 07:40:34'),
(5681, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 07:40:35', '2024-11-27 07:40:35'),
(5682, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 07:40:55', '2024-11-27 07:40:55'),
(5683, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 07:40:58', '2024-11-27 07:40:58'),
(5684, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 07:40:58', '2024-11-27 07:40:58'),
(5685, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:00', '2024-11-27 07:41:00'),
(5686, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:10', '2024-11-27 07:41:10'),
(5687, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:10', '2024-11-27 07:41:10'),
(5688, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:10', '2024-11-27 07:41:10'),
(5689, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:11', '2024-11-27 07:41:11'),
(5690, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:11', '2024-11-27 07:41:11'),
(5691, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:12', '2024-11-27 07:41:12'),
(5692, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:12', '2024-11-27 07:41:12'),
(5693, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:13', '2024-11-27 07:41:13'),
(5694, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:13', '2024-11-27 07:41:13'),
(5695, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:13', '2024-11-27 07:41:13'),
(5696, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:14', '2024-11-27 07:41:14'),
(5697, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:14', '2024-11-27 07:41:14'),
(5698, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:15', '2024-11-27 07:41:15'),
(5699, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:16', '2024-11-27 07:41:16'),
(5700, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:16', '2024-11-27 07:41:16'),
(5701, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:16', '2024-11-27 07:41:16'),
(5702, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:17', '2024-11-27 07:41:17'),
(5703, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:17', '2024-11-27 07:41:17'),
(5704, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:18', '2024-11-27 07:41:18'),
(5705, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:18', '2024-11-27 07:41:18'),
(5706, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:41:19', '2024-11-27 07:41:19'),
(5707, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 07:45:26', '2024-11-27 07:45:26'),
(5708, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 07:45:28', '2024-11-27 07:45:28'),
(5709, 1, 'admin/title-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:45:30', '2024-11-27 07:45:30'),
(5710, 1, 'admin/title-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:45:45', '2024-11-27 07:45:45'),
(5711, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 07:45:49', '2024-11-27 07:45:49'),
(5712, 1, 'admin/title-histories/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 07:45:52', '2024-11-27 07:45:52'),
(5713, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 07:45:54', '2024-11-27 07:45:54'),
(5714, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 07:45:59', '2024-11-27 07:45:59'),
(5715, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 07:50:20', '2024-11-27 07:50:20'),
(5716, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:50:24', '2024-11-27 07:50:24'),
(5717, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 07:50:33', '2024-11-27 07:50:33'),
(5718, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:51:43', '2024-11-27 07:51:43'),
(5719, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:52:38', '2024-11-27 07:52:38'),
(5720, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:52:39', '2024-11-27 07:52:39'),
(5721, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:52:55', '2024-11-27 07:52:55'),
(5722, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:52:56', '2024-11-27 07:52:56'),
(5723, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:53:06', '2024-11-27 07:53:06'),
(5724, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:53:06', '2024-11-27 07:53:06'),
(5725, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:53:13', '2024-11-27 07:53:13'),
(5726, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:53:14', '2024-11-27 07:53:14'),
(5727, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:53:19', '2024-11-27 07:53:19'),
(5728, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:53:20', '2024-11-27 07:53:20'),
(5729, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:53:31', '2024-11-27 07:53:31'),
(5730, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:53:41', '2024-11-27 07:53:41'),
(5731, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:53:41', '2024-11-27 07:53:41'),
(5732, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:53:41', '2024-11-27 07:53:41'),
(5733, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:53:48', '2024-11-27 07:53:48'),
(5734, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:54:22', '2024-11-27 07:54:22'),
(5735, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:54:23', '2024-11-27 07:54:23'),
(5736, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:54:56', '2024-11-27 07:54:56'),
(5737, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:55:21', '2024-11-27 07:55:21'),
(5738, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:55:34', '2024-11-27 07:55:34'),
(5739, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:57:20', '2024-11-27 07:57:20'),
(5740, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 07:59:14', '2024-11-27 07:59:14'),
(5741, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:00:01', '2024-11-27 08:00:01'),
(5742, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:00:51', '2024-11-27 08:00:51'),
(5743, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:00:51', '2024-11-27 08:00:51'),
(5744, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:00:52', '2024-11-27 08:00:52'),
(5745, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:00', '2024-11-27 08:02:00'),
(5746, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:52', '2024-11-27 08:02:52'),
(5747, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:53', '2024-11-27 08:02:53'),
(5748, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:53', '2024-11-27 08:02:53'),
(5749, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:54', '2024-11-27 08:02:54'),
(5750, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:54', '2024-11-27 08:02:54'),
(5751, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:55', '2024-11-27 08:02:55'),
(5752, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:55', '2024-11-27 08:02:55'),
(5753, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:56', '2024-11-27 08:02:56'),
(5754, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:56', '2024-11-27 08:02:56'),
(5755, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:56', '2024-11-27 08:02:56'),
(5756, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:57', '2024-11-27 08:02:57'),
(5757, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:57', '2024-11-27 08:02:57'),
(5758, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:58', '2024-11-27 08:02:58'),
(5759, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:58', '2024-11-27 08:02:58'),
(5760, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:59', '2024-11-27 08:02:59'),
(5761, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:59', '2024-11-27 08:02:59'),
(5762, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:02:59', '2024-11-27 08:02:59'),
(5763, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:03:00', '2024-11-27 08:03:00'),
(5764, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:03:00', '2024-11-27 08:03:00'),
(5765, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:03:01', '2024-11-27 08:03:01'),
(5766, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:03:01', '2024-11-27 08:03:01'),
(5767, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:03:02', '2024-11-27 08:03:02'),
(5768, 1, 'admin/additional-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:03:58', '2024-11-27 08:03:58'),
(5769, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:04:15', '2024-11-27 08:04:15'),
(5770, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:04:18', '2024-11-27 08:04:18'),
(5771, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 08:04:19', '2024-11-27 08:04:19'),
(5772, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 08:05:36', '2024-11-27 08:05:36'),
(5773, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:05:37', '2024-11-27 08:05:37'),
(5774, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:05:39', '2024-11-27 08:05:39'),
(5775, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 08:06:13', '2024-11-27 08:06:13'),
(5776, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:06:28', '2024-11-27 08:06:28'),
(5777, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:07:14', '2024-11-27 08:07:14'),
(5778, 1, 'admin/ownership-histories/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 08:07:16', '2024-11-27 08:07:16'),
(5779, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:07:17', '2024-11-27 08:07:17'),
(5780, 1, 'admin/ownership-histories/1', 'GET', '127.0.0.1', '[]', '2024-11-27 08:07:19', '2024-11-27 08:07:19'),
(5781, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:07:22', '2024-11-27 08:07:22'),
(5782, 1, 'admin/title-histories/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 08:07:59', '2024-11-27 08:07:59'),
(5783, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:08:04', '2024-11-27 08:08:04'),
(5784, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:08:29', '2024-11-27 08:08:29'),
(5785, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:08:40', '2024-11-27 08:08:40'),
(5786, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:08:54', '2024-11-27 08:08:54'),
(5787, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:08:55', '2024-11-27 08:08:55'),
(5788, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 08:08:58', '2024-11-27 08:08:58'),
(5789, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:09:00', '2024-11-27 08:09:00'),
(5790, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:09:02', '2024-11-27 08:09:02'),
(5791, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:09:03', '2024-11-27 08:09:03'),
(5792, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:09:06', '2024-11-27 08:09:06'),
(5793, 1, 'admin/additional-histories/2', 'GET', '127.0.0.1', '[]', '2024-11-27 08:14:29', '2024-11-27 08:14:29'),
(5794, 1, 'admin/additional-histories/2', 'GET', '127.0.0.1', '[]', '2024-11-27 08:15:06', '2024-11-27 08:15:06'),
(5795, 1, 'admin/additional-histories/2', 'GET', '127.0.0.1', '[]', '2024-11-27 08:15:24', '2024-11-27 08:15:24'),
(5796, 1, 'admin/additional-histories/2', 'GET', '127.0.0.1', '[]', '2024-11-27 08:15:25', '2024-11-27 08:15:25'),
(5797, 1, 'admin/additional-histories/2', 'GET', '127.0.0.1', '[]', '2024-11-27 08:16:40', '2024-11-27 08:16:40'),
(5798, 1, 'admin/additional-histories/2', 'GET', '127.0.0.1', '[]', '2024-11-27 08:33:44', '2024-11-27 08:33:44'),
(5799, 1, 'admin/additional-histories/2', 'GET', '127.0.0.1', '[]', '2024-11-27 08:35:46', '2024-11-27 08:35:46'),
(5800, 1, 'admin/additional-histories/2', 'GET', '127.0.0.1', '[]', '2024-11-27 08:36:02', '2024-11-27 08:36:02'),
(5801, 1, 'admin/additional-histories/2', 'GET', '127.0.0.1', '[]', '2024-11-27 08:36:03', '2024-11-27 08:36:03'),
(5802, 1, 'admin/additional-histories/2', 'GET', '127.0.0.1', '[]', '2024-11-27 08:36:03', '2024-11-27 08:36:03'),
(5803, 1, 'admin/additional-histories/2', 'GET', '127.0.0.1', '[]', '2024-11-27 08:36:20', '2024-11-27 08:36:20'),
(5804, 1, 'admin/additional-histories/2', 'GET', '127.0.0.1', '[]', '2024-11-27 08:36:28', '2024-11-27 08:36:28'),
(5805, 1, 'admin/additional-histories/2', 'GET', '127.0.0.1', '[]', '2024-11-27 08:36:50', '2024-11-27 08:36:50'),
(5806, 1, 'admin/additional-histories/2', 'GET', '127.0.0.1', '[]', '2024-11-27 08:36:51', '2024-11-27 08:36:51'),
(5807, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:36:58', '2024-11-27 08:36:58'),
(5808, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 08:37:02', '2024-11-27 08:37:02'),
(5809, 1, 'admin/additional-histories/2/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 08:37:36', '2024-11-27 08:37:36'),
(5810, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:37:39', '2024-11-27 08:37:39'),
(5811, 1, 'admin/additional-histories/2', 'GET', '127.0.0.1', '[]', '2024-11-27 08:37:48', '2024-11-27 08:37:48'),
(5812, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:37:54', '2024-11-27 08:37:54'),
(5813, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:37:55', '2024-11-27 08:37:55'),
(5814, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:37:59', '2024-11-27 08:37:59'),
(5815, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 08:55:03', '2024-11-27 08:55:03'),
(5816, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 08:55:05', '2024-11-27 08:55:05'),
(5817, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 08:56:42', '2024-11-27 08:56:42'),
(5818, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 08:56:59', '2024-11-27 08:56:59'),
(5819, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 08:57:40', '2024-11-27 08:57:40'),
(5820, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 08:58:39', '2024-11-27 08:58:39'),
(5821, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 08:58:56', '2024-11-27 08:58:56'),
(5822, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 08:59:04', '2024-11-27 08:59:04'),
(5823, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 08:59:27', '2024-11-27 08:59:27'),
(5824, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 09:00:03', '2024-11-27 09:00:03'),
(5825, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 09:03:34', '2024-11-27 09:03:34'),
(5826, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 09:04:07', '2024-11-27 09:04:07'),
(5827, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 09:04:18', '2024-11-27 09:04:18'),
(5828, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 09:05:06', '2024-11-27 09:05:06'),
(5829, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 09:05:22', '2024-11-27 09:05:22'),
(5830, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 09:05:23', '2024-11-27 09:05:23'),
(5831, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 09:06:00', '2024-11-27 09:06:00'),
(5832, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 09:06:17', '2024-11-27 09:06:17'),
(5833, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 09:06:24', '2024-11-27 09:06:24'),
(5834, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-27 10:08:03', '2024-11-27 10:08:03'),
(5835, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"ownersList\",\"model_name\":\"App\\\\Models\\\\ownersList\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\ownersListController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"0\":{\"name\":\"vId\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"1\":{\"name\":\"vName\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"2\":{\"name\":\"ownerNo\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"purchased\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"4\":{\"name\":\"subtitle\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"details\",\"type\":\"json\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 10:13:36', '2024-11-27 10:13:36'),
(5836, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-27 10:13:36', '2024-11-27 10:13:36'),
(5837, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 10:14:03', '2024-11-27 10:14:03'),
(5838, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:14:15', '2024-11-27 10:14:15'),
(5839, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 10:14:23', '2024-11-27 10:14:23'),
(5840, 1, 'admin/auth/menu/63/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 10:14:26', '2024-11-27 10:14:26'),
(5841, 1, 'admin/auth/menu/63', 'PUT', '127.0.0.1', '{\"parent_id\":\"57\",\"search_terms\":null,\"title\":\"Owners lists\",\"icon\":\"icon-user-clock\",\"uri\":\"owners-lists\",\"roles\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 10:15:49', '2024-11-27 10:15:49'),
(5842, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 10:15:49', '2024-11-27 10:15:49'),
(5843, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 10:15:54', '2024-11-27 10:15:54'),
(5844, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:15:59', '2024-11-27 10:15:59'),
(5845, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:25:43', '2024-11-27 10:25:43'),
(5846, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 10:26:03', '2024-11-27 10:26:03'),
(5847, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-27 10:26:11', '2024-11-27 10:26:11'),
(5848, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-27 10:26:16', '2024-11-27 10:26:16'),
(5849, 1, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '[]', '2024-11-27 10:26:18', '2024-11-27 10:26:18'),
(5850, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 10:26:20', '2024-11-27 10:26:20'),
(5851, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:28:15', '2024-11-27 10:28:15'),
(5852, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:28:28', '2024-11-27 10:28:28'),
(5853, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:29:01', '2024-11-27 10:29:01'),
(5854, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:29:25', '2024-11-27 10:29:25'),
(5855, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:29:47', '2024-11-27 10:29:47'),
(5856, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:31:06', '2024-11-27 10:31:06'),
(5857, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:31:17', '2024-11-27 10:31:17'),
(5858, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:31:17', '2024-11-27 10:31:17'),
(5859, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:34:43', '2024-11-27 10:34:43'),
(5860, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:35:28', '2024-11-27 10:35:28'),
(5861, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:36:05', '2024-11-27 10:36:05'),
(5862, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:37:22', '2024-11-27 10:37:22'),
(5863, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:38:12', '2024-11-27 10:38:12'),
(5864, 1, 'admin/owners-lists', 'POST', '127.0.0.1', '{\"vId\":\"bFqO69\",\"search_terms\":null,\"ownerNo\":\"1\",\"purchased\":\"2017\",\"subtitle\":\"personal vehicle\",\"details\":{\"new_1\":{\"date\":\"2024-11-04\",\"mileage\":\"1000\",\"source\":\"tennesse\",\"comments\":\"something\",\"_remove_\":\"0\"},\"new_2\":{\"date\":\"2024-10-29\",\"mileage\":\"1000\",\"source\":\"tennse2\",\"comments\":\"something2\",\"_remove_\":\"0\"}},\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 10:45:55', '2024-11-27 10:45:55'),
(5865, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:45:55', '2024-11-27 10:45:55'),
(5866, 1, 'admin/owners-lists', 'POST', '127.0.0.1', '{\"vId\":\"bFqO69\",\"search_terms\":null,\"ownerNo\":\"1\",\"purchased\":\"2017\",\"subtitle\":\"personal vehicle\",\"details\":{\"new_1\":{\"date\":\"2024-11-04\",\"mileage\":\"1000\",\"source\":\"tennesse\",\"comments\":\"something\",\"_remove_\":\"0\"},\"new_2\":{\"date\":\"2024-10-29\",\"mileage\":\"1000\",\"source\":\"tennse2\",\"comments\":\"something2\",\"_remove_\":\"0\"}},\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 10:47:06', '2024-11-27 10:47:06'),
(5867, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:47:06', '2024-11-27 10:47:06'),
(5868, 1, 'admin/owners-lists', 'POST', '127.0.0.1', '{\"vId\":\"bFqO69\",\"search_terms\":null,\"ownerNo\":\"1\",\"purchased\":\"2017\",\"subtitle\":\"personal vehicle\",\"details\":{\"new_1\":{\"date\":\"2024-11-04\",\"mileage\":\"1000\",\"source\":\"tennesse\",\"comments\":\"something\",\"_remove_\":\"0\"},\"new_2\":{\"date\":\"2024-10-29\",\"mileage\":\"1000\",\"source\":\"tennse2\",\"comments\":\"something2\",\"_remove_\":\"0\"}},\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 10:49:55', '2024-11-27 10:49:55'),
(5869, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 10:49:55', '2024-11-27 10:49:55'),
(5870, 1, 'admin/owners-lists', 'POST', '127.0.0.1', '{\"vId\":\"bFqO69\",\"search_terms\":null,\"ownerNo\":\"1\",\"purchased\":\"2017\",\"subtitle\":\"personal vehicle\",\"details\":{\"new_1\":{\"date\":\"2024-11-04\",\"mileage\":\"1000\",\"source\":\"tennesse\",\"comments\":\"something\",\"_remove_\":\"0\"},\"new_2\":{\"date\":\"2024-10-29\",\"mileage\":\"1000\",\"source\":\"tennse2\",\"comments\":\"something2\",\"_remove_\":\"0\"}},\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 10:51:01', '2024-11-27 10:51:01'),
(5871, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:51:01', '2024-11-27 10:51:01'),
(5872, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:51:17', '2024-11-27 10:51:17'),
(5873, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:51:23', '2024-11-27 10:51:23'),
(5874, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:55:13', '2024-11-27 10:55:13'),
(5875, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:55:15', '2024-11-27 10:55:15'),
(5876, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:55:49', '2024-11-27 10:55:49'),
(5877, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:55:57', '2024-11-27 10:55:57'),
(5878, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:55:57', '2024-11-27 10:55:57'),
(5879, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:56:14', '2024-11-27 10:56:14'),
(5880, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:56:15', '2024-11-27 10:56:15'),
(5881, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:56:17', '2024-11-27 10:56:17'),
(5882, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:57:37', '2024-11-27 10:57:37'),
(5883, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:58:50', '2024-11-27 10:58:50'),
(5884, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 10:59:54', '2024-11-27 10:59:54'),
(5885, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:02:08', '2024-11-27 11:02:08'),
(5886, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:02:27', '2024-11-27 11:02:27'),
(5887, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:03:10', '2024-11-27 11:03:10'),
(5888, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:03:43', '2024-11-27 11:03:43'),
(5889, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:04:05', '2024-11-27 11:04:05'),
(5890, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:05:50', '2024-11-27 11:05:50'),
(5891, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:06:08', '2024-11-27 11:06:08'),
(5892, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:07:13', '2024-11-27 11:07:13'),
(5893, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:07:46', '2024-11-27 11:07:46'),
(5894, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:08:34', '2024-11-27 11:08:34'),
(5895, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:08:49', '2024-11-27 11:08:49'),
(5896, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:08:56', '2024-11-27 11:08:56'),
(5897, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:10:21', '2024-11-27 11:10:21'),
(5898, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:14:22', '2024-11-27 11:14:22'),
(5899, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:14:34', '2024-11-27 11:14:34'),
(5900, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:15:28', '2024-11-27 11:15:28'),
(5901, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:15:52', '2024-11-27 11:15:52'),
(5902, 1, 'admin/vehicle-history-reports/8', 'GET', '127.0.0.1', '[]', '2024-11-27 11:15:54', '2024-11-27 11:15:54'),
(5903, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:16:48', '2024-11-27 11:16:48'),
(5904, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:17:06', '2024-11-27 11:17:06'),
(5905, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:17:16', '2024-11-27 11:17:16'),
(5906, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:17:33', '2024-11-27 11:17:33'),
(5907, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:18:29', '2024-11-27 11:18:29'),
(5908, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:18:43', '2024-11-27 11:18:43'),
(5909, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:18:55', '2024-11-27 11:18:55'),
(5910, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:19:00', '2024-11-27 11:19:00'),
(5911, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:19:16', '2024-11-27 11:19:16'),
(5912, 1, 'admin/owners-lists/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 11:19:45', '2024-11-27 11:19:45'),
(5913, 1, 'admin/owners-lists/1', 'PUT', '127.0.0.1', '{\"vId\":\"bFqO69\",\"search_terms\":null,\"ownerNo\":\"1\",\"purchased\":\"2017\",\"subtitle\":\"personal vehicle\",\"details\":{\"new_1\":{\"date\":\"2024-11-04\",\"mileage\":\"1000\",\"source\":\"tennesse\",\"comments\":\"something\",\"_remove_\":\"0\"},\"new_2\":{\"date\":\"2024-10-29\",\"mileage\":\"1000\",\"source\":\"tennse2\",\"comments\":\"something2\",\"_remove_\":\"0\"}},\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 11:19:49', '2024-11-27 11:19:49'),
(5914, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:19:50', '2024-11-27 11:19:50'),
(5915, 1, 'admin/owners-lists/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 11:19:51', '2024-11-27 11:19:51'),
(5916, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:19:57', '2024-11-27 11:19:57'),
(5917, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:19:58', '2024-11-27 11:19:58'),
(5918, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:19:58', '2024-11-27 11:19:58'),
(5919, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:19:59', '2024-11-27 11:19:59'),
(5920, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:19:59', '2024-11-27 11:19:59'),
(5921, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:00', '2024-11-27 11:20:00'),
(5922, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:00', '2024-11-27 11:20:00'),
(5923, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:01', '2024-11-27 11:20:01'),
(5924, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:01', '2024-11-27 11:20:01'),
(5925, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:01', '2024-11-27 11:20:01'),
(5926, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:02', '2024-11-27 11:20:02'),
(5927, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:02', '2024-11-27 11:20:02'),
(5928, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:03', '2024-11-27 11:20:03'),
(5929, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:03', '2024-11-27 11:20:03'),
(5930, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:04', '2024-11-27 11:20:04'),
(5931, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:04', '2024-11-27 11:20:04'),
(5932, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:04', '2024-11-27 11:20:04'),
(5933, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:05', '2024-11-27 11:20:05'),
(5934, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:05', '2024-11-27 11:20:05'),
(5935, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:06', '2024-11-27 11:20:06'),
(5936, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:06', '2024-11-27 11:20:06'),
(5937, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:20:06', '2024-11-27 11:20:06'),
(5938, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:21:43', '2024-11-27 11:21:43'),
(5939, 1, 'admin/owners-lists/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 11:21:49', '2024-11-27 11:21:49'),
(5940, 1, 'admin/media', 'GET', '127.0.0.1', '[]', '2024-11-27 11:21:52', '2024-11-27 11:21:52'),
(5941, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:21:54', '2024-11-27 11:21:54'),
(5942, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:21:56', '2024-11-27 11:21:56'),
(5943, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:21:57', '2024-11-27 11:21:57'),
(5944, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:21:57', '2024-11-27 11:21:57'),
(5945, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:21:58', '2024-11-27 11:21:58'),
(5946, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:21:58', '2024-11-27 11:21:58'),
(5947, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:21:58', '2024-11-27 11:21:58'),
(5948, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:21:59', '2024-11-27 11:21:59'),
(5949, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:21:59', '2024-11-27 11:21:59'),
(5950, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:00', '2024-11-27 11:22:00'),
(5951, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:00', '2024-11-27 11:22:00'),
(5952, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:01', '2024-11-27 11:22:01'),
(5953, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:01', '2024-11-27 11:22:01'),
(5954, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:02', '2024-11-27 11:22:02'),
(5955, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:02', '2024-11-27 11:22:02'),
(5956, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:03', '2024-11-27 11:22:03'),
(5957, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:03', '2024-11-27 11:22:03'),
(5958, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:04', '2024-11-27 11:22:04'),
(5959, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:04', '2024-11-27 11:22:04'),
(5960, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:04', '2024-11-27 11:22:04'),
(5961, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:05', '2024-11-27 11:22:05'),
(5962, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:05', '2024-11-27 11:22:05'),
(5963, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:25', '2024-11-27 11:22:25'),
(5964, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:26', '2024-11-27 11:22:26'),
(5965, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:26', '2024-11-27 11:22:26'),
(5966, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:27', '2024-11-27 11:22:27'),
(5967, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:27', '2024-11-27 11:22:27'),
(5968, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:27', '2024-11-27 11:22:27'),
(5969, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:28', '2024-11-27 11:22:28'),
(5970, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:22:28', '2024-11-27 11:22:28'),
(5971, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:23:05', '2024-11-27 11:23:05'),
(5972, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:23:14', '2024-11-27 11:23:14'),
(5973, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:24:03', '2024-11-27 11:24:03'),
(5974, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:24:16', '2024-11-27 11:24:16'),
(5975, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:25:22', '2024-11-27 11:25:22'),
(5976, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:28:14', '2024-11-27 11:28:14'),
(5977, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:31:34', '2024-11-27 11:31:34'),
(5978, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:33:58', '2024-11-27 11:33:58'),
(5979, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:34:06', '2024-11-27 11:34:06'),
(5980, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:34:59', '2024-11-27 11:34:59'),
(5981, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:35:00', '2024-11-27 11:35:00'),
(5982, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:35:21', '2024-11-27 11:35:21'),
(5983, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:35:50', '2024-11-27 11:35:50'),
(5984, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:37:05', '2024-11-27 11:37:05'),
(5985, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:38:24', '2024-11-27 11:38:24'),
(5986, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:39:07', '2024-11-27 11:39:07'),
(5987, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:39:08', '2024-11-27 11:39:08'),
(5988, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:39:12', '2024-11-27 11:39:12'),
(5989, 1, 'admin/owners-lists/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 11:39:19', '2024-11-27 11:39:19'),
(5990, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:39:20', '2024-11-27 11:39:20'),
(5991, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:39:22', '2024-11-27 11:39:22'),
(5992, 1, 'admin/owners-lists/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 11:39:27', '2024-11-27 11:39:27'),
(5993, 1, 'admin/owners-lists/1', 'PUT', '127.0.0.1', '{\"vId\":\"bFqO69\",\"search_terms\":null,\"ownerNo\":\"1\",\"purchased\":\"2017\",\"subtitle\":\"personal vehicle\",\"details\":{\"new_1\":{\"date\":\"2024-11-04\",\"mileage\":\"1000\",\"source\":\"tennesse\",\"comments\":\"something\",\"_remove_\":\"0\"},\"new_2\":{\"date\":\"2024-10-29\",\"mileage\":\"1000\",\"source\":\"tennse2\",\"comments\":\"something2\\r\\nasmn. aksn a,sl asxkas xkasx asxkaks as xlas as as aiasasdknja sa\",\"_remove_\":\"0\"}},\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 11:39:41', '2024-11-27 11:39:41'),
(5994, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:39:42', '2024-11-27 11:39:42'),
(5995, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:39:45', '2024-11-27 11:39:45'),
(5996, 1, 'admin/owners-lists/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 11:39:54', '2024-11-27 11:39:54'),
(5997, 1, 'admin/owners-lists/1', 'PUT', '127.0.0.1', '{\"vId\":\"bFqO69\",\"search_terms\":null,\"ownerNo\":\"1\",\"purchased\":\"2017\",\"subtitle\":\"personal vehicle\",\"details\":{\"new_1\":{\"date\":\"2024-11-04\",\"mileage\":\"1000\",\"source\":\"tennesse\",\"comments\":\"something\",\"_remove_\":\"0\"},\"new_2\":{\"date\":\"2024-10-29\",\"mileage\":\"1000\",\"source\":\"tennse2\",\"comments\":\"something2\\r\\nasmn. aksn a,sl asxkas xkasx asxkaks as xlas as as aiasasdknja sa aksb masxk xcqsx kajskas asiuhd asoas dajsdsdiadasadodas. weduiwuehoowqhoioe qw eioiqoiwheqw. qweuqwe qw \\r\\nqwjkenqw\\r\\n\\r\\nqwahejjqwe\\r\\nqwe\",\"_remove_\":\"0\"}},\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 11:40:15', '2024-11-27 11:40:15'),
(5998, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:40:16', '2024-11-27 11:40:16'),
(5999, 1, 'admin/owners-lists/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:40:17', '2024-11-27 11:40:17'),
(6000, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:40:44', '2024-11-27 11:40:44'),
(6001, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:41:30', '2024-11-27 11:41:30'),
(6002, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:42:20', '2024-11-27 11:42:20'),
(6003, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:42:40', '2024-11-27 11:42:40'),
(6004, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:43:27', '2024-11-27 11:43:27'),
(6005, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:43:35', '2024-11-27 11:43:35'),
(6006, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:43:56', '2024-11-27 11:43:56'),
(6007, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:44:26', '2024-11-27 11:44:26'),
(6008, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:44:43', '2024-11-27 11:44:43'),
(6009, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 11:45:17', '2024-11-27 11:45:17'),
(6010, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-27 11:47:46', '2024-11-27 11:47:46'),
(6011, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"glossary\",\"model_name\":\"App\\\\Models\\\\glossary\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\glossaryController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":[{\"name\":\"title\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},{\"name\":\"desc\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}],\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 11:50:16', '2024-11-27 11:50:16'),
(6012, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-27 11:50:16', '2024-11-27 11:50:16'),
(6013, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 11:50:32', '2024-11-27 11:50:32'),
(6014, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 11:50:34', '2024-11-27 11:50:34'),
(6015, 1, 'admin/glossaries/create', 'GET', '127.0.0.1', '[]', '2024-11-27 11:51:19', '2024-11-27 11:51:19'),
(6016, 1, 'admin/glossaries', 'POST', '127.0.0.1', '{\"title\":\"first owner\",\"desc\":\"manufacturer recall\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 11:51:45', '2024-11-27 11:51:45'),
(6017, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 11:51:46', '2024-11-27 11:51:46'),
(6018, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 11:52:31', '2024-11-27 11:52:31'),
(6019, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 11:52:57', '2024-11-27 11:52:57'),
(6020, 1, 'admin/glossaries/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 11:52:58', '2024-11-27 11:52:58'),
(6021, 1, 'admin/glossaries/1', 'PUT', '127.0.0.1', '{\"title\":\"first owner\",\"desc\":\"manufacturer recall\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 11:53:02', '2024-11-27 11:53:02'),
(6022, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 11:53:03', '2024-11-27 11:53:03'),
(6023, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 11:53:43', '2024-11-27 11:53:43'),
(6024, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 11:53:55', '2024-11-27 11:53:55'),
(6025, 1, 'admin/glossaries/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:54:00', '2024-11-27 11:54:00'),
(6026, 1, 'admin/glossaries/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:54:28', '2024-11-27 11:54:28'),
(6027, 1, 'admin/glossaries/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:54:29', '2024-11-27 11:54:29'),
(6028, 1, 'admin/glossaries/1', 'GET', '127.0.0.1', '[]', '2024-11-27 11:54:50', '2024-11-27 11:54:50'),
(6029, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 11:54:55', '2024-11-27 11:54:55'),
(6030, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-27 11:55:58', '2024-11-27 11:55:58'),
(6031, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"reportSetting\",\"model_name\":\"App\\\\Models\\\\reportSetting\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\reportSettingController\",\"create\":[\"migration\",\"model\",\"controller\",\"migrate\",\"menu_item\"],\"fields\":{\"0\":{\"name\":\"vehicleHistoryReportDesc\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"1\":{\"name\":\"titleHistoryDesc\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"3\":{\"name\":\"facebookLink\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"5\":{\"name\":\"showFacebook\",\"type\":\"boolean\",\"key\":null,\"default\":\"0\",\"comment\":null},\"4\":{\"name\":\"instagaramLink\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"6\":{\"name\":\"showInstagaram\",\"type\":\"boolean\",\"key\":null,\"default\":\"0\",\"comment\":null},\"7\":{\"name\":\"whatsappLink\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"8\":{\"name\":\"showWhatsapp\",\"type\":\"boolean\",\"key\":null,\"default\":\"0\",\"comment\":null},\"2\":{\"name\":\"socialmediaDesc\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"9\":{\"name\":\"rightReservedDesc\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null},\"10\":{\"name\":\"signatureDesc\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":null}},\"timestamps\":\"on\",\"soft_deletes\":\"on\",\"primary_key\":\"id\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:06:55', '2024-11-27 12:06:55'),
(6032, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2024-11-27 12:06:56', '2024-11-27 12:06:56'),
(6033, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 12:07:11', '2024-11-27 12:07:11'),
(6034, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:07:13', '2024-11-27 12:07:13'),
(6035, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:12:52', '2024-11-27 12:12:52'),
(6036, 1, 'admin/report-settings/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:12:56', '2024-11-27 12:12:56'),
(6037, 1, 'admin/report-settings/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:13:12', '2024-11-27 12:13:12'),
(6038, 1, 'admin/report-settings/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:13:27', '2024-11-27 12:13:27'),
(6039, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:14:23', '2024-11-27 12:14:23'),
(6040, 1, 'admin/report-settings/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:14:26', '2024-11-27 12:14:26'),
(6041, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 12:17:26', '2024-11-27 12:17:26'),
(6042, 1, 'admin/glossaries/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 12:17:30', '2024-11-27 12:17:30'),
(6043, 1, 'admin/glossaries/1', 'PUT', '127.0.0.1', '{\"title\":\"First Owner\",\"desc\":\"When the first owner(s) obtains a title from a Department of Motor Vehicles as proof of ownership.\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 12:17:58', '2024-11-27 12:17:58'),
(6044, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 12:17:58', '2024-11-27 12:17:58'),
(6045, 1, 'admin/glossaries/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:18:03', '2024-11-27 12:18:03'),
(6046, 1, 'admin/glossaries', 'POST', '127.0.0.1', '{\"title\":\"Manufacturer Recall\",\"desc\":\"Automobile manufacturers issue recall notices to inform vehicle owners of a safety defect or failure to meet minimum federal safety or emissions standards. Manufacturer recalls are repaired at no cost to the customer.\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:18:26', '2024-11-27 12:18:26');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(6047, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 12:18:26', '2024-11-27 12:18:26'),
(6048, 1, 'admin/glossaries/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:18:28', '2024-11-27 12:18:28'),
(6049, 1, 'admin/glossaries', 'POST', '127.0.0.1', '{\"title\":\"New Owner Reported\",\"desc\":\"When a vehicle is sold to a new owner, the Title must be transferred to the new owner(s) at a Department of Motor Vehicles.\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:18:46', '2024-11-27 12:18:46'),
(6050, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 12:18:46', '2024-11-27 12:18:46'),
(6051, 1, 'admin/glossaries/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:18:53', '2024-11-27 12:18:53'),
(6052, 1, 'admin/glossaries', 'POST', '127.0.0.1', '{\"title\":\"Ownership History\",\"desc\":\"CARFAX defines an owner as an individual or business that possesses and uses a vehicle. Not all title transactions represent changes in ownership. To provide the estimated number of owners, CARFAX proprietary technology analyzes all the events in a vehicle history. Estimated ownership is available for vehicles manufactured after 1991 and titled solely in the US including Puerto Rico. Dealers sometimes opt to take ownership of a vehicle and are required to in the following states: Maine, Massachusetts, New Jersey, Ohio, Oklahoma, Pennsylvania, and South Dakota. Please consider this as you review a vehicle\'s estimated ownership history.\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:19:28', '2024-11-27 12:19:28'),
(6053, 1, 'admin/glossaries/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:19:28', '2024-11-27 12:19:28'),
(6054, 1, 'admin/glossaries', 'POST', '127.0.0.1', '{\"title\":\"Ownership History\",\"desc\":\"CARFAX defines an owner as an individual or business that possesses and uses a vehicle. Not all title transactions represent changes in ownership. To provide the estimated number of owners, CARFAX proprietary technology analyzes all the events in a vehicle history. Estimated ownership is available for vehicles manufactured after 1991 and titled solely in the US including Puerto Rico. Dealers sometimes opt to take ownership of a vehicle and are required to in the following states: Maine, Massachusetts, New Jersey, Ohio, Oklahoma, Pennsylvania, and South Dakota. Please consider this as you review a vehicle\'s estimated ownership history.\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:21:16', '2024-11-27 12:21:16'),
(6055, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 12:21:16', '2024-11-27 12:21:16'),
(6056, 1, 'admin/glossaries/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:21:19', '2024-11-27 12:21:19'),
(6057, 1, 'admin/glossaries/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:21:32', '2024-11-27 12:21:32'),
(6058, 1, 'admin/glossaries', 'POST', '127.0.0.1', '{\"title\":\"Title Issued\",\"desc\":\"A state issues a title to provide a vehicle owner with proof of ownership. Each title has a unique number. Each title or registration record on a CARFAX report does not necessarily indicate a change in ownership. In Canada, a registration and bill of sale are used as proof of ownership.\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:21:45', '2024-11-27 12:21:45'),
(6059, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 12:21:45', '2024-11-27 12:21:45'),
(6060, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-27 12:21:50', '2024-11-27 12:21:50'),
(6061, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 12:21:54', '2024-11-27 12:21:54'),
(6062, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:21:58', '2024-11-27 12:21:58'),
(6063, 1, 'admin/report-settings/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:21:59', '2024-11-27 12:21:59'),
(6064, 1, 'admin/report-settings', 'POST', '127.0.0.1', '{\"vehicleHistoryReportDesc\":null,\"titleHistoryDesc\":null,\"facebookLink\":\"facebook.com\",\"showFacebook\":null,\"instagaramLink\":\"instagaram.com\",\"showInstagaram\":null,\"whatsappLink\":\"whatsapp.com\",\"showWhatsapp\":null,\"socialmediaDesc\":\"CARFAX DEPENDS ON ITS SOURCES FOR THE ACCURACY AND RELIABILITY OF ITS INFORMATION. THEREFORE, NO RESPONSIBILITY IS ASSUMED BY CARFAX OR ITS AGENTS FOR ERRORS OR OMISSIONS IN THIS REPORT. CARFAX FURTHER EXPRESSLY DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.\",\"rightReservedDesc\":\"\\u00a9 2024 CARFAX, Inc., part of S&P Global. All rights reserved.\\r\\n9\\/29\\/24 4:00:19 PM (CDT)\",\"signatureDesc\":\"I have reviewed and received a copy of the CARFAX Vehicle History Report for this 2004 JEEP LIBERTY vehicle (VIN: 1J4GL58K14W295826), which is based on information supplied to CARFAX and available as of 9\\/29\\/24 at 5:00 PM (EDT).\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:23:21', '2024-11-27 12:23:21'),
(6065, 1, 'admin/report-settings/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:23:22', '2024-11-27 12:23:22'),
(6066, 1, 'admin/report-settings', 'POST', '127.0.0.1', '{\"vehicleHistoryReportDesc\":null,\"titleHistoryDesc\":null,\"facebookLink\":\"facebook.com\",\"showFacebook\":null,\"instagaramLink\":\"instagaram.com\",\"showInstagaram\":null,\"whatsappLink\":\"whatsapp.com\",\"showWhatsapp\":null,\"socialmediaDesc\":\"CARFAX DEPENDS ON ITS SOURCES FOR THE ACCURACY AND RELIABILITY OF ITS INFORMATION. THEREFORE, NO RESPONSIBILITY IS ASSUMED BY CARFAX OR ITS AGENTS FOR ERRORS OR OMISSIONS IN THIS REPORT. CARFAX FURTHER EXPRESSLY DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.\",\"rightReservedDesc\":\"\\u00a9 2024 CARFAX, Inc., part of S&P Global. All rights reserved.\\r\\n9\\/29\\/24 4:00:19 PM (CDT)\",\"signatureDesc\":\"I have reviewed and received a copy of the CARFAX Vehicle History Report for this 2004 JEEP LIBERTY vehicle (VIN: 1J4GL58K14W295826), which is based on information supplied to CARFAX and available as of 9\\/29\\/24 at 5:00 PM (EDT).\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:24:57', '2024-11-27 12:24:57'),
(6067, 1, 'admin/report-settings/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:24:58', '2024-11-27 12:24:58'),
(6068, 1, 'admin/report-settings', 'POST', '127.0.0.1', '{\"vehicleHistoryReportDesc\":null,\"titleHistoryDesc\":null,\"facebookLink\":\"facebook.com\",\"showFacebook\":\"on\",\"showFacebook_cb\":\"on\",\"instagaramLink\":\"instagaram.com\",\"showInstagaram\":\"on\",\"showInstagaram_cb\":\"on\",\"whatsappLink\":\"whatsapp.com\",\"showWhatsapp\":\"on\",\"showWhatsapp_cb\":\"on\",\"socialmediaDesc\":\"CARFAX DEPENDS ON ITS SOURCES FOR THE ACCURACY AND RELIABILITY OF ITS INFORMATION. THEREFORE, NO RESPONSIBILITY IS ASSUMED BY CARFAX OR ITS AGENTS FOR ERRORS OR OMISSIONS IN THIS REPORT. CARFAX FURTHER EXPRESSLY DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.\",\"rightReservedDesc\":\"\\u00a9 2024 CARFAX, Inc., part of S&P Global. All rights reserved.\\r\\n9\\/29\\/24 4:00:19 PM (CDT)\",\"signatureDesc\":\"I have reviewed and received a copy of the CARFAX Vehicle History Report for this 2004 JEEP LIBERTY vehicle (VIN: 1J4GL58K14W295826), which is based on information supplied to CARFAX and available as of 9\\/29\\/24 at 5:00 PM (EDT).\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:25:10', '2024-11-27 12:25:10'),
(6069, 1, 'admin/report-settings/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:25:10', '2024-11-27 12:25:10'),
(6070, 1, 'admin/report-settings', 'POST', '127.0.0.1', '{\"vehicleHistoryReportDesc\":null,\"titleHistoryDesc\":null,\"facebookLink\":\"facebook.com\",\"showFacebook\":\"on\",\"showFacebook_cb\":\"on\",\"instagaramLink\":\"instagaram.com\",\"showInstagaram\":\"on\",\"showInstagaram_cb\":\"on\",\"whatsappLink\":\"whatsapp.com\",\"showWhatsapp\":\"on\",\"showWhatsapp_cb\":\"on\",\"socialmediaDesc\":\"CARFAX DEPENDS ON ITS SOURCES FOR THE ACCURACY AND RELIABILITY OF ITS INFORMATION. THEREFORE, NO RESPONSIBILITY IS ASSUMED BY CARFAX OR ITS AGENTS FOR ERRORS OR OMISSIONS IN THIS REPORT. CARFAX FURTHER EXPRESSLY DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.\",\"rightReservedDesc\":\"\\u00a9 2024 CARFAX, Inc., part of S&P Global. All rights reserved.\\r\\n9\\/29\\/24 4:00:19 PM (CDT)\",\"signatureDesc\":\"I have reviewed and received a copy of the CARFAX Vehicle History Report for this 2004 JEEP LIBERTY vehicle (VIN: 1J4GL58K14W295826), which is based on information supplied to CARFAX and available as of 9\\/29\\/24 at 5:00 PM (EDT).\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:26:46', '2024-11-27 12:26:46'),
(6071, 1, 'admin/report-settings/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:26:47', '2024-11-27 12:26:47'),
(6072, 1, 'admin/report-settings', 'POST', '127.0.0.1', '{\"vehicleHistoryReportDesc\":\"This CARFAX Vehicle History Report is based only on information supplied to CARFAX and available as of 9\\/29\\/24 at 4:00:19 PM (CDT). Other information about this vehicle, including problems, may not have been reported to CARFAX.  Use this report as one important tool, along with a vehicle inspection and test drive, to make a better 1  decision about your next used 2  car.\",\"titleHistoryDesc\":\"GUARANTEED - None of these title problems were reported by a U.S. state Department of Motor Vehicles (DMV). If you find that any of these title problems were reported by a DMV and not included in this report, you may qualify.\\r\\nView Terms | View Certificate\",\"facebookLink\":\"facebook.com\",\"showFacebook\":\"on\",\"showFacebook_cb\":\"on\",\"instagaramLink\":\"instagaram.com\",\"showInstagaram\":\"on\",\"showInstagaram_cb\":\"on\",\"whatsappLink\":\"whatsapp.com\",\"showWhatsapp\":\"on\",\"showWhatsapp_cb\":\"on\",\"socialmediaDesc\":\"CARFAX DEPENDS ON ITS SOURCES FOR THE ACCURACY AND RELIABILITY OF ITS INFORMATION. THEREFORE, NO RESPONSIBILITY IS ASSUMED BY CARFAX OR ITS AGENTS FOR ERRORS OR OMISSIONS IN THIS REPORT. CARFAX FURTHER EXPRESSLY DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.\",\"rightReservedDesc\":\"\\u00a9 2024 CARFAX, Inc., part of S&P Global. All rights reserved.\\r\\n9\\/29\\/24 4:00:19 PM (CDT)\",\"signatureDesc\":\"I have reviewed and received a copy of the CARFAX Vehicle History Report for this 2004 JEEP LIBERTY vehicle (VIN: 1J4GL58K14W295826), which is based on information supplied to CARFAX and available as of 9\\/29\\/24 at 5:00 PM (EDT).\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:30:21', '2024-11-27 12:30:21'),
(6073, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:30:22', '2024-11-27 12:30:22'),
(6074, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:32:27', '2024-11-27 12:32:27'),
(6075, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:32:52', '2024-11-27 12:32:52'),
(6076, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:33:41', '2024-11-27 12:33:41'),
(6077, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:34:02', '2024-11-27 12:34:02'),
(6078, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:34:28', '2024-11-27 12:34:28'),
(6079, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 12:36:22', '2024-11-27 12:36:22'),
(6080, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:36:25', '2024-11-27 12:36:25'),
(6081, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:37:28', '2024-11-27 12:37:28'),
(6082, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:37:59', '2024-11-27 12:37:59'),
(6083, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:38:13', '2024-11-27 12:38:13'),
(6084, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:38:28', '2024-11-27 12:38:28'),
(6085, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:38:46', '2024-11-27 12:38:46'),
(6086, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:39:37', '2024-11-27 12:39:37'),
(6087, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:40:23', '2024-11-27 12:40:23'),
(6088, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:40:30', '2024-11-27 12:40:30'),
(6089, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:40:31', '2024-11-27 12:40:31'),
(6090, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:40:52', '2024-11-27 12:40:52'),
(6091, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:41:14', '2024-11-27 12:41:14'),
(6092, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:41:23', '2024-11-27 12:41:23'),
(6093, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:41:43', '2024-11-27 12:41:43'),
(6094, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:41:51', '2024-11-27 12:41:51'),
(6095, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:42:28', '2024-11-27 12:42:28'),
(6096, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:42:59', '2024-11-27 12:42:59'),
(6097, 1, 'admin/report-settings/create', 'GET', '127.0.0.1', '[]', '2024-11-27 12:43:01', '2024-11-27 12:43:01'),
(6098, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:43:02', '2024-11-27 12:43:02'),
(6099, 1, 'admin/report-settings/1', 'GET', '127.0.0.1', '[]', '2024-11-27 12:43:04', '2024-11-27 12:43:04'),
(6100, 1, 'admin/report-settings/1', 'GET', '127.0.0.1', '[]', '2024-11-27 12:43:36', '2024-11-27 12:43:36'),
(6101, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:43:47', '2024-11-27 12:43:47'),
(6102, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:43:54', '2024-11-27 12:43:54'),
(6103, 1, 'admin/report-settings/1', 'GET', '127.0.0.1', '[]', '2024-11-27 12:43:57', '2024-11-27 12:43:57'),
(6104, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:43:58', '2024-11-27 12:43:58'),
(6105, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 12:44:43', '2024-11-27 12:44:43'),
(6106, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 12:47:52', '2024-11-27 12:47:52'),
(6107, 1, 'admin/auth/menu/65/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 12:47:57', '2024-11-27 12:47:57'),
(6108, 1, 'admin/auth/menu/65', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"PDF settings\",\"icon\":\"icon-file-pdf\",\"uri\":\"report-settings\",\"roles\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 12:49:27', '2024-11-27 12:49:27'),
(6109, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 12:49:27', '2024-11-27 12:49:27'),
(6110, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Report Setting\",\"icon\":\"icon-file-signature\",\"uri\":null,\"roles\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:50:09', '2024-11-27 12:50:09'),
(6111, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 12:50:09', '2024-11-27 12:50:09'),
(6112, 1, 'admin/auth/menu/65/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 12:50:12', '2024-11-27 12:50:12'),
(6113, 1, 'admin/auth/menu/65', 'PUT', '127.0.0.1', '{\"parent_id\":\"66\",\"search_terms\":null,\"title\":\"PDF settings\",\"icon\":\"icon-file-pdf\",\"uri\":\"report-settings\",\"roles\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 12:50:16', '2024-11-27 12:50:16'),
(6114, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 12:50:16', '2024-11-27 12:50:16'),
(6115, 1, 'admin/auth/menu/64/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 12:50:19', '2024-11-27 12:50:19'),
(6116, 1, 'admin/auth/menu/64', 'PUT', '127.0.0.1', '{\"parent_id\":\"66\",\"search_terms\":null,\"title\":\"Glossaries\",\"icon\":\"icon-file-import\",\"uri\":\"glossaries\",\"roles\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 12:50:55', '2024-11-27 12:50:55'),
(6117, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 12:50:55', '2024-11-27 12:50:55'),
(6118, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 12:51:03', '2024-11-27 12:51:03'),
(6119, 1, 'admin/glossaries', 'GET', '127.0.0.1', '[]', '2024-11-27 12:51:14', '2024-11-27 12:51:14'),
(6120, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:51:16', '2024-11-27 12:51:16'),
(6121, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 12:51:23', '2024-11-27 12:51:23'),
(6122, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 12:51:29', '2024-11-27 12:51:29'),
(6123, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"57\\\",\\\"children\\\":[{\\\"id\\\":\\\"59\\\"},{\\\"id\\\":\\\"60\\\"},{\\\"id\\\":\\\"61\\\"},{\\\"id\\\":\\\"62\\\"},{\\\"id\\\":\\\"63\\\"}]},{\\\"id\\\":\\\"66\\\",\\\"children\\\":[{\\\"id\\\":\\\"64\\\"},{\\\"id\\\":\\\"65\\\"}]},{\\\"id\\\":\\\"58\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"},{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"}]}]},{\\\"id\\\":\\\"23\\\"},{\\\"id\\\":\\\"55\\\"},{\\\"id\\\":\\\"56\\\"}]\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:51:34', '2024-11-27 12:51:34'),
(6124, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 12:51:35', '2024-11-27 12:51:35'),
(6125, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 12:51:38', '2024-11-27 12:51:38'),
(6126, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-27 12:51:47', '2024-11-27 12:51:47'),
(6127, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 12:52:49', '2024-11-27 12:52:49'),
(6128, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 12:54:34', '2024-11-27 12:54:34'),
(6129, 1, 'admin/vehicle-history-reports/3', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"showReports\":\"on\",\"after-save\":\"exit\"}', '2024-11-27 12:54:39', '2024-11-27 12:54:39'),
(6130, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 12:54:39', '2024-11-27 12:54:39'),
(6131, 1, 'admin/vehicle-history-reports/3', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"showReports\":\"off\",\"after-save\":\"exit\"}', '2024-11-27 12:54:40', '2024-11-27 12:54:40'),
(6132, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 12:54:40', '2024-11-27 12:54:40'),
(6133, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 12:54:50', '2024-11-27 12:54:50'),
(6134, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 12:55:45', '2024-11-27 12:55:45'),
(6135, 1, 'admin/vehicle-history-reports/3', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"showReports\":\"on\",\"after-save\":\"exit\"}', '2024-11-27 12:57:06', '2024-11-27 12:57:06'),
(6136, 1, 'admin/vehicle-history-reports/3', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"showReports\":\"off\",\"after-save\":\"exit\"}', '2024-11-27 12:57:07', '2024-11-27 12:57:07'),
(6137, 1, 'admin/vehicle-history-reports/5', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"showReports\":\"on\",\"after-save\":\"exit\"}', '2024-11-27 12:57:09', '2024-11-27 12:57:09'),
(6138, 1, 'admin/vehicle-history-reports/5', 'GET', '127.0.0.1', '[]', '2024-11-27 12:57:11', '2024-11-27 12:57:11'),
(6139, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 12:57:20', '2024-11-27 12:57:20'),
(6140, 1, 'admin/vehicle-history-reports/5', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"showReports\":\"off\",\"after-save\":\"exit\"}', '2024-11-27 12:57:23', '2024-11-27 12:57:23'),
(6141, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 12:57:36', '2024-11-27 12:57:36'),
(6142, 1, 'admin/vehicle-history-reports/6', 'GET', '127.0.0.1', '[]', '2024-11-27 12:57:38', '2024-11-27 12:57:38'),
(6143, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 12:57:40', '2024-11-27 12:57:40'),
(6144, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_vehicleHistoryReports\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchDelete\",\"_key\":\"4,5,6,7,8\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:58:18', '2024-11-27 12:58:18'),
(6145, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 12:58:19', '2024-11-27 12:58:19'),
(6146, 1, 'admin/vehicle-history-reports/4,5,6,7,8', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:58:19', '2024-11-27 12:58:19'),
(6147, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 12:58:19', '2024-11-27 12:58:19'),
(6148, 1, 'admin/vehicle-history-reports/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 12:58:27', '2024-11-27 12:58:27'),
(6149, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 12:58:27', '2024-11-27 12:58:27'),
(6150, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 12:58:29', '2024-11-27 12:58:29'),
(6151, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 13:08:11', '2024-11-27 13:08:11'),
(6152, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:08:13', '2024-11-27 13:08:13'),
(6153, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"showReports\":\"on\",\"showReports_cb\":\"on\",\"isShowImg\":null,\"vName\":\"Jeep\",\"title\":\"2004 JEEP LIBERTY LIMITED\",\"desc\":\"VIN: 1J4GL58K14W295826, 4 DOOR WAGON\\/SPORT UTILITY ,3.7L V6 F GASOLINE, REAR WHEEL DRIVE W\\/ 4X4\",\"points\":[\"No accidents or damage reported to CARFAX\",\"5 Service history records\",\"At least 1 open recall\",\"7 Previous owners\",\"Personal vehicle\",\"145,225 Last reported odometer reading\"],\"footerDesc\":\"This CARFAX Vehicle History Report is based only on information supplied to CARFAX and available as of 9\\/29\\/24 at 4:00:19 PM (CDT). Other information about this vehicle, including problems, may not have been reported to CARFAX. Use this report as one important tool, along with a vehicle inspection and test drive, to make a better decision about your next used car.\",\"price\":\"44.99\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:10:45', '2024-11-27 13:10:45'),
(6154, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:10:46', '2024-11-27 13:10:46'),
(6155, 1, 'admin/vehicle-history-reports', 'POST', '127.0.0.1', '{\"showReports\":\"on\",\"showReports_cb\":\"on\",\"isShowImg\":null,\"vName\":\"Jeep\",\"title\":\"2004 JEEP LIBERTY LIMITED\",\"desc\":\"VIN: 1J4GL58K14W295826, 4 DOOR WAGON\\/SPORT UTILITY ,3.7L V6 F GASOLINE, REAR WHEEL DRIVE W\\/ 4X4\",\"points\":[\"No accidents or damage reported to CARFAX\",\"5 Service history records\",\"At least 1 open recall\",\"7 Previous owners\",\"Personal vehicle\",\"145,225 Last reported odometer reading\"],\"footerDesc\":\"This CARFAX Vehicle History Report is based only on information supplied to CARFAX and available as of 9\\/29\\/24 at 4:00:19 PM (CDT). Other information about this vehicle, including problems, may not have been reported to CARFAX. Use this report as one important tool, along with a vehicle inspection and test drive, to make a better decision about your next used car.\",\"price\":\"44.99\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:13:18', '2024-11-27 13:13:18'),
(6156, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 13:13:18', '2024-11-27 13:13:18'),
(6157, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:13:22', '2024-11-27 13:13:22'),
(6158, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 13:13:23', '2024-11-27 13:13:23'),
(6159, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 13:14:29', '2024-11-27 13:14:29'),
(6160, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 13:14:51', '2024-11-27 13:14:51'),
(6161, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 13:15:11', '2024-11-27 13:15:11'),
(6162, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 13:16:00', '2024-11-27 13:16:00'),
(6163, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 13:16:31', '2024-11-27 13:16:31'),
(6164, 1, 'admin/vehicle-history-reports/1', 'GET', '127.0.0.1', '[]', '2024-11-27 13:16:48', '2024-11-27 13:16:48'),
(6165, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 13:16:59', '2024-11-27 13:16:59'),
(6166, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 13:17:00', '2024-11-27 13:17:00'),
(6167, 1, 'admin/vehicle-history-reports/1', 'PUT', '127.0.0.1', '{\"showReports\":\"1\",\"showReports_cb\":\"on\",\"isShowImg\":\"0\",\"vName\":\"Jeep\",\"title\":\"2004 JEEP LIBERTY LIMITED\",\"desc\":\"VIN: 1J4GL58K14W295826, 4 DOOR WAGON\\/SPORT UTILITY ,3.7L V6 F GASOLINE, REAR WHEEL DRIVE W\\/ 4X4\",\"points\":[\"No accidents or damage reported to CARFAX\",\"5 Service history records\",\"At least 1 open recall\",\"7 Previous owners\",\"Personal vehicle\",\"145,225 Last reported odometer reading\"],\"price\":\"44.99\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 13:18:04', '2024-11-27 13:18:04'),
(6168, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 13:18:05', '2024-11-27 13:18:05'),
(6169, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:18:26', '2024-11-27 13:18:26'),
(6170, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:18:29', '2024-11-27 13:18:29'),
(6171, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:18:59', '2024-11-27 13:18:59'),
(6172, 1, 'admin/additional-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:19:00', '2024-11-27 13:19:00'),
(6173, 1, 'admin/additional-histories', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"totalLoss\":\"No total loss reported to CARFAX.\",\"totalLossOwners\":[\"No issues reported\",\"No issues reported\",\"No issues reported\",\"No issues reported\"],\"structuredDamage\":\"No structural damage reported to CARFAX.\",\"structuredDamageOwners\":[\"No issues reported\",\"No issues reported\",\"No issues reported\",\"No issues reported\"],\"airBagDeployment\":\"No airbag deployment reported to CARFAX.\",\"airBagDeploymentOwners\":[\"No issues reported\",\"No issues reported\",\"No issues reported\",\"No issues reported\"],\"odoMeterCheck\":\"No indication of an odometer rollback.\",\"odoMeterCheckOwners\":[\"No issues reported\",\"No issues reported\",\"No issues reported\",\"No issues reported\"],\"accidentDamage\":\"No accidents or damage reported to CARFAX.\",\"accidentDamageOwners\":[\"No issues reported\",\"No issues reported\",\"No issues reported\",\"No issues reported\"],\"manufacturerRecall\":\"At least 1 manufacturer recall requires repair.\",\"manufacturerRecallOwners\":[\"No issues reported\",\"No issues reported\",\"No issues reported\",\"No issues reported\"],\"basicWarranty\":\"Original warranty estimated to have expired.\",\"basicWarrantyOwners\":[\"Warranty Expired.\",\"Warranty Expired.\",\"Warranty Expired.\",\"Warranty Expired.\"],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:22:45', '2024-11-27 13:22:45'),
(6174, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:22:46', '2024-11-27 13:22:46'),
(6175, 1, 'admin/additional-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:24:55', '2024-11-27 13:24:55'),
(6176, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:25:24', '2024-11-27 13:25:24'),
(6177, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:25:27', '2024-11-27 13:25:27'),
(6178, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:25:56', '2024-11-27 13:25:56'),
(6179, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 13:25:58', '2024-11-27 13:25:58'),
(6180, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 13:26:13', '2024-11-27 13:26:13'),
(6181, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:26:21', '2024-11-27 13:26:21'),
(6182, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:29:43', '2024-11-27 13:29:43'),
(6183, 1, 'admin/title-histories', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"title1\":\"Damage Brands\",\"desc1\":\"junk|fire|flood\",\"ownerslist1\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title2\":\"Odometer Brands\",\"desc2\":\"exceeds machanical limits\",\"ownerslist2\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title3\":null,\"desc3\":null,\"ownerslist3\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:31:10', '2024-11-27 13:31:10'),
(6184, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:31:10', '2024-11-27 13:31:10'),
(6185, 1, 'admin/title-histories', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"title1\":\"Damage Brands\",\"desc1\":\"junk|fire|flood\",\"ownerslist1\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title2\":\"Odometer Brands\",\"desc2\":\"exceeds machanical limits\",\"ownerslist2\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title3\":null,\"desc3\":null,\"ownerslist3\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:31:56', '2024-11-27 13:31:56'),
(6186, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:31:56', '2024-11-27 13:31:56'),
(6187, 1, 'admin/title-histories', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"title1\":\"Damage Brands\",\"desc1\":\"junk|fire|flood\",\"ownerslist1\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title2\":\"Odometer Brands\",\"desc2\":\"exceeds machanical limits\",\"ownerslist2\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title3\":null,\"desc3\":null,\"ownerslist3\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:33:18', '2024-11-27 13:33:18'),
(6188, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:33:19', '2024-11-27 13:33:19'),
(6189, 1, 'admin/title-histories', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"title1\":\"Damage Brands\",\"desc1\":\"junk|fire|flood\",\"ownerslist1\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title2\":\"Odometer Brands\",\"desc2\":\"exceeds machanical limits\",\"ownerslist2\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title3\":null,\"desc3\":null,\"ownerslist3\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:33:21', '2024-11-27 13:33:21'),
(6190, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:33:22', '2024-11-27 13:33:22'),
(6191, 1, 'admin/title-histories', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"title1\":\"Damage Brands\",\"desc1\":\"junk|fire|flood\",\"ownerslist1\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title2\":\"Odometer Brands\",\"desc2\":\"exceeds machanical limits\",\"ownerslist2\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title3\":null,\"desc3\":null,\"ownerslist3\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:33:37', '2024-11-27 13:33:37'),
(6192, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:33:37', '2024-11-27 13:33:37'),
(6193, 1, 'admin/title-histories', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"title1\":\"Damage Brands\",\"desc1\":\"junk|fire|flood\",\"ownerslist1\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title2\":\"Odometer Brands\",\"desc2\":\"exceeds machanical limits\",\"ownerslist2\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title3\":null,\"desc3\":null,\"ownerslist3\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:35:09', '2024-11-27 13:35:09'),
(6194, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:09', '2024-11-27 13:35:09'),
(6195, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:09', '2024-11-27 13:35:09'),
(6196, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:10', '2024-11-27 13:35:10'),
(6197, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:10', '2024-11-27 13:35:10'),
(6198, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:11', '2024-11-27 13:35:11'),
(6199, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:11', '2024-11-27 13:35:11'),
(6200, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:12', '2024-11-27 13:35:12'),
(6201, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:12', '2024-11-27 13:35:12'),
(6202, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:12', '2024-11-27 13:35:12'),
(6203, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:13', '2024-11-27 13:35:13'),
(6204, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:13', '2024-11-27 13:35:13'),
(6205, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:14', '2024-11-27 13:35:14'),
(6206, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:14', '2024-11-27 13:35:14'),
(6207, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:14', '2024-11-27 13:35:14'),
(6208, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:15', '2024-11-27 13:35:15'),
(6209, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:15', '2024-11-27 13:35:15'),
(6210, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:16', '2024-11-27 13:35:16'),
(6211, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:16', '2024-11-27 13:35:16'),
(6212, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:17', '2024-11-27 13:35:17'),
(6213, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:35:17', '2024-11-27 13:35:17'),
(6214, 1, 'admin/title-histories', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"title1\":\"Damage Brands\",\"desc1\":\"junk|fire|flood\",\"ownerslist1\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title2\":\"Odometer Brands\",\"desc2\":\"exceeds machanical limits\",\"ownerslist2\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title3\":null,\"desc3\":null,\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:36:29', '2024-11-27 13:36:29'),
(6215, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:30', '2024-11-27 13:36:30'),
(6216, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:30', '2024-11-27 13:36:30'),
(6217, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:31', '2024-11-27 13:36:31'),
(6218, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:31', '2024-11-27 13:36:31'),
(6219, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:32', '2024-11-27 13:36:32'),
(6220, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:32', '2024-11-27 13:36:32'),
(6221, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:33', '2024-11-27 13:36:33'),
(6222, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:33', '2024-11-27 13:36:33'),
(6223, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:34', '2024-11-27 13:36:34'),
(6224, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:34', '2024-11-27 13:36:34'),
(6225, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:34', '2024-11-27 13:36:34'),
(6226, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:35', '2024-11-27 13:36:35'),
(6227, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:35', '2024-11-27 13:36:35'),
(6228, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:36', '2024-11-27 13:36:36'),
(6229, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:36', '2024-11-27 13:36:36'),
(6230, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:36', '2024-11-27 13:36:36'),
(6231, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:37', '2024-11-27 13:36:37'),
(6232, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:37', '2024-11-27 13:36:37'),
(6233, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:38', '2024-11-27 13:36:38'),
(6234, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:38', '2024-11-27 13:36:38'),
(6235, 1, 'admin/title-histories', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"title1\":\"Damage Brands\",\"desc1\":\"junk|fire|flood\",\"ownerslist1\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title2\":\"Odometer Brands\",\"desc2\":\"exceeds machanical limits\",\"ownerslist2\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title3\":null,\"desc3\":null,\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:36:58', '2024-11-27 13:36:58'),
(6236, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:59', '2024-11-27 13:36:59'),
(6237, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:36:59', '2024-11-27 13:36:59'),
(6238, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:00', '2024-11-27 13:37:00'),
(6239, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:00', '2024-11-27 13:37:00'),
(6240, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:01', '2024-11-27 13:37:01'),
(6241, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:01', '2024-11-27 13:37:01'),
(6242, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:01', '2024-11-27 13:37:01'),
(6243, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:02', '2024-11-27 13:37:02'),
(6244, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:02', '2024-11-27 13:37:02'),
(6245, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:03', '2024-11-27 13:37:03'),
(6246, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:03', '2024-11-27 13:37:03'),
(6247, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:04', '2024-11-27 13:37:04'),
(6248, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:04', '2024-11-27 13:37:04'),
(6249, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:05', '2024-11-27 13:37:05'),
(6250, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:05', '2024-11-27 13:37:05'),
(6251, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:06', '2024-11-27 13:37:06'),
(6252, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:06', '2024-11-27 13:37:06'),
(6253, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:06', '2024-11-27 13:37:06'),
(6254, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:07', '2024-11-27 13:37:07'),
(6255, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:07', '2024-11-27 13:37:07'),
(6256, 1, 'admin/title-histories', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"title1\":\"Damage Brands\",\"desc1\":\"junk|fire|flood\",\"ownerslist1\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title2\":\"Odometer Brands\",\"desc2\":\"exceeds machanical limits\",\"ownerslist2\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title3\":null,\"desc3\":null,\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:37:46', '2024-11-27 13:37:46'),
(6257, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:47', '2024-11-27 13:37:47'),
(6258, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:47', '2024-11-27 13:37:47'),
(6259, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:48', '2024-11-27 13:37:48'),
(6260, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:48', '2024-11-27 13:37:48'),
(6261, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:49', '2024-11-27 13:37:49'),
(6262, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:49', '2024-11-27 13:37:49'),
(6263, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:50', '2024-11-27 13:37:50'),
(6264, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:50', '2024-11-27 13:37:50'),
(6265, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:50', '2024-11-27 13:37:50'),
(6266, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:51', '2024-11-27 13:37:51'),
(6267, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:51', '2024-11-27 13:37:51'),
(6268, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:52', '2024-11-27 13:37:52'),
(6269, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:52', '2024-11-27 13:37:52'),
(6270, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:53', '2024-11-27 13:37:53'),
(6271, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:53', '2024-11-27 13:37:53'),
(6272, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:53', '2024-11-27 13:37:53'),
(6273, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:54', '2024-11-27 13:37:54'),
(6274, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:54', '2024-11-27 13:37:54'),
(6275, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:55', '2024-11-27 13:37:55'),
(6276, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:37:55', '2024-11-27 13:37:55'),
(6277, 1, 'admin/title-histories', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"title1\":\"Damage Brands\",\"desc1\":\"junk|fire|flood\",\"ownerslist1\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title2\":\"Odometer Brands\",\"desc2\":\"exceeds machanical limits\",\"ownerslist2\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title3\":null,\"desc3\":null,\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:39:14', '2024-11-27 13:39:14'),
(6278, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:14', '2024-11-27 13:39:14'),
(6279, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:15', '2024-11-27 13:39:15'),
(6280, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:15', '2024-11-27 13:39:15'),
(6281, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:16', '2024-11-27 13:39:16'),
(6282, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:16', '2024-11-27 13:39:16'),
(6283, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:17', '2024-11-27 13:39:17'),
(6284, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:17', '2024-11-27 13:39:17'),
(6285, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:18', '2024-11-27 13:39:18'),
(6286, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:18', '2024-11-27 13:39:18'),
(6287, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:19', '2024-11-27 13:39:19'),
(6288, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:19', '2024-11-27 13:39:19'),
(6289, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:20', '2024-11-27 13:39:20'),
(6290, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:20', '2024-11-27 13:39:20'),
(6291, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:20', '2024-11-27 13:39:20'),
(6292, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:21', '2024-11-27 13:39:21'),
(6293, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:21', '2024-11-27 13:39:21'),
(6294, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:22', '2024-11-27 13:39:22'),
(6295, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:22', '2024-11-27 13:39:22'),
(6296, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:23', '2024-11-27 13:39:23'),
(6297, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:39:23', '2024-11-27 13:39:23'),
(6298, 1, 'admin/title-histories', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"title1\":\"Damage Brands\",\"desc1\":\"junk|fire|flood\",\"ownerslist1\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title2\":\"Odometer Brands\",\"desc2\":\"exceeds machanical limits\",\"ownerslist2\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title3\":\"Odometer Brands2\",\"desc3\":\"exceeds machanical limits2\",\"ownerslist3\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:40:16', '2024-11-27 13:40:16'),
(6299, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:16', '2024-11-27 13:40:16'),
(6300, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:17', '2024-11-27 13:40:17'),
(6301, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:17', '2024-11-27 13:40:17'),
(6302, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:18', '2024-11-27 13:40:18'),
(6303, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:18', '2024-11-27 13:40:18'),
(6304, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:18', '2024-11-27 13:40:18'),
(6305, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:19', '2024-11-27 13:40:19'),
(6306, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:19', '2024-11-27 13:40:19'),
(6307, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:20', '2024-11-27 13:40:20'),
(6308, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:20', '2024-11-27 13:40:20'),
(6309, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:21', '2024-11-27 13:40:21'),
(6310, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:21', '2024-11-27 13:40:21'),
(6311, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:21', '2024-11-27 13:40:21'),
(6312, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:22', '2024-11-27 13:40:22'),
(6313, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:22', '2024-11-27 13:40:22'),
(6314, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:23', '2024-11-27 13:40:23'),
(6315, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:23', '2024-11-27 13:40:23');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(6316, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:24', '2024-11-27 13:40:24'),
(6317, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:24', '2024-11-27 13:40:24'),
(6318, 1, 'admin/title-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:24', '2024-11-27 13:40:24'),
(6319, 1, 'admin/title-histories', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"title1\":\"Damage Brands\",\"desc1\":\"junk|fire|flood\",\"ownerslist1\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title2\":\"Odometer Brands\",\"desc2\":\"exceeds machanical limits\",\"ownerslist2\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"title3\":\"Odometer Brands2\",\"desc3\":\"exceeds machanical limits2\",\"ownerslist3\":[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:40:54', '2024-11-27 13:40:54'),
(6320, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:40:54', '2024-11-27 13:40:54'),
(6321, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:41:29', '2024-11-27 13:41:29'),
(6322, 1, 'admin/title-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:42:09', '2024-11-27 13:42:09'),
(6323, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:42:40', '2024-11-27 13:42:40'),
(6324, 1, 'admin/ownership-histories/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:42:42', '2024-11-27 13:42:42'),
(6325, 1, 'admin/ownership-histories', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"yearpurchased\":\"2005\",\"yearpurchasedowners\":[\"2005\",\"2010\",\"2015\",\"2022\"],\"typeofowner\":\"Type of Owner\",\"typeofowners\":[\"Personal\",\"Personal\",\"Personal\",\"Personal\"],\"ownershiplength\":\"Estimated Length of Ownership\",\"ownershiplengthowners\":[\"17 yrs, 9 mo.\",\"17 yrs, 9 mo.\",\"17 yrs, 9 mo.\",\"1 yr, 5 mo.\"],\"provinces\":\"Owned in the Following States\\/Provinces\",\"provincesowners\":[\"See Details\",\"See Details\",\"See Details\",\"Missouri\"],\"milesperyear\":\"Estimated Miles Driven per Year\",\"milesperyearowners\":[\"See Details\",\"See Details\",\"See Details\",\"----\"],\"lastodometerreading\":\"Last Reported Odometer Reading\",\"lastodometerreadingowners\":[\"145,225\",\"145,225\",\"145,225\",\"----\"],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 13:46:40', '2024-11-27 13:46:40'),
(6326, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:46:40', '2024-11-27 13:46:40'),
(6327, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:48:28', '2024-11-27 13:48:28'),
(6328, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:48:50', '2024-11-27 13:48:50'),
(6329, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-27 13:49:12', '2024-11-27 13:49:12'),
(6330, 1, 'admin/vehicle-history-reports/1', 'GET', '127.0.0.1', '[]', '2024-11-27 13:49:21', '2024-11-27 13:49:21'),
(6331, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 13:49:27', '2024-11-27 13:49:27'),
(6332, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 13:56:29', '2024-11-27 13:56:29'),
(6333, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 13:56:32', '2024-11-27 13:56:32'),
(6334, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 13:57:05', '2024-11-27 13:57:05'),
(6335, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 13:57:21', '2024-11-27 13:57:21'),
(6336, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 13:57:28', '2024-11-27 13:57:28'),
(6337, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 13:58:20', '2024-11-27 13:58:20'),
(6338, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 13:58:21', '2024-11-27 13:58:21'),
(6339, 1, 'admin/owners-lists', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"ownerNo\":\"1\",\"purchased\":\"2004\",\"subtitle\":\"Personal Vehicle - 8,310 mi\\/yr\",\"details\":{\"new_1\":{\"date\":\"2004-01-01\",\"mileage\":\"2\",\"source\":\"Doug Marine Motors, Washington Court House, OH\",\"comments\":\"Vehicle serviced: Pre-delivery inspection completed\",\"_remove_\":\"0\"},\"new_2\":{\"date\":\"2005-01-01\",\"mileage\":\"0\",\"source\":\"Ohio Motor Vehicle Dept.\",\"comments\":\"First owner reported: Titled or registered as personal vehicle\",\"_remove_\":\"0\"}},\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 14:00:22', '2024-11-27 14:00:22'),
(6340, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 14:00:22', '2024-11-27 14:00:22'),
(6341, 1, 'admin/owners-lists/create', 'GET', '127.0.0.1', '[]', '2024-11-27 14:00:30', '2024-11-27 14:00:30'),
(6342, 1, 'admin/owners-lists', 'POST', '127.0.0.1', '{\"vId\":\"XPjfds\",\"search_terms\":null,\"ownerNo\":\"2\",\"purchased\":\"2009\",\"subtitle\":\"Personal Vehicle - 11,404 mi\\/yr\",\"details\":{\"new_1\":{\"date\":\"2009-01-01\",\"mileage\":\"0\",\"source\":\"Ohio Motor Vehicle Dept., Columbus, OH\",\"comments\":\"Title issued or updated: Registration issued or renewed, New owner reported, Loan or lien reported\",\"_remove_\":\"0\"},\"new_2\":{\"date\":\"2010-01-01\",\"mileage\":\"0\",\"source\":\"Ohio Motor Vehicle Dept., Columbus, OH\",\"comments\":\"Registration issued or renewed\",\"_remove_\":\"0\"},\"new_3\":{\"date\":\"2011-01-01\",\"mileage\":\"0\",\"source\":\"Ohio Motor Vehicle Dept., Columbus, OH\",\"comments\":\"Registration issued or renewed: Registration updated when owner moved to a new location\",\"_remove_\":\"0\"},\"new_4\":{\"date\":\"2012-01-01\",\"mileage\":\"72,690\",\"source\":\"Crown Motor Cars, Dublin, OH\",\"comments\":\"Vehicle serviced: Control arm(s) replaced\",\"_remove_\":\"0\"},\"new_5\":{\"date\":\"2013-01-01\",\"mileage\":\"0\",\"source\":\"Ohio Motor Vehicle Dept.\",\"comments\":\"Registration issued or renewed\",\"_remove_\":\"0\"}},\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 14:02:42', '2024-11-27 14:02:42'),
(6343, 1, 'admin/owners-lists', 'GET', '127.0.0.1', '[]', '2024-11-27 14:02:42', '2024-11-27 14:02:42'),
(6344, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-27 14:06:19', '2024-11-27 14:06:19'),
(6345, 1, 'admin/contactus', 'GET', '127.0.0.1', '[]', '2024-11-27 14:10:34', '2024-11-27 14:10:34'),
(6346, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-27 14:10:37', '2024-11-27 14:10:37'),
(6347, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 14:10:41', '2024-11-27 14:10:41'),
(6348, 1, 'admin/settings/1', 'PUT', '127.0.0.1', '{\"websiteName\":\"bikevan\",\"email\":\"maarkhoorsn@gmail.com\",\"phone\":\"03097676179\",\"showWhatsapp\":\"1\",\"showWhatsapp_cb\":\"on\",\"whatsappNumber\":\"+923097676179\",\"showFacebook\":\"1\",\"showFacebook_cb\":\"on\",\"facebookLink\":\"https:\\/\\/facebook.com\",\"showInstagram\":\"1\",\"showInstagram_cb\":\"on\",\"instagramLink\":\"https:instagram.com\",\"showPrivacyPolicy\":\"1\",\"showPrivacyPolicy_cb\":\"on\",\"showShippingPolicy\":\"1\",\"showShippingPolicy_cb\":\"on\",\"showReturnRefundPolicy\":\"1\",\"showReturnRefundPolicy_cb\":\"on\",\"showTermsCondition\":\"1\",\"showTermsCondition_cb\":\"on\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 14:10:52', '2024-11-27 14:10:52'),
(6349, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-27 14:10:52', '2024-11-27 14:10:52'),
(6350, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 14:19:11', '2024-11-27 14:19:11'),
(6351, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"search_terms\":null,\"title\":\"Pages Design\",\"icon\":\"icon-code\",\"uri\":\"pagesDesigns\",\"roles\":[null],\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 14:21:05', '2024-11-27 14:21:05'),
(6352, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:05', '2024-11-27 14:21:05'),
(6353, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:09', '2024-11-27 14:21:09'),
(6354, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:16', '2024-11-27 14:21:16'),
(6355, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:20', '2024-11-27 14:21:20'),
(6356, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:21', '2024-11-27 14:21:21'),
(6357, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:21', '2024-11-27 14:21:21'),
(6358, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:22', '2024-11-27 14:21:22'),
(6359, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:22', '2024-11-27 14:21:22'),
(6360, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:23', '2024-11-27 14:21:23'),
(6361, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:23', '2024-11-27 14:21:23'),
(6362, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:23', '2024-11-27 14:21:23'),
(6363, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:24', '2024-11-27 14:21:24'),
(6364, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:24', '2024-11-27 14:21:24'),
(6365, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:25', '2024-11-27 14:21:25'),
(6366, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:25', '2024-11-27 14:21:25'),
(6367, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:26', '2024-11-27 14:21:26'),
(6368, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:26', '2024-11-27 14:21:26'),
(6369, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:26', '2024-11-27 14:21:26'),
(6370, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:27', '2024-11-27 14:21:27'),
(6371, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:27', '2024-11-27 14:21:27'),
(6372, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:28', '2024-11-27 14:21:28'),
(6373, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:28', '2024-11-27 14:21:28'),
(6374, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:28', '2024-11-27 14:21:28'),
(6375, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:21:29', '2024-11-27 14:21:29'),
(6376, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:22:21', '2024-11-27 14:22:21'),
(6377, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:22:24', '2024-11-27 14:22:24'),
(6378, 1, 'admin/pagesDesigns/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 14:23:50', '2024-11-27 14:23:50'),
(6379, 1, 'admin/pagesDesigns/1', 'PUT', '127.0.0.1', '{\"privacyPolicy\":\"<div class=\\\"shopify-policy__title page-header__text-wrapper\\\" style=\\\"max-width:850px; text-align:center; margin-top:68px; margin-bottom:68px\\\">\\r\\n<h1><strong>Privacy Policy<\\/strong><\\/h1>\\r\\n\\r\\n<p>Welcome to vistavin.com, provided by&nbsp;<b>Digital Core Tech Limited<\\/b>&nbsp;(&ldquo;we,&rdquo; &ldquo;us,&rdquo; or &ldquo;<b>Digital Core Tech Limited<\\/b>&ldquo;).&nbsp;<b>Digital Core Tech Limited<\\/b>, together with its affiliates and subsidiaries, has created this Policy to apply to all users and clients of our website (https:\\/\\/vistavin.com) and the associated products, services, data, information, and materials offered therein (collectively, the &ldquo;Services&rdquo;).<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>This Privacy Policy (&ldquo;Policy&rdquo;) applies to your use of the Services and is part of and supplements the Vista Vin Terms of Service (the &ldquo;Terms&rdquo;), available here: https:\\/\\/vistavin.com\\/terms-of-service.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>PLEASE CAREFULLY READ THIS POLICY. YOUR USE OF THE SERVICES CONSTITUTES YOUR CONSENT TO THIS POLICY. DO NOT USE THE SERVICES IF YOU ARE UNWILLING OR UNABLE TO CONSENT TO THIS POLICY.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>We may revise this Policy at any time and such revision shall be posted here and accessible via this link: https:\\/\\/vistavin.com\\/privacy-policy. Any revision and\\/or addition to this Policy shall become effective and binding on you when you continue to use the Services on or after the effective date of such revision and\\/or addition.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>If you are a resident of California, Virginia, Colorado, Connecticut, or Utah, you may be entitled to certain individual rights under the California Consumer Privacy Act of 2018 (as amended by the California Privacy Rights Act of 2020 (&ldquo;CPRA&rdquo;)) (collectively, &ldquo;CCPA&rdquo;), Virginia Consumer Data Protection Act (&ldquo;VCDPA&rdquo;), Colorado Privacy Act (&ldquo;CPA&rdquo;), Connecticut Act Concerning Personal Data Privacy and Online Monitoring (&ldquo;CTDPA&rdquo;), or Utah Consumer Privacy Act (&ldquo;UCPA&rdquo;). Please see the Notice to Certain Residents of Data Subject Rights Section of our Privacy Policy for your rights and how to exercise them for users located in California, Virginia, Colorado, Connecticut, and Utah only.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2>1. Information We Collect<\\/h2>\\r\\n\\r\\n<p>When you use the Services, we may collect the following categories of personal information about you, which are described in more detail below: (A) personal information we request from you; (B) personal information we automatically collect; and (C) personal information we may receive from third parties. All of the information listed in (A)-(C) above, is detailed below, and hereinafter referred to as &ldquo;Information&rdquo;.<\\/p>\\r\\n\\r\\n<h3>A. Information You Provide<\\/h3>\\r\\n\\r\\n<p>In using our Services, you may provide us with Information, including, without limitation:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li aria-level=\\\"1\\\">Individual identifiers such as name, email address, physical billing address, phone number, business name, demographic information you choose to provide such as age or date of birth, a photograph of you when you choose to upload it, or information about your vehicle, including your Vehicle Identification Number (VIN);<\\/li>\\r\\n\\t<li aria-level=\\\"1\\\">Payment and transaction information such as credit card number, name, CVV code, and&nbsp; date of expiration;<\\/li>\\r\\n\\t<li aria-level=\\\"1\\\">Communications with us, preferences, and other Information you provide to us such as any messages, opinions, and feedback that you provide to us, your user preferences (such as in receiving updates or marketing information), and other Information that you share with us when you contact us directly (such as for customer support services); and<\\/li>\\r\\n\\t<li aria-level=\\\"1\\\">Additional Information as otherwise described to you at the point of collection or according to your consent.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3>B. Information We May Automatically Collect About You<\\/h3>\\r\\n\\r\\n<p>Our Services may automatically collect certain personal Information about you. We use this personal Information to help us design our Services to better suit our users&rsquo; needs. This personal Information may include:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li aria-level=\\\"1\\\">IP address, which is the number associated with the service through which you access the Internet, like your ISP (Internet service provider);<\\/li>\\r\\n\\t<li aria-level=\\\"1\\\">Date and time of your visit or use of our Services;<\\/li>\\r\\n\\t<li aria-level=\\\"1\\\">Domain server from which you are using our Services;<\\/li>\\r\\n\\t<li aria-level=\\\"1\\\">Type of computer, web browsers, search engine used, operating system, or platform you use;<\\/li>\\r\\n\\t<li aria-level=\\\"1\\\">Data identifying the web pages you visited prior to and after visiting our website or use of our Services;<\\/li>\\r\\n\\t<li aria-level=\\\"1\\\">Your movement and activity within the website, which is aggregated with other information;<\\/li>\\r\\n\\t<li aria-level=\\\"1\\\">Geographic data such as country or region; and<\\/li>\\r\\n\\t<li aria-level=\\\"1\\\">Mobile device information, including the type of device you use, operating system version, and the device identifier (or &ldquo;UDID&rdquo;).<\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\",\"shippingPolicy\":null,\"returnRefundPolicy\":\"<h1>Refund policy<\\/h1>\\r\\n\\r\\n<p>REFUND &amp; CANCELLATION POLICY<br \\/>\\r\\nThank you for purchasing our information retrieval services. We want to ensure you have a smooth and satisfactory experience with our platform. Here&rsquo;s our policy on refunds and cancellations.<\\/p>\\r\\n\\r\\n<p>REFUNDS<br \\/>\\r\\nWe offer a 48-hour money-back guarantee. If for any reason you are not completely satisfied with our services, you can contact us within 48 hours 2 days of your purchase to request a refund.<\\/p>\\r\\n\\r\\n<p>The 48-hour period starts on the day the service is purchased, irrespective of when you start using it.<\\/p>\\r\\n\\r\\n<p>To request a refund, please send us an email at support@vistavin.com with the subject &ldquo;Refund Request.&rdquo; In the body of the email, include your full name, the email address used to purchase the service, your order number, and the reason for your refund request.<\\/p>\\r\\n\\r\\n<p>After we receive your refund request, our team will review it and process the refund if the request is approved. This can take up to 7 business days, but under normal circumstances should only take 2 business days. The refund will be made via the original payment method used for the purchase.<\\/p>\\r\\n\\r\\n<p>Please note that if you have violated any terms of service, such as by filing a chargeback, or if the service has been used inappropriately, you may not be eligible for a refund.<\\/p>\\r\\n\\r\\n<p>SUBSCRIPTIONS AND CANCELLATIONS<br \\/>\\r\\nWe offer various subscription membership packages, and you are free to cancel your subscription at any time. To cancel your subscription, simply log into your account and navigate to the &lsquo;My Account&rsquo; section on your dashboard. Follow the prompts to cancel your subscription.<\\/p>\\r\\n\\r\\n<p>No penalty or fee will be charged for cancellations.<\\/p>\\r\\n\\r\\n<p>After cancellation, you will continue to have access to the services until the end of your current billing period. Once the subscription period ends, your account will no longer be billed, and access to the subscription services will be revoked.<\\/p>\\r\\n\\r\\n<p>You will be responsible for all charges incurred for any services used before the effective cancellation date.<\\/p>\\r\\n\\r\\n<p>CHANGES TO THIS POLICY<br \\/>\\r\\nWe reserve the right to revise our Refund and Cancellation Policy at any time. Changes will not be retroactive. The most current version of the policy will govern our processing of refunds and cancellations and will be available on this page. If you have any questions or concerns regarding our refund and cancellation policy, please reach out to us via our Contact Us page or at support@vistavin.com. We value your business and strive to ensure you are satisfied with our services. Thank you for choosing our information retrieval services.<\\/p>\\r\\n\\r\\n<p>&copy; Copyright 2023 Vista Vin, All rights reserved.<\\/p>\",\"termsCondition\":\"<h1>Terms of service<\\/h1>\\r\\n\\r\\n<p>Welcome to vistavin.com, provided to users by&nbsp;DIGITAL CORE TECH LIMITED.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>(&ldquo;we,&rdquo; &ldquo;us,&rdquo; or&nbsp;DIGITAL CORE TECH LIMITED).&nbsp;DIGITAL CORE TECH LIMITED&nbsp;created these Terms of Service (&ldquo;Terms&rdquo;) to govern how we operate and offer, and how you access and use, our website (https:\\/\\/vistavin.com\\/), and the associated products, Vista Vin services, data, information, content, and materials thereon (collectively, the &ldquo;Services&rdquo;). If you are accepting these Terms of Service on behalf of a legal entity other than yourself as an individual, including a business or a government, you represent and warrant that you have full legal authority to bind such entity to these Terms of Service.<\\/p>\\r\\n\\r\\n<p>PLEASE CAREFULLY READ THESE TERMS. YOUR USE OF THE SERVICES CONSTITUTES YOUR ACCEPTANCE OF THESE TERMS. DO NOT USE THE SERVICES IF YOU ARE UNWILLING OR UNABLE TO BE BOUND BY THE TERMS.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>By using or visiting our Services, you agree to be bound by the Terms &amp; Conditions, including the Binding Arbitration Clause and Class Action Waiver described in Section 20, and the Privacy Policy.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>We reserve the right to change, modify, add to, or otherwise alter these Terms of Service at any time. Changes, modifications, additions, or deletions to these Terms of Service shall be effective immediately upon their posting on the Services. You agree to review these Terms of Service periodically to be aware of such revisions. Your use of the Services after we post such changes, modifications, additions, or deletions constitutes your acceptance of such changes, modifications, additions, or deletions.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2>1. Services<\\/h2>\\r\\n\\r\\n<p>Our Services allow users to search our vast database for vehicle information. When performing vehicle searches, users may be able to perform recall lookups, learn a vehicle&rsquo;s fair market value, or purchase vehicle history reports.<\\/p>\\r\\n\\r\\n<p>We grant you a personal, limited, nonexclusive license to access and use the Services, for your personal, individual, non-commercial, and non-automated use only. You may not access or use the Services except for these express purposes and as expressly allowed by these Terms of Services.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<h2>2. Registration<\\/h2>\\r\\n\\r\\n<p>You will need to create an account with us to use the Services (&ldquo;Account&rdquo;). You must be 18 years of age or older to use the Services and purchase any services. Any sale offers are only intended for individuals eighteen (18) years of age or older. By using the Services or purchasing services, you affirm that you are eighteen (18) years of age or older.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p>You agree to provide true, current, complete, and accurate information as requested, and to update that information as soon as possible after any information on such registration changes. You are responsible for maintaining the confidentiality of your password and for all of your activities and those of any third party that occurs through your account, whether or not authorized by you. You agree to immediately notify. of any suspected or actual unauthorized use of your account. You agree that we will not under any circumstances be liable for any cost, loss, damages, or expenses arising out of a failure by you to maintain the security of your password.<\\/p>\",\"contactUs\":\"<h1>Contact information<\\/h1>\\r\\n\\r\\n<p><strong>Contact Biike Van<\\/strong><\\/p>\\r\\n\\r\\n<p>If you have any questions or need assistance, feel free to reach out to us. We&rsquo;re here to help!<\\/p>\\r\\n\\r\\n<p><strong>Contact Us:<\\/strong><\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li><strong>Phone:<\\/strong>&nbsp;+92 301<\\/li>\\r\\n\\t<li><strong>Email: bikevan<\\/strong>@gmail.com<\\/li>\\r\\n\\t<li><strong>Hours:<\\/strong>&nbsp;09:00 AM - 06:00 PM PKT (Monday to Friday)<\\/li>\\r\\n\\t<li><strong>Address:<\\/strong>&nbsp;Lahore<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><strong>Follow Us:<\\/strong><\\/p>\\r\\n\\r\\n<p>Stay connected with us on social media:<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li><strong>Facebook:<\\/strong>&nbsp;<\\/li>\\r\\n\\t<li><strong>Instagram:<\\/strong>&nbsp;<\\/li>\\r\\n<\\/ul>\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\",\"_method\":\"PUT\"}', '2024-11-27 14:26:26', '2024-11-27 14:26:26'),
(6380, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:26:26', '2024-11-27 14:26:26'),
(6381, 1, 'admin/pagesDesigns/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-27 14:26:46', '2024-11-27 14:26:46'),
(6382, 1, 'admin/pagesDesigns', 'GET', '127.0.0.1', '[]', '2024-11-27 14:26:50', '2024-11-27 14:26:50'),
(6383, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 14:28:03', '2024-11-27 14:28:03'),
(6384, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_order\":\"[{\\\"id\\\":\\\"57\\\",\\\"children\\\":[{\\\"id\\\":\\\"59\\\"},{\\\"id\\\":\\\"60\\\"},{\\\"id\\\":\\\"61\\\"},{\\\"id\\\":\\\"62\\\"},{\\\"id\\\":\\\"63\\\"}]},{\\\"id\\\":\\\"66\\\",\\\"children\\\":[{\\\"id\\\":\\\"64\\\"},{\\\"id\\\":\\\"65\\\"}]},{\\\"id\\\":\\\"58\\\"},{\\\"id\\\":\\\"2\\\",\\\"children\\\":[{\\\"id\\\":\\\"3\\\"},{\\\"id\\\":\\\"4\\\"},{\\\"id\\\":\\\"5\\\"},{\\\"id\\\":\\\"6\\\"},{\\\"id\\\":\\\"7\\\"},{\\\"id\\\":\\\"1\\\"},{\\\"id\\\":\\\"8\\\",\\\"children\\\":[{\\\"id\\\":\\\"18\\\"},{\\\"id\\\":\\\"9\\\"},{\\\"id\\\":\\\"10\\\"},{\\\"id\\\":\\\"11\\\"}]}]},{\\\"id\\\":\\\"55\\\"},{\\\"id\\\":\\\"56\\\"},{\\\"id\\\":\\\"23\\\"},{\\\"id\\\":\\\"67\\\"}]\",\"_token\":\"6Ir9ykLSgfC13Sw4LwV3e9zn7ArP1YJMTAV1UbY5\"}', '2024-11-27 14:28:15', '2024-11-27 14:28:15'),
(6385, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-27 14:28:15', '2024-11-27 14:28:15'),
(6386, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-27 14:28:22', '2024-11-27 14:28:22'),
(6387, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 14:46:21', '2024-11-27 14:46:21'),
(6388, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-27 14:46:48', '2024-11-27 14:46:48'),
(6389, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-28 02:15:27', '2024-11-28 02:15:27'),
(6390, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-28 02:15:33', '2024-11-28 02:15:33'),
(6391, 1, 'admin/ownership-histories/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 02:15:36', '2024-11-28 02:15:36'),
(6392, 1, 'admin/ownership-histories/1', 'PUT', '127.0.0.1', '{\"vId\":\"a786\",\"search_terms\":null,\"yearpurchased\":\"Purchased Year\",\"yearpurchasedowners\":[\"2005\",\"2010\",\"2015\",\"2022\"],\"typeofowner\":\"Type Of Owner\",\"typeofowners\":[\"Personal\",\"Personal\",\"Personal\",\"Personal\"],\"ownershiplength\":\"Estimated Length of Ownership\",\"ownershiplengthowners\":[\"17 yrs, 9 mo.\",\"17 yrs, 9 mo.\",\"17 yrs, 9 mo.\",\"1 yr, 5 mo.\"],\"provinces\":\"Owned in the Following States\\/Provinces\",\"provincesowners\":[\"See Details\",\"See Details\",\"See Details\",\"Missouri\"],\"milesperyear\":\"Estimated Miles Driven per Year\",\"milesperyearowners\":[\"See Details\",\"See Details\",\"See Details\",\"----\"],\"lastodometerreading\":\"Last Reported Odometer Reading\",\"lastodometerreadingowners\":[\"145,225\",\"145,225\",\"145,225\",\"----\"],\"_token\":\"hgGFLNpzw6T5KG7ppgBVOMK8BAhbE6NRultjinEi\",\"_method\":\"PUT\"}', '2024-11-28 02:16:10', '2024-11-28 02:16:10'),
(6393, 1, 'admin/ownership-histories', 'GET', '127.0.0.1', '[]', '2024-11-28 02:16:10', '2024-11-28 02:16:10'),
(6394, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-28 03:26:55', '2024-11-28 03:26:55'),
(6395, 1, 'admin/report-settings/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 03:27:01', '2024-11-28 03:27:01'),
(6396, 1, 'admin/report-settings/1', 'PUT', '127.0.0.1', '{\"vehicleHistoryReportDesc\":\"This CARFAX Vehicle History Report is based only on information supplied to CARFAX and available as of 9\\/29\\/24 at 4:00:19 PM (CDT). Other information about this vehicle, including problems, may not have been reported to CARFAX.  Use this report as one important tool, along with a vehicle inspection and test drive, to make a better 1  decision about your next used 2  car.\",\"titleHistoryDesc\":\"GUARANTEED - None of these title problems were reported by a U.S. state Department of Motor Vehicles (DMV). If you find that any of these title problems were reported by a DMV and not included in this report, you may qualify.\\r\\nView Terms | View Certificate\",\"facebookLink\":\"facebook.com\",\"showFacebook\":\"1\",\"showFacebook_cb\":\"on\",\"instagaramLink\":\"instagaram.com\",\"showInstagaram\":\"1\",\"showInstagaram_cb\":\"on\",\"whatsappLink\":\"whatsapp.com\",\"showWhatsapp\":\"1\",\"showWhatsapp_cb\":\"on\",\"socialmediaDesc\":\"CARFAX DEPENDS ON ITS SOURCES FOR THE ACCURACY AND RELIABILITY OF ITS INFORMATION. THEREFORE, NO RESPONSIBILITY IS ASSUMED BY CARFAX OR ITS AGENTS FOR ERRORS OR OMISSIONS IN THIS REPORT. CARFAX FURTHER EXPRESSLY DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.\",\"rightReservedDesc\":\"\\u00a9 2024 CARFAX, Inc., part of S&P Global. <br>\\r\\nAll rights reserved. 9\\/29\\/24 4:00:19 PM (CDT)\",\"signatureDesc\":\"I have reviewed and received a copy of the CARFAX Vehicle History Report for this 2004 JEEP LIBERTY vehicle (VIN: 1J4GL58K14W295826), which is based on information supplied to CARFAX and available as of 9\\/29\\/24 at 5:00 PM (EDT).\",\"_token\":\"hgGFLNpzw6T5KG7ppgBVOMK8BAhbE6NRultjinEi\",\"_method\":\"PUT\"}', '2024-11-28 03:27:16', '2024-11-28 03:27:16'),
(6397, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-28 03:27:16', '2024-11-28 03:27:16'),
(6398, 1, 'admin/report-settings/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 03:27:45', '2024-11-28 03:27:45'),
(6399, 1, 'admin/report-settings/1', 'PUT', '127.0.0.1', '{\"vehicleHistoryReportDesc\":\"This CARFAX Vehicle History Report is based only on information supplied to CARFAX and available as of 9\\/29\\/24 at 4:00:19 PM (CDT). Other information about this vehicle, including problems, may not have been reported to CARFAX.  Use this report as one important tool, along with a vehicle inspection and test drive, to make a better 1  decision about your next used 2  car.\",\"titleHistoryDesc\":\"GUARANTEED - None of these title problems were reported by a U.S. state Department of Motor Vehicles (DMV). If you find that any of these title problems were reported by a DMV and not included in this report, you may qualify.\\r\\nView Terms | View Certificate\",\"facebookLink\":\"facebook.com\",\"showFacebook\":\"1\",\"showFacebook_cb\":\"on\",\"instagaramLink\":\"instagaram.com\",\"showInstagaram\":\"1\",\"showInstagaram_cb\":\"on\",\"whatsappLink\":\"whatsapp.com\",\"showWhatsapp\":\"1\",\"showWhatsapp_cb\":\"on\",\"socialmediaDesc\":\"CARFAX DEPENDS ON ITS SOURCES FOR THE ACCURACY AND RELIABILITY OF ITS INFORMATION. THEREFORE, NO RESPONSIBILITY IS ASSUMED BY CARFAX OR ITS AGENTS FOR ERRORS OR OMISSIONS IN THIS REPORT. CARFAX FURTHER EXPRESSLY DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.\",\"rightReservedDesc\":\"\\u00a9 2024 CARFAX, Inc., part of S&P Global. \\\\n\\r\\nAll rights reserved. 9\\/29\\/24 4:00:19 PM (CDT)\",\"signatureDesc\":\"I have reviewed and received a copy of the CARFAX Vehicle History Report for this 2004 JEEP LIBERTY vehicle (VIN: 1J4GL58K14W295826), which is based on information supplied to CARFAX and available as of 9\\/29\\/24 at 5:00 PM (EDT).\",\"_token\":\"hgGFLNpzw6T5KG7ppgBVOMK8BAhbE6NRultjinEi\",\"_method\":\"PUT\"}', '2024-11-28 03:27:54', '2024-11-28 03:27:54'),
(6400, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-28 03:27:54', '2024-11-28 03:27:54'),
(6401, 1, 'admin/report-settings/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 03:28:06', '2024-11-28 03:28:06'),
(6402, 1, 'admin/report-settings/1', 'PUT', '127.0.0.1', '{\"vehicleHistoryReportDesc\":\"This CARFAX Vehicle History Report is based only on information supplied to CARFAX and available as of 9\\/29\\/24 at 4:00:19 PM (CDT). Other information about this vehicle, including problems, may not have been reported to CARFAX.  Use this report as one important tool, along with a vehicle inspection and test drive, to make a better 1  decision about your next used 2  car.\",\"titleHistoryDesc\":\"GUARANTEED - None of these title problems were reported by a U.S. state Department of Motor Vehicles (DMV). If you find that any of these title problems were reported by a DMV and not included in this report, you may qualify.\\r\\nView Terms | View Certificate\",\"facebookLink\":\"facebook.com\",\"showFacebook\":\"1\",\"showFacebook_cb\":\"on\",\"instagaramLink\":\"instagaram.com\",\"showInstagaram\":\"1\",\"showInstagaram_cb\":\"on\",\"whatsappLink\":\"whatsapp.com\",\"showWhatsapp\":\"1\",\"showWhatsapp_cb\":\"on\",\"socialmediaDesc\":\"CARFAX DEPENDS ON ITS SOURCES FOR THE ACCURACY AND RELIABILITY OF ITS INFORMATION. THEREFORE, NO RESPONSIBILITY IS ASSUMED BY CARFAX OR ITS AGENTS FOR ERRORS OR OMISSIONS IN THIS REPORT. CARFAX FURTHER EXPRESSLY DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.\",\"rightReservedDesc\":\"\\u00a9 2024 CARFAX, Inc., part of S&P Global. \\/n\\r\\nAll rights reserved. 9\\/29\\/24 4:00:19 PM (CDT)\",\"signatureDesc\":\"I have reviewed and received a copy of the CARFAX Vehicle History Report for this 2004 JEEP LIBERTY vehicle (VIN: 1J4GL58K14W295826), which is based on information supplied to CARFAX and available as of 9\\/29\\/24 at 5:00 PM (EDT).\",\"_token\":\"hgGFLNpzw6T5KG7ppgBVOMK8BAhbE6NRultjinEi\",\"_method\":\"PUT\"}', '2024-11-28 03:28:11', '2024-11-28 03:28:11'),
(6403, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-28 03:28:11', '2024-11-28 03:28:11'),
(6404, 1, 'admin/report-settings/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 03:28:22', '2024-11-28 03:28:22'),
(6405, 1, 'admin/report-settings/1', 'PUT', '127.0.0.1', '{\"vehicleHistoryReportDesc\":\"This CARFAX Vehicle History Report is based only on information supplied to CARFAX and available as of 9\\/29\\/24 at 4:00:19 PM (CDT). Other information about this vehicle, including problems, may not have been reported to CARFAX.  Use this report as one important tool, along with a vehicle inspection and test drive, to make a better 1  decision about your next used 2  car.\",\"titleHistoryDesc\":\"GUARANTEED - None of these title problems were reported by a U.S. state Department of Motor Vehicles (DMV). If you find that any of these title problems were reported by a DMV and not included in this report, you may qualify.\\r\\nView Terms | View Certificate\",\"facebookLink\":\"facebook.com\",\"showFacebook\":\"1\",\"showFacebook_cb\":\"on\",\"instagaramLink\":\"instagaram.com\",\"showInstagaram\":\"1\",\"showInstagaram_cb\":\"on\",\"whatsappLink\":\"whatsapp.com\",\"showWhatsapp\":\"1\",\"showWhatsapp_cb\":\"on\",\"socialmediaDesc\":\"CARFAX DEPENDS ON ITS SOURCES FOR THE ACCURACY AND RELIABILITY OF ITS INFORMATION. THEREFORE, NO RESPONSIBILITY IS ASSUMED BY CARFAX OR ITS AGENTS FOR ERRORS OR OMISSIONS IN THIS REPORT. CARFAX FURTHER EXPRESSLY DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.\",\"rightReservedDesc\":\"\\u00a9 2024 CARFAX, Inc., part of S&P Global. \\r\\nAll rights reserved. 9\\/29\\/24 4:00:19 PM (CDT)\",\"signatureDesc\":\"I have reviewed and received a copy of the CARFAX Vehicle History Report for this 2004 JEEP LIBERTY vehicle (VIN: 1J4GL58K14W295826), which is based on information supplied to CARFAX and available as of 9\\/29\\/24 at 5:00 PM (EDT).\",\"_token\":\"hgGFLNpzw6T5KG7ppgBVOMK8BAhbE6NRultjinEi\",\"_method\":\"PUT\"}', '2024-11-28 03:28:28', '2024-11-28 03:28:28'),
(6406, 1, 'admin/report-settings', 'GET', '127.0.0.1', '[]', '2024-11-28 03:28:28', '2024-11-28 03:28:28'),
(6407, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 03:47:21', '2024-11-28 03:47:21'),
(6408, 1, 'admin/vehicle-history-reports/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"isShowImg\":\"on\",\"after-save\":\"exit\"}', '2024-11-28 03:47:23', '2024-11-28 03:47:23'),
(6409, 1, 'admin/vehicle-history-reports/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"isShowImg\":\"off\",\"after-save\":\"exit\"}', '2024-11-28 03:48:47', '2024-11-28 03:48:47'),
(6410, 1, 'admin/vehicle-history-reports/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"isShowImg\":\"on\",\"after-save\":\"exit\"}', '2024-11-28 03:49:54', '2024-11-28 03:49:54'),
(6411, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-28 05:37:19', '2024-11-28 05:37:19'),
(6412, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 05:37:22', '2024-11-28 05:37:22'),
(6413, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 05:41:39', '2024-11-28 05:41:39'),
(6414, 1, 'admin/settings/1', 'PUT', '127.0.0.1', '{\"websiteName\":\"bikevan\",\"websiteLogo_file_del_\":\"images\\/bikevanlogo.jpeg,\",\"webisteMiniLogo_file_del_\":\"images\\/bikevanlogo_1.jpeg,\",\"email\":\"maarkhoorsn@gmail.com\",\"phone\":\"03097676179\",\"showWhatsapp\":\"1\",\"showWhatsapp_cb\":\"on\",\"whatsappNumber\":\"+923097676179\",\"showFacebook\":\"1\",\"showFacebook_cb\":\"on\",\"facebookLink\":\"https:\\/\\/facebook.com\",\"showInstagram\":\"1\",\"showInstagram_cb\":\"on\",\"instagramLink\":\"https:instagram.com\",\"showPrivacyPolicy\":\"1\",\"showPrivacyPolicy_cb\":\"on\",\"showShippingPolicy\":\"1\",\"showShippingPolicy_cb\":\"on\",\"showReturnRefundPolicy\":\"1\",\"showReturnRefundPolicy_cb\":\"on\",\"showTermsCondition\":\"1\",\"showTermsCondition_cb\":\"on\",\"_token\":\"hgGFLNpzw6T5KG7ppgBVOMK8BAhbE6NRultjinEi\",\"_method\":\"PUT\"}', '2024-11-28 05:42:24', '2024-11-28 05:42:24'),
(6415, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-28 05:42:24', '2024-11-28 05:42:24'),
(6416, 1, 'admin/settings/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 05:42:32', '2024-11-28 05:42:32'),
(6417, 1, 'admin/settings/1', 'PUT', '127.0.0.1', '{\"websiteName\":\"bikevan\",\"email\":\"maarkhoorsn@gmail.com\",\"phone\":\"03097676179\",\"showWhatsapp\":\"1\",\"showWhatsapp_cb\":\"on\",\"whatsappNumber\":\"+923097676179\",\"showFacebook\":\"1\",\"showFacebook_cb\":\"on\",\"facebookLink\":\"https:\\/\\/facebook.com\",\"showInstagram\":\"1\",\"showInstagram_cb\":\"on\",\"instagramLink\":\"https:instagram.com\",\"showPrivacyPolicy\":\"1\",\"showPrivacyPolicy_cb\":\"on\",\"showShippingPolicy\":\"1\",\"showShippingPolicy_cb\":\"on\",\"showReturnRefundPolicy\":\"1\",\"showReturnRefundPolicy_cb\":\"on\",\"showTermsCondition\":\"1\",\"showTermsCondition_cb\":\"on\",\"_token\":\"hgGFLNpzw6T5KG7ppgBVOMK8BAhbE6NRultjinEi\",\"_method\":\"PUT\"}', '2024-11-28 05:42:51', '2024-11-28 05:42:51'),
(6418, 1, 'admin/settings', 'GET', '127.0.0.1', '[]', '2024-11-28 05:42:52', '2024-11-28 05:42:52'),
(6419, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:15:32', '2024-11-28 06:15:32'),
(6420, 1, 'admin/vehicle-history-reports/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"showReports\":\"off\",\"after-save\":\"exit\"}', '2024-11-28 06:15:33', '2024-11-28 06:15:33'),
(6421, 1, 'admin/vehicle-history-reports/1', 'PUT', '127.0.0.1', '{\"_method\":\"PUT\",\"showReports\":\"on\",\"after-save\":\"exit\"}', '2024-11-28 06:16:15', '2024-11-28 06:16:15'),
(6422, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:41:50', '2024-11-28 06:41:50'),
(6423, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:45:30', '2024-11-28 06:45:30'),
(6424, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:45:53', '2024-11-28 06:45:53'),
(6425, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:46:27', '2024-11-28 06:46:27'),
(6426, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-11-28 06:46:51', '2024-11-28 06:46:51'),
(6427, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:46:59', '2024-11-28 06:46:59'),
(6428, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:47:09', '2024-11-28 06:47:09'),
(6429, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:47:56', '2024-11-28 06:47:56'),
(6430, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:48:27', '2024-11-28 06:48:27'),
(6431, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:48:38', '2024-11-28 06:48:38'),
(6432, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:48:44', '2024-11-28 06:48:44'),
(6433, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:49:17', '2024-11-28 06:49:17'),
(6434, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:49:30', '2024-11-28 06:49:30'),
(6435, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:50:10', '2024-11-28 06:50:10'),
(6436, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:50:30', '2024-11-28 06:50:30'),
(6437, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:50:51', '2024-11-28 06:50:51'),
(6438, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:51:08', '2024-11-28 06:51:08'),
(6439, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:51:26', '2024-11-28 06:51:26'),
(6440, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:51:44', '2024-11-28 06:51:44'),
(6441, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:51:45', '2024-11-28 06:51:45'),
(6442, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:51:58', '2024-11-28 06:51:58'),
(6443, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:52:11', '2024-11-28 06:52:11'),
(6444, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:52:44', '2024-11-28 06:52:44'),
(6445, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:52:48', '2024-11-28 06:52:48'),
(6446, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:52:49', '2024-11-28 06:52:49'),
(6447, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:52:53', '2024-11-28 06:52:53'),
(6448, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:53:04', '2024-11-28 06:53:04'),
(6449, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 06:53:23', '2024-11-28 06:53:23'),
(6450, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:53:30', '2024-11-28 06:53:30'),
(6451, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 06:57:08', '2024-11-28 06:57:08'),
(6452, 1, 'admin/vehicle-history-reports/1', 'PUT', '127.0.0.1', '{\"showReports\":\"1\",\"showReports_cb\":\"on\",\"isShowImg\":\"1\",\"isShowImg_cb\":\"on\",\"vName\":\"Jeep\",\"title\":\"2004 JEEP LIBERTY LIMITED\",\"desc\":\"VIN: 1J4GL58K14W295826, 4 DOOR WAGON\\/SPORT UTILITY ,3.7L V6 F GASOLINE, REAR WHEEL DRIVE W\\/ 4X4\",\"points\":[\"No accidents or damage reported to CARFAX\",\"5 Service history records\",\"At least 1 open recall\",\"7 Previous owners\",\"Personal vehicle\",\"145,225 Last reported odometer reading\"],\"price\":\"44.99\",\"_token\":\"hgGFLNpzw6T5KG7ppgBVOMK8BAhbE6NRultjinEi\",\"_method\":\"PUT\"}', '2024-11-28 06:57:45', '2024-11-28 06:57:45'),
(6453, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:57:45', '2024-11-28 06:57:45'),
(6454, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 06:57:49', '2024-11-28 06:57:49'),
(6455, 1, 'admin/vehicle-history-reports/1', 'PUT', '127.0.0.1', '{\"showReports\":\"1\",\"showReports_cb\":\"on\",\"isShowImg\":\"1\",\"isShowImg_cb\":\"on\",\"vName\":\"Jeep\",\"title\":\"2004 JEEP LIBERTY LIMITED\",\"desc\":\"VIN: 1J4GL58K14W295826, 4 DOOR WAGON\\/SPORT UTILITY ,3.7L V6 F GASOLINE, REAR WHEEL DRIVE W\\/ 4X4\",\"points\":[\"No accidents or damage reported to CARFAX\",\"5 Service history records\",\"At least 1 open recall\",\"7 Previous owners\",\"Personal vehicle\",\"145,225 Last reported odometer reading\"],\"price\":\"44.99\",\"_token\":\"hgGFLNpzw6T5KG7ppgBVOMK8BAhbE6NRultjinEi\",\"_method\":\"PUT\"}', '2024-11-28 06:57:54', '2024-11-28 06:57:54'),
(6456, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:57:54', '2024-11-28 06:57:54'),
(6457, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 06:57:58', '2024-11-28 06:57:58'),
(6458, 1, 'admin/vehicle-history-reports/1', 'PUT', '127.0.0.1', '{\"showReports\":\"1\",\"showReports_cb\":\"on\",\"isShowImg\":\"1\",\"isShowImg_cb\":\"on\",\"vName\":\"Jeep\",\"title\":\"2004 JEEP LIBERTY LIMITED\",\"desc\":\"VIN: 1J4GL58K14W295826, 4 DOOR WAGON\\/SPORT UTILITY ,3.7L V6 F GASOLINE, REAR WHEEL DRIVE W\\/ 4X4\",\"points\":[\"No accidents or damage reported to CARFAX\",\"5 Service history records\",\"At least 1 open recall\",\"7 Previous owners\",\"Personal vehicle\",\"145,225 Last reported odometer reading\"],\"price\":\"44.99\",\"_token\":\"hgGFLNpzw6T5KG7ppgBVOMK8BAhbE6NRultjinEi\",\"_method\":\"PUT\"}', '2024-11-28 06:58:00', '2024-11-28 06:58:00'),
(6459, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 06:58:00', '2024-11-28 06:58:00'),
(6460, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 07:36:11', '2024-11-28 07:36:11'),
(6461, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 07:37:24', '2024-11-28 07:37:24'),
(6462, 1, 'admin/vehicle-history-reports/1', 'GET', '127.0.0.1', '[]', '2024-11-28 07:37:34', '2024-11-28 07:37:34'),
(6463, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 07:37:40', '2024-11-28 07:37:40'),
(6464, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 07:37:42', '2024-11-28 07:37:42'),
(6465, 1, 'admin/vehicle-history-reports/1', 'PUT', '127.0.0.1', '{\"showReports\":\"1\",\"showReports_cb\":\"on\",\"type\":\"bike\",\"search_terms\":null,\"isShowImg\":\"1\",\"isShowImg_cb\":\"on\",\"vName\":\"Jeep\",\"title\":\"2004 JEEP LIBERTY LIMITED\",\"desc\":\"VIN: 1J4GL58K14W295826, 4 DOOR WAGON\\/SPORT UTILITY ,3.7L V6 F GASOLINE, REAR WHEEL DRIVE W\\/ 4X4\",\"points\":[\"No accidents or damage reported to CARFAX\",\"5 Service history records\",\"At least 1 open recall\",\"7 Previous owners\",\"Personal vehicle\",\"145,225 Last reported odometer reading\"],\"price\":\"44.99\",\"_token\":\"hgGFLNpzw6T5KG7ppgBVOMK8BAhbE6NRultjinEi\",\"_method\":\"PUT\"}', '2024-11-28 07:37:49', '2024-11-28 07:37:49'),
(6466, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 07:37:49', '2024-11-28 07:37:49'),
(6467, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 07:37:53', '2024-11-28 07:37:53'),
(6468, 1, 'admin/vehicle-history-reports/1', 'PUT', '127.0.0.1', '{\"showReports\":\"1\",\"showReports_cb\":\"on\",\"type\":\"car\",\"search_terms\":null,\"isShowImg\":\"1\",\"isShowImg_cb\":\"on\",\"vName\":\"Jeep\",\"title\":\"2004 JEEP LIBERTY LIMITED\",\"desc\":\"VIN: 1J4GL58K14W295826, 4 DOOR WAGON\\/SPORT UTILITY ,3.7L V6 F GASOLINE, REAR WHEEL DRIVE W\\/ 4X4\",\"points\":[\"No accidents or damage reported to CARFAX\",\"5 Service history records\",\"At least 1 open recall\",\"7 Previous owners\",\"Personal vehicle\",\"145,225 Last reported odometer reading\"],\"price\":\"44.99\",\"_token\":\"hgGFLNpzw6T5KG7ppgBVOMK8BAhbE6NRultjinEi\",\"_method\":\"PUT\"}', '2024-11-28 07:38:00', '2024-11-28 07:38:00'),
(6469, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 07:38:00', '2024-11-28 07:38:00'),
(6470, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 07:40:53', '2024-11-28 07:40:53'),
(6471, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 07:51:25', '2024-11-28 07:51:25'),
(6472, 1, 'admin/vehicle-history-reports/create', 'GET', '127.0.0.1', '[]', '2024-11-28 08:05:52', '2024-11-28 08:05:52'),
(6473, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 08:06:03', '2024-11-28 08:06:03'),
(6474, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 08:06:05', '2024-11-28 08:06:05'),
(6475, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 08:06:06', '2024-11-28 08:06:06'),
(6476, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 08:06:11', '2024-11-28 08:06:11'),
(6477, 1, 'admin/vehicle-history-reports/1', 'PUT', '127.0.0.1', '{\"showReports\":\"1\",\"showReports_cb\":\"on\",\"type\":\"car\",\"search_terms\":null,\"isShowImg\":\"1\",\"isShowImg_cb\":\"on\",\"vName\":\"Jeep\",\"make\":\"GMC\",\"vtype\":\"MPV\",\"modelYear\":\"2001\",\"bodyStyle\":\"SPORT UTILITY 4-DR\",\"title\":\"2004 JEEP LIBERTY LIMITED\",\"desc\":\"VIN: 1J4GL58K14W295826, 4 DOOR WAGON\\/SPORT UTILITY ,3.7L V6 F GASOLINE, REAR WHEEL DRIVE W\\/ 4X4\",\"points\":[\"No accidents or damage reported to CARFAX\",\"5 Service history records\",\"At least 1 open recall\",\"7 Previous owners\",\"Personal vehicle\",\"145,225 Last reported odometer reading\"],\"price\":\"44.99\",\"_token\":\"hgGFLNpzw6T5KG7ppgBVOMK8BAhbE6NRultjinEi\",\"_method\":\"PUT\"}', '2024-11-28 08:06:37', '2024-11-28 08:06:37'),
(6478, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 08:06:37', '2024-11-28 08:06:37'),
(6479, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 08:07:18', '2024-11-28 08:07:18'),
(6480, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 08:07:30', '2024-11-28 08:07:30'),
(6481, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-28 09:15:17', '2024-11-28 09:15:17'),
(6482, 1, 'admin/vehicle-history-reports/1/edit', 'GET', '127.0.0.1', '[]', '2024-11-28 10:15:57', '2024-11-28 10:15:57');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(6483, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 10:15:59', '2024-11-28 10:15:59'),
(6484, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 10:40:10', '2024-11-28 10:40:10'),
(6485, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 11:35:21', '2024-11-28 11:35:21'),
(6486, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 11:36:15', '2024-11-28 11:36:15'),
(6487, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 12:08:48', '2024-11-28 12:08:48'),
(6488, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 12:13:01', '2024-11-28 12:13:01'),
(6489, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 12:19:10', '2024-11-28 12:19:10'),
(6490, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 12:24:14', '2024-11-28 12:24:14'),
(6491, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 12:26:16', '2024-11-28 12:26:16'),
(6492, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 12:28:24', '2024-11-28 12:28:24'),
(6493, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 12:29:22', '2024-11-28 12:29:22'),
(6494, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 12:29:35', '2024-11-28 12:29:35'),
(6495, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 12:29:46', '2024-11-28 12:29:46'),
(6496, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 12:35:28', '2024-11-28 12:35:28'),
(6497, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 12:37:21', '2024-11-28 12:37:21'),
(6498, 1, 'admin/_handle_action_', 'POST', '127.0.0.1', '{\"_model\":\"App_Models_downloadedDoc\",\"_action\":\"OpenAdmin_Admin_Grid_Tools_BatchDelete\",\"_key\":\"1,2,3,4,5,6,7\",\"_token\":\"hgGFLNpzw6T5KG7ppgBVOMK8BAhbE6NRultjinEi\"}', '2024-11-28 12:38:28', '2024-11-28 12:38:28'),
(6499, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 12:38:29', '2024-11-28 12:38:29'),
(6500, 1, 'admin/downloaded-docs/1,2,3,4,5,6,7', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"hgGFLNpzw6T5KG7ppgBVOMK8BAhbE6NRultjinEi\"}', '2024-11-28 12:38:30', '2024-11-28 12:38:30'),
(6501, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 12:38:30', '2024-11-28 12:38:30'),
(6502, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 13:59:43', '2024-11-28 13:59:43'),
(6503, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 13:59:57', '2024-11-28 13:59:57'),
(6504, 1, 'admin/vehicle-history-reports/a786', 'GET', '127.0.0.1', '[]', '2024-11-28 14:00:01', '2024-11-28 14:00:01'),
(6505, 1, 'admin/vehicle-history-reports', 'GET', '127.0.0.1', '[]', '2024-11-28 14:00:27', '2024-11-28 14:00:27'),
(6506, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 14:00:33', '2024-11-28 14:00:33'),
(6507, 1, 'admin/downloaded-docs', 'GET', '127.0.0.1', '[]', '2024-11-28 14:01:57', '2024-11-28 14:01:57'),
(6508, 1, 'admin/vehicle-history-reports/1', 'GET', '127.0.0.1', '[]', '2024-11-28 14:01:59', '2024-11-28 14:01:59'),
(6509, 1, 'admin/vehicle-history-reports/1', 'GET', '127.0.0.1', '[]', '2024-11-28 14:02:06', '2024-11-28 14:02:06');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2024-09-30 05:46:43', '2024-09-30 05:46:43'),
(7, 'Media manager', 'ext.media-manager', '', '/media*', '2024-09-30 06:13:59', '2024-09-30 06:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-09-30 05:46:13', '2024-09-30 05:46:13'),
(2, 'editor', 'editor', '2024-10-18 17:08:23', '2024-10-18 17:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(2, 5, NULL, NULL),
(2, 7, NULL, NULL),
(1, 1, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL),
(2, 5, NULL, NULL),
(2, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(1, 1, NULL, NULL),
(2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$12$bME1iZruNP44zjS4I1Ei2ODhuGA/Q9SDsXmW/JDXrDadGCBjr5mvO', 'Administrator', NULL, NULL, '2024-09-30 05:46:13', '2024-09-30 05:46:13'),
(2, 'ashelly', '$2y$12$daB2Xvq3fcsmTBYAi0glQOhbjiPxp.aRWLHfYEf4xl1WaZ5x2wbQa', 'ashelly', '', NULL, '2024-10-18 17:06:22', '2024-10-24 11:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 4, NULL, NULL),
(2, 3, NULL, NULL),
(2, 7, NULL, NULL),
(2, 4, NULL, NULL),
(2, 3, NULL, NULL),
(2, 7, NULL, NULL),
(2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactUs`
--

CREATE TABLE `contactUs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT 'username' COMMENT 'username',
  `email` varchar(255) DEFAULT 'user@gmail.com' COMMENT 'useremail',
  `message` varchar(255) DEFAULT 'Empty' COMMENT 'usermsg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactUs`
--

INSERT INTO `contactUs` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'john', 'john@gmail.com', 'need this id record', '2024-11-26 08:20:07', '2024-11-26 08:20:07'),
(2, 'wick', 'wick@gmail.com', 'got it id#123456', '2024-11-26 08:21:57', '2024-11-26 08:21:57');

-- --------------------------------------------------------

--
-- Table structure for table `downloadedDoc`
--

CREATE TABLE `downloadedDoc` (
  `id` int(10) UNSIGNED NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `package` varchar(255) DEFAULT NULL,
  `transactionId` varchar(255) DEFAULT NULL,
  `cardNumber` varchar(255) DEFAULT NULL,
  `vId` varchar(255) NOT NULL DEFAULT '0',
  `vImg` varchar(2000) NOT NULL DEFAULT ' ',
  `vehicleType` varchar(255) DEFAULT NULL,
  `make` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `bodyStyle` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `downloadedDoc`
--

INSERT INTO `downloadedDoc` (`id`, `userName`, `email`, `phone`, `type`, `package`, `transactionId`, `cardNumber`, `vId`, `vImg`, `vehicleType`, `make`, `model`, `bodyStyle`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'clientsjobs', 'h@gmail.com', '01234567890', 'car', '85', 'pm_1QQBCjCXOCh8OoqU5J7evm17', '4444', 'a786', ' ', 'MPV', 'GMC', NULL, 'SPORT UTILITY 4-DR', NULL, '2024-11-28 12:08:39', '2024-11-28 12:38:30', '2024-11-28 12:38:30'),
(2, 'clientsjobs', 'h@gmail.com', '01234567890', 'car', '85', 'pm_1QQBE0CXOCh8OoqUNuQdK4up', '4444', 'a786', ' ', 'MPV', 'GMC', NULL, 'SPORT UTILITY 4-DR', NULL, '2024-11-28 12:09:59', '2024-11-28 12:38:30', '2024-11-28 12:38:30'),
(3, 'clientsjobs', 'h@gmail.com', '01234567890', 'car', '85', 'pm_1QQBGrCXOCh8OoqUZZwcIWNw', '4444', 'a786', ' ', 'MPV', 'GMC', NULL, 'SPORT UTILITY 4-DR', NULL, '2024-11-28 12:12:56', '2024-11-28 12:38:30', '2024-11-28 12:38:30'),
(4, 'clientsjobs', 'mubeen@gmail.com', '01234567890', 'car', '55', 'pm_1QQBJzCXOCh8OoqUNKvEqRqN', '8210', 'a786', ' ', 'MPV', 'GMC', '2001', 'SPORT UTILITY 4-DR', NULL, '2024-11-28 12:16:14', '2024-11-28 12:38:30', '2024-11-28 12:38:30'),
(5, 'clientsjobs', 'flptoronto@yahoo.com', '01234567890', 'car', '55', 'pm_1QQBMWCXOCh8OoqUrBjhVRD7', '1113', 'a786', ' ', 'MPV', 'GMC', '2001', 'SPORT UTILITY 4-DR', NULL, '2024-11-28 12:18:47', '2024-11-28 12:38:30', '2024-11-28 12:38:30'),
(6, 'clientsjobs', 'flptoronto@yahoo.com', '01234567890', 'car', '55', 'pm_1QQBRfCXOCh8OoqUuSSQdOnA', '1113', 'a786', ' ', 'MPV', 'GMC', '2001', 'SPORT UTILITY 4-DR', '44', '2024-11-28 12:24:06', '2024-11-28 12:38:30', '2024-11-28 12:38:30'),
(7, 'clientsjobs', 'flptoronto@yahoo.com', '01234567890', 'car', '55', 'pm_1QQBcLCXOCh8OoqUGjhqAqLw', '4105', 'a786', ' ', 'MPV', 'GMC', '2001', 'SPORT UTILITY 4-DR', '44', '2024-11-28 12:35:17', '2024-11-28 12:38:30', '2024-11-28 12:38:30'),
(8, 'clientsjobs', 'flptoronto@yahoo.com', '01234567890', 'car', '55', 'pm_1QQBePCXOCh8OoqUCg6kHWOS', '4105', 'a786', 'images/parking.png', 'MPV', 'GMC', '2001', 'SPORT UTILITY 4-DR', '44', '2024-11-28 12:37:16', '2024-11-28 12:37:16', NULL),
(9, 'clientsjobs', 'admin@amigo.com', '01234567890', 'car', '55', 'pm_1QQBmxCXOCh8OoqUYeDyrEzb', '4242', 'a786', 'images/parking.png', 'MPV', 'GMC', '2001', 'SPORT UTILITY 4-DR', '44', '2024-11-28 12:46:05', '2024-11-28 12:46:05', NULL),
(10, 'clientsjobs', 'admin@amigo.com', '01234567890', 'car', '55', 'pm_1QQBmyCXOCh8OoqUVctC9viQ', '4242', 'a786', 'images/parking.png', 'MPV', 'GMC', '2001', 'SPORT UTILITY 4-DR', '44', '2024-11-28 12:46:07', '2024-11-28 12:46:07', NULL),
(11, 'clientsjobs', 'admin@amigo.com', '01234567890', 'car', '55', 'pm_1QQBrjCXOCh8OoqUZ01GvywJ', '4242', 'a786', 'images/parking.png', 'MPV', 'GMC', '2001', 'SPORT UTILITY 4-DR', '44', '2024-11-28 12:51:02', '2024-11-28 12:51:02', NULL),
(12, 'clientsjobs', 'h@gmail.com', '01234567890', 'car', '85', 'pm_1QQD3iCXOCh8OoqUjOAYx610', '4242', 'a786', 'images/parking.png', 'MPV', 'GMC', '2001', 'SPORT UTILITY 4-DR', '44', '2024-11-28 14:07:28', '2024-11-28 14:07:28', NULL),
(13, 'clientsjobs', 'h@gmail.com', '01234567890', 'car', '85', 'pm_1QQD8KCXOCh8OoqUIxw8ZXFS', '4242', 'a786', 'images/parking.png', 'MPV', 'GMC', '2001', 'SPORT UTILITY 4-DR', '44', '2024-11-28 14:12:14', '2024-11-28 14:12:14', NULL);

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
-- Table structure for table `glossary`
--

CREATE TABLE `glossary` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT ' ',
  `desc` varchar(2000) NOT NULL DEFAULT ' ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `glossary`
--

INSERT INTO `glossary` (`id`, `title`, `desc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'First Owner', 'When the first owner(s) obtains a title from a Department of Motor Vehicles as proof of ownership.', '2024-11-27 11:51:45', '2024-11-27 12:17:58', NULL),
(2, 'Manufacturer Recall', 'Automobile manufacturers issue recall notices to inform vehicle owners of a safety defect or failure to meet minimum federal safety or emissions standards. Manufacturer recalls are repaired at no cost to the customer.', '2024-11-27 12:18:26', '2024-11-27 12:18:26', NULL),
(3, 'New Owner Reported', 'When a vehicle is sold to a new owner, the Title must be transferred to the new owner(s) at a Department of Motor Vehicles.', '2024-11-27 12:18:46', '2024-11-27 12:18:46', NULL),
(4, 'Ownership History', 'CARFAX defines an owner as an individual or business that possesses and uses a vehicle. Not all title transactions represent changes in ownership. To provide the estimated number of owners, CARFAX proprietary technology analyzes all the events in a vehicle history. Estimated ownership is available for vehicles manufactured after 1991 and titled solely in the US including Puerto Rico. Dealers sometimes opt to take ownership of a vehicle and are required to in the following states: Maine, Massachusetts, New Jersey, Ohio, Oklahoma, Pennsylvania, and South Dakota. Please consider this as you review a vehicle\'s estimated ownership history.', '2024-11-27 12:21:16', '2024-11-27 12:21:16', NULL),
(5, 'Title Issued', 'A state issues a title to provide a vehicle owner with proof of ownership. Each title has a unique number. Each title or registration record on a CARFAX report does not necessarily indicate a change in ownership. In Canada, a registration and bill of sale are used as proof of ownership.', '2024-11-27 12:21:45', '2024-11-27 12:21:45', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_04_173148_create_admin_tables', 2),
(6, '2024_09_30_104856_create_catg_table', 3),
(7, '2024_09_30_105235_create_categories_table', 4),
(8, '2024_09_30_105445_create_productcatg_table', 5),
(9, '2024_09_30_110242_create_categories_table', 6),
(10, '2024_09_30_123738_create_products_table', 7),
(11, '2024_09_30_143530_create_products_table', 8),
(12, '2024_09_30_154701_create_products_table', 9),
(13, '2024_09_30_160329_create_contactUs_table', 10),
(14, '2024_09_30_162455_create_settings_table', 11),
(15, '2024_09_30_163533_create_bannerImagesOnly_table', 12),
(16, '2024_09_30_165122_create_PromotionBanner_table', 13),
(17, '2024_09_30_165532_create_bannerDesign_table', 14),
(18, '2024_10_02_163251_create_topSlideText_table', 15),
(19, '2024_10_02_171013_create_toastMessage_table', 16),
(24, '2024_10_02_230150_create_designCodeList_table', 17),
(25, '2024_10_04_152746_create_ColorsVariations_table', 18),
(26, '2024_10_04_165057_create_sizeVariations_table', 19),
(27, '2024_10_04_182745_create_PagesDesign_table', 20),
(28, '2024_10_04_191723_create_ContactUsMessages_table', 21),
(29, '2024_10_04_193700_create_Orders_table', 22),
(30, '2024_10_06_112959_create_reviewsProducts_table', 23),
(31, '2024_10_09_144823_create_rentalUsers_table', 24),
(32, '2024_10_09_145347_create_rentalUsers_table', 25),
(33, '2024_10_09_145446_create_rentalUsers_table', 26),
(34, '2024_10_09_145644_create_rentalUsers_table', 27),
(35, '2024_10_15_103851_create_UsersFavorite_table', 28),
(36, '2024_10_15_114018_create_Blogs_table', 29),
(37, '2024_10_17_181725_create_Msgs_table', 30),
(38, '2024_10_18_203516_create_usersNotifications_table', 31),
(39, '2024_10_18_213713_create_Notifications_table', 32),
(40, '2024_10_22_230307_create_FAQ_table', 33),
(41, '2024_10_22_231953_create_HowItsWork_table', 34),
(42, '2024_10_22_232524_create_StepCards_table', 35),
(43, '2024_10_23_000914_create_SEO_table', 36),
(44, '2024_11_26_095004_create_contactUs_table', 37),
(45, '2024_11_26_134400_create_downloadedDoc_table', 38),
(46, '2024_11_26_140813_create_vehicleHistoryReports_table', 39),
(47, '2024_11_27_034534_create_additionalHistory_table', 40),
(48, '2024_11_27_084718_create_titleHistory_table', 41),
(49, '2024_11_27_114012_create_ownershipHistory_table', 42),
(50, '2024_11_27_151336_create_ownersList_table', 43),
(51, '2024_11_27_165016_create_glossary_table', 44),
(52, '2024_11_27_170655_create_reportSetting_table', 45);

-- --------------------------------------------------------

--
-- Table structure for table `Msgs`
--

CREATE TABLE `Msgs` (
  `id` int(10) UNSIGNED NOT NULL,
  `sid` int(111) UNSIGNED DEFAULT 0,
  `msg` longtext NOT NULL DEFAULT ' ',
  `rid` int(111) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Msgs`
--

INSERT INTO `Msgs` (`id`, `sid`, `msg`, `rid`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 'hiasd', 30, '2024-10-17 19:39:47', '2024-10-17 19:39:47', NULL),
(3, 1, 'hiasdihias ajsba', 30, '2024-10-17 19:41:00', '2024-10-17 19:41:00', NULL),
(4, 1, 'dcs', 30, '2024-10-17 19:47:39', '2024-10-17 19:47:39', NULL),
(5, 1, 'dfsd', 30, '2024-10-17 19:52:24', '2024-10-17 19:52:24', NULL),
(6, 1, 'saasd', 30, '2024-10-17 19:55:32', '2024-10-17 19:55:32', NULL),
(7, 1, 'sada', 30, '2024-10-17 19:58:12', '2024-10-17 19:58:12', NULL),
(8, 1, 'asds', 30, '2024-10-17 19:58:48', '2024-10-17 19:58:48', NULL),
(9, 1, 'sadsd', 30, '2024-10-17 20:14:41', '2024-10-17 20:14:41', NULL),
(10, 1, 'sdfsd', 30, '2024-10-17 20:15:20', '2024-10-17 20:15:20', NULL),
(11, 1, 'asdas', 30, '2024-10-17 20:16:43', '2024-10-17 20:16:43', NULL),
(12, 1, 'dsc', 30, '2024-10-17 20:19:14', '2024-10-17 20:19:14', NULL),
(13, 1, 'sadas', 30, '2024-10-17 20:20:48', '2024-10-17 20:20:48', NULL),
(14, 1, 'dasd', 30, '2024-10-17 20:20:52', '2024-10-17 20:20:52', NULL),
(15, 1, 'asdas', 30, '2024-10-17 20:21:23', '2024-10-17 20:21:23', NULL),
(16, 30, 'sadas', 1, '2024-10-17 20:28:08', '2024-10-17 20:28:08', NULL),
(17, 30, 'sadasd', 1, '2024-10-17 20:30:43', '2024-10-17 20:30:43', NULL),
(18, 30, 'sad', 1, '2024-10-17 20:41:00', '2024-10-17 20:41:00', NULL),
(19, 30, 'sadasd', 1, '2024-10-17 20:41:06', '2024-10-17 20:41:06', NULL),
(20, 30, 'sadasd', 1, '2024-10-17 20:41:50', '2024-10-17 20:41:50', NULL),
(21, 30, 'sadasd', 1, '2024-10-17 20:42:31', '2024-10-17 20:42:31', NULL),
(22, 30, 'asdasd', 1, '2024-10-17 20:42:51', '2024-10-17 20:42:51', NULL),
(23, 30, 'sd', 1, '2024-10-17 20:43:52', '2024-10-17 20:43:52', NULL),
(24, 30, 'sdfsd', 1, '2024-10-17 20:48:17', '2024-10-17 20:48:17', NULL),
(25, 30, 'sdf', 1, '2024-10-17 20:48:33', '2024-10-17 20:48:33', NULL),
(26, 30, 'asda', 1, '2024-10-17 20:48:52', '2024-10-17 20:48:52', NULL),
(27, 30, 'asd', 1, '2024-10-17 20:52:31', '2024-10-17 20:52:31', NULL),
(28, 30, 'sdfsdf', 1, '2024-10-17 20:53:42', '2024-10-17 20:53:42', NULL),
(29, 30, 'as', 1, '2024-10-17 20:54:22', '2024-10-17 20:54:22', NULL),
(30, 30, 'dsfsd', 1, '2024-10-17 20:56:03', '2024-10-17 20:56:03', NULL),
(31, 30, 'as', 1, '2024-10-17 20:57:29', '2024-10-17 20:57:29', NULL),
(32, 30, 'asd', 1, '2024-10-17 20:58:45', '2024-10-17 20:58:45', NULL),
(33, 30, 'asd', 1, '2024-10-17 21:01:52', '2024-10-17 21:01:52', NULL),
(34, 30, 'sd', 1, '2024-10-17 21:03:58', '2024-10-17 21:03:58', NULL),
(35, 30, 'asd', 1, '2024-10-17 21:05:19', '2024-10-17 21:05:19', NULL),
(36, 30, 'xca', 1, '2024-10-17 21:27:44', '2024-10-17 21:27:44', NULL),
(37, 30, 'asas', 1, '2024-10-17 21:27:48', '2024-10-17 21:27:48', NULL),
(38, 30, 'asd', 1, '2024-10-17 21:28:29', '2024-10-17 21:28:29', NULL),
(39, 30, 'asd', 1, '2024-10-17 21:29:06', '2024-10-17 21:29:06', NULL),
(40, 30, 's', 1, '2024-10-17 21:32:38', '2024-10-17 21:32:38', NULL),
(41, 30, 'as', 1, '2024-10-17 21:34:13', '2024-10-17 21:34:13', NULL),
(42, 30, 's', 1, '2024-10-17 21:36:50', '2024-10-17 21:36:50', NULL),
(43, 30, 'asd', 1, '2024-10-17 21:38:05', '2024-10-17 21:38:05', NULL),
(44, 30, 'a', 1, '2024-10-17 21:40:27', '2024-10-17 21:40:27', NULL),
(45, 30, 'a', 1, '2024-10-17 21:41:29', '2024-10-17 21:41:29', NULL),
(46, 30, 'a', 1, '2024-10-17 21:42:36', '2024-10-17 21:42:36', NULL),
(47, 1, 'asx', 1, '2024-10-18 04:27:42', '2024-10-18 04:27:42', NULL),
(48, 30, 'hi how are you', 1, '2024-10-18 14:03:50', '2024-10-18 14:03:50', NULL),
(49, 1, 'hy', 30, '2024-10-22 16:50:44', '2024-10-22 16:50:44', NULL),
(50, 1, 'hy', 30, '2024-10-22 16:54:59', '2024-10-22 16:54:59', NULL),
(51, 1, 'hi', 30, '2024-10-22 16:55:29', '2024-10-22 16:55:29', NULL),
(52, 1, 'as', 30, '2024-10-22 16:56:19', '2024-10-22 16:56:19', NULL),
(53, 1, 'sa', 30, '2024-10-22 16:57:59', '2024-10-22 16:57:59', NULL),
(54, 1, 'asdd', 30, '2024-10-22 16:59:53', '2024-10-22 16:59:53', NULL),
(55, 1, 'ghjkl', 30, '2024-10-22 17:00:39', '2024-10-22 17:00:39', NULL),
(56, 1, 'sadfg', 30, '2024-10-22 17:01:35', '2024-10-22 17:01:35', NULL),
(57, 1, 'sadfsdgb ds asdsdsd sdda we', 30, '2024-10-22 17:02:06', '2024-10-22 17:02:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ownershipHistory`
--

CREATE TABLE `ownershipHistory` (
  `id` int(10) UNSIGNED NOT NULL,
  `vId` varchar(500) NOT NULL DEFAULT ' ',
  `vName` varchar(500) NOT NULL DEFAULT ' ',
  `yearpurchased` varchar(255) NOT NULL,
  `yearpurchasedowners` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`yearpurchasedowners`)),
  `typeofowner` varchar(255) NOT NULL,
  `typeofowners` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`typeofowners`)),
  `ownershiplength` varchar(255) NOT NULL,
  `ownershiplengthowners` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`ownershiplengthowners`)),
  `provinces` varchar(255) NOT NULL,
  `provincesowners` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`provincesowners`)),
  `milesperyear` varchar(255) NOT NULL,
  `milesperyearowners` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`milesperyearowners`)),
  `lastodometerreading` varchar(255) NOT NULL,
  `lastodometerreadingowners` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`lastodometerreadingowners`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ownershipHistory`
--

INSERT INTO `ownershipHistory` (`id`, `vId`, `vName`, `yearpurchased`, `yearpurchasedowners`, `typeofowner`, `typeofowners`, `ownershiplength`, `ownershiplengthowners`, `provinces`, `provincesowners`, `milesperyear`, `milesperyearowners`, `lastodometerreading`, `lastodometerreadingowners`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a786', ' ', 'Purchased Year', '[\"2005\",\"2010\",\"2015\",\"2022\"]', 'Type Of Owner', '[\"Personal\",\"Personal\",\"Personal\",\"Personal\"]', 'Estimated Length of Ownership', '[\"17 yrs, 9 mo.\",\"17 yrs, 9 mo.\",\"17 yrs, 9 mo.\",\"1 yr, 5 mo.\"]', 'Owned in the Following States/Provinces', '[\"See Details\",\"See Details\",\"See Details\",\"Missouri\"]', 'Estimated Miles Driven per Year', '[\"See Details\",\"See Details\",\"See Details\",\"----\"]', 'Last Reported Odometer Reading', '[\"145,225\",\"145,225\",\"145,225\",\"----\"]', '2024-11-27 13:46:40', '2024-11-28 02:16:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ownersList`
--

CREATE TABLE `ownersList` (
  `id` int(10) UNSIGNED NOT NULL,
  `vId` varchar(255) NOT NULL,
  `vName` varchar(255) NOT NULL DEFAULT ' ',
  `ownerNo` varchar(255) NOT NULL DEFAULT ' ',
  `purchased` varchar(255) NOT NULL DEFAULT ' ',
  `subtitle` varchar(255) NOT NULL DEFAULT ' ',
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '\'  \'' CHECK (json_valid(`details`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ownersList`
--

INSERT INTO `ownersList` (`id`, `vId`, `vName`, `ownerNo`, `purchased`, `subtitle`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a786', ' ', '1', '2004', 'Personal Vehicle - 8,310 mi/yr', '{\"new_1\":{\"date\":\"2004-01-01\",\"mileage\":\"2\",\"source\":\"Doug Marine Motors, Washington Court House, OH\",\"comments\":\"Vehicle serviced: Pre-delivery inspection completed\"},\"new_2\":{\"date\":\"2005-01-01\",\"mileage\":\"0\",\"source\":\"Ohio Motor Vehicle Dept.\",\"comments\":\"First owner reported: Titled or registered as personal vehicle\"}}', '2024-11-27 14:00:22', '2024-11-27 14:00:22', NULL),
(2, 'a786', ' ', '2', '2009', 'Personal Vehicle - 11,404 mi/yr', '{\"new_1\":{\"date\":\"2009-01-01\",\"mileage\":\"0\",\"source\":\"Ohio Motor Vehicle Dept., Columbus, OH\",\"comments\":\"Title issued or updated: Registration issued or renewed, New owner reported, Loan or lien reported\"},\"new_2\":{\"date\":\"2010-01-01\",\"mileage\":\"0\",\"source\":\"Ohio Motor Vehicle Dept., Columbus, OH\",\"comments\":\"Registration issued or renewed\"},\"new_3\":{\"date\":\"2011-01-01\",\"mileage\":\"0\",\"source\":\"Ohio Motor Vehicle Dept., Columbus, OH\",\"comments\":\"Registration issued or renewed: Registration updated when owner moved to a new location\"},\"new_4\":{\"date\":\"2012-01-01\",\"mileage\":\"72,690\",\"source\":\"Crown Motor Cars, Dublin, OH\",\"comments\":\"Vehicle serviced: Control arm(s) replaced\"},\"new_5\":{\"date\":\"2013-01-01\",\"mileage\":\"0\",\"source\":\"Ohio Motor Vehicle Dept.\",\"comments\":\"Registration issued or renewed\"}}', '2024-11-27 14:02:42', '2024-11-27 14:02:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PagesDesign`
--

CREATE TABLE `PagesDesign` (
  `id` int(10) UNSIGNED NOT NULL,
  `privacyPolicy` longtext DEFAULT ' ' COMMENT 'privacyPolicy',
  `shippingPolicy` longtext DEFAULT ' ' COMMENT 'returnPolicy',
  `returnRefundPolicy` longtext DEFAULT ' ' COMMENT 'refundPolicy',
  `termsCondition` longtext DEFAULT ' ' COMMENT 'termsCondition',
  `contactUs` longtext NOT NULL DEFAULT ' ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PagesDesign`
--

INSERT INTO `PagesDesign` (`id`, `privacyPolicy`, `shippingPolicy`, `returnRefundPolicy`, `termsCondition`, `contactUs`, `created_at`, `updated_at`) VALUES
(1, '<div class=\"shopify-policy__title page-header__text-wrapper\" style=\"max-width:850px; text-align:center; margin-top:68px; margin-bottom:68px\">\r\n<h1><strong>Privacy Policy</strong></h1>\r\n\r\n<p>Welcome to vistavin.com, provided by&nbsp;<b>Digital Core Tech Limited</b>&nbsp;(&ldquo;we,&rdquo; &ldquo;us,&rdquo; or &ldquo;<b>Digital Core Tech Limited</b>&ldquo;).&nbsp;<b>Digital Core Tech Limited</b>, together with its affiliates and subsidiaries, has created this Policy to apply to all users and clients of our website (https://vistavin.com) and the associated products, services, data, information, and materials offered therein (collectively, the &ldquo;Services&rdquo;).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This Privacy Policy (&ldquo;Policy&rdquo;) applies to your use of the Services and is part of and supplements the Vista Vin Terms of Service (the &ldquo;Terms&rdquo;), available here: https://vistavin.com/terms-of-service.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>PLEASE CAREFULLY READ THIS POLICY. YOUR USE OF THE SERVICES CONSTITUTES YOUR CONSENT TO THIS POLICY. DO NOT USE THE SERVICES IF YOU ARE UNWILLING OR UNABLE TO CONSENT TO THIS POLICY.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We may revise this Policy at any time and such revision shall be posted here and accessible via this link: https://vistavin.com/privacy-policy. Any revision and/or addition to this Policy shall become effective and binding on you when you continue to use the Services on or after the effective date of such revision and/or addition.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>If you are a resident of California, Virginia, Colorado, Connecticut, or Utah, you may be entitled to certain individual rights under the California Consumer Privacy Act of 2018 (as amended by the California Privacy Rights Act of 2020 (&ldquo;CPRA&rdquo;)) (collectively, &ldquo;CCPA&rdquo;), Virginia Consumer Data Protection Act (&ldquo;VCDPA&rdquo;), Colorado Privacy Act (&ldquo;CPA&rdquo;), Connecticut Act Concerning Personal Data Privacy and Online Monitoring (&ldquo;CTDPA&rdquo;), or Utah Consumer Privacy Act (&ldquo;UCPA&rdquo;). Please see the Notice to Certain Residents of Data Subject Rights Section of our Privacy Policy for your rights and how to exercise them for users located in California, Virginia, Colorado, Connecticut, and Utah only.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>1. Information We Collect</h2>\r\n\r\n<p>When you use the Services, we may collect the following categories of personal information about you, which are described in more detail below: (A) personal information we request from you; (B) personal information we automatically collect; and (C) personal information we may receive from third parties. All of the information listed in (A)-(C) above, is detailed below, and hereinafter referred to as &ldquo;Information&rdquo;.</p>\r\n\r\n<h3>A. Information You Provide</h3>\r\n\r\n<p>In using our Services, you may provide us with Information, including, without limitation:</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">Individual identifiers such as name, email address, physical billing address, phone number, business name, demographic information you choose to provide such as age or date of birth, a photograph of you when you choose to upload it, or information about your vehicle, including your Vehicle Identification Number (VIN);</li>\r\n	<li aria-level=\"1\">Payment and transaction information such as credit card number, name, CVV code, and&nbsp; date of expiration;</li>\r\n	<li aria-level=\"1\">Communications with us, preferences, and other Information you provide to us such as any messages, opinions, and feedback that you provide to us, your user preferences (such as in receiving updates or marketing information), and other Information that you share with us when you contact us directly (such as for customer support services); and</li>\r\n	<li aria-level=\"1\">Additional Information as otherwise described to you at the point of collection or according to your consent.</li>\r\n</ul>\r\n\r\n<h3>B. Information We May Automatically Collect About You</h3>\r\n\r\n<p>Our Services may automatically collect certain personal Information about you. We use this personal Information to help us design our Services to better suit our users&rsquo; needs. This personal Information may include:</p>\r\n\r\n<ul>\r\n	<li aria-level=\"1\">IP address, which is the number associated with the service through which you access the Internet, like your ISP (Internet service provider);</li>\r\n	<li aria-level=\"1\">Date and time of your visit or use of our Services;</li>\r\n	<li aria-level=\"1\">Domain server from which you are using our Services;</li>\r\n	<li aria-level=\"1\">Type of computer, web browsers, search engine used, operating system, or platform you use;</li>\r\n	<li aria-level=\"1\">Data identifying the web pages you visited prior to and after visiting our website or use of our Services;</li>\r\n	<li aria-level=\"1\">Your movement and activity within the website, which is aggregated with other information;</li>\r\n	<li aria-level=\"1\">Geographic data such as country or region; and</li>\r\n	<li aria-level=\"1\">Mobile device information, including the type of device you use, operating system version, and the device identifier (or &ldquo;UDID&rdquo;).</li>\r\n</ul>\r\n</div>', NULL, '<h1>Refund policy</h1>\r\n\r\n<p>REFUND &amp; CANCELLATION POLICY<br />\r\nThank you for purchasing our information retrieval services. We want to ensure you have a smooth and satisfactory experience with our platform. Here&rsquo;s our policy on refunds and cancellations.</p>\r\n\r\n<p>REFUNDS<br />\r\nWe offer a 48-hour money-back guarantee. If for any reason you are not completely satisfied with our services, you can contact us within 48 hours 2 days of your purchase to request a refund.</p>\r\n\r\n<p>The 48-hour period starts on the day the service is purchased, irrespective of when you start using it.</p>\r\n\r\n<p>To request a refund, please send us an email at support@vistavin.com with the subject &ldquo;Refund Request.&rdquo; In the body of the email, include your full name, the email address used to purchase the service, your order number, and the reason for your refund request.</p>\r\n\r\n<p>After we receive your refund request, our team will review it and process the refund if the request is approved. This can take up to 7 business days, but under normal circumstances should only take 2 business days. The refund will be made via the original payment method used for the purchase.</p>\r\n\r\n<p>Please note that if you have violated any terms of service, such as by filing a chargeback, or if the service has been used inappropriately, you may not be eligible for a refund.</p>\r\n\r\n<p>SUBSCRIPTIONS AND CANCELLATIONS<br />\r\nWe offer various subscription membership packages, and you are free to cancel your subscription at any time. To cancel your subscription, simply log into your account and navigate to the &lsquo;My Account&rsquo; section on your dashboard. Follow the prompts to cancel your subscription.</p>\r\n\r\n<p>No penalty or fee will be charged for cancellations.</p>\r\n\r\n<p>After cancellation, you will continue to have access to the services until the end of your current billing period. Once the subscription period ends, your account will no longer be billed, and access to the subscription services will be revoked.</p>\r\n\r\n<p>You will be responsible for all charges incurred for any services used before the effective cancellation date.</p>\r\n\r\n<p>CHANGES TO THIS POLICY<br />\r\nWe reserve the right to revise our Refund and Cancellation Policy at any time. Changes will not be retroactive. The most current version of the policy will govern our processing of refunds and cancellations and will be available on this page. If you have any questions or concerns regarding our refund and cancellation policy, please reach out to us via our Contact Us page or at support@vistavin.com. We value your business and strive to ensure you are satisfied with our services. Thank you for choosing our information retrieval services.</p>\r\n\r\n<p>&copy; Copyright 2023 Vista Vin, All rights reserved.</p>', '<h1>Terms of service</h1>\r\n\r\n<p>Welcome to vistavin.com, provided to users by&nbsp;DIGITAL CORE TECH LIMITED.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>(&ldquo;we,&rdquo; &ldquo;us,&rdquo; or&nbsp;DIGITAL CORE TECH LIMITED).&nbsp;DIGITAL CORE TECH LIMITED&nbsp;created these Terms of Service (&ldquo;Terms&rdquo;) to govern how we operate and offer, and how you access and use, our website (https://vistavin.com/), and the associated products, Vista Vin services, data, information, content, and materials thereon (collectively, the &ldquo;Services&rdquo;). If you are accepting these Terms of Service on behalf of a legal entity other than yourself as an individual, including a business or a government, you represent and warrant that you have full legal authority to bind such entity to these Terms of Service.</p>\r\n\r\n<p>PLEASE CAREFULLY READ THESE TERMS. YOUR USE OF THE SERVICES CONSTITUTES YOUR ACCEPTANCE OF THESE TERMS. DO NOT USE THE SERVICES IF YOU ARE UNWILLING OR UNABLE TO BE BOUND BY THE TERMS.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>By using or visiting our Services, you agree to be bound by the Terms &amp; Conditions, including the Binding Arbitration Clause and Class Action Waiver described in Section 20, and the Privacy Policy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We reserve the right to change, modify, add to, or otherwise alter these Terms of Service at any time. Changes, modifications, additions, or deletions to these Terms of Service shall be effective immediately upon their posting on the Services. You agree to review these Terms of Service periodically to be aware of such revisions. Your use of the Services after we post such changes, modifications, additions, or deletions constitutes your acceptance of such changes, modifications, additions, or deletions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>1. Services</h2>\r\n\r\n<p>Our Services allow users to search our vast database for vehicle information. When performing vehicle searches, users may be able to perform recall lookups, learn a vehicle&rsquo;s fair market value, or purchase vehicle history reports.</p>\r\n\r\n<p>We grant you a personal, limited, nonexclusive license to access and use the Services, for your personal, individual, non-commercial, and non-automated use only. You may not access or use the Services except for these express purposes and as expressly allowed by these Terms of Services.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>2. Registration</h2>\r\n\r\n<p>You will need to create an account with us to use the Services (&ldquo;Account&rdquo;). You must be 18 years of age or older to use the Services and purchase any services. Any sale offers are only intended for individuals eighteen (18) years of age or older. By using the Services or purchasing services, you affirm that you are eighteen (18) years of age or older.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>You agree to provide true, current, complete, and accurate information as requested, and to update that information as soon as possible after any information on such registration changes. You are responsible for maintaining the confidentiality of your password and for all of your activities and those of any third party that occurs through your account, whether or not authorized by you. You agree to immediately notify. of any suspected or actual unauthorized use of your account. You agree that we will not under any circumstances be liable for any cost, loss, damages, or expenses arising out of a failure by you to maintain the security of your password.</p>', '<h1>Contact information</h1>\r\n\r\n<p><strong>Contact Biike Van</strong></p>\r\n\r\n<p>If you have any questions or need assistance, feel free to reach out to us. We&rsquo;re here to help!</p>\r\n\r\n<p><strong>Contact Us:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Phone:</strong>&nbsp;+92 301</li>\r\n	<li><strong>Email: bikevan</strong>@gmail.com</li>\r\n	<li><strong>Hours:</strong>&nbsp;09:00 AM - 06:00 PM PKT (Monday to Friday)</li>\r\n	<li><strong>Address:</strong>&nbsp;Lahore</li>\r\n</ul>\r\n\r\n<p><strong>Follow Us:</strong></p>\r\n\r\n<p>Stay connected with us on social media:</p>\r\n\r\n<ul>\r\n	<li><strong>Facebook:</strong>&nbsp;</li>\r\n	<li><strong>Instagram:</strong>&nbsp;</li>\r\n</ul>', '2024-10-04 13:49:31', '2024-11-27 14:26:26');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rentalUsers`
--

CREATE TABLE `rentalUsers` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `activeUser` tinyint(11) NOT NULL DEFAULT 1,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `aboutUs` varchar(255) DEFAULT NULL,
  `verifiedBy` varchar(255) DEFAULT 'google',
  `sendEmail` tinyint(1) DEFAULT 1,
  `password` text NOT NULL DEFAULT '1234',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rentalUsers`
--

INSERT INTO `rentalUsers` (`id`, `image`, `activeUser`, `name`, `phone`, `email`, `address`, `aboutUs`, `verifiedBy`, `sendEmail`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'images/hasan.png', 1, 'hasan2', '03012345678', 'hasanameer386@gmail.com', 'lahore2', 'abc', 'google', 1, '12345678', '2024-10-09 10:03:27', '2024-10-19 07:06:01', NULL),
(30, 'images/admin.png', 1, 'mubeen', '0301234567', 'mubeen@gmail.com', 'lahore abc', 'abcd', 'google', 1, '12345678', '2024-10-17 13:12:55', '2024-10-18 13:09:07', NULL),
(31, 'images/dp.png', 1, 'qasim', '03012345678', 'qasim@gmail.com', 'lahore', NULL, 'google', 1, '12345678', '2024-10-18 09:50:43', '2024-10-18 09:50:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reportSetting`
--

CREATE TABLE `reportSetting` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicleHistoryReportDesc` varchar(2000) NOT NULL DEFAULT '',
  `titleHistoryDesc` varchar(2000) NOT NULL DEFAULT ' ',
  `facebookLink` varchar(255) NOT NULL,
  `showFacebook` tinyint(1) NOT NULL DEFAULT 0,
  `instagaramLink` varchar(255) NOT NULL,
  `showInstagaram` tinyint(1) NOT NULL DEFAULT 0,
  `whatsappLink` varchar(255) NOT NULL,
  `showWhatsapp` tinyint(1) NOT NULL DEFAULT 0,
  `socialmediaDesc` varchar(2000) NOT NULL DEFAULT '',
  `rightReservedDesc` varchar(2000) NOT NULL DEFAULT ' ',
  `signatureDesc` varchar(2000) NOT NULL DEFAULT ' ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reportSetting`
--

INSERT INTO `reportSetting` (`id`, `vehicleHistoryReportDesc`, `titleHistoryDesc`, `facebookLink`, `showFacebook`, `instagaramLink`, `showInstagaram`, `whatsappLink`, `showWhatsapp`, `socialmediaDesc`, `rightReservedDesc`, `signatureDesc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'This CARFAX Vehicle History Report is based only on information supplied to CARFAX and available as of 9/29/24 at 4:00:19 PM (CDT). Other information about this vehicle, including problems, may not have been reported to CARFAX.  Use this report as one important tool, along with a vehicle inspection and test drive, to make a better 1  decision about your next used 2  car.', 'GUARANTEED - None of these title problems were reported by a U.S. state Department of Motor Vehicles (DMV). If you find that any of these title problems were reported by a DMV and not included in this report, you may qualify.\r\nView Terms | View Certificate', 'facebook.com', 1, 'instagaram.com', 1, 'whatsapp.com', 1, 'CARFAX DEPENDS ON ITS SOURCES FOR THE ACCURACY AND RELIABILITY OF ITS INFORMATION. THEREFORE, NO RESPONSIBILITY IS ASSUMED BY CARFAX OR ITS AGENTS FOR ERRORS OR OMISSIONS IN THIS REPORT. CARFAX FURTHER EXPRESSLY DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.', '© 2024 CARFAX, Inc., part of S&P Global. \r\nAll rights reserved. 9/29/24 4:00:19 PM (CDT)', 'I have reviewed and received a copy of the CARFAX Vehicle History Report for this 2004 JEEP LIBERTY vehicle (VIN: 1J4GL58K14W295826), which is based on information supplied to CARFAX and available as of 9/29/24 at 5:00 PM (EDT).', '2024-11-27 12:30:22', '2024-11-28 03:28:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SEO`
--

CREATE TABLE `SEO` (
  `id` int(10) UNSIGNED NOT NULL,
  `keywords` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SEO`
--

INSERT INTO `SEO` (`id`, `keywords`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Rent your stuff,\r\nMake money renting,\r\nEarn extra cash renting items,\r\nPeer-to-peer rentals,\r\nLocal item rentals,', 'Why buy something you\'ll only use once? The Local Rent lets you earn extra cash by renting out your stuff and save big by borrowing from neighbors. Perfect for those who want to live smart, experience more, and keep their wallets happy.\r\n\r\nThe Local Rent: Make & Save Money by Renting Out Your Stuff Locally\r\nhttps://www.thelocalrent.com\r\nWhy buy something you\'ll only use once? The Local Rent lets you earn extra cash by renting out your stuff and save big by borrowing from neighbors. Perfect for those who want to live smart, experience more, and keep their wallets happy.', '2024-10-22 19:10:10', '2024-10-24 12:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `websiteName` varchar(255) DEFAULT NULL,
  `websiteLogo` varchar(255) DEFAULT NULL,
  `webisteMiniLogo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `showPhone` tinyint(111) NOT NULL DEFAULT 1,
  `showWhatsapp` tinyint(1) DEFAULT NULL,
  `whatsappNumber` varchar(255) DEFAULT NULL,
  `showFacebook` tinyint(1) DEFAULT NULL,
  `facebookLink` varchar(255) DEFAULT NULL,
  `showInstagram` tinyint(1) DEFAULT NULL,
  `instagramLink` varchar(255) DEFAULT NULL,
  `showBannerImagesOnlyInHead` tinyint(1) DEFAULT NULL,
  `showPrivacyPolicy` tinyint(1) DEFAULT NULL,
  `showShippingPolicy` tinyint(1) DEFAULT 0,
  `showReturnRefundPolicy` tinyint(1) DEFAULT 0,
  `showTermsCondition` tinyint(1) DEFAULT NULL,
  `showPromotionBanner` tinyint(1) DEFAULT NULL,
  `showRequestItemsSection` tinyint(1) DEFAULT NULL,
  `showToastMessages` tinyint(11) NOT NULL DEFAULT 0,
  `showBanner2InHeader` tinyint(11) NOT NULL DEFAULT 0,
  `showOfferInFooter` tinyint(11) NOT NULL DEFAULT 0,
  `selectedItemIdForFooter` int(11) NOT NULL DEFAULT 0,
  `showItemInFooter` tinyint(11) NOT NULL DEFAULT 0,
  `PromotionBannerDesign` longtext NOT NULL DEFAULT ' ',
  `designOfferInFooter` longtext NOT NULL DEFAULT ' ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `websiteName`, `websiteLogo`, `webisteMiniLogo`, `email`, `phone`, `showPhone`, `showWhatsapp`, `whatsappNumber`, `showFacebook`, `facebookLink`, `showInstagram`, `instagramLink`, `showBannerImagesOnlyInHead`, `showPrivacyPolicy`, `showShippingPolicy`, `showReturnRefundPolicy`, `showTermsCondition`, `showPromotionBanner`, `showRequestItemsSection`, `showToastMessages`, `showBanner2InHeader`, `showOfferInFooter`, `selectedItemIdForFooter`, `showItemInFooter`, `PromotionBannerDesign`, `designOfferInFooter`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'bikevan', 'images/bikevanlogo.png', 'images/bikevanlogo_1.png', 'maarkhoorsn@gmail.com', '03097676179', 1, 1, '+923097676179', 1, 'https://facebook.com', 1, 'https:instagram.com', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, '<p>Buy 1<strong> Get 1 Free Watch Gift</strong></p>', '<marquee>\r\n<center>\r\n<p><strong style=\"color:white;\">Buy 1 Get 1 Free Watch Gift</strong></p>\r\n</center>\r\n</marquee>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '2024-10-02 09:50:29', '2024-11-28 05:42:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `titleHistory`
--

CREATE TABLE `titleHistory` (
  `id` int(10) UNSIGNED NOT NULL,
  `vId` varchar(255) DEFAULT NULL,
  `vName` varchar(255) NOT NULL DEFAULT ' ',
  `title1` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ',
  `desc1` varchar(500) NOT NULL DEFAULT '',
  `ownerslist1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' CHECK (json_valid(`ownerslist1`)),
  `title2` varchar(500) NOT NULL DEFAULT ' ',
  `desc2` varchar(500) NOT NULL DEFAULT ' ',
  `ownerslist2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' CHECK (json_valid(`ownerslist2`)),
  `title3` varchar(500) NOT NULL DEFAULT ' ',
  `desc3` varchar(500) NOT NULL DEFAULT ' ',
  `ownerslist3` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `titleHistory`
--

INSERT INTO `titleHistory` (`id`, `vId`, `vName`, `title1`, `desc1`, `ownerslist1`, `title2`, `desc2`, `ownerslist2`, `title3`, `desc3`, `ownerslist3`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a786', ' ', 'Damage Brands', 'junk|fire|flood', '[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"]', 'Odometer Brands', 'exceeds machanical limits', '[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"]', 'Odometer Brands2', 'exceeds machanical limits2', '[\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\",\"Guaranteed: No Problem\"]', '2024-11-27 13:40:54', '2024-11-27 13:40:54', NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `vehicleHistoryReports`
--

CREATE TABLE `vehicleHistoryReports` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(2000) NOT NULL DEFAULT 'car',
  `showReports` tinyint(1) NOT NULL DEFAULT 0,
  `vId` varchar(500) NOT NULL DEFAULT 'abc',
  `vImg` varchar(500) NOT NULL DEFAULT 'https://static.vecteezy.com/system/resources/previews/027/538/857/non_2x/electric-vehicle-car-icon-outline-car-outline-drawing-vector.jpg',
  `isShowImg` tinyint(10) NOT NULL DEFAULT 0,
  `vName` varchar(255) NOT NULL DEFAULT ' ',
  `title` varchar(255) NOT NULL DEFAULT ' ',
  `desc` varchar(2000) NOT NULL DEFAULT '',
  `points` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ' CHECK (json_valid(`points`)),
  `footerDesc` varchar(2000) NOT NULL DEFAULT '',
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT ' ',
  `make` varchar(500) NOT NULL DEFAULT '',
  `vtype` varchar(500) NOT NULL DEFAULT ' ',
  `modelYear` varchar(500) NOT NULL DEFAULT ' ',
  `bodyStyle` varchar(500) NOT NULL DEFAULT ' ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicleHistoryReports`
--

INSERT INTO `vehicleHistoryReports` (`id`, `type`, `showReports`, `vId`, `vImg`, `isShowImg`, `vName`, `title`, `desc`, `points`, `footerDesc`, `price`, `make`, `vtype`, `modelYear`, `bodyStyle`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'car', 1, 'a786', 'images/parking.png', 1, 'Jeep', '2004 JEEP LIBERTY LIMITED', 'VIN: 1J4GL58K14W295826, 4 DOOR WAGON/SPORT UTILITY ,3.7L V6 F GASOLINE, REAR WHEEL DRIVE W/ 4X4', '[\"No accidents or damage reported to CARFAX\",\"5 Service history records\",\"At least 1 open recall\",\"7 Previous owners\",\"Personal vehicle\",\"145,225 Last reported odometer reading\"]', 'This CARFAX Vehicle History Report is based only on information supplied to CARFAX and available as of 9/29/24 at 4:00:19 PM (CDT). Other information about this vehicle, including problems, may not have been reported to CARFAX. Use this report as one important tool, along with a vehicle inspection and test drive, to make a better decision about your next used car.', '44.99', 'GMC', 'MPV', '2001', 'SPORT UTILITY 4-DR', '2024-11-27 13:13:18', '2024-11-28 08:06:37', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additionalHistory`
--
ALTER TABLE `additionalHistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `contactUs`
--
ALTER TABLE `contactUs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloadedDoc`
--
ALTER TABLE `downloadedDoc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `glossary`
--
ALTER TABLE `glossary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Msgs`
--
ALTER TABLE `Msgs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`sid`);

--
-- Indexes for table `ownershipHistory`
--
ALTER TABLE `ownershipHistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ownersList`
--
ALTER TABLE `ownersList`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `PagesDesign`
--
ALTER TABLE `PagesDesign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rentalUsers`
--
ALTER TABLE `rentalUsers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reportSetting`
--
ALTER TABLE `reportSetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SEO`
--
ALTER TABLE `SEO`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `titleHistory`
--
ALTER TABLE `titleHistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vehicleHistoryReports`
--
ALTER TABLE `vehicleHistoryReports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additionalHistory`
--
ALTER TABLE `additionalHistory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6510;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contactUs`
--
ALTER TABLE `contactUs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `downloadedDoc`
--
ALTER TABLE `downloadedDoc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `glossary`
--
ALTER TABLE `glossary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `Msgs`
--
ALTER TABLE `Msgs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `ownershipHistory`
--
ALTER TABLE `ownershipHistory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ownersList`
--
ALTER TABLE `ownersList`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `PagesDesign`
--
ALTER TABLE `PagesDesign`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rentalUsers`
--
ALTER TABLE `rentalUsers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `reportSetting`
--
ALTER TABLE `reportSetting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `SEO`
--
ALTER TABLE `SEO`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `titleHistory`
--
ALTER TABLE `titleHistory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicleHistoryReports`
--
ALTER TABLE `vehicleHistoryReports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Msgs`
--
ALTER TABLE `Msgs`
  ADD CONSTRAINT `msgs_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `rentalUsers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
