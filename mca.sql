-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 04:04 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mca`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_balances`
--

CREATE TABLE `account_balances` (
  `id` bigint(20) NOT NULL,
  `balance` double(18,2) NOT NULL DEFAULT 0.00,
  `account_option_id` bigint(20) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_balances`
--

INSERT INTO `account_balances` (`id`, `balance`, `account_option_id`, `updated_at`) VALUES
(1, 56936435925.00, 15, '2021-03-14 05:48:21'),
(2, 56936435925.00, 15, '2021-03-14 05:48:21'),
(3, 56936435925.00, 15, '2021-03-14 05:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `account_classes`
--

CREATE TABLE `account_classes` (
  `id` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_classes`
--

INSERT INTO `account_classes` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Assets', '2020-12-15 14:42:18', '2020-12-15 14:42:18', NULL),
(2, 'Liabilities', '2020-12-15 14:42:18', '2020-12-15 14:42:18', NULL),
(3, 'Expenditures', '2020-12-15 14:42:18', '2020-12-15 14:42:18', NULL),
(4, 'Income', '2020-12-15 14:42:18', '2020-12-15 14:42:18', NULL),
(5, 'Equity', '2020-12-15 14:42:18', '2020-12-15 14:42:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_closings`
--

CREATE TABLE `account_closings` (
  `account_option_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `balance` double(18,2) NOT NULL DEFAULT 0.00,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_closings`
--

INSERT INTO `account_closings` (`account_option_id`, `date`, `balance`, `updated_at`) VALUES
(15, '2021-03-14', 56936435925.00, '2021-03-14 05:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `account_events`
--

CREATE TABLE `account_events` (
  `id` bigint(20) NOT NULL,
  `account_option_id` bigint(20) NOT NULL,
  `frequency` enum('once','multi') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account_options`
--

CREATE TABLE `account_options` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `account_type_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_options`
--

INSERT INTO `account_options` (`id`, `name`, `account_type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'NSF Charge', 1, '2020-12-15 14:51:57', '2020-12-15 14:51:57', NULL),
(2, 'Loan Processing Fee', 1, '2020-12-15 14:51:57', '2020-12-15 14:51:57', NULL),
(3, 'Late Payment Charges', 1, '2020-12-15 14:51:57', '2020-12-15 14:51:57', NULL),
(4, 'Account Entry Fee', 1, '2020-12-15 14:51:57', '2020-12-15 14:51:57', NULL),
(5, 'Foreclosure Charges', 1, '2020-12-15 14:51:57', '2020-12-15 14:51:57', NULL),
(6, 'Account Maintenance Charge', 1, '2020-12-15 14:51:57', '2020-12-15 14:51:57', NULL),
(7, 'Account Close Charge', 1, '2020-12-15 14:51:57', '2020-12-15 14:51:57', NULL),
(8, 'Dishonor Charges', 1, '2020-12-15 14:51:57', '2020-12-15 14:51:57', NULL),
(9, 'Bad Debts', 5, '2020-12-15 14:51:57', '2020-12-15 14:51:57', NULL),
(10, 'Aid Fund', 2, '2020-12-15 14:51:57', '2020-12-15 14:51:57', NULL),
(11, 'Office Cash', 2, '2020-12-15 14:51:57', '2020-12-15 14:51:57', NULL),
(12, 'MSA Balance', 3, '2020-12-15 14:51:57', '2020-12-15 14:51:57', NULL),
(13, 'CA Balance', 4, '2020-12-15 14:51:57', '2020-12-15 14:51:57', NULL),
(14, 'Saving Balance', 3, '2021-02-19 14:21:25', '2021-02-19 14:21:25', NULL),
(15, 'Loan Balance', 8, '2021-02-22 13:52:33', '2021-02-22 13:52:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_types`
--

CREATE TABLE `account_types` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `account_class_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_types`
--

INSERT INTO `account_types` (`id`, `name`, `account_class_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Non-Interest Revenue', 4, '2020-12-15 14:48:36', '2020-12-15 14:48:36', NULL),
(2, 'Reserves', 1, '2020-12-15 14:48:36', '2020-12-15 14:48:36', NULL),
(3, 'Cash', 1, '2020-12-15 14:48:36', '2020-12-15 14:48:36', NULL),
(4, 'Stakeholders', 5, '2020-12-15 14:48:36', '2020-12-15 14:48:36', NULL),
(5, 'Credit Provision Loss', 3, '2020-12-15 14:48:36', '2020-12-15 14:48:36', NULL),
(8, 'Interest Revenue', 4, '2021-02-19 19:50:51', '2021-02-19 19:50:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aid_funds`
--

CREATE TABLE `aid_funds` (
  `id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `fiscal_year_id` bigint(20) NOT NULL,
  `amount` double(18,2) NOT NULL DEFAULT 0.00,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `account_option_id` bigint(20) NOT NULL,
  `amount` double(18,2) NOT NULL,
  `date` date DEFAULT NULL,
  `remarks` varchar(300) NOT NULL,
  `after_balance` double(18,2) NOT NULL DEFAULT 0.00,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `charge_queues`
--

CREATE TABLE `charge_queues` (
  `id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `account_option_id` bigint(20) NOT NULL,
  `status` enum('due','paid') NOT NULL DEFAULT 'due',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `amount` double(18,2) NOT NULL,
  `date` date DEFAULT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `after_balance` double(18,2) NOT NULL DEFAULT 0.00,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `scheme_holder_id`, `amount`, `date`, `remarks`, `after_balance`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 56936431425.00, '2021-03-15', NULL, 56936431425.00, '2021-03-14 05:11:10', '2021-03-14 05:11:10', NULL),
(2, 9, 5000.00, '2021-03-14', NULL, 5000.00, '2021-03-14 05:47:48', '2021-03-14 05:47:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father` varchar(255) NOT NULL,
  `mother` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT 'dummy_user.png',
  `phone` varchar(100) NOT NULL,
  `designation` varchar(255) NOT NULL DEFAULT 'N/A',
  `salary` double(18,2) NOT NULL DEFAULT 0.00,
  `address` varchar(300) NOT NULL,
  `status` enum('active','suspend','closed') NOT NULL,
  `remarks` varchar(300) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `father`, `mother`, `photo`, `phone`, `designation`, `salary`, `address`, `status`, `remarks`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SYSTEM DEFAULT USER', 'HALEY SHARPE', 'LILAH BLAIR', '1613127438_f699263afad9445f556f.jpg', '01232222224', 'Boss', 10000.00, 'Hic ut officiis deserunt vero laudantium est nisi vero fugiat molestiae recusandae Adipisci qui', 'active', 'Ducimus autem architecto duis lorem qui excepteur labore', '2020-12-25 08:46:41', '2021-02-12 04:57:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fiscal_close_queue`
--

CREATE TABLE `fiscal_close_queue` (
  `fiscal_year_id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `status` enum('failed','running','success','pending') NOT NULL DEFAULT 'pending',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fiscal_closings`
--

CREATE TABLE `fiscal_closings` (
  `id` bigint(20) NOT NULL,
  `fiscal_year_id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `balance` double(18,2) NOT NULL,
  `aid` double(18,2) NOT NULL,
  `interest` double(18,2) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fiscal_years`
--

CREATE TABLE `fiscal_years` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_at` date NOT NULL,
  `end_at` date NOT NULL,
  `days` smallint(11) UNSIGNED NOT NULL DEFAULT 365,
  `remarks` varchar(300) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fiscal_years`
--

INSERT INTO `fiscal_years` (`id`, `name`, `start_at`, `end_at`, `days`, `remarks`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Session 19-20', '2019-07-01', '2020-06-30', 366, 'Ipsum voluptatem vitae consequat A voluptatem quibusdam enim magna', '2021-02-16 06:13:02', '2021-02-16 06:13:02', NULL),
(2, 'Session 2020-2021', '2020-03-01', '2021-03-09', 374, 'n/a', '2021-03-09 02:18:12', '2021-03-09 02:18:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `installment_fraction`
--

CREATE TABLE `installment_fraction` (
  `id` bigint(20) NOT NULL,
  `duration_days` double(18,2) NOT NULL,
  `interval` double(18,2) NOT NULL,
  `installment` double(18,2) NOT NULL,
  `installment_amount` double(18,2) NOT NULL,
  `scheme_holder_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `installment_fraction`
--

INSERT INTO `installment_fraction` (`id`, `duration_days`, `interval`, `installment`, `installment_amount`, `scheme_holder_id`) VALUES
(1, 180.00, 7.00, 25.71, 933.33, 1),
(2, 180.00, 7.00, 25.71, 2333.33, 2),
(3, 180.00, 7.00, 25.71, 933.33, 3),
(4, 180.00, 7.00, 25.71, 2333.33, 4),
(5, 180.00, 7.00, 25.71, 933.33, 5),
(6, 180.00, 7.00, 25.71, 933.33, 6),
(7, 180.00, 7.00, 25.71, 2333.33, 8),
(8, 180.00, 7.00, 25.71, 933.33, 9),
(9, 180.00, 7.00, 25.71, 933.33, 10),
(10, 180.00, 7.00, 25.71, 2333.33, 11),
(13, 180.00, 7.00, 25.71, 2333.33, 14);

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `amount` double(18,2) NOT NULL DEFAULT 0.00,
  `withdrawn` double(18,2) NOT NULL DEFAULT 0.00,
  `due` double(18,2) NOT NULL DEFAULT 0.00,
  `until` date NOT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `scheme_holder_id`, `date`, `amount`, `withdrawn`, `due`, `until`, `remarks`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2021-03-09', 0.00, 0.00, 0.00, '2021-03-09', 'Account Creation Entry', '2021-03-09 04:40:55', '2021-03-09 04:40:55', NULL),
(2, 2, '2021-03-09', 0.00, 0.00, 0.00, '2021-03-09', 'Account Creation Entry', '2021-03-09 04:55:25', '2021-03-09 04:55:25', NULL),
(3, 3, '2021-03-10', 0.00, 0.00, 0.00, '2021-03-10', 'Account Creation Entry', '2021-03-10 06:43:05', '2021-03-10 06:43:05', NULL),
(4, 4, '2021-03-10', 0.00, 0.00, 0.00, '2021-03-10', 'Account Creation Entry', '2021-03-10 06:44:54', '2021-03-10 06:44:54', NULL),
(5, 5, '2021-03-11', 0.00, 0.00, 0.00, '2021-03-11', 'Account Creation Entry', '2021-03-11 04:11:34', '2021-03-11 04:11:34', NULL),
(6, 6, '2021-03-11', 0.00, 0.00, 0.00, '2021-03-11', 'Account Creation Entry', '2021-03-11 04:13:17', '2021-03-11 04:13:17', NULL),
(7, 8, '2021-03-11', 0.00, 0.00, 0.00, '2021-03-11', 'Account Creation Entry', '2021-03-11 04:19:29', '2021-03-11 04:19:29', NULL),
(8, 9, '2021-03-11', 0.00, 0.00, 0.00, '2021-03-11', 'Account Creation Entry', '2021-03-11 05:03:12', '2021-03-11 05:03:12', NULL),
(9, 10, '2021-03-11', 0.00, 0.00, 0.00, '2021-03-11', 'Account Creation Entry', '2021-03-11 05:03:40', '2021-03-11 05:03:40', NULL),
(10, 11, '2021-03-11', 0.00, 0.00, 0.00, '2021-03-11', 'Account Creation Entry', '2021-03-11 05:04:35', '2021-03-11 05:04:35', NULL),
(11, 14, '2021-03-13', 0.00, 0.00, 0.00, '2021-03-13', 'Account Creation Entry', '2021-03-13 20:35:08', '2021-03-13 20:35:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interest_logs`
--

CREATE TABLE `interest_logs` (
  `id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `balance` double(18,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `duration` smallint(6) NOT NULL,
  `rate` double NOT NULL,
  `interest` double(18,2) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `interest_periods`
--

CREATE TABLE `interest_periods` (
  `id` bigint(20) NOT NULL,
  `period` int(11) NOT NULL,
  `unit` enum('days','weeks','months','years') NOT NULL,
  `total_days` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `interest_periods`
--

INSERT INTO `interest_periods` (`id`, `period`, `unit`, `total_days`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'days', 1, '2020-11-28 18:40:58', '2020-11-28 18:40:58', '2020-11-28 18:40:58'),
(2, 15, 'days', 15, '2020-11-28 18:40:58', '2020-11-28 18:40:58', '2020-11-28 18:40:58'),
(3, 1, 'weeks', 7, '2020-11-28 18:40:58', '2020-11-28 18:40:58', '2020-11-28 18:40:58'),
(4, 2, 'weeks', 14, '2020-11-28 18:40:58', '2020-11-28 18:40:58', '2020-11-28 18:40:58'),
(5, 1, 'months', 30, '2020-11-28 18:40:58', '2020-11-28 18:40:58', NULL),
(6, 3, 'months', 90, '2020-11-28 18:40:58', '2020-11-28 18:40:58', '2020-11-28 18:40:58'),
(7, 4, 'months', 120, '2020-11-28 18:40:58', '2020-11-28 18:40:58', '2020-11-28 18:40:58'),
(8, 6, 'months', 180, '2020-11-28 18:40:58', '2020-11-28 18:40:58', NULL),
(9, 8, 'months', 240, '2020-11-28 18:40:58', '2020-11-28 18:40:58', NULL),
(10, 1, 'years', 365, '2020-11-28 18:40:58', '2020-11-28 18:40:58', NULL),
(11, 2, 'years', 730, '2020-11-28 18:40:58', '2020-11-28 18:40:58', '2020-11-28 18:40:58'),
(12, 3, 'years', 1095, '2020-11-28 18:40:58', '2020-11-28 18:40:58', '2020-11-28 18:40:58'),
(13, 5, 'years', 1825, '2020-11-28 18:40:58', '2020-11-28 18:40:58', '2020-11-28 18:40:58'),
(14, 10, 'years', 3650, '2020-11-28 18:40:58', '2020-11-28 18:40:58', '2020-11-28 18:40:58'),
(15, 12, 'years', 4380, '2020-11-28 18:40:58', '2020-11-28 18:40:58', '2020-11-28 18:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) NOT NULL,
  `amount` double(18,2) NOT NULL COMMENT 'Without Interest',
  `installment` bigint(20) NOT NULL,
  `ins_amount` bigint(20) NOT NULL COMMENT 'Per Installment Amount',
  `interest_balance` double(18,2) NOT NULL DEFAULT 0.00 COMMENT 'By the policy percentage',
  `sanction_date` datetime NOT NULL,
  `expiration_date` datetime NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `interest_period_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `amount`, `installment`, `ins_amount`, `interest_balance`, `sanction_date`, `expiration_date`, `scheme_holder_id`, `interest_period_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 20000.00, 25, 960, 4000.00, '2021-03-09 00:00:00', '2021-09-05 00:00:00', 1, 8, '2021-03-09 04:40:54', '2021-03-09 04:40:54', NULL),
(2, 50000.00, 25, 2400, 10000.00, '2021-03-09 00:00:00', '2021-09-05 00:00:00', 2, 8, '2021-03-09 04:55:24', '2021-03-09 04:55:24', NULL),
(3, 20000.00, 25, 960, 4000.00, '2021-03-10 00:00:00', '2021-09-06 00:00:00', 3, 8, '2021-03-10 06:43:05', '2021-03-10 06:43:05', NULL),
(4, 50000.00, 25, 2400, 10000.00, '2021-03-10 00:00:00', '2021-09-06 00:00:00', 4, 8, '2021-03-10 06:44:54', '2021-03-10 06:44:54', NULL),
(5, 20000.00, 25, 960, 4000.00, '2021-03-11 00:00:00', '2021-09-07 00:00:00', 5, 8, '2021-03-11 04:11:33', '2021-03-11 04:11:33', NULL),
(6, 20000.00, 25, 960, 4000.00, '2021-03-11 00:00:00', '2021-09-07 00:00:00', 6, 8, '2021-03-11 04:13:16', '2021-03-11 04:13:16', NULL),
(7, 50000.00, 25, 2400, 10000.00, '2021-03-11 00:00:00', '2021-09-07 00:00:00', 8, 8, '2021-03-11 04:19:29', '2021-03-11 04:19:29', NULL),
(8, 20000.00, 25, 960, 4000.00, '2021-03-11 00:00:00', '2021-09-07 00:00:00', 9, 8, '2021-03-11 05:03:12', '2021-03-11 05:03:12', NULL),
(9, 20000.00, 25, 960, 4000.00, '2021-03-11 00:00:00', '2021-09-07 00:00:00', 10, 8, '2021-03-11 05:03:39', '2021-03-11 05:03:39', NULL),
(10, 50000.00, 25, 2400, 10000.00, '2021-03-11 00:00:00', '2021-09-07 00:00:00', 11, 8, '2021-03-11 05:04:35', '2021-03-11 05:04:35', NULL),
(12, 50000.00, 25, 2400, 10000.00, '2021-03-13 00:00:00', '2021-09-09 00:00:00', 14, 8, '2021-03-13 20:35:08', '2021-03-13 20:35:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loan_balances`
--

CREATE TABLE `loan_balances` (
  `id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `balance` double(18,2) NOT NULL DEFAULT 0.00,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan_balances`
--

INSERT INTO `loan_balances` (`id`, `scheme_holder_id`, `balance`, `updated_at`) VALUES
(1, 1, 24000.00, '2021-03-09 04:40:55'),
(2, 2, 59382.00, '2021-03-14 04:51:51'),
(3, 3, 24000.00, '2021-03-10 06:43:05'),
(4, 4, 59040.00, '2021-03-14 01:53:58'),
(5, 5, 21120.00, '2021-03-13 21:45:53'),
(6, 6, 24000.00, '2021-03-11 04:13:17'),
(7, 8, 60000.00, '2021-03-11 04:19:29'),
(8, 9, 24000.00, '2021-03-11 05:03:12'),
(9, 10, 24000.00, '2021-03-11 05:03:39'),
(10, 11, 60000.00, '2021-03-11 05:04:35'),
(11, 14, 60000.00, '2021-03-13 20:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `loan_closings`
--

CREATE TABLE `loan_closings` (
  `scheme_holder_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `balance` double(18,2) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan_closings`
--

INSERT INTO `loan_closings` (`scheme_holder_id`, `date`, `balance`, `updated_at`) VALUES
(1, '2021-03-09', 24000.00, NULL),
(2, '2021-03-09', 60000.00, NULL),
(3, '2021-03-10', 24000.00, NULL),
(4, '2021-03-10', 60000.00, NULL),
(5, '2021-03-11', 24000.00, NULL),
(6, '2021-03-11', 24000.00, NULL),
(8, '2021-03-11', 60000.00, NULL),
(9, '2021-03-11', 24000.00, NULL),
(10, '2021-03-11', 24000.00, NULL),
(11, '2021-03-11', 60000.00, NULL),
(14, '2021-03-13', 60000.00, NULL),
(5, '2021-03-14', 21120.00, '2021-03-13 21:45:53'),
(4, '2021-03-14', 59040.00, '2021-03-14 01:53:58'),
(2, '2021-09-04', 59382.00, '2021-03-14 04:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `loan_logs`
--

CREATE TABLE `loan_logs` (
  `id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `amount` double(18,2) NOT NULL,
  `saving` double(18,2) NOT NULL,
  `date` date NOT NULL,
  `balance_after` double(18,2) NOT NULL,
  `saving_after` double(18,2) NOT NULL,
  `remark` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan_logs`
--

INSERT INTO `loan_logs` (`id`, `scheme_holder_id`, `amount`, `saving`, `date`, `balance_after`, `saving_after`, `remark`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 24000.00, 0.00, '2021-03-09', 24000.00, 0.00, 'This amount has been loaned', '2021-03-09 04:40:55', '2021-03-09 04:40:55', NULL),
(2, 2, 60000.00, 0.00, '2021-03-09', 60000.00, 0.00, 'This amount has been loaned', '2021-03-09 04:55:24', '2021-03-09 04:55:24', NULL),
(3, 3, 24000.00, 0.00, '2021-03-10', 24000.00, 0.00, 'This amount has been loaned', '2021-03-10 06:43:05', '2021-03-10 06:43:05', NULL),
(4, 4, 60000.00, 0.00, '2021-03-10', 60000.00, 0.00, 'This amount has been loaned', '2021-03-10 06:44:54', '2021-03-10 06:44:54', NULL),
(5, 5, 24000.00, 0.00, '2021-03-11', 24000.00, 0.00, 'This amount has been loaned', '2021-03-11 04:11:33', '2021-03-11 04:11:33', NULL),
(6, 6, 24000.00, 0.00, '2021-03-11', 24000.00, 0.00, 'This amount has been loaned', '2021-03-11 04:13:17', '2021-03-11 04:13:17', NULL),
(7, 8, 60000.00, 0.00, '2021-03-11', 60000.00, 0.00, 'This amount has been loaned', '2021-03-11 04:19:29', '2021-03-11 04:19:29', NULL),
(8, 9, 24000.00, 0.00, '2021-03-11', 24000.00, 0.00, 'This amount has been loaned', '2021-03-11 05:03:12', '2021-03-11 05:03:12', NULL),
(9, 10, 24000.00, 0.00, '2021-03-11', 24000.00, 0.00, 'This amount has been loaned', '2021-03-11 05:03:39', '2021-03-11 05:03:39', NULL),
(10, 11, 60000.00, 0.00, '2021-03-11', 60000.00, 0.00, 'This amount has been loaned', '2021-03-11 05:04:35', '2021-03-11 05:04:35', NULL),
(11, 9, 500.00, 200.00, '2021-03-14', 23500.00, 200.00, '', '2021-03-14 06:22:27', '2021-03-14 06:22:27', NULL),
(12, 14, 60000.00, 0.00, '2021-03-13', 60000.00, 0.00, '', '2021-03-13 20:35:08', '2021-03-13 20:35:08', NULL),
(13, 5, 960.00, 200.00, '2021-03-14', 23040.00, 200.00, '1st Installment', '2021-03-13 20:49:35', '2021-03-13 20:49:35', NULL),
(14, 5, 960.00, 200.00, '2021-03-14', 22080.00, 400.00, '2nd installment', '2021-03-13 20:54:28', '2021-03-13 20:54:28', NULL),
(15, 5, 960.00, 200.00, '2021-03-14', 21120.00, 600.00, '3rd Installment', '2021-03-13 21:45:53', '2021-03-13 21:45:53', NULL),
(16, 4, 960.00, 200.00, '2021-03-14', 59040.00, 200.00, '1st Installment', '2021-03-14 01:53:58', '2021-03-14 01:53:58', NULL),
(17, 2, 618.00, 4694.00, '2021-09-04', 59382.00, 4694.00, 'Assumenda modi qui officia quo aliquip sed', '2021-03-14 04:51:51', '2021-03-14 04:51:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loan_savings`
--

CREATE TABLE `loan_savings` (
  `id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `balance` double(18,2) NOT NULL DEFAULT 0.00,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan_savings`
--

INSERT INTO `loan_savings` (`id`, `scheme_holder_id`, `balance`, `updated_at`) VALUES
(1, 1, 10000.00, '2021-03-08 05:41:02'),
(2, 2, 4694.00, '2021-03-14 04:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `loan_saving_closings`
--

CREATE TABLE `loan_saving_closings` (
  `scheme_holder_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `balance` double(18,2) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan_saving_closings`
--

INSERT INTO `loan_saving_closings` (`scheme_holder_id`, `date`, `balance`, `updated_at`) VALUES
(5, '2021-03-14', 600.00, '2021-03-13 21:45:53'),
(4, '2021-03-14', 200.00, '2021-03-14 01:53:58'),
(2, '2021-09-04', 4694.00, '2021-03-14 04:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) NOT NULL,
  `member_categories_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` enum('active','closed','suspend') NOT NULL,
  `joined_at` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `member_categories_id`, `name`, `photo`, `phone`, `signature`, `email`, `status`, `joined_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'EVELYN FRANCO', '1615278190_5b04f1b843c625b96b51.jpg', '01999999999', '1615278190_a44a63b555f4a15a3463.png', 'bynikemame@mailinator.com', 'active', '2021-03-09', '2021-03-09 02:23:10', '2021-03-09 02:23:10', NULL),
(2, 2, 'MONA VANCE', '1615278218_a3a23320112f8a705ab7.jpg', '01318515718', '1615278218_68e08f6700dbdcae57d8.png', 'pegyk@mailinator.com', 'active', '2012-09-03', '2021-03-09 02:23:38', '2021-03-09 02:23:38', NULL),
(3, 1, 'CHARITY RODRIGUEZ', '1615278246_80cadb43e53f82d0478d.png', '01318515710', '1615278246_c8bdd3430afbaf4bf8a1.png', 'pizyhygiv@mailinator.com', 'active', '2021-03-08', '2021-03-09 02:24:06', '2021-03-09 02:24:06', NULL),
(4, 1, 'DANA CASH', '1615278291_7e6af8c7dc1fe3420cb7.png', '01901241414', '1615278291_5a16ae87365e9ddc787e.png', 'selagyhar@mailinator.com', 'active', '2021-03-08', '2021-03-09 02:24:51', '2021-03-09 02:24:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member_categories`
--

CREATE TABLE `member_categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `remarks` varchar(300) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member_categories`
--

INSERT INTO `member_categories` (`id`, `name`, `remarks`, `created_at`, `update_at`, `deleted_at`) VALUES
(1, 'Local', 'N/A', '2020-11-28 18:40:58', '2020-11-28 18:40:58', NULL),
(2, 'Outsider', 'N/A', '2020-11-28 18:40:58', '2020-11-28 18:40:58', NULL),
(3, 'Required Staff', 'N/A', '2020-11-28 18:47:08', '2020-11-28 18:40:58', NULL),
(4, 'Required Student', 'N/A', '2020-11-28 18:47:08', '2020-11-28 18:40:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member_profiles`
--

CREATE TABLE `member_profiles` (
  `id` bigint(20) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `father` varchar(255) NOT NULL DEFAULT 'N/A',
  `mother` varchar(255) DEFAULT 'N/A',
  `spouse` varchar(255) DEFAULT 'N/A',
  `religion_id` bigint(20) DEFAULT NULL,
  `village` varchar(255) DEFAULT NULL,
  `post_office` varchar(255) DEFAULT 'N/A',
  `thana` varchar(255) DEFAULT 'N/A',
  `district` varchar(255) DEFAULT NULL,
  `verify_doc` varchar(100) NOT NULL,
  `suspend_reason` varchar(300) DEFAULT NULL,
  `renew_reason` varchar(300) DEFAULT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member_profiles`
--

INSERT INTO `member_profiles` (`id`, `member_id`, `father`, `mother`, `spouse`, `religion_id`, `village`, `post_office`, `thana`, `district`, `verify_doc`, `suspend_reason`, `renew_reason`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 1, 'VERNON HUBER', 'NOLAN GLOVER', 'JARROD ENGLAND', 3, 'Laboriosam sequi a tempora alias dolor ab vitae nulla sunt sit tempor consequatur Totam duis sed blanditiis voluptatibus veritatis', 'RATIONE AUT IURE INVENTORE IMPEDIT ILLO SIT NON DOLOREMQUE CUMQUE EX VITAE VOLUPTATES PROIDENT VOLUPTATES UT NULLA RERUM IN', 'Quia repudiandae dicta omnis dolor esse velit aut', 'Tempor incidunt non ipsum deleniti', 'PID-595796298940', 'Incididunt consequuntur non in dolor pariatur Quis nihil nostrud minus est facilis consequatur Esse', 'Enim culpa voluptates labore iste ipsum dolorem qui aut dolore et nulla ea magnam nesciunt nostrum dolor', 'Placeat ut commodo est et aut sit asperiores earum eu ea voluptatem Exercitationem dolorem eaque aut id necessitatibus', '2021-03-09 02:23:10', '2021-03-09 02:23:10'),
(2, 2, 'ORI MONTGOMERY', 'VIVIEN MULLEN', 'ALLISTAIR FLORES', 2, 'Est quidem aut ipsum dolorum laborum Minus eaque sit iure qui non asperiores praesentium illo rem numquam qui', 'ADIPISICING REPREHENDERIT NON UT NESCIUNT ENIM INCIDUNT VOLUPTAS IN', 'Molestiae ea nihil omnis porro ut', 'Cupiditate voluptas vel sed est voluptas sint et eiusmod quis', 'PID-148954253409', 'Fugit cum voluptate eos id quidem asperiores dolor ut quo eum cum quis rerum saepe eveniet voluptate voluptas lorem', 'Nobis ipsum veniam nostrum magna atque eos ut tempora consequatur quo accusantium in qui tempora aliquam', 'Excepteur nobis architecto delectus in temporibus in dicta facere ipsam ullamco dolore praesentium', '2021-03-09 02:23:38', '2021-03-09 02:23:38'),
(3, 3, 'BIANCA CRANE', 'ORA VASQUEZ', 'KEATON CHRISTIAN', 4, 'Nemo cillum consectetur unde sit quo quis vero velit molestias laborum Consequat Neque accusantium obcaecati sed error ex quia tempor', 'COMMODI DISTINCTIO REPUDIANDAE ET VEL DICTA QUIS DOLOR LABORE EST CUMQUE EST MINIM SINT NIHIL MOLLITIA EST EU', 'Ex autem quis possimus dolor quis totam laborum dolore', 'Molestiae nisi laborum repellendus Hic', 'PID-40925807634', 'In dolores accusantium ab magnam distinctio Fugiat duis molestiae in hic ipsum perspiciatis fugiat est expedita pariatur Dolor omnis', 'Dolore sunt eu odio doloremque sapiente tempore temporibus minima', 'Debitis rem commodi qui at voluptatem Quis Nam tempore veritatis fugiat sint unde nulla facilis provident voluptatibus quia illo in', '2021-03-09 02:24:06', '2021-03-09 02:24:06'),
(4, 4, 'BRANDEN HOFFMAN', 'IONA ROTH', 'ADAM WYATT', 4, 'Praesentium dignissimos cupidatat a et in dolore ut earum assumenda dolor officiis quibusdam', 'QUO REPUDIANDAE ILLUM ACCUSAMUS QUAM', 'Nihil nulla aut minim illum pariatur Laborum quibusdam saepe rerum aute et voluptas distinctio Elit', 'Ad suscipit consequuntur molestiae adipisci odio omnis praesentium quas aut quo doloremque rerum qui exercitation asperiores eu sapiente accusantium in', 'BID-500002256655', 'n/a', 'n/a', 'n/a', '2021-03-09 02:24:51', '2021-03-09 02:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nominees`
--

CREATE TABLE `nominees` (
  `id` bigint(20) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `relation` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `father` varchar(255) DEFAULT NULL,
  `mother` varchar(255) DEFAULT NULL,
  `spouse` varchar(255) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `verify_doc` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nominees`
--

INSERT INTO `nominees` (`id`, `member_id`, `scheme_holder_id`, `name`, `relation`, `photo`, `signature`, `father`, `mother`, `spouse`, `mobile`, `address`, `verify_doc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 4, 1, '', '', NULL, NULL, '', '', '', '', '', '-', '2021-03-09 04:40:55', '2021-03-09 04:40:55', NULL),
(2, 2, 2, 'Elton Weaver', 'Impedit harum explicabo Est occaecat sequi dolores et eos porro mollit in duis ut exercitationem', '1615287324_bedd66da5083c0fbdaff.jpg', '1615287324_10bcef361eec53d1d94f.png', 'Kylan Mccray', 'Jolie Kline', 'Salvador Pittman', '01243446346', 'Dolor quidem qui ut ', 'NID-847326621024', '2021-03-09 04:55:25', '2021-03-09 04:55:25', NULL),
(3, 4, 3, '', '', NULL, NULL, '', '', '', '', '', '-', '2021-03-10 06:43:05', '2021-03-10 06:43:05', NULL),
(4, 3, 4, '', '', NULL, NULL, '', '', '', '', '', '-', '2021-03-10 06:44:54', '2021-03-10 06:44:54', NULL),
(5, 4, 5, '', '', NULL, NULL, '', '', '', '', '', '-', '2021-03-11 04:11:34', '2021-03-11 04:11:34', NULL),
(6, 2, 6, 'Alexandra Griffith', 'Commodi ea irure laborum animi temporibus sint nihil quos optio enim necessitatibus porro quasi es', '1615457596_4d292254581a0bc905cd.png', '1615457596_4caa9d9ad06f8d2ab6c3.png', 'Germaine Castillo', 'Yen Ortega', 'Ainsley Salinas', '01739299567', 'Ut dolores ut ab ven', 'BID-362055102363', '2021-03-11 04:13:17', '2021-03-11 04:13:17', NULL),
(7, 3, 8, '', '', NULL, NULL, '', '', '', '', '', '-', '2021-03-11 04:19:29', '2021-03-11 04:19:29', NULL),
(8, 1, 9, '', '', NULL, NULL, '', '', '', '', '', '-', '2021-03-11 05:03:12', '2021-03-11 05:03:12', NULL),
(9, 1, 10, '', '', NULL, NULL, '', '', '', '', '', '-', '2021-03-11 05:03:39', '2021-03-11 05:03:39', NULL),
(10, 3, 11, '', '', NULL, NULL, '', '', '', '', '', '-', '2021-03-11 05:04:35', '2021-03-11 05:04:35', NULL),
(11, 2, 14, '', '', NULL, NULL, '', '', '', '', '', '-', '2021-03-13 20:35:08', '2021-03-13 20:35:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Islam', '2020-11-24 13:10:09', '2020-11-24 13:10:09', NULL),
(2, 'Hinduism', '2020-11-24 13:10:09', '2020-11-24 13:10:09', NULL),
(3, 'Buddhism', '2020-11-24 13:10:09', '2020-11-24 13:10:09', NULL),
(4, 'Christian', '2020-11-24 13:10:09', '2020-11-24 13:10:09', NULL),
(5, 'Others', '2020-11-24 13:10:09', '2020-11-24 13:10:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `priority` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `privileges` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `priority`, `privileges`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Member', 1, '1', '2020-12-08 15:03:03', '2020-12-08 15:03:03', NULL),
(2, 'Field Officer', 2, '2', '2020-12-08 15:03:03', '2020-12-08 15:03:03', NULL),
(3, 'Manager', 3, '3', '2020-12-08 15:03:03', '2020-12-08 15:03:03', NULL),
(4, 'Moderator', 4, '4', '2020-12-08 15:03:03', '2020-12-08 15:03:03', NULL),
(5, 'Administrator', 5, '5', '2020-12-08 15:03:03', '2020-12-08 15:03:03', NULL),
(6, 'System Admin', 6, '6', '2020-12-08 15:03:03', '2020-12-08 15:03:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schemes`
--

CREATE TABLE `schemes` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(100) NOT NULL,
  `account_option_id` bigint(20) NOT NULL,
  `status` enum('active','suspend','closed') NOT NULL,
  `remarks` varchar(300) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schemes`
--

INSERT INTO `schemes` (`id`, `name`, `code`, `account_option_id`, `status`, `remarks`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '20 Hazar Loan', '20HL', 15, 'active', 'n/a', '2021-03-09 02:18:56', '2021-03-09 02:18:56', NULL),
(2, '50 Hazar Loan', '50HL', 15, 'active', 'n/a', '2021-03-09 02:19:30', '2021-03-09 02:19:30', NULL),
(3, '15 Hazar Loan', '15HL', 15, 'active', 'n/a', '2021-03-09 02:20:10', '2021-03-09 02:20:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `scheme_activities`
--

CREATE TABLE `scheme_activities` (
  `id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `operation` enum('active','suspend','closed','dead') NOT NULL,
  `timestamp` datetime NOT NULL,
  `remarks` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scheme_activities`
--

INSERT INTO `scheme_activities` (`id`, `scheme_holder_id`, `operation`, `timestamp`, `remarks`) VALUES
(1, 1, 'active', '2021-03-09 04:40:54', 'First Loan'),
(2, 2, 'active', '2021-03-09 04:55:24', 'First Loan'),
(3, 3, 'active', '2021-03-10 06:43:05', 'First Loan'),
(4, 4, 'active', '2021-03-10 06:44:54', 'First Loan'),
(5, 5, 'active', '2021-03-11 04:11:33', 'First Loan'),
(6, 6, 'active', '2021-03-11 04:13:16', 'First Loan'),
(7, 8, 'active', '2021-03-11 04:19:29', 'First Loan'),
(8, 9, 'active', '2021-03-11 05:03:12', 'First Loan'),
(9, 10, 'active', '2021-03-11 05:03:39', 'First Loan'),
(10, 11, 'active', '2021-03-11 05:04:35', 'First Loan'),
(11, 12, 'active', '2021-03-13 20:30:25', 'First Loan'),
(12, 13, 'active', '2021-03-13 20:31:36', 'First Loan'),
(13, 14, 'active', '2021-03-13 20:35:08', 'First Loan');

-- --------------------------------------------------------

--
-- Table structure for table `scheme_ages`
--

CREATE TABLE `scheme_ages` (
  `id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `age` int(11) NOT NULL DEFAULT 0,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scheme_ages`
--

INSERT INTO `scheme_ages` (`id`, `scheme_holder_id`, `age`, `updated_at`) VALUES
(1, 1, 0, NULL),
(2, 2, 0, NULL),
(3, 3, 0, NULL),
(4, 4, 0, NULL),
(5, 5, 0, NULL),
(6, 6, 0, NULL),
(7, 8, 0, NULL),
(8, 9, 0, NULL),
(9, 10, 0, NULL),
(10, 11, 0, NULL),
(11, 14, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `scheme_balances`
--

CREATE TABLE `scheme_balances` (
  `id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `balance` double(18,2) NOT NULL DEFAULT 0.00,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scheme_balances`
--

INSERT INTO `scheme_balances` (`id`, `scheme_holder_id`, `balance`, `updated_at`) VALUES
(1, 3, 56936431425.00, '2021-03-14 05:11:10'),
(2, 9, 4500.00, '2021-03-14 05:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `scheme_closings`
--

CREATE TABLE `scheme_closings` (
  `scheme_holder_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `balance` double(18,2) NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scheme_closings`
--

INSERT INTO `scheme_closings` (`scheme_holder_id`, `date`, `balance`, `updated_at`) VALUES
(3, '2021-03-14', 56936431425.00, NULL),
(9, '2021-03-14', 4500.00, '2021-03-14 05:48:21');

-- --------------------------------------------------------

--
-- Table structure for table `scheme_holders`
--

CREATE TABLE `scheme_holders` (
  `id` bigint(20) NOT NULL,
  `scheme_policy_id` bigint(20) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `scheme_number` bigint(20) NOT NULL,
  `status` enum('active','suspend','closed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scheme_holders`
--

INSERT INTO `scheme_holders` (`id`, `scheme_policy_id`, `member_id`, `scheme_number`, `status`) VALUES
(1, 1, 4, 1113, 'active'),
(2, 4, 2, 1000000013, 'active'),
(3, 1, 4, 13100000024, 'active'),
(4, 3, 3, 2300000003, 'active'),
(5, 1, 4, 231000024, 'active'),
(6, 2, 2, 24290942, 'active'),
(7, 1, 3, 2429, 'active'),
(8, 3, 3, 242000000024, 'active'),
(9, 2, 1, 1, 'active'),
(10, 2, 1, 2, 'active'),
(11, 3, 3, 2, 'active'),
(12, 2, 1, 3, 'active'),
(13, 4, 2, 3, 'active'),
(14, 4, 2, 3, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `scheme_interests`
--

CREATE TABLE `scheme_interests` (
  `id` bigint(20) NOT NULL,
  `scheme_id` bigint(20) NOT NULL,
  `interest_period_id` bigint(20) NOT NULL,
  `percentage` double(18,8) NOT NULL,
  `fiscal_years_id` bigint(20) NOT NULL,
  `remarks` varchar(300) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scheme_interests`
--

INSERT INTO `scheme_interests` (`id`, `scheme_id`, `interest_period_id`, `percentage`, `fiscal_years_id`, `remarks`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5, 20.00000000, 2, 'n/a', '2021-03-09 03:55:20', NULL, NULL),
(2, 1, 8, 20.00000000, 2, 'n/a', '2021-03-09 03:55:20', NULL, NULL),
(3, 1, 9, 20.00000000, 2, 'n/a', '2021-03-09 03:55:20', NULL, NULL),
(4, 1, 10, 20.00000000, 2, 'n/a', '2021-03-09 03:55:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `scheme_numbers`
--

CREATE TABLE `scheme_numbers` (
  `id` bigint(20) NOT NULL,
  `scheme_id` bigint(20) NOT NULL,
  `last_number` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scheme_numbers`
--

INSERT INTO `scheme_numbers` (`id`, `scheme_id`, `last_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 3, '2021-03-09 02:18:56', '2021-03-11 05:03:40', NULL),
(2, 2, 4, '2021-03-09 02:19:30', '2021-03-13 20:35:09', NULL),
(3, 3, 1, '2021-03-09 02:20:10', '2021-03-09 02:20:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `scheme_policy`
--

CREATE TABLE `scheme_policy` (
  `id` bigint(20) NOT NULL,
  `amount` double(18,2) DEFAULT NULL,
  `interval` bigint(20) NOT NULL,
  `savings` double(18,2) NOT NULL DEFAULT 0.00,
  `entry_fee` double(18,2) DEFAULT NULL,
  `least_balance` double(18,2) NOT NULL DEFAULT 0.00,
  `delay_charge` double(18,2) NOT NULL,
  `prepaid_charge` double(18,2) NOT NULL,
  `scheme_id` bigint(20) NOT NULL,
  `period_id` bigint(20) NOT NULL,
  `member_category_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `scheme_policy`
--

INSERT INTO `scheme_policy` (`id`, `amount`, `interval`, `savings`, `entry_fee`, `least_balance`, `delay_charge`, `prepaid_charge`, `scheme_id`, `period_id`, `member_category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 20000.00, 7, 200.00, 200.00, 5000.00, 199.99, 200.00, 1, 8, 1, '2021-03-09 02:20:49', '2021-03-09 02:20:49', NULL),
(2, 20000.00, 7, 200.00, 200.00, 5000.00, 200.00, 200.00, 1, 8, 2, '2021-03-09 02:21:13', '2021-03-09 02:21:13', NULL),
(3, 50000.00, 7, 500.00, 200.00, 10000.00, 200.00, 200.00, 2, 8, 1, '2021-03-09 02:21:48', '2021-03-09 02:21:48', NULL),
(4, 50000.00, 7, 500.00, 200.00, 10000.00, 200.00, 200.00, 2, 8, 2, '2021-03-09 02:22:21', '2021-03-09 02:22:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `status` enum('active','suspend','closed') NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_id`, `role_id`, `status`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5, 'active', 'admin@admin.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', '2020-12-25 21:33:23', '2020-12-25 21:33:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` int(9) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `ip_address` bigint(20) DEFAULT NULL,
  `user_agent` varchar(255) NOT NULL,
  `scheme` varchar(15) NOT NULL,
  `host` varchar(63) NOT NULL,
  `port` varchar(15) NOT NULL,
  `user` varchar(31) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `query` varchar(255) NOT NULL,
  `fragment` varchar(31) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `session_id`, `user_id`, `ip_address`, `user_agent`, `scheme`, `host`, `port`, `user`, `pass`, `path`, `query`, `fragment`, `views`, `created_at`, `updated_at`) VALUES
(0, 'o3ot3o08umssvmlfk25309hhlpt91idl', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/new', '', '', 1, '2021-03-14 01:42:37', '2021-03-14 01:42:37'),
(435, 'nd30n6kl6fv2idticiqmqg5vt221urh5', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/login', '', '', 2, '2021-03-01 04:00:54', '2021-03-01 04:00:57'),
(436, 'nd30n6kl6fv2idticiqmqg5vt221urh5', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/dashboard', '', '', 1, '2021-03-01 04:00:57', '2021-03-01 04:00:57'),
(437, 'nd30n6kl6fv2idticiqmqg5vt221urh5', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/schemes/loan/policy', '', '', 7, '2021-03-01 04:01:20', '2021-03-01 04:53:13'),
(438, 'bdjta5q49l3c81af3l01gbuto83jg7it', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 1, '2021-03-01 04:43:55', '2021-03-01 04:43:55'),
(439, 'deslv2fp43ilfgv56t15e6k6n160a4s0', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/schemes/loan/policy/create', '', '', 3, '2021-03-01 04:54:06', '2021-03-01 05:51:26'),
(440, 'p39c07dha5jdqtrsqrk1el7ijoc9vu49', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/schemes/loan/policy', '', '', 9, '2021-03-01 05:32:07', '2021-03-01 06:07:07'),
(441, 'krn04uk6j7jq5h1l06lplg5i7mifvu6g', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/schemes/new', '', '', 5, '2021-03-01 06:02:51', '2021-03-01 06:07:04'),
(442, 'ovvhqfhdd2ft49cnmr6mqpohraha4423', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/', '', '', 1, '2021-03-01 06:06:30', '2021-03-01 06:06:30'),
(443, 'krn04uk6j7jq5h1l06lplg5i7mifvu6g', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/schemes/create', '', '', 1, '2021-03-01 06:07:04', '2021-03-01 06:07:04'),
(444, '4uphesun6l8sf9pe66vestqlcvr31lh7', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 2, '2021-03-01 07:42:28', '2021-03-01 07:56:54'),
(445, '5r504k5l0ne68fq18vsibasf1b8qfhip', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/schemes/loan/policy', '', '', 4, '2021-03-01 07:48:20', '2021-03-01 08:31:27'),
(446, 'ql6dmmlva0q03eqjts2rpbqb0juegm3a', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/1', '', '', 2, '2021-03-01 08:09:59', '2021-03-01 08:23:47'),
(447, 'ql6dmmlva0q03eqjts2rpbqb0juegm3a', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/saving/5/member/2', '', '', 2, '2021-03-01 08:10:02', '2021-03-01 08:23:42'),
(448, 'ql6dmmlva0q03eqjts2rpbqb0juegm3a', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/saving/3/member/1', '', '', 1, '2021-03-01 08:10:06', '2021-03-01 08:10:06'),
(449, 'u1mtsj0lr6007lih0da59gtm9g2kc6h7', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/interest/new', '', '', 2, '2021-03-01 08:10:51', '2021-03-01 08:17:41'),
(450, 'vvja54hbn7kgdvjs30h01i98o3hjit2d', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/schemes/new', '', '', 1, '2021-03-01 08:24:28', '2021-03-01 08:24:28'),
(451, 'g00cm0n59qvde2ot4o68b3edaoh5alo9', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/schemes/loan/policy', '', '', 2, '2021-03-01 08:57:21', '2021-03-01 09:01:13'),
(452, 'g00cm0n59qvde2ot4o68b3edaoh5alo9', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:85.0) Gecko/20100101 Firefox/85.0', 'http', '192.168.1.104', '7070', '', '', '/schemes/loan/policy/create', '', '', 1, '2021-03-01 09:01:12', '2021-03-01 09:01:12'),
(453, 'mnrk39v3oj5kt8vljrj3ols3ittpnj77', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/', '', '', 1, '2021-03-02 00:15:23', '2021-03-02 00:15:23'),
(454, 'mnrk39v3oj5kt8vljrj3ols3ittpnj77', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/login', '', '', 1, '2021-03-02 00:15:26', '2021-03-02 00:15:26'),
(455, 'mnrk39v3oj5kt8vljrj3ols3ittpnj77', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/dashboard', '', '', 1, '2021-03-02 00:15:26', '2021-03-02 00:15:26'),
(456, 'mnrk39v3oj5kt8vljrj3ols3ittpnj77', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/schemes/loan/policy', '', '', 2, '2021-03-02 00:15:38', '2021-03-02 00:17:45'),
(457, 'mnrk39v3oj5kt8vljrj3ols3ittpnj77', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 2, '2021-03-02 00:18:26', '2021-03-02 01:02:55'),
(458, 'mnrk39v3oj5kt8vljrj3ols3ittpnj77', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/5/member/2', '', '', 2, '2021-03-02 00:20:28', '2021-03-02 00:20:43'),
(459, 'mnrk39v3oj5kt8vljrj3ols3ittpnj77', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/1', '', '', 1, '2021-03-02 00:20:32', '2021-03-02 00:20:32'),
(460, 'mnrk39v3oj5kt8vljrj3ols3ittpnj77', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/5/member/1', '', '', 1, '2021-03-02 00:28:34', '2021-03-02 00:28:34'),
(461, 'mnrk39v3oj5kt8vljrj3ols3ittpnj77', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/2', '', '', 1, '2021-03-02 00:28:39', '2021-03-02 00:28:39'),
(462, 'ctfgo8hk6j1bun82c37s1779ass5k0v8', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/new', '', '', 6, '2021-03-02 01:11:12', '2021-03-02 01:34:16'),
(463, '9akas0hff3vp9jkmd8petge5r73l2tmj', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/create', '', '', 1, '2021-03-02 01:34:15', '2021-03-02 01:34:15'),
(464, '2kimmtsm9r98g92s6hfemuan7c86i1f8', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy', '', '', 1, '2021-03-02 01:42:22', '2021-03-02 01:42:22'),
(465, 'vvk7la26fugrintu1934k5mda8kbcgdt', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/dashboard', '', '', 1, '2021-03-02 03:19:10', '2021-03-02 03:19:10'),
(466, 'vvk7la26fugrintu1934k5mda8kbcgdt', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/new', '', '', 6, '2021-03-02 03:23:45', '2021-03-02 03:36:51'),
(467, 'u3pkkh1atkj4iruulintfq07sr5q8ea9', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/create', '', '', 1, '2021-03-02 03:25:54', '2021-03-02 03:25:54'),
(468, '6tl3edolbgreflcis2uhvtsh285olftr', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members', '', '', 1, '2021-03-02 03:32:11', '2021-03-02 03:32:11'),
(469, '6tl3edolbgreflcis2uhvtsh285olftr', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy', '', '', 2, '2021-03-02 03:35:33', '2021-03-02 03:36:40'),
(470, 'bh5gti18opgqkh0prc60koaad3bm9n36', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/new', '', '', 2, '2021-03-02 04:29:09', '2021-03-02 04:29:32'),
(471, 'bh5gti18opgqkh0prc60koaad3bm9n36', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/create', '', '', 1, '2021-03-02 04:29:30', '2021-03-02 04:29:30'),
(472, '9nndjuqcs157g9np2gpvkt93mpq4qsck', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy', '', '', 28, '2021-03-02 04:40:54', '2021-03-02 05:11:37'),
(473, 'if13pb07itl24hm80sia4mqm8mav8oeu', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members', '', '', 3, '2021-03-02 05:05:45', '2021-03-02 05:11:41'),
(474, 'if13pb07itl24hm80sia4mqm8mav8oeu', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/5', '', '', 17, '2021-03-02 05:09:57', '2021-03-02 06:09:23'),
(475, 'if13pb07itl24hm80sia4mqm8mav8oeu', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/3', '', '', 1, '2021-03-02 05:10:06', '2021-03-02 05:10:06'),
(476, 'ln2b6r24t9fmdklnmfb2r14tlj9qaqvm', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/show/3', '', '', 1, '2021-03-02 05:11:46', '2021-03-02 05:11:46'),
(477, 'crcjegrm9t0dv5a7ge9tf4p3s9bv9gro', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/5', '', '', 5, '2021-03-02 06:10:27', '2021-03-02 06:14:03'),
(478, '9pnn3c4blcekr3nd5aubjd5p6mraqru9', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/5', '', '', 10, '2021-03-02 07:55:14', '2021-03-02 08:54:38'),
(479, '57t3qbihmo27a3pl6jdkaufbd7p7tr9v', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/', '', '', 1, '2021-03-02 08:08:42', '2021-03-02 08:08:42'),
(480, '57t3qbihmo27a3pl6jdkaufbd7p7tr9v', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/login', '', '', 1, '2021-03-02 08:08:49', '2021-03-02 08:08:49'),
(481, '57t3qbihmo27a3pl6jdkaufbd7p7tr9v', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/dashboard', '', '', 1, '2021-03-02 08:08:50', '2021-03-02 08:08:50'),
(482, 'g3gv2rspma42u85qfvr9evmfs419n30q', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy', '', '', 7, '2021-03-02 08:15:08', '2021-03-02 08:54:36'),
(483, 'g3gv2rspma42u85qfvr9evmfs419n30q', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/2', '', '', 3, '2021-03-02 08:16:59', '2021-03-02 08:17:32'),
(484, 'g3gv2rspma42u85qfvr9evmfs419n30q', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/4', '', '', 1, '2021-03-02 08:18:18', '2021-03-02 08:18:18'),
(485, '8jl8o57rdgh7t5ji163dc5kb2sbj4v9p', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/new', '', '', 4, '2021-03-02 08:29:04', '2021-03-02 08:48:21'),
(486, '8jl8o57rdgh7t5ji163dc5kb2sbj4v9p', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/create', '', '', 1, '2021-03-02 08:29:35', '2021-03-02 08:29:35'),
(487, '8jl8o57rdgh7t5ji163dc5kb2sbj4v9p', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/6', '', '', 1, '2021-03-02 08:29:45', '2021-03-02 08:29:45'),
(488, '8jl8o57rdgh7t5ji163dc5kb2sbj4v9p', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/new', '', '', 2, '2021-03-02 08:30:37', '2021-03-02 08:30:49'),
(489, '8jl8o57rdgh7t5ji163dc5kb2sbj4v9p', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/1', '', '', 2, '2021-03-02 08:30:43', '2021-03-02 08:37:08'),
(490, '8jl8o57rdgh7t5ji163dc5kb2sbj4v9p', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/create', '', '', 1, '2021-03-02 08:30:48', '2021-03-02 08:30:48'),
(491, '0118d9gat5p6lec606nqtr0rqke8tntq', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 9, '2021-03-02 08:35:03', '2021-03-02 08:48:25'),
(492, '0118d9gat5p6lec606nqtr0rqke8tntq', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/create', '', '', 1, '2021-03-02 08:37:43', '2021-03-02 08:37:43'),
(493, 'kh43dqo5nf1vddfipeh4d8ustn2g2ma2', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/2', '', '', 2, '2021-03-02 08:42:04', '2021-03-02 08:48:30'),
(494, 'bh6gjcq3dhtg1go7qnogq6gg1hhvjlsn', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan', '', '', 1, '2021-03-02 08:48:19', '2021-03-02 08:48:19'),
(495, 'bh6gjcq3dhtg1go7qnogq6gg1hhvjlsn', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/5/member/3', '', '', 2, '2021-03-02 08:48:38', '2021-03-02 08:48:44'),
(496, 'bh6gjcq3dhtg1go7qnogq6gg1hhvjlsn', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/5/member/1', '', '', 1, '2021-03-02 08:48:40', '2021-03-02 08:48:40'),
(497, 'bh6gjcq3dhtg1go7qnogq6gg1hhvjlsn', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/5/member/2', '', '', 1, '2021-03-02 08:48:42', '2021-03-02 08:48:42'),
(498, 'sgd3upa9nj9agr80coqtnbr25p2lnfo4', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/', '', '', 2, '2021-03-03 06:07:27', '2021-03-03 06:26:14'),
(499, 'sgd3upa9nj9agr80coqtnbr25p2lnfo4', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/login', '', '', 1, '2021-03-03 06:07:47', '2021-03-03 06:07:47'),
(500, 'sgd3upa9nj9agr80coqtnbr25p2lnfo4', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/dashboard', '', '', 1, '2021-03-03 06:07:47', '2021-03-03 06:07:47'),
(501, 'sgd3upa9nj9agr80coqtnbr25p2lnfo4', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/new', '', '', 9, '2021-03-03 06:07:53', '2021-03-03 06:45:18'),
(502, 'sgd3upa9nj9agr80coqtnbr25p2lnfo4', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/create', '', '', 5, '2021-03-03 06:07:58', '2021-03-03 06:16:25'),
(503, 'sgd3upa9nj9agr80coqtnbr25p2lnfo4', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy', '', '', 20, '2021-03-03 06:08:09', '2021-03-03 06:39:12'),
(504, 'sgd3upa9nj9agr80coqtnbr25p2lnfo4', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/6', '', '', 2, '2021-03-03 06:08:18', '2021-03-03 06:10:26'),
(505, 'b1p96pan4ivdph1plr3bf51e7vmddmjb', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/edit/1', '', '', 1, '2021-03-03 06:23:23', '2021-03-03 06:23:23'),
(506, 'b1p96pan4ivdph1plr3bf51e7vmddmjb', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/3', '', '', 14, '2021-03-03 06:23:27', '2021-03-03 06:26:57'),
(507, 'b0r1t20b19tgr5fravsl4bbefrugpofm', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/new', '', '', 3, '2021-03-03 06:39:18', '2021-03-03 06:44:23'),
(508, 'b0r1t20b19tgr5fravsl4bbefrugpofm', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/2/member/1', '', '', 1, '2021-03-03 06:39:23', '2021-03-03 06:39:23'),
(509, 'b0r1t20b19tgr5fravsl4bbefrugpofm', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/2/member/3', '', '', 1, '2021-03-03 06:42:02', '2021-03-03 06:42:02'),
(510, 'b0r1t20b19tgr5fravsl4bbefrugpofm', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/2', '', '', 2, '2021-03-03 06:42:07', '2021-03-03 06:44:31'),
(511, 'n6etpq5ef10vi4fqgvq9devmsvos4r11', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/3', '', '', 1, '2021-03-03 06:44:28', '2021-03-03 06:44:28'),
(512, 'n6etpq5ef10vi4fqgvq9devmsvos4r11', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/3/member/3', '', '', 1, '2021-03-03 06:44:38', '2021-03-03 06:44:38'),
(513, 'n6etpq5ef10vi4fqgvq9devmsvos4r11', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/3/member/2', '', '', 1, '2021-03-03 06:44:40', '2021-03-03 06:44:40'),
(514, 'n6etpq5ef10vi4fqgvq9devmsvos4r11', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/4/member/3', '', '', 5, '2021-03-03 06:46:11', '2021-03-03 07:14:01'),
(515, 'r9if5pjq66hegqo9ig1n7pire6cd1t3k', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 16, '2021-03-03 07:05:51', '2021-03-03 07:37:56'),
(516, 'r9if5pjq66hegqo9ig1n7pire6cd1t3k', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/4/member/1', '', '', 3, '2021-03-03 07:05:57', '2021-03-03 07:16:26'),
(517, 'lt9g3sqev0sj6iuomo5vor64l590hkdq', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/new', '', '', 1, '2021-03-03 07:13:45', '2021-03-03 07:13:45'),
(518, 'lt9g3sqev0sj6iuomo5vor64l590hkdq', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/create', '', '', 5, '2021-03-03 07:15:06', '2021-03-03 07:19:02'),
(519, 'lt9g3sqev0sj6iuomo5vor64l590hkdq', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/4/member/2', '', '', 4, '2021-03-03 07:15:54', '2021-03-03 07:38:01'),
(520, '7vd73mhn6hvhfa2r3tuhjvd7u1iso439', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 1, '2021-03-03 08:11:56', '2021-03-03 08:11:56'),
(521, 'hroagutd6j99r85jvhrtrfct4j9upb4a', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/', '', '', 1, '2021-03-03 08:12:43', '2021-03-03 08:12:43'),
(522, 'jufmvn7vtnr0m57hk75jfm02ua0ogcm7', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/', '', '', 1, '2021-03-04 01:14:45', '2021-03-04 01:14:45'),
(523, 'jufmvn7vtnr0m57hk75jfm02ua0ogcm7', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/login', '', '', 1, '2021-03-04 01:14:49', '2021-03-04 01:14:49'),
(524, 'jufmvn7vtnr0m57hk75jfm02ua0ogcm7', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/dashboard', '', '', 2, '2021-03-04 01:14:49', '2021-03-04 01:39:39'),
(525, '3k5t8uv3a3ua29qudouo997djivsn5dg', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan', '', '', 1, '2021-03-04 01:39:38', '2021-03-04 01:39:38'),
(526, '3k5t8uv3a3ua29qudouo997djivsn5dg', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 12, '2021-03-04 01:39:44', '2021-03-04 02:19:54'),
(527, '3k5t8uv3a3ua29qudouo997djivsn5dg', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/4/member/1', '', '', 1, '2021-03-04 01:39:51', '2021-03-04 01:39:51'),
(528, '3k5t8uv3a3ua29qudouo997djivsn5dg', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/create', '', '', 8, '2021-03-04 01:39:53', '2021-03-04 02:05:22'),
(529, '3k5t8uv3a3ua29qudouo997djivsn5dg', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/4/member/3', '', '', 1, '2021-03-04 01:40:37', '2021-03-04 01:40:37'),
(530, '3k5t8uv3a3ua29qudouo997djivsn5dg', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/4/member/2', '', '', 6, '2021-03-04 01:42:03', '2021-03-04 01:53:51'),
(531, 'dk30muvfhf9act85baoj40vk1l3gos33', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/4/member/3', '', '', 1, '2021-03-04 03:29:51', '2021-03-04 03:29:51'),
(532, 'iltk01ef41mqmu8v5fia3hckrmc34req', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/create', '', '', 1, '2021-03-04 03:29:52', '2021-03-04 03:29:52'),
(533, '524bl04noaom35p1qrml8ttpeg640d0e', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/', '', '', 1, '2021-03-04 05:47:36', '2021-03-04 05:47:36'),
(534, '524bl04noaom35p1qrml8ttpeg640d0e', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/login', '', '', 1, '2021-03-04 05:47:39', '2021-03-04 05:47:39'),
(535, '524bl04noaom35p1qrml8ttpeg640d0e', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/dashboard', '', '', 1, '2021-03-04 05:47:39', '2021-03-04 05:47:39'),
(536, '524bl04noaom35p1qrml8ttpeg640d0e', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 7, '2021-03-04 05:47:43', '2021-03-04 06:03:38'),
(537, '524bl04noaom35p1qrml8ttpeg640d0e', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/4/member/2', '', '', 2, '2021-03-04 05:48:00', '2021-03-04 06:03:44'),
(538, '524bl04noaom35p1qrml8ttpeg640d0e', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/4/member/1', '', '', 1, '2021-03-04 05:48:09', '2021-03-04 05:48:09'),
(539, '524bl04noaom35p1qrml8ttpeg640d0e', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/4/member/3', '', '', 5, '2021-03-04 05:49:00', '2021-03-04 05:59:02'),
(540, '4a153mp8pkftniaer2ejud8qftubrdm9', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 5, '2021-03-04 07:30:10', '2021-03-04 08:22:47'),
(541, '4a153mp8pkftniaer2ejud8qftubrdm9', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/4/member/2', '', '', 2, '2021-03-04 07:30:14', '2021-03-04 08:22:51'),
(542, '4a153mp8pkftniaer2ejud8qftubrdm9', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/create', '', '', 3, '2021-03-04 07:30:18', '2021-03-04 08:22:54'),
(543, 's56j88t09u01ha2qd3o6asse9ao9le49', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/4/member/1', '', '', 2, '2021-03-04 08:19:30', '2021-03-04 08:21:07'),
(544, 'm00kf3dccf3ecridbe8ovm2stsi0ndde', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 6, '2021-03-09 01:51:54', '2021-03-09 02:27:34'),
(545, 'm00kf3dccf3ecridbe8ovm2stsi0ndde', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/2/member/3', '', '', 2, '2021-03-09 01:52:17', '2021-03-09 02:26:34'),
(546, 'm00kf3dccf3ecridbe8ovm2stsi0ndde', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/create', '', '', 1, '2021-03-09 01:52:25', '2021-03-09 01:52:25'),
(547, '9qo3u09k1e8qj933f92iv4e5vqbnevdd', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/new', '', '', 2, '2021-03-09 02:06:17', '2021-03-09 02:07:23'),
(548, 'fp9ei00uer7blhmurrotd78a5g6njuk5', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/dashboard', '', '', 2, '2021-03-09 02:17:30', '2021-03-09 02:17:39'),
(549, 'fp9ei00uer7blhmurrotd78a5g6njuk5', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/fiscal/new', '', '', 2, '2021-03-09 02:17:45', '2021-03-09 02:18:12'),
(550, 'fp9ei00uer7blhmurrotd78a5g6njuk5', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/fiscal/create', '', '', 1, '2021-03-09 02:18:12', '2021-03-09 02:18:12'),
(551, 'fp9ei00uer7blhmurrotd78a5g6njuk5', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/new', '', '', 6, '2021-03-09 02:18:18', '2021-03-09 02:22:21'),
(552, 'fp9ei00uer7blhmurrotd78a5g6njuk5', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/schemes/new', '', '', 4, '2021-03-09 02:18:23', '2021-03-09 02:20:10'),
(553, 'fp9ei00uer7blhmurrotd78a5g6njuk5', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/schemes/create', '', '', 3, '2021-03-09 02:18:56', '2021-03-09 02:20:10'),
(554, 'fp9ei00uer7blhmurrotd78a5g6njuk5', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/policy/create', '', '', 4, '2021-03-09 02:20:48', '2021-03-09 02:22:21'),
(555, 'fmui77e4nd59hmf3slslqhl5h32eruel', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/new', '', '', 5, '2021-03-09 02:22:32', '2021-03-09 02:24:51'),
(556, 'fmui77e4nd59hmf3slslqhl5h32eruel', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/create', '', '', 4, '2021-03-09 02:23:10', '2021-03-09 02:24:50'),
(557, 'fmui77e4nd59hmf3slslqhl5h32eruel', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/1', '', '', 3, '2021-03-09 02:24:59', '2021-03-09 02:27:38'),
(558, 'fmui77e4nd59hmf3slslqhl5h32eruel', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/3', '', '', 2, '2021-03-09 02:25:05', '2021-03-09 02:27:42'),
(559, 'fmui77e4nd59hmf3slslqhl5h32eruel', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/4', '', '', 1, '2021-03-09 02:25:07', '2021-03-09 02:25:07'),
(560, 'fmui77e4nd59hmf3slslqhl5h32eruel', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/2', '', '', 2, '2021-03-09 02:26:26', '2021-03-09 02:27:40'),
(561, 'fmui77e4nd59hmf3slslqhl5h32eruel', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/2/member/1', '', '', 1, '2021-03-09 02:26:31', '2021-03-09 02:26:31'),
(562, 'v0e2pg2v63m26q6mg1m8sa4q6m00rd2o', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 8, '2021-03-09 03:28:54', '2021-03-09 04:27:06'),
(563, 'v0e2pg2v63m26q6mg1m8sa4q6m00rd2o', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/2', '', '', 2, '2021-03-09 03:28:59', '2021-03-09 04:27:11'),
(564, '6q6v8ftiref24cmdouin6e0b0lbr9s7f', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/', '', '', 2, '2021-03-09 03:29:06', '2021-03-09 04:26:06'),
(565, 'v0e2pg2v63m26q6mg1m8sa4q6m00rd2o', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/3', '', '', 4, '2021-03-09 03:29:14', '2021-03-09 04:26:01'),
(566, '0pbmv5qa9r5iqc23su2rmvvq3fccu7a4', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/interest/new', '', '', 2, '2021-03-09 03:54:52', '2021-03-09 03:55:21'),
(567, '0pbmv5qa9r5iqc23su2rmvvq3fccu7a4', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/interest/create', '', '', 1, '2021-03-09 03:55:20', '2021-03-09 03:55:20'),
(568, '0pbmv5qa9r5iqc23su2rmvvq3fccu7a4', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/1', '', '', 2, '2021-03-09 03:55:32', '2021-03-09 03:56:01'),
(569, 'cvsd69kdngo0iqmpne3brrqmitkbk3ev', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 6, '2021-03-09 04:38:38', '2021-03-09 05:32:27'),
(570, 'cvsd69kdngo0iqmpne3brrqmitkbk3ev', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/4', '', '', 2, '2021-03-09 04:38:43', '2021-03-09 04:40:51'),
(571, 'cvsd69kdngo0iqmpne3brrqmitkbk3ev', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/3', '', '', 1, '2021-03-09 04:39:57', '2021-03-09 04:39:57'),
(572, 'cvsd69kdngo0iqmpne3brrqmitkbk3ev', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/create', '', '', 2, '2021-03-09 04:40:54', '2021-03-09 04:55:24'),
(573, 'cvsd69kdngo0iqmpne3brrqmitkbk3ev', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/2/member/2', '', '', 1, '2021-03-09 04:51:34', '2021-03-09 04:51:34'),
(574, 'd5mdgmm56uescl5sjp3voe4mvujkmrhm', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/new', '', '', 1, '2021-03-09 05:02:13', '2021-03-09 05:02:13'),
(575, '0lc2j5qhu5n3rmuk7apln7uevkaclisk', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan', '', '', 5, '2021-03-09 05:32:33', '2021-03-09 06:19:58'),
(576, '8djrcche8so6iqcd6lpfkl3tahnukov8', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members', '', '', 1, '2021-03-09 07:08:03', '2021-03-09 07:08:03'),
(577, '8djrcche8so6iqcd6lpfkl3tahnukov8', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/show/4', '', '', 1, '2021-03-09 07:08:05', '2021-03-09 07:08:05'),
(578, '8djrcche8so6iqcd6lpfkl3tahnukov8', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/show/3', '', '', 1, '2021-03-09 07:08:12', '2021-03-09 07:08:12'),
(579, '8djrcche8so6iqcd6lpfkl3tahnukov8', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/show/2', '', '', 1, '2021-03-09 07:08:19', '2021-03-09 07:08:19'),
(580, '8djrcche8so6iqcd6lpfkl3tahnukov8', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/show/1', '', '', 1, '2021-03-09 07:08:26', '2021-03-09 07:08:26'),
(581, 'gfsbodntd9l77pdjrfboghbku0pje131', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan', '', '', 3, '2021-03-09 07:19:29', '2021-03-09 08:02:34'),
(582, 'oerqqecppn2amh05mfi5bihimsv6bljv', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/', '', '', 3, '2021-03-10 06:18:22', '2021-03-10 06:18:26'),
(583, 'oerqqecppn2amh05mfi5bihimsv6bljv', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/login', '', '', 1, '2021-03-10 06:18:33', '2021-03-10 06:18:33'),
(584, 'oerqqecppn2amh05mfi5bihimsv6bljv', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/dashboard', '', '', 2, '2021-03-10 06:18:33', '2021-03-10 06:38:38'),
(585, 'oerqqecppn2amh05mfi5bihimsv6bljv', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/new', '', '', 1, '2021-03-10 06:20:24', '2021-03-10 06:20:24'),
(586, 'qbos515ioj56hn91rugbu7dqcpm5inlc', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan', '', '', 2, '2021-03-10 06:38:44', '2021-03-10 06:57:10'),
(587, 'qbos515ioj56hn91rugbu7dqcpm5inlc', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 3, '2021-03-10 06:42:55', '2021-03-10 06:44:54'),
(588, 'qbos515ioj56hn91rugbu7dqcpm5inlc', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/4', '', '', 1, '2021-03-10 06:43:00', '2021-03-10 06:43:00'),
(589, 'qbos515ioj56hn91rugbu7dqcpm5inlc', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/create', '', '', 2, '2021-03-10 06:43:04', '2021-03-10 06:44:53'),
(590, 'qbos515ioj56hn91rugbu7dqcpm5inlc', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/2/member/3', '', '', 1, '2021-03-10 06:44:52', '2021-03-10 06:44:52'),
(591, '3e01t80e9gsqapkgmuu479qjr7r810ti', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan', '', '', 11, '2021-03-10 08:10:33', '2021-03-10 08:42:25'),
(592, 'kumf87il6iiqvnaq4jg9birp2huhts0p', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/', '', '', 2, '2021-03-11 02:43:29', '2021-03-11 02:59:14'),
(593, 'kumf87il6iiqvnaq4jg9birp2huhts0p', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/login', '', '', 1, '2021-03-11 02:43:33', '2021-03-11 02:43:33'),
(594, 'kumf87il6iiqvnaq4jg9birp2huhts0p', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/dashboard', '', '', 1, '2021-03-11 02:43:33', '2021-03-11 02:43:33'),
(595, 'kumf87il6iiqvnaq4jg9birp2huhts0p', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan', '', '', 2, '2021-03-11 02:43:40', '2021-03-11 02:47:43'),
(596, 'kumf87il6iiqvnaq4jg9birp2huhts0p', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/new', '', '', 1, '2021-03-11 02:43:48', '2021-03-11 02:43:48'),
(597, 'kumf87il6iiqvnaq4jg9birp2huhts0p', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 4, '2021-03-11 02:47:46', '2021-03-11 02:59:04'),
(598, 'kumf87il6iiqvnaq4jg9birp2huhts0p', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/3', '', '', 2, '2021-03-11 02:47:50', '2021-03-11 02:59:16'),
(599, 'kumf87il6iiqvnaq4jg9birp2huhts0p', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/create', '', '', 2, '2021-03-11 02:47:52', '2021-03-11 02:48:38'),
(600, 'ffpktj7u4tjkta6off414c5l1ai26hsp', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/2', '', '', 1, '2021-03-11 02:48:37', '2021-03-11 02:48:37'),
(601, 'ffpktj7u4tjkta6off414c5l1ai26hsp', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/schemes/new', '', '', 2, '2021-03-11 02:52:18', '2021-03-11 02:58:44'),
(602, 'ffpktj7u4tjkta6off414c5l1ai26hsp', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/schemes/create', '', '', 1, '2021-03-11 02:52:20', '2021-03-11 02:52:20'),
(603, 'nb2ff658h5hk2gn2bvjnkh17pn7vh6l3', NULL, 3232235884, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/', '', '', 3, '2021-03-11 03:18:46', '2021-03-11 04:12:59'),
(604, 'qru5fes71hgqicta2gon6qaehj4dbstd', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 9, '2021-03-11 04:11:24', '2021-03-11 05:04:35'),
(605, 'qru5fes71hgqicta2gon6qaehj4dbstd', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/4', '', '', 1, '2021-03-11 04:11:29', '2021-03-11 04:11:29'),
(606, 'qru5fes71hgqicta2gon6qaehj4dbstd', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/create', '', '', 8, '2021-03-11 04:11:33', '2021-03-11 05:04:35'),
(607, 'qru5fes71hgqicta2gon6qaehj4dbstd', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/2', '', '', 1, '2021-03-11 04:12:52', '2021-03-11 04:12:52'),
(608, '7dc7lno9brtlihnpr4erhbnmnltsj2u8', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/schemes/new', '', '', 1, '2021-03-11 04:18:48', '2021-03-11 04:18:48'),
(609, '7dc7lno9brtlihnpr4erhbnmnltsj2u8', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/3', '', '', 1, '2021-03-11 04:18:58', '2021-03-11 04:18:58'),
(610, '7dc7lno9brtlihnpr4erhbnmnltsj2u8', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/0/member/4', '', '', 1, '2021-03-11 04:19:22', '2021-03-11 04:19:22'),
(611, '7dc7lno9brtlihnpr4erhbnmnltsj2u8', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/2/member/3', '', '', 2, '2021-03-11 04:19:27', '2021-03-11 05:04:33'),
(612, 'srlloek42sm3moh9dr614po106tgd64f', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/1/member/1', '', '', 2, '2021-03-11 05:03:10', '2021-03-11 05:03:34'),
(613, 'srlloek42sm3moh9dr614po106tgd64f', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/3/member/1', '', '', 1, '2021-03-11 05:04:29', '2021-03-11 05:04:29'),
(614, 'srlloek42sm3moh9dr614po106tgd64f', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan', '', '', 2, '2021-03-11 05:05:19', '2021-03-11 05:09:42'),
(615, '3v5pmtn65n1ujp2t2qa25nfav0f8lhr9', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/new', '', '', 4, '2021-03-11 05:49:53', '2021-03-11 06:43:29'),
(616, '3v5pmtn65n1ujp2t2qa25nfav0f8lhr9', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/loan/new', '', '', 1, '2021-03-11 05:49:54', '2021-03-11 05:49:54'),
(617, 'ebfnpfcc0vo924q6kd7g2k3egjs5qri6', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/deposit/new', '', '', 1, '2021-03-11 06:00:18', '2021-03-11 06:00:18'),
(618, 'fgfvlr4drknvggkpa008kle5jlb8n6b4', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/new', '', '', 3, '2021-03-11 07:05:39', '2021-03-11 07:08:51'),
(619, 'fgfvlr4drknvggkpa008kle5jlb8n6b4', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/create', '', '', 2, '2021-03-11 07:06:47', '2021-03-11 07:09:02'),
(620, '8qghr7t27qiolrs80cqjab9s0ihui0on', NULL, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', 'localhost', '8080', '', '', '/', '', '', 1, '2021-03-12 07:53:11', '2021-03-12 07:53:11'),
(621, '8qghr7t27qiolrs80cqjab9s0ihui0on', NULL, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', 'localhost', '8080', '', '', '/login', '', '', 1, '2021-03-12 07:53:41', '2021-03-12 07:53:41'),
(622, '8qghr7t27qiolrs80cqjab9s0ihui0on', 1, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', 'localhost', '8080', '', '', '/dashboard', '', '', 1, '2021-03-12 07:53:42', '2021-03-12 07:53:42'),
(623, '8qghr7t27qiolrs80cqjab9s0ihui0on', 1, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', 'localhost', '8080', '', '', '/installment', '', '', 2, '2021-03-12 07:54:01', '2021-03-12 07:55:10'),
(624, 'ic8vrovc12m3v2nosrdujaeior18b7g5', 1, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', 'localhost', '8080', '', '', '/dashboard', '', '', 1, '2021-03-12 09:26:18', '2021-03-12 09:26:18'),
(625, 'ic8vrovc12m3v2nosrdujaeior18b7g5', 1, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', 'localhost', '8080', '', '', '/saving/new', '', '', 3, '2021-03-12 09:26:28', '2021-03-12 09:28:18'),
(626, 'ic8vrovc12m3v2nosrdujaeior18b7g5', 1, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', 'localhost', '8080', '', '', '/saving/create', '', '', 2, '2021-03-12 09:26:57', '2021-03-12 09:28:14'),
(627, 'hlliboausvcvhq15cjdsa15ie4n3jjhl', NULL, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', 'localhost', '8080', '', '', '/', '', '', 1, '2021-03-12 09:27:36', '2021-03-12 09:27:36'),
(628, 'ic8vrovc12m3v2nosrdujaeior18b7g5', 1, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', 'localhost', '8080', '', '', '/schemes/new', '', '', 1, '2021-03-12 09:28:45', '2021-03-12 09:28:45'),
(629, 'd8o3oio4g0e82egp6jeglst2ldn8k5l1', NULL, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', 'localhost', '8080', '', '', '/', '', '', 1, '2021-03-12 14:26:51', '2021-03-12 14:26:51'),
(630, 'd8o3oio4g0e82egp6jeglst2ldn8k5l1', NULL, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', 'localhost', '8080', '', '', '/login', '', '', 1, '2021-03-12 14:27:00', '2021-03-12 14:27:00');
INSERT INTO `visits` (`id`, `session_id`, `user_id`, `ip_address`, `user_agent`, `scheme`, `host`, `port`, `user`, `pass`, `path`, `query`, `fragment`, `views`, `created_at`, `updated_at`) VALUES
(631, 'd8o3oio4g0e82egp6jeglst2ldn8k5l1', 1, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', 'localhost', '8080', '', '', '/dashboard', '', '', 1, '2021-03-12 14:27:01', '2021-03-12 14:27:01'),
(632, 'd8o3oio4g0e82egp6jeglst2ldn8k5l1', 1, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', 'localhost', '8080', '', '', '/installment', '', '', 4, '2021-03-12 14:27:11', '2021-03-12 14:30:11'),
(633, '8gqes17iea8v8tbups7s7r72an7j9bpg', 1, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', 'localhost', '8080', '', '', '/installment/new', '', '', 3, '2021-03-12 14:31:58', '2021-03-12 14:51:30'),
(634, 'i25bjafadtpjrjvsk3otm7vo14lsavso', 1, 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', 'localhost', '8080', '', '', '/deposit/new', '', '', 1, '2021-03-12 14:54:05', '2021-03-12 14:54:05'),
(635, 'jnsnhai1776m68g7gm0ahnv42fm2oj6b', NULL, 3232235624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.0.104', '7070', '', '', '/', '', '', 1, '2021-03-13 17:30:51', '2021-03-13 17:30:51'),
(636, 'jnsnhai1776m68g7gm0ahnv42fm2oj6b', NULL, 3232235624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.0.104', '7070', '', '', '/login', '', '', 1, '2021-03-13 17:31:37', '2021-03-13 17:31:37'),
(637, 'jnsnhai1776m68g7gm0ahnv42fm2oj6b', 1, 3232235624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.0.104', '7070', '', '', '/dashboard', '', '', 1, '2021-03-13 17:31:38', '2021-03-13 17:31:38'),
(638, 'jnsnhai1776m68g7gm0ahnv42fm2oj6b', 1, 3232235624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.0.104', '7070', '', '', '/installment/new', '', '', 5, '2021-03-13 17:32:10', '2021-03-13 18:21:29'),
(639, 'jnsnhai1776m68g7gm0ahnv42fm2oj6b', 1, 3232235624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.0.104', '7070', '', '', '/installment/create', '', '', 5, '2021-03-13 17:33:09', '2021-03-13 18:21:44'),
(640, 'h5j01nlrm2uk0arv7f304tr4agdlm0oo', 1, 3232235624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.0.104', '7070', '', '', '/installment/new', '', '', 7, '2021-03-13 20:08:00', '2021-03-13 20:51:39'),
(641, '99p1cqm6r0atus75fcjg8vlo0hni969n', 1, 3232235624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.0.104', '7070', '', '', '/loan/new', '', '', 5, '2021-03-13 20:30:05', '2021-03-13 20:35:09'),
(642, '99p1cqm6r0atus75fcjg8vlo0hni969n', 1, 3232235624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.0.104', '7070', '', '', '/saving/1/member/1', '', '', 1, '2021-03-13 20:30:19', '2021-03-13 20:30:19'),
(643, '99p1cqm6r0atus75fcjg8vlo0hni969n', 1, 3232235624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.0.104', '7070', '', '', '/loan/create', '', '', 3, '2021-03-13 20:30:25', '2021-03-13 20:35:08'),
(644, '99p1cqm6r0atus75fcjg8vlo0hni969n', 1, 3232235624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.0.104', '7070', '', '', '/saving/1/member/4', '', '', 1, '2021-03-13 20:31:23', '2021-03-13 20:31:23'),
(645, '99p1cqm6r0atus75fcjg8vlo0hni969n', 1, 3232235624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.0.104', '7070', '', '', '/saving/2/member/2', '', '', 2, '2021-03-13 20:31:29', '2021-03-13 20:35:04'),
(646, 'c9lcej1ngl3tn096q42fh6qr0e6bid5k', 1, 3232235624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.0.104', '7070', '', '', '/installment/create', '', '', 5, '2021-03-13 20:43:14', '2021-03-13 20:54:28'),
(647, 'bhvfllevbd4fmid2jvqc3b5rvif1nqj7', NULL, 3232235624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.0.104', '7070', '', '', '/', '', '', 1, '2021-03-13 20:51:55', '2021-03-13 20:51:55'),
(648, '1aed02vo3mlkoo6sodpibv5bm5ko9elt', 1, 3232235624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.0.104', '7070', '', '', '/installment/new', '', '', 1, '2021-03-13 21:45:31', '2021-03-13 21:45:31'),
(649, '1aed02vo3mlkoo6sodpibv5bm5ko9elt', 1, 3232235624, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.0.104', '7070', '', '', '/installment/create', '', '', 1, '2021-03-13 21:45:53', '2021-03-13 21:45:53'),
(650, 'qitt62p2njvf3rcvnehp3irbtq210uo2', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/create', '', '', 1, '2021-03-14 01:53:58', '2021-03-14 01:53:58'),
(651, 'qitt62p2njvf3rcvnehp3irbtq210uo2', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/interest/new', '', '', 1, '2021-03-14 01:57:17', '2021-03-14 01:57:17'),
(652, 'nhvprccf4hceugs2vsnkn41e25rvobh9', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment', '', '', 1, '2021-03-14 03:12:06', '2021-03-14 03:12:06'),
(653, 'nhvprccf4hceugs2vsnkn41e25rvobh9', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment', '', '', 1, '2021-03-14 03:13:03', '2021-03-14 03:13:03'),
(654, 'adbjcppki0852pf1h6467a768io9n592', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/new', '', '', 1, '2021-03-14 03:19:09', '2021-03-14 03:19:09'),
(655, 'adbjcppki0852pf1h6467a768io9n592', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/new', '', '', 1, '2021-03-14 03:19:30', '2021-03-14 03:19:30'),
(656, 'adbjcppki0852pf1h6467a768io9n592', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/new', '', '', 1, '2021-03-14 03:20:05', '2021-03-14 03:20:05'),
(657, '421h20idk74p6dmv9jdkq18hqnrrnj0t', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/new', '', '', 1, '2021-03-14 03:24:41', '2021-03-14 03:24:41'),
(658, '421h20idk74p6dmv9jdkq18hqnrrnj0t', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/new', '', '', 1, '2021-03-14 03:25:34', '2021-03-14 03:25:34'),
(659, 'hehop7l83tauko7a4iuqooivrnl9i3er', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members', '', '', 5, '2021-03-14 04:45:12', '2021-03-14 05:12:36'),
(660, 'hehop7l83tauko7a4iuqooivrnl9i3er', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/show/4', '', '', 3, '2021-03-14 04:45:14', '2021-03-14 05:19:35'),
(661, 'hehop7l83tauko7a4iuqooivrnl9i3er', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment', '', '', 3, '2021-03-14 04:49:24', '2021-03-14 04:55:36'),
(662, '9vih38l5m8ms5emmj4hkv1ftt6i3rru8', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/new', '', '', 6, '2021-03-14 04:51:18', '2021-03-14 05:46:41'),
(663, '9vih38l5m8ms5emmj4hkv1ftt6i3rru8', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/installment/create', '', '', 1, '2021-03-14 04:51:51', '2021-03-14 04:51:51'),
(664, '9vih38l5m8ms5emmj4hkv1ftt6i3rru8', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/new', '', '', 3, '2021-03-14 04:55:43', '2021-03-14 05:48:27'),
(665, '9vih38l5m8ms5emmj4hkv1ftt6i3rru8', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/update', '', '', 1, '2021-03-14 04:55:55', '2021-03-14 04:55:55'),
(666, 'v9ir6ftt8jb0jgqjc2gen690v9a81l0l', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/deposit/new', '', '', 15, '2021-03-14 04:56:31', '2021-03-14 05:47:49'),
(667, '1533o62cijuq368v5n8m7a24gouvnfhb', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/deposit/create', '', '', 2, '2021-03-14 05:11:10', '2021-03-14 05:47:48'),
(668, '1533o62cijuq368v5n8m7a24gouvnfhb', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/member/account/3', '', '', 1, '2021-03-14 05:12:43', '2021-03-14 05:12:43'),
(669, '7c6ho0s4fugd1g8etcpdii1bma5fdfe0', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/withdraw/new', '', '', 10, '2021-03-14 05:24:55', '2021-03-14 05:48:21'),
(670, 'ssv2m5kba8voup8a8hrtr8cqm8j14ska', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/', '', '', 1, '2021-03-14 05:40:15', '2021-03-14 05:40:15'),
(671, 'ssv2m5kba8voup8a8hrtr8cqm8j14ska', NULL, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/login', '', '', 1, '2021-03-14 05:40:18', '2021-03-14 05:40:18'),
(672, 'ssv2m5kba8voup8a8hrtr8cqm8j14ska', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/dashboard', '', '', 2, '2021-03-14 05:40:19', '2021-03-14 05:42:14'),
(673, '51cfmmktkbq1uuhpp3c7284juu2c14bc', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/withdraw/create', '', '', 1, '2021-03-14 05:48:20', '2021-03-14 05:48:20'),
(674, '51cfmmktkbq1uuhpp3c7284juu2c14bc', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members', '', '', 5, '2021-03-14 05:48:30', '2021-03-14 06:12:36'),
(675, '51cfmmktkbq1uuhpp3c7284juu2c14bc', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/show/4', '', '', 22, '2021-03-14 05:48:34', '2021-03-14 06:29:54'),
(676, '51cfmmktkbq1uuhpp3c7284juu2c14bc', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/show/3', '', '', 1, '2021-03-14 05:48:41', '2021-03-14 05:48:41'),
(677, '51cfmmktkbq1uuhpp3c7284juu2c14bc', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/show/2', '', '', 1, '2021-03-14 05:48:48', '2021-03-14 05:48:48'),
(678, '51cfmmktkbq1uuhpp3c7284juu2c14bc', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/show/1', '', '', 8, '2021-03-14 05:48:54', '2021-03-14 06:11:55'),
(679, '51cfmmktkbq1uuhpp3c7284juu2c14bc', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/member/account/9', '', '', 3, '2021-03-14 05:48:57', '2021-03-14 06:11:29'),
(680, '7urco82rlv27vqiauvpngo9c3v3cupk6', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/member/account/10', '', '', 1, '2021-03-14 06:11:20', '2021-03-14 06:11:20'),
(681, '7urco82rlv27vqiauvpngo9c3v3cupk6', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving/update', '', '', 1, '2021-03-14 06:11:53', '2021-03-14 06:11:53'),
(682, '7urco82rlv27vqiauvpngo9c3v3cupk6', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/saving', '', '', 1, '2021-03-14 06:11:57', '2021-03-14 06:11:57'),
(683, '7urco82rlv27vqiauvpngo9c3v3cupk6', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/new', '', '', 1, '2021-03-14 06:12:32', '2021-03-14 06:12:32'),
(684, '7urco82rlv27vqiauvpngo9c3v3cupk6', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/member/account/1', '', '', 1, '2021-03-14 06:12:46', '2021-03-14 06:12:46'),
(685, 'po9l8hdppbaum149alapnflj8d26on3q', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/member/account/3', '', '', 7, '2021-03-14 06:38:16', '2021-03-14 07:03:28'),
(686, 'iuhuil896f07tsdq2rb8eh4lbrc5pau7', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/members/show/4', '', '', 1, '2021-03-14 07:29:17', '2021-03-14 07:29:17'),
(687, 'iuhuil896f07tsdq2rb8eh4lbrc5pau7', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/member/loanaccount/1', '', '', 6, '2021-03-14 07:29:22', '2021-03-14 07:49:36'),
(688, 'io45pampptdaeritj5pdo51f4i0g1kaf', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/member/loanaccount/9', '', '', 1, '2021-03-14 07:38:35', '2021-03-14 07:38:35'),
(689, 'io45pampptdaeritj5pdo51f4i0g1kaf', 1, 3232235880, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', 'http', '192.168.1.104', '7070', '', '', '/member/loanaccount/5', '', '', 2, '2021-03-14 07:38:50', '2021-03-14 07:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) NOT NULL,
  `scheme_holder_id` bigint(20) NOT NULL,
  `amount` double(18,2) NOT NULL,
  `date` date NOT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `after_balance` double(18,2) NOT NULL DEFAULT 0.00,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `scheme_holder_id`, `amount`, `date`, `remarks`, `after_balance`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 9, 500.00, '2021-03-14', '1st Withdraw', 4500.00, '2021-03-14 05:48:21', '2021-03-14 05:48:21', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_balances`
--
ALTER TABLE `account_balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_option_id` (`account_option_id`);

--
-- Indexes for table `account_classes`
--
ALTER TABLE `account_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_closings`
--
ALTER TABLE `account_closings`
  ADD PRIMARY KEY (`account_option_id`,`date`);

--
-- Indexes for table `account_events`
--
ALTER TABLE `account_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_option_id` (`account_option_id`);

--
-- Indexes for table `account_options`
--
ALTER TABLE `account_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_type_id` (`account_type_id`);

--
-- Indexes for table `account_types`
--
ALTER TABLE `account_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_class_id` (`account_class_id`);

--
-- Indexes for table `aid_funds`
--
ALTER TABLE `aid_funds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheme_holder_id_fiscal_year_id` (`scheme_holder_id`,`fiscal_year_id`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheme_holder_id` (`scheme_holder_id`),
  ADD KEY `account_option_id` (`account_option_id`);

--
-- Indexes for table `charge_queues`
--
ALTER TABLE `charge_queues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheme_holder_id` (`scheme_holder_id`),
  ADD KEY `account_option_id` (`account_option_id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheme_holder_id` (`scheme_holder_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fiscal_close_queue`
--
ALTER TABLE `fiscal_close_queue`
  ADD UNIQUE KEY `fiscal_year_id_scheme_holder_id` (`fiscal_year_id`,`scheme_holder_id`),
  ADD KEY `scheme_holder_id` (`scheme_holder_id`);

--
-- Indexes for table `fiscal_closings`
--
ALTER TABLE `fiscal_closings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fiscal_year_id` (`fiscal_year_id`),
  ADD KEY `scheme_holder_id` (`scheme_holder_id`);

--
-- Indexes for table `fiscal_years`
--
ALTER TABLE `fiscal_years`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `start_at` (`start_at`),
  ADD UNIQUE KEY `end_at` (`end_at`);

--
-- Indexes for table `installment_fraction`
--
ALTER TABLE `installment_fraction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheme_holder_id` (`scheme_holder_id`);

--
-- Indexes for table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheme_holder_id` (`scheme_holder_id`);

--
-- Indexes for table `interest_logs`
--
ALTER TABLE `interest_logs`
  ADD KEY `scheme_holder_id` (`scheme_holder_id`);

--
-- Indexes for table `interest_periods`
--
ALTER TABLE `interest_periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `interest_period_id` (`interest_period_id`),
  ADD KEY `scheme_holder_id` (`scheme_holder_id`);

--
-- Indexes for table `loan_balances`
--
ALTER TABLE `loan_balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_logs`
--
ALTER TABLE `loan_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheme_holder_id` (`scheme_holder_id`);

--
-- Indexes for table `loan_savings`
--
ALTER TABLE `loan_savings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheme_holder_id` (`scheme_holder_id`);

--
-- Indexes for table `loan_saving_closings`
--
ALTER TABLE `loan_saving_closings`
  ADD KEY `scheme_holder_id` (`scheme_holder_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_categories_id` (`member_categories_id`);

--
-- Indexes for table `member_categories`
--
ALTER TABLE `member_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_profiles`
--
ALTER TABLE `member_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `religion_id` (`religion_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nominees`
--
ALTER TABLE `nominees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `scheme_holder_id` (`scheme_holder_id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `priority` (`priority`);

--
-- Indexes for table `schemes`
--
ALTER TABLE `schemes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `account_option_id` (`account_option_id`);

--
-- Indexes for table `scheme_activities`
--
ALTER TABLE `scheme_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheme_holder_id` (`scheme_holder_id`);

--
-- Indexes for table `scheme_ages`
--
ALTER TABLE `scheme_ages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `scheme_holder_id` (`scheme_holder_id`);

--
-- Indexes for table `scheme_balances`
--
ALTER TABLE `scheme_balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheme_holder_id` (`scheme_holder_id`);

--
-- Indexes for table `scheme_closings`
--
ALTER TABLE `scheme_closings`
  ADD PRIMARY KEY (`scheme_holder_id`,`date`);

--
-- Indexes for table `scheme_holders`
--
ALTER TABLE `scheme_holders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheme_policy_id` (`scheme_policy_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `scheme_interests`
--
ALTER TABLE `scheme_interests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `scheme_id_interest_period_id_fiscal_years_id` (`scheme_id`,`interest_period_id`,`fiscal_years_id`),
  ADD KEY `fiscal_years_id` (`fiscal_years_id`),
  ADD KEY `interest_period_id` (`interest_period_id`),
  ADD KEY `scheme_id` (`scheme_id`);

--
-- Indexes for table `scheme_numbers`
--
ALTER TABLE `scheme_numbers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `scheme_id_last_number` (`scheme_id`,`last_number`);

--
-- Indexes for table `scheme_policy`
--
ALTER TABLE `scheme_policy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheme_id` (`scheme_id`),
  ADD KEY `member_category_id` (`member_category_id`),
  ADD KEY `period_id` (`period_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ip_address` (`ip_address`),
  ADD KEY `host_path` (`host`,`path`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scheme_holder_id` (`scheme_holder_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_balances`
--
ALTER TABLE `account_balances`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `account_classes`
--
ALTER TABLE `account_classes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `account_events`
--
ALTER TABLE `account_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_options`
--
ALTER TABLE `account_options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `account_types`
--
ALTER TABLE `account_types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `aid_funds`
--
ALTER TABLE `aid_funds`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `charge_queues`
--
ALTER TABLE `charge_queues`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fiscal_closings`
--
ALTER TABLE `fiscal_closings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fiscal_years`
--
ALTER TABLE `fiscal_years`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `installment_fraction`
--
ALTER TABLE `installment_fraction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `interest_periods`
--
ALTER TABLE `interest_periods`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `loan_balances`
--
ALTER TABLE `loan_balances`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `loan_logs`
--
ALTER TABLE `loan_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `loan_savings`
--
ALTER TABLE `loan_savings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member_categories`
--
ALTER TABLE `member_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `member_profiles`
--
ALTER TABLE `member_profiles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nominees`
--
ALTER TABLE `nominees`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schemes`
--
ALTER TABLE `schemes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scheme_activities`
--
ALTER TABLE `scheme_activities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `scheme_ages`
--
ALTER TABLE `scheme_ages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `scheme_balances`
--
ALTER TABLE `scheme_balances`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scheme_holders`
--
ALTER TABLE `scheme_holders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `scheme_interests`
--
ALTER TABLE `scheme_interests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `scheme_numbers`
--
ALTER TABLE `scheme_numbers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scheme_policy`
--
ALTER TABLE `scheme_policy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=690;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_balances`
--
ALTER TABLE `account_balances`
  ADD CONSTRAINT `account_balances_account_option_id_foreign` FOREIGN KEY (`account_option_id`) REFERENCES `account_options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `account_closings`
--
ALTER TABLE `account_closings`
  ADD CONSTRAINT `account_closings_account_option_id_foreign` FOREIGN KEY (`account_option_id`) REFERENCES `account_options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `account_events`
--
ALTER TABLE `account_events`
  ADD CONSTRAINT `account_events_account_option_id_foreign` FOREIGN KEY (`account_option_id`) REFERENCES `account_options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `account_options`
--
ALTER TABLE `account_options`
  ADD CONSTRAINT `account_options_account_type_id_foreign` FOREIGN KEY (`account_type_id`) REFERENCES `account_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `account_types`
--
ALTER TABLE `account_types`
  ADD CONSTRAINT `account_types_account_class_id_foreign` FOREIGN KEY (`account_class_id`) REFERENCES `account_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `aid_funds`
--
ALTER TABLE `aid_funds`
  ADD CONSTRAINT `aid_funds_scheme_holder_id_foreign` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `charges`
--
ALTER TABLE `charges`
  ADD CONSTRAINT `charges_account_option_id_foreign` FOREIGN KEY (`account_option_id`) REFERENCES `account_options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `charges_scheme_holder_id_foreign` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `charge_queues`
--
ALTER TABLE `charge_queues`
  ADD CONSTRAINT `charge_queues_account_option_id_foreign` FOREIGN KEY (`account_option_id`) REFERENCES `account_options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `charge_queues_scheme_holder_id_foreign` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `deposits_scheme_holder_id_foreign` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fiscal_close_queue`
--
ALTER TABLE `fiscal_close_queue`
  ADD CONSTRAINT `fiscal_close_queue_fiscal_year_id_foreign` FOREIGN KEY (`fiscal_year_id`) REFERENCES `fiscal_years` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fiscal_close_queue_scheme_holder_id_foreign` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fiscal_closings`
--
ALTER TABLE `fiscal_closings`
  ADD CONSTRAINT `fiscal_closings_fiscal_year_id_foreign` FOREIGN KEY (`fiscal_year_id`) REFERENCES `fiscal_years` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fiscal_closings_scheme_holder_id_foreign` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `installment_fraction`
--
ALTER TABLE `installment_fraction`
  ADD CONSTRAINT `installment_fraction_ibfk_1` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `interests`
--
ALTER TABLE `interests`
  ADD CONSTRAINT `interests_scheme_holder_id_foreign` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `interest_logs`
--
ALTER TABLE `interest_logs`
  ADD CONSTRAINT `interest_logs_scheme_holder_id_foreign` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_ibfk_1` FOREIGN KEY (`interest_period_id`) REFERENCES `scheme_interests` (`interest_period_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `loans_ibfk_2` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loan_logs`
--
ALTER TABLE `loan_logs`
  ADD CONSTRAINT `loan_logs_ibfk_1` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loan_savings`
--
ALTER TABLE `loan_savings`
  ADD CONSTRAINT `loan_savings_ibfk_1` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loan_saving_closings`
--
ALTER TABLE `loan_saving_closings`
  ADD CONSTRAINT `loan_saving_closings_ibfk_1` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_member_categories_id_foreign` FOREIGN KEY (`member_categories_id`) REFERENCES `member_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `member_profiles`
--
ALTER TABLE `member_profiles`
  ADD CONSTRAINT `member_profiles_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `member_profiles_religion_id_foreign` FOREIGN KEY (`religion_id`) REFERENCES `religions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nominees`
--
ALTER TABLE `nominees`
  ADD CONSTRAINT `nominees_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nominees_scheme_holder_id_foreign` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `schemes`
--
ALTER TABLE `schemes`
  ADD CONSTRAINT `schemes_account_option_id_foreign` FOREIGN KEY (`account_option_id`) REFERENCES `account_options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scheme_activities`
--
ALTER TABLE `scheme_activities`
  ADD CONSTRAINT `scheme_activities_scheme_holder_id_foreign` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scheme_ages`
--
ALTER TABLE `scheme_ages`
  ADD CONSTRAINT `scheme_ages_scheme_holder_id_foreign` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scheme_balances`
--
ALTER TABLE `scheme_balances`
  ADD CONSTRAINT `scheme_balances_scheme_holder_id_foreign` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scheme_closings`
--
ALTER TABLE `scheme_closings`
  ADD CONSTRAINT `scheme_closings_scheme_holder_id_foreign` FOREIGN KEY (`scheme_holder_id`) REFERENCES `scheme_holders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scheme_interests`
--
ALTER TABLE `scheme_interests`
  ADD CONSTRAINT `scheme_interests_fiscal_years_id_foreign` FOREIGN KEY (`fiscal_years_id`) REFERENCES `fiscal_years` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scheme_interests_interest_period_id_foreign` FOREIGN KEY (`interest_period_id`) REFERENCES `interest_periods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scheme_interests_scheme_id_foreign` FOREIGN KEY (`scheme_id`) REFERENCES `schemes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
