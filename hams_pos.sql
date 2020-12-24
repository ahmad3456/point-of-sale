-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2020 at 07:25 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hams_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Oil', 1, 1, NULL, '2020-12-21 20:46:13', '2020-12-21 20:46:13'),
(3, 'Grocery', 1, 1, NULL, '2020-12-21 20:46:35', '2020-12-21 20:46:35'),
(4, 'Insects Medicine', 1, 1, NULL, '2020-12-21 20:47:10', '2020-12-21 20:47:10'),
(5, 'Cement', 1, 1, NULL, '2020-12-21 20:47:27', '2020-12-21 20:47:27'),
(6, 'Electronics', 1, 2, NULL, '2020-12-24 00:00:29', '2020-12-24 00:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `mobile`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Ahmadullah', '01789345678', 'ahmad@gmail.com', 'Joypur Master Para, Sapahar', 1, 1, NULL, '2020-12-21 20:35:46', '2020-12-21 20:35:46'),
(2, 'Hasib Rahman', '01978654567', 'rhasib@gmail.com', 'Dhaka,Bangladesh', 1, 1, NULL, '2020-12-21 20:36:36', '2020-12-21 20:36:36'),
(3, 'Amena Khatun', '01239876543', 'amina4334@gmail.com', 'Dhaka,Bangladesh', 1, 1, NULL, '2020-12-21 20:37:08', '2020-12-21 20:37:08'),
(4, 'Shahin Howlader', '01718786545', 'shahintuhin@gmail.com', 'Dhaka,Bangladesh', 1, 1, NULL, '2020-12-21 20:37:35', '2020-12-21 20:37:35'),
(5, 'Al Maksumee', '0897654321', NULL, 'Dhaka,Bangladesh', 1, NULL, NULL, '2020-12-21 22:05:28', '2020-12-21 22:05:28'),
(6, 'Syed Asraf Khan', '01765456789', NULL, 'Dhaka,Bangladesh', 1, NULL, NULL, '2020-12-24 00:08:05', '2020-12-24 00:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pendind, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_no`, `date`, `description`, `status`, `created_by`, `approved_by`, `created_at`, `updated_at`) VALUES
(1, '1', '2020-12-22', 'Thank You for coming.', 1, 1, 1, '2020-12-21 21:00:09', '2020-12-21 21:00:26'),
(2, '2', '2020-12-22', NULL, 1, 1, 1, '2020-12-21 22:05:28', '2020-12-21 22:06:02'),
(3, '3', '2020-12-23', NULL, 1, 2, 2, '2020-12-23 00:27:56', '2020-12-23 00:28:05'),
(4, '4', '2020-12-23', NULL, 1, 2, 2, '2020-12-23 00:37:07', '2020-12-23 00:37:18'),
(5, '5', '2020-12-24', NULL, 1, 2, 2, '2020-12-24 00:08:05', '2020-12-24 00:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `invoice_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `selling_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `selling_price` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `date`, `invoice_id`, `category_id`, `product_id`, `selling_qty`, `unit_price`, `selling_price`, `status`, `created_at`, `updated_at`) VALUES
(1, '2020-12-22', 1, 2, 3, 5, 270, 1350, 1, '2020-12-21 21:00:09', '2020-12-21 21:00:26'),
(2, '2020-12-22', 1, 3, 6, 3, 120, 360, 1, '2020-12-21 21:00:09', '2020-12-21 21:00:26'),
(3, '2020-12-22', 1, 4, 5, 3, 220, 660, 1, '2020-12-21 21:00:09', '2020-12-21 21:00:26'),
(4, '2020-12-22', 2, 4, 5, 6, 220, 1320, 1, '2020-12-21 22:05:28', '2020-12-21 22:06:01'),
(5, '2020-12-23', 3, 3, 6, 1, 666, 666, 1, '2020-12-23 00:27:56', '2020-12-23 00:28:05'),
(6, '2020-12-23', 4, 2, 3, 1, 6666, 6666, 1, '2020-12-23 00:37:07', '2020-12-23 00:37:18'),
(7, '2020-12-24', 5, 6, 7, 5, 6000, 30000, 1, '2020-12-24 00:08:05', '2020-12-24 00:08:19');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_12_14_021635_create_suppliers_table', 1),
(5, '2020_12_14_043819_create_customers_table', 1),
(6, '2020_12_14_051029_create_units_table', 1),
(7, '2020_12_14_061506_create_categories_table', 1),
(8, '2020_12_14_154714_create_products_table', 1),
(9, '2020_12_15_045946_create_purchases_table', 1),
(10, '2020_12_17_132248_create_invoices_table', 1),
(11, '2020_12_17_135703_create_invoice_details_table', 1),
(12, '2020_12_17_135913_create_payments_table', 1),
(13, '2020_12_17_140055_create_payment_details_table', 1);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `paid_status` varchar(51) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_id`, `customer_id`, `paid_status`, `paid_amount`, `due_amount`, `total_amount`, `discount_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'partial_paid', 1000, 770, 1770, 600, '2020-12-21 21:00:10', '2020-12-21 21:00:10'),
(2, 2, 5, 'full_paid', 720, 0, 720, 600, '2020-12-21 22:05:29', '2020-12-21 22:05:29'),
(3, 3, 3, 'partial_paid', 60, 528, 588, 78, '2020-12-23 00:27:56', '2020-12-23 00:27:56'),
(4, 4, 2, 'partial_paid', 2000, 6366, 6366, 300, '2020-12-23 00:37:07', '2020-12-23 00:39:41'),
(5, 5, 6, 'full_paid', 29900, 0, 29900, 100, '2020-12-24 00:08:05', '2020-12-24 00:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `current_paid_amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `invoice_id`, `current_paid_amount`, `date`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1000, '2020-12-22', NULL, '2020-12-21 21:00:10', '2020-12-21 21:00:10'),
(2, 2, 720, '2020-12-22', NULL, '2020-12-21 22:05:29', '2020-12-21 22:05:29'),
(3, 3, 60, '2020-12-23', NULL, '2020-12-23 00:27:56', '2020-12-23 00:27:56'),
(4, 4, 1000, '2020-12-23', NULL, '2020-12-23 00:37:07', '2020-12-23 00:37:07'),
(5, 4, 1000, '2020-12-25', NULL, '2020-12-23 00:39:41', '2020-12-23 00:39:41'),
(6, 5, 29900, '2020-12-24', NULL, '2020-12-24 00:08:05', '2020-12-24 00:08:05');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `supplier_id`, `unit_id`, `category_id`, `name`, `quantity`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 'Rupchada Soyaben Tel', 0, 1, 1, NULL, '2020-12-21 20:48:09', '2020-12-21 20:48:09'),
(2, 1, 2, 2, 'Fortune Soyaben Oil', 5, 1, 1, NULL, '2020-12-21 20:48:56', '2020-12-24 00:05:51'),
(3, 1, 2, 2, 'Teer Soyaben Oil', 2, 1, 1, NULL, '2020-12-21 20:49:30', '2020-12-23 00:37:18'),
(4, 5, 3, 3, 'Savlon Handwash', 20, 1, 1, NULL, '2020-12-21 20:51:01', '2020-12-24 00:05:46'),
(5, 5, 3, 4, 'HitGel', 11, 1, 1, NULL, '2020-12-21 20:51:26', '2020-12-21 22:06:02'),
(6, 5, 3, 3, 'Rin Detergent', 36, 1, 1, NULL, '2020-12-21 20:52:32', '2020-12-23 00:28:05'),
(7, 6, 3, 6, 'Walton Mobile 1120', 25, 1, 2, NULL, '2020-12-24 00:01:09', '2020-12-24 00:08:19'),
(8, 6, 3, 6, 'Walton Mobile 360', 1, 1, 2, NULL, '2020-12-24 00:01:34', '2020-12-24 00:05:37'),
(9, 6, 3, 6, 'Walton Mobile 760', 0, 1, 2, NULL, '2020-12-24 00:01:57', '2020-12-24 00:01:57'),
(10, 6, 3, 6, 'Walton Mobile 450', 0, 1, 2, NULL, '2020-12-24 00:02:23', '2020-12-24 00:02:23'),
(11, 6, 3, 6, 'Walton 780 cube', 0, 1, 2, NULL, '2020-12-24 00:03:06', '2020-12-24 00:03:06');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buying_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pendind, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `category_id`, `product_id`, `purchase_no`, `date`, `description`, `buying_qty`, `unit_price`, `buying_price`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 'p-123', '2020-12-22', 'Dummy Content', 7, 250, 1750, 0, 1, NULL, '2020-12-21 20:54:22', '2020-12-21 20:54:22'),
(2, 1, 2, 2, 'p-123', '2020-12-22', 'Dummy Content', 5, 150, 750, 1, 1, NULL, '2020-12-21 20:54:22', '2020-12-21 20:54:22'),
(3, 1, 2, 3, 'p-123', '2020-12-22', 'Dummy Content', 8, 50, 400, 1, 1, NULL, '2020-12-21 20:54:22', '2020-12-21 20:54:22'),
(4, 5, 3, 4, 'p-124', '2020-12-23', NULL, 20, 70, 1400, 1, 1, NULL, '2020-12-21 20:55:42', '2020-12-21 20:55:42'),
(5, 5, 3, 6, 'p-124', '2020-12-23', NULL, 40, 100, 4000, 1, 1, NULL, '2020-12-21 20:55:42', '2020-12-21 20:55:42'),
(6, 5, 4, 5, 'p-124', '2020-12-23', NULL, 20, 210, 4200, 1, 1, NULL, '2020-12-21 20:55:42', '2020-12-21 20:55:42'),
(7, 6, 6, 7, 'p-65', '2020-12-24', 'Good Mobile', 30, 5000, 150000, 1, 2, NULL, '2020-12-24 00:04:57', '2020-12-24 00:04:57'),
(8, 6, 6, 8, 'p-65', '2020-12-24', 'Good', 1, 6000, 6000, 1, 2, NULL, '2020-12-24 00:04:57', '2020-12-24 00:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `mobile`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Bangladesh Edible Oil Ltd.', '880-2-58815319', 'sales@beol-bd.com', 'Land View Commercial Center (10th Floor), 28 Gulshan North C/A, Gulshan Circle2, Dhaka 1212', 1, 1, NULL, '2020-12-21 20:29:47', '2020-12-21 20:29:47'),
(2, 'Meghna Group of Industries', '+880 2 9887545, 9889490,', 'info@meghnagroup.biz', 'Fresh Villa, House No.15  Road No. 34, Gulshan Avenue  Gulshan-1, Dhaka-1212  Bangladesh', 1, 1, NULL, '2020-12-21 20:30:54', '2020-12-21 20:30:54'),
(3, 'Shams-Mom Salt Industries Ltd', '01811305586', 'mosharaf700@gmail.com', 'Islampur, Coxs Bazar', 1, 1, NULL, '2020-12-21 20:32:36', '2020-12-21 20:32:36'),
(4, 'Agora Super Stores', '(88-02) 02-9888441', 'info@agorabd.com', '5 Mohakhali C/A paragon house Dhaka.', 1, 1, NULL, '2020-12-21 20:34:02', '2020-12-21 20:34:02'),
(5, 'MEENA BAZAR', '09678666111', 'info@meenaclick.com', 'House: 44, Road: 16 (27 Old), Dhanmondi, Dhaka - 1209, Bangladesh', 1, 1, NULL, '2020-12-21 20:34:54', '2020-12-21 20:34:54'),
(6, 'Walton group', '01234578955', 'walton@mail.com', 'Dhaka', 1, 2, NULL, '2020-12-23 23:59:49', '2020-12-23 23:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'KG', 1, 1, NULL, '2020-12-21 20:39:21', '2020-12-21 20:39:21'),
(2, 'L', 1, 1, NULL, '2020-12-21 20:39:36', '2020-12-21 20:39:36'),
(3, 'PCs', 1, 1, NULL, '2020-12-21 20:39:52', '2020-12-21 20:39:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usertype`, `name`, `email`, `email_verified_at`, `password`, `mobile`, `address`, `gender`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Ahmad Ullah', 'ahmad578922@gmail.com', NULL, '$2y$10$f0g5zWFdauDhTvQUjaQaC.jALI1QFylGmJafnERmcHSOFF9EEkyau', '01704789098', 'Joypur Master Para, Sapahar', 'Male', '202012220634profile.jpg', 1, NULL, '2020-12-22 00:25:14', '2020-12-22 00:34:41'),
(3, 'Admin', 'Ahmad Ullah', 'ahmad@gmail.com', NULL, '$2y$10$dQ6t//DpXSqgKSjpAnqDQOwHLS8cNxuXASCVP6WjGN8/UgJGLZ4lq', NULL, NULL, NULL, NULL, 1, NULL, '2020-12-23 23:56:41', '2020-12-23 23:56:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
