-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 04:05 PM
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
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_group`
--

CREATE TABLE `blood_group` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_group`
--

INSERT INTO `blood_group` (`id`, `name`, `description`) VALUES
(1, '{A+)', 'A RhD positive'),
(2, '(A-)', 'A RhD negative'),
(3, '(B+)', 'B RhD positive'),
(4, '(B-)', 'B RhD negative'),
(5, '(O+)', 'O RhD positive '),
(6, '(O-)', 'O RhD negative '),
(7, '(AB+)', 'AB RhD positive '),
(8, '(AB-)', 'AB RhD negative ');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`) VALUES
(1, 'ACI Limited'),
(2, 'ACME Laboratories Ltd.'),
(3, 'Ad-din Pharmaceuticals Ltd.'),
(4, 'Aexim Pharmaceuticals Ltd.'),
(5, 'Al-Madina Pharmaceuticals Ltd.'),
(6, 'Alco Pharma Ltd.'),
(7, 'Alkad Laboratories'),
(8, 'Allied Pharmaceuticals Ltd.'),
(9, 'Ambee Pharmaceuticals Ltd.'),
(10, 'Amico Laboratories Ltd.'),
(11, 'Amulet Pharmaceuticals Ltd.'),
(12, 'APC Pharma Ltd.'),
(13, 'Apex Pharmaceuticals Ltd.'),
(14, 'Apollo Pharmaceutical Ltd.'),
(15, 'Arges Life Science Limited'),
(16, 'Aristopharma Ltd.'),
(17, 'Asiatic Laboratories Ltd.'),
(18, 'Astra Biopharmaceuticals Ltd.'),
(19, 'Aztec Pharmaceuticals Ltd.'),
(20, 'Bangladesh Immunity Co'),
(21, 'Beacon Pharmaceuticals Ltd.'),
(22, 'Belsen Pharmaceuticals Ltd.'),
(23, 'Bengal drugs Ltd.'),
(24, 'Benham Pharmaceuticals Ltd.'),
(25, 'Beximco Pharmaceuticals Ltd.'),
(26, 'Biogene Pharma Ltd.'),
(27, 'Biopharma Laboratories Ltd.'),
(28, 'BioRx'),
(29, 'BOTS Pvt. Limited'),
(30, 'Bristol Pharmaceuticals Ltd.'),
(31, 'Centeon Pharma Ltd.'),
(32, 'Central Pharmaceuticals Ltd.'),
(33, 'Chemist Laboratories Ltd.'),
(34, 'City Overseas Ltd.'),
(35, 'Concord Pharmaceuticals Ltd.'),
(36, 'Cosmic Pharma Ltd.'),
(37, 'Cosmo Pharma Ltd.'),
(38, 'Credence Pharmaceuticals Ltd.'),
(39, 'Crystal Pharmaceuticals Ltd.'),
(40, 'D16 Pharma & Biotec'),
(41, 'Decent Pharma Laboratories Ltd.'),
(42, 'Delta Pharma Ltd.'),
(43, 'Desh Pharmaceuticals Ltd.'),
(44, 'Doctor TIMS Pharmaceuticals Ltd.'),
(45, 'Doctor’s Chemical Works Ltd.'),
(46, 'Drug International Ltd.'),
(47, 'Eastern Pharmaceuticals Ltd.'),
(48, 'Edruc Ltd.'),
(49, 'Elixir Pharmaceuticals Ltd.'),
(50, 'Eskayef Pharmaceuticals Ltd.'),
(51, 'Ethical Drug Ltd.'),
(52, 'Euro Pharma Ltd.'),
(53, 'Everest Pharmaceuticals Ltd.'),
(54, 'Fabrique en France'),
(55, 'FnF Pharmaceuticals Ltd.'),
(56, 'Gaco Pharmaceuticals Ltd.'),
(57, 'General Pharmaceuticals Ltd.'),
(58, 'Genvio Pharma Ltd.'),
(59, 'Get Well Ltd.'),
(60, 'GlaxoSmithKline'),
(61, 'Globe Pharmaceuticals Ltd.'),
(62, 'Globex Pharmaceuticals Ltd.'),
(63, 'Gonoshasthaya Pharma Ltd.'),
(64, 'Goodman Pharmaceuticals Ltd.'),
(65, 'Greenland Pharmaceuticals Ltd.'),
(66, 'Guardian Healthcare Ltd.'),
(67, 'Hallmark Pharmaceuticals Ltd.'),
(68, 'Healthcare Pharmaceuticals Ltd.'),
(69, 'Hudson Pharmaceuticals Ltd.'),
(70, 'Ibn Sina Pharmaceuticals Ltd.'),
(71, 'Incepta Pharmaceuticals Ltd.'),
(72, 'Indo Bangla Pharmaceutical'),
(73, 'Innova Pharma (Albion)'),
(74, 'Institute of Public Health (IPH)'),
(75, 'International Agencies (Bd.) Limited'),
(76, 'Janata Traders'),
(77, 'Jayson Pharma Ltd.'),
(78, 'Julphar Bangladesh Ltd.'),
(79, 'Kawsar Chemicals'),
(80, 'Kemiko Pharmaceuticals Ltd.'),
(81, 'Kumudini Pharma Ltd.'),
(82, 'Labaid Pharma Ltd.'),
(83, 'Legends Pharma'),
(84, 'Leon Pharmaceuticals Ltd.'),
(85, 'Libra Infusions Ltd.'),
(86, 'Libra Pharmaceuticls Ltd.'),
(87, 'Linde Bangladesh Ltd.'),
(88, 'Marie Stopes Bangladesh'),
(89, 'Marker Pharma Ltd.'),
(90, 'Marksman Pharmaceuticals Ltd.'),
(91, 'Medicon Pharmaceuticals Ltd.'),
(92, 'Medimet Pharmaceuticals Ltd.'),
(93, 'MedRx Life Science Ltd.'),
(94, 'Millat Pharmaceuticals Ltd.'),
(95, 'Modern Pharmaceuticals Ltd.'),
(96, 'Momotaz Pharmaceuticals Ltd.'),
(97, 'Monicopharma Ltd.'),
(98, 'MST Pharma'),
(99, 'Mundipharma (BD) Pvt. Ltd.'),
(100, 'Mystic Pharmaceuticals Ltd.'),
(101, 'Naafco Pharma Ltd.'),
(102, 'Navana Pharmaceuticals Ltd.'),
(103, 'Nipa Pharmaceuticals Ltd.'),
(104, 'NIPRO JMI Pharma Ltd.'),
(105, 'Novartis (Bangladesh) Ltd.'),
(106, 'Novelta Bestway Pharmaceuticals Ltd.'),
(107, 'Novo Healthcare and Pharma Ltd.'),
(108, 'Novo Nordisk'),
(109, 'Novus Pharmaceuticals Ltd.'),
(110, 'Nuvista Pharma Ltd.'),
(111, 'One Pharma Ltd.'),
(112, 'Opso Saline Ltd.'),
(113, 'Opsonin Pharma Ltd.'),
(114, 'Orbit Pharmaceuticals Ltd.'),
(115, 'Organic Health Care'),
(116, 'Orion Infusion Ltd.'),
(117, 'Orion Pharma Ltd.'),
(118, 'Oyster Pharmaceuticals Ltd.'),
(119, 'Pacific Pharmaceuticals Ltd.'),
(120, 'Peoples Pharma Ltd.'),
(121, 'Pfizer'),
(122, 'Pharmacil Limited'),
(123, 'Pharmadesh Laboratories Ltd.'),
(124, 'Pharmasia Limited'),
(125, 'Pharmik Laboratories Ltd.'),
(126, 'Phoenix Chemical Laboratory'),
(127, 'Popular Pharmaceuticals Ltd.'),
(128, 'Premier Pharmaceuticals Ltd.'),
(129, 'Prime Pharmaceuticals Ltd.'),
(130, 'Quality Pharmaceuticals Ltd.'),
(131, 'Radiant Pharmaceuticals Ltd.'),
(132, 'Rangs Pharmaceuticals Ltd.'),
(133, 'Reckitt & Benckiser Bangladesh Ltd.'),
(134, 'Reliance Pharmaceuticals Ltd.'),
(135, 'Reman Drug Laboratories Ltd.'),
(136, 'Renata Limited'),
(137, 'Rephco Pharmaceuticals Ltd.'),
(138, 'RN Pharmaceuticals'),
(139, 'Roche Bangladesh Ltd.'),
(140, 'S.N. Pharmaceutical Ltd.'),
(141, 'Salton Pharmaceuticals Ltd.'),
(142, 'SANDOZ (A Novartis Division)'),
(143, 'Sanofi Bangladesh Ltd.'),
(144, 'Seba Laboratories Ltd.'),
(145, 'Seema Pharmaceuticals Ltd.'),
(146, 'Servier Bangladesh Operation'),
(147, 'Sharif Pharmaceuticals Ltd.'),
(148, 'Silco Pharmaceutical Ltd.'),
(149, 'Silva Pharmaceuticals Ltd.'),
(150, 'Skylab Pharmaceuticals Ltd.'),
(151, 'Social Marketing Company'),
(152, 'Somatec Pharmaceuticals Ltd.'),
(153, 'Sonear Laboratories Ltd.'),
(154, 'Square Pharmaceuticals Ltd.'),
(155, 'Sun Pharmaceutical Ltd.'),
(156, 'Sunman-Birdem Pharma Ltd.'),
(157, 'Supreme Pharmaceutical Ltd.'),
(158, 'Syntho Laboratories Ltd.'),
(159, 'Team Pharmaceuticals Ltd.'),
(160, 'Techno Drugs Ltd.'),
(161, 'The White Horse Pharma'),
(162, 'Therapeutics Bangladesh Ltd.'),
(163, 'Ultra Pharma Ltd.'),
(164, 'Unimed Unihealth MFG. Ltd.'),
(165, 'Unique Pharmaceuticals Ltd.'),
(166, 'United Pharmaceuticals Ltd.'),
(167, 'Veritas Pharmaceuticals Ltd.'),
(168, 'Virgo Pharmaceuticals Ltd.'),
(169, 'ZAS Corporation'),
(170, 'Zenith Pharmaceuticals Ltd.'),
(171, 'Ziska Pharmaceuticals Ltd.');

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `business_type_id` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_owner`
--

CREATE TABLE `business_owner` (
  `id` bigint(20) NOT NULL,
  `business_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `business_type`
--

CREATE TABLE `business_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_type`
--

INSERT INTO `business_type` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Pharmacy', 'This is  a Pharmacy.', '2021-02-20 12:52:29', '2021-03-07 13:36:19', NULL),
(2, 'Godown', 'This is a godown.', '2021-03-07 13:36:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` bigint(20) NOT NULL,
  `name` varchar(52) NOT NULL,
  `nationality` varchar(39) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `nationality`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Afghanistan', 'Afghan', '2020-11-23 19:49:55', '2020-11-23 19:49:55', NULL),
(2, 'Albania', 'Albanian', '2020-11-23 19:49:55', '2020-11-23 19:49:55', NULL),
(3, 'Antarctica', 'Antarctic', '2020-11-23 19:49:55', '2020-11-23 19:49:55', NULL),
(4, 'Algeria', 'Algerian', '2020-11-23 19:49:55', '2020-11-23 19:49:55', NULL),
(5, 'American Samoa', 'American Samoan', '2020-11-23 19:49:55', '2020-11-23 19:49:55', NULL),
(6, 'Andorra', 'Andorran', '2020-11-23 19:49:55', '2020-11-23 19:49:55', NULL),
(7, 'Angola', 'Angolan', '2020-11-23 19:49:55', '2020-11-23 19:49:55', NULL),
(8, 'Antigua and Barbuda', 'Antiguan or Barbudan', '2020-11-23 19:49:55', '2020-11-23 19:49:55', NULL),
(9, 'Azerbaijan', 'Azerbaijani, Azeri', '2020-11-23 19:49:55', '2020-11-23 19:49:55', NULL),
(10, 'Argentina', 'Argentine', '2020-11-23 19:49:55', '2020-11-23 19:49:55', NULL),
(11, 'Australia', 'Australian', '2020-11-23 19:49:55', '2020-11-23 19:49:55', NULL),
(12, 'Austria', 'Austrian', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(13, 'Bahamas', 'Bahamian', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(14, 'Bahrain', 'Bahraini', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(15, 'Bangladesh', 'Bangladeshi', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(16, 'Armenia', 'Armenian', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(17, 'Barbados', 'Barbadian', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(18, 'Belgium', 'Belgian', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(19, 'Bermuda', 'Bermudian, Bermudan', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(20, 'Bhutan', 'Bhutanese', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(21, 'Bolivia (Plurinational State of)', 'Bolivian', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(22, 'Bosnia and Herzegovina', 'Bosnian or Herzegovinian', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(23, 'Botswana', 'Motswana, Botswanan', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(24, 'Bouvet Island', 'Bouvet Island', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(25, 'Brazil', 'Brazilian', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(26, 'Belize', 'Belizean', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(27, 'British Indian Ocean Territory', 'BIOT', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(28, 'Solomon Islands', 'Solomon Island', '2020-11-23 19:49:56', '2020-11-23 19:49:56', NULL),
(29, 'Virgin Islands (British)', 'British Virgin Island', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(30, 'Brunei Darussalam', 'Bruneian', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(31, 'Bulgaria', 'Bulgarian', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(32, 'Myanmar', 'Burmese', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(33, 'Burundi', 'Burundian', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(34, 'Belarus', 'Belarusian', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(35, 'Cambodia', 'Cambodian', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(36, 'Cameroon', 'Cameroonian', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(37, 'Canada', 'Canadian', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(38, 'Cabo Verde', 'Cabo Verdean', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(39, 'Cayman Islands', 'Caymanian', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(40, 'Central African Republic', 'Central African', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(41, 'Sri Lanka', 'Sri Lankan', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(42, 'Chad', 'Chadian', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(43, 'Chile', 'Chilean', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(44, 'China', 'Chinese', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(45, 'Taiwan, Province of China', 'Chinese, Taiwanese', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(46, 'Christmas Island', 'Christmas Island', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(47, 'Cocos (Keeling) Islands', 'Cocos Island', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(48, 'Colombia', 'Colombian', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(49, 'Comoros', 'Comoran, Comorian', '2020-11-23 19:49:57', '2020-11-23 19:49:57', NULL),
(50, 'Mayotte', 'Mahoran', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(51, 'Congo (Republic of the)', 'Congolese', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(52, 'Congo (Democratic Republic of the)', 'Congolese', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(53, 'Cook Islands', 'Cook Island', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(54, 'Costa Rica', 'Costa Rican', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(55, 'Croatia', 'Croatian', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(56, 'Cuba', 'Cuban', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(57, 'Cyprus', 'Cypriot', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(58, 'Czech Republic', 'Czech', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(59, 'Benin', 'Beninese, Beninois', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(60, 'Denmark', 'Danish', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(61, 'Dominica', 'Dominican', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(62, 'Dominican Republic', 'Dominican', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(63, 'Ecuador', 'Ecuadorian', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(64, 'El Salvador', 'Salvadoran', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(65, 'Equatorial Guinea', 'Equatorial Guinean, Equatoguinean', '2020-11-23 19:49:58', '2020-11-23 19:49:58', NULL),
(66, 'Ethiopia', 'Ethiopian', '2020-11-23 19:49:59', '2020-11-23 19:49:59', NULL),
(67, 'Eritrea', 'Eritrean', '2020-11-23 19:49:59', '2020-11-23 19:49:59', NULL),
(68, 'Estonia', 'Estonian', '2020-11-23 19:49:59', '2020-11-23 19:49:59', NULL),
(69, 'Faroe Islands', 'Faroese', '2020-11-23 19:49:59', '2020-11-23 19:49:59', NULL),
(70, 'Falkland Islands (Malvinas)', 'Falkland Island', '2020-11-23 19:49:59', '2020-11-23 19:49:59', NULL),
(71, 'South Georgia and the South Sandwich Islands', 'South Georgia or South Sandwich Islands', '2020-11-23 19:49:59', '2020-11-23 19:49:59', NULL),
(72, 'Fiji', 'Fijian', '2020-11-23 19:49:59', '2020-11-23 19:49:59', NULL),
(73, 'Finland', 'Finnish', '2020-11-23 19:49:59', '2020-11-23 19:49:59', NULL),
(74, 'Åland Islands', 'Åland Island', '2020-11-23 19:49:59', '2020-11-23 19:49:59', NULL),
(75, 'France', 'French', '2020-11-23 19:49:59', '2020-11-23 19:49:59', NULL),
(76, 'French Guiana', 'French Guianese', '2020-11-23 19:49:59', '2020-11-23 19:49:59', NULL),
(77, 'French Polynesia', 'French Polynesian', '2020-11-23 19:49:59', '2020-11-23 19:49:59', NULL),
(78, 'French Southern Territories', 'French Southern Territories', '2020-11-23 19:49:59', '2020-11-23 19:49:59', NULL),
(79, 'Djibouti', 'Djiboutian', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(80, 'Gabon', 'Gabonese', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(81, 'Georgia', 'Georgian', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(82, 'Gambia', 'Gambian', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(83, 'Palestine, State of', 'Palestinian', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(84, 'Germany', 'German', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(85, 'Ghana', 'Ghanaian', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(86, 'Gibraltar', 'Gibraltar', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(87, 'Kiribati', 'I-Kiribati', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(88, 'Greece', 'Greek, Hellenic', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(89, 'Greenland', 'Greenlandic', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(90, 'Grenada', 'Grenadian', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(91, 'Guadeloupe', 'Guadeloupe', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(92, 'Guam', 'Guamanian, Guambat', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(93, 'Guatemala', 'Guatemalan', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(94, 'Guinea', 'Guinean', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(95, 'Guyana', 'Guyanese', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(96, 'Haiti', 'Haitian', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(97, 'Heard Island and McDonald Islands', 'Heard Island or McDonald Islands', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(98, 'Vatican City State', 'Vatican', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(99, 'Honduras', 'Honduran', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(100, 'Hong Kong', 'Hong Kong, Hong Kongese', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(101, 'Hungary', 'Hungarian, Magyar', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(102, 'Iceland', 'Icelandic', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(103, 'India', 'Indian', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(104, 'Indonesia', 'Indonesian', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(105, 'Iran', 'Iranian, Persian', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(106, 'Iraq', 'Iraqi', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(107, 'Ireland', 'Irish', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(108, 'Israel', 'Israeli', '2020-11-23 19:50:00', '2020-11-23 19:50:00', NULL),
(109, 'Italy', 'Italian', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(110, 'Ivory Coast', 'Ivorian', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(111, 'Jamaica', 'Jamaican', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(112, 'Japan', 'Japanese', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(113, 'Kazakhstan', 'Kazakhstani, Kazakh', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(114, 'Jordan', 'Jordanian', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(115, 'Kenya', 'Kenyan', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(116, 'Korea (Democratic People\'s Republic of)', 'North Korean', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(117, 'Korea (Republic of)', 'South Korean', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(118, 'Kuwait', 'Kuwaiti', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(119, 'Kyrgyzstan', 'Kyrgyzstani, Kyrgyz, Kirgiz, Kirghiz', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(120, 'Lao People\'s Democratic Republic', 'Lao, Laotian', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(121, 'Lebanon', 'Lebanese', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(122, 'Lesotho', 'Basotho', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(123, 'Latvia', 'Latvian', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(124, 'Liberia', 'Liberian', '2020-11-23 19:50:01', '2020-11-23 19:50:01', NULL),
(125, 'Libya', 'Libyan', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(126, 'Liechtenstein', 'Liechtenstein', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(127, 'Lithuania', 'Lithuanian', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(128, 'Luxembourg', 'Luxembourg, Luxembourgish', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(129, 'Macao', 'Macanese, Chinese', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(130, 'Madagascar', 'Malagasy', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(131, 'Malawi', 'Malawian', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(132, 'Malaysia', 'Malaysian', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(133, 'Maldives', 'Maldivian', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(134, 'Mali', 'Malian, Malinese', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(135, 'Malta', 'Maltese', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(136, 'Martinique', 'Martiniquais, Martinican', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(137, 'Mauritania', 'Mauritanian', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(138, 'Mauritius', 'Mauritian', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(139, 'Mexico', 'Mexican', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(140, 'Monaco', 'Monégasque, Monacan', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(141, 'Mongolia', 'Mongolian', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(142, 'Moldova (Republic of)', 'Moldovan', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(143, 'Montenegro', 'Montenegrin', '2020-11-23 19:50:02', '2020-11-23 19:50:02', NULL),
(144, 'Montserrat', 'Montserratian', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(145, 'Morocco', 'Moroccan', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(146, 'Mozambique', 'Mozambican', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(147, 'Oman', 'Omani', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(148, 'Namibia', 'Namibian', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(149, 'Nauru', 'Nauruan', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(150, 'Nepal', 'Nepali, Nepalese', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(151, 'Netherlands', 'Dutch, Netherlandic', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(152, 'Curaçao', 'Curaçaoan', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(153, 'Aruba', 'Aruban', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(154, 'Sint Maarten (Dutch part)', 'Sint Maarten', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(155, 'Bonaire, Sint Eustatius and Saba', 'Bonaire', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(156, 'New Caledonia', 'New Caledonian', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(157, 'Vanuatu', 'Ni-Vanuatu, Vanuatuan', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(158, 'New Zealand', 'New Zealand, NZ', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(159, 'Nicaragua', 'Nicaraguan', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(160, 'Niger', 'Nigerien', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(161, 'Nigeria', 'Nigerian', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(162, 'Niue', 'Niuean', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(163, 'Norfolk Island', 'Norfolk Island', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(164, 'Norway', 'Norwegian', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(165, 'Northern Mariana Islands', 'Northern Marianan', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(166, 'United States Minor Outlying Islands', 'American', '2020-11-23 19:50:03', '2020-11-23 19:50:03', NULL),
(167, 'Micronesia (Federated States of)', 'Micronesian', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(168, 'Marshall Islands', 'Marshallese', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(169, 'Palau', 'Palauan', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(170, 'Pakistan', 'Pakistani', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(171, 'Panama', 'Panamanian', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(172, 'Papua New Guinea', 'Papua New Guinean, Papuan', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(173, 'Paraguay', 'Paraguayan', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(174, 'Peru', 'Peruvian', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(175, 'Philippines', 'Philippine, Filipino', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(176, 'Pitcairn', 'Pitcairn Island', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(177, 'Poland', 'Polish', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(178, 'Portugal', 'Portuguese', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(179, 'Guinea-Bissau', 'Bissau-Guinean', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(180, 'Timor-Leste', 'Timorese', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(181, 'Puerto Rico', 'Puerto Rican', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(182, 'Qatar', 'Qatari', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(183, 'Réunion', 'Réunionese, Réunionnais', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(184, 'Romania', 'Romanian', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(185, 'Russian Federation', 'Russian', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(186, 'Rwanda', 'Rwandan', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(187, 'Saint Barthélemy', 'Barthélemois', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(188, 'Saint Helena, Ascension and Tristan da Cunha', 'Saint Helenian', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(189, 'Saint Kitts and Nevis', 'Kittitian or Nevisian', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(190, 'Anguilla', 'Anguillan', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(191, 'Saint Lucia', 'Saint Lucian', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(192, 'Saint Martin (French part)', 'Saint-Martinoise', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(193, 'Saint Pierre and Miquelon', 'Saint-Pierrais or Miquelonnais', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(194, 'Saint Vincent and the Grenadines', 'Saint Vincentian, Vincentian', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(195, 'San Marino', 'Sammarinese', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(196, 'Sao Tome and Principe', 'São Toméan', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(197, 'Saudi Arabia', 'Saudi, Saudi Arabian', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(198, 'Senegal', 'Senegalese', '2020-11-23 19:50:04', '2020-11-23 19:50:04', NULL),
(199, 'Serbia', 'Serbian', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(200, 'Seychelles', 'Seychellois', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(201, 'Sierra Leone', 'Sierra Leonean', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(202, 'Singapore', 'Singaporean', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(203, 'Slovakia', 'Slovak', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(204, 'Vietnam', 'Vietnamese', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(205, 'Slovenia', 'Slovenian, Slovene', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(206, 'Somalia', 'Somali, Somalian', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(207, 'South Africa', 'South African', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(208, 'Zimbabwe', 'Zimbabwean', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(209, 'Spain', 'Spanish', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(210, 'South Sudan', 'South Sudanese', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(211, 'Sudan', 'Sudanese', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(212, 'Western Sahara', 'Sahrawi, Sahrawian, Sahraouian', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(213, 'Suriname', 'Surinamese', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(214, 'Svalbard and Jan Mayen', 'Svalbard', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(215, 'Swaziland', 'Swazi', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(216, 'Sweden', 'Swedish', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(217, 'Switzerland', 'Swiss', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(218, 'Syrian Arab Republic', 'Syrian', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(219, 'Tajikistan', 'Tajikistani', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(220, 'Thailand', 'Thai', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(221, 'Togo', 'Togolese', '2020-11-23 19:50:05', '2020-11-23 19:50:05', NULL),
(222, 'Tokelau', 'Tokelauan', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(223, 'Tonga', 'Tongan', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(224, 'Trinidad and Tobago', 'Trinidadian or Tobagonian', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(225, 'United Arab Emirates', 'Emirati, Emirian, Emiri', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(226, 'Tunisia', 'Tunisian', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(227, 'Turkey', 'Turkish', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(228, 'Turkmenistan', 'Turkmen', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(229, 'Turks and Caicos Islands', 'Turks and Caicos Island', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(230, 'Tuvalu', 'Tuvaluan', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(231, 'Uganda', 'Ugandan', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(232, 'Ukraine', 'Ukrainian', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(233, 'Macedonia (the former Yugoslav Republic of)', 'Macedonian', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(234, 'Egypt', 'Egyptian', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(235, 'United Kingdom of Great Britain and Northern Ireland', 'British, UK', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(236, 'Guernsey', 'Channel Island', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(237, 'Jersey', 'Channel Island', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(238, 'Isle of Man', 'Manx', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(239, 'Tanzania, United Republic of', 'Tanzanian', '2020-11-23 19:50:06', '2020-11-23 19:50:06', NULL),
(240, 'United States of America', 'American', '2020-11-23 19:50:07', '2020-11-23 19:50:07', NULL),
(241, 'Virgin Islands (U.S.)', 'U.S. Virgin Island', '2020-11-23 19:50:07', '2020-11-23 19:50:07', NULL),
(242, 'Burkina Faso', 'Burkinabé', '2020-11-23 19:50:07', '2020-11-23 19:50:07', NULL),
(243, 'Uruguay', 'Uruguayan', '2020-11-23 19:50:07', '2020-11-23 19:50:07', NULL),
(244, 'Uzbekistan', 'Uzbekistani, Uzbek', '2020-11-23 19:50:07', '2020-11-23 19:50:07', NULL),
(245, 'Venezuela (Bolivarian Republic of)', 'Venezuelan', '2020-11-23 19:50:07', '2020-11-23 19:50:07', NULL),
(246, 'Wallis and Futuna', 'Wallis and Futuna, Wallisian or Futunan', '2020-11-23 19:50:07', '2020-11-23 19:50:07', NULL),
(247, 'Samoa', 'Samoan', '2020-11-23 19:50:07', '2020-11-23 19:50:07', NULL),
(248, 'Yemen', 'Yemeni', '2020-11-23 19:50:07', '2020-11-23 19:50:07', NULL),
(249, 'Zambia', 'Zambian', '2020-11-23 19:50:07', '2020-11-23 19:50:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `division_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`, `division_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Joypurhat District', 1, '2020-11-11 12:25:10', '2020-11-11 12:25:10', NULL),
(2, 'Bogura District', 1, '2020-11-11 12:25:10', '2020-11-11 12:25:10', NULL),
(3, 'Naogaon District', 1, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(4, 'Natore District', 1, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(5, 'NawabganjDistrict', 1, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(6, 'Pabna District', 1, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(7, 'Sirajganj District', 1, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(8, 'Rajshahi District', 1, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(9, 'DinajpurDistrict', 2, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(10, 'Gaibandha District', 2, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(11, 'Kurigram District', 2, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(12, 'Lalmonirhat District', 2, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(13, 'Nilphamari District', 2, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(14, 'Panchagarh District', 2, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(15, 'Rangpur District', 2, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(16, 'Thakurgaon District', 2, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(17, 'Netrokona District', 3, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(18, 'Sherpur District', 3, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(19, 'Jamalpur District', 3, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(20, 'Mymensingh District', 3, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(21, 'Barguna District', 4, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(22, 'BarishalDistrict', 4, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(23, 'Bhola District', 4, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(24, 'Jhalokati District', 4, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(25, 'Patuakhali District', 4, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(26, 'Pirojpur District', 4, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(27, 'Bandarban District', 5, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(28, 'Brahmanbaria District', 5, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(29, 'Chandpur District', 5, '2020-11-11 12:25:11', '2020-11-11 12:25:11', NULL),
(30, 'ChattogramDistrict', 5, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(31, 'CumillaDistrict', 5, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(32, 'Cox\'s Bazar District', 5, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(33, 'Feni District', 5, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(34, 'Khagrachhari District', 5, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(35, 'Lakshmipur District', 5, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(36, 'Noakhali District', 5, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(37, 'RangamatiDistrict', 5, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(38, 'Dhaka District', 6, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(39, 'Gazipur District', 6, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(40, 'GopalganjDistrict', 6, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(41, 'Kishoreganj District', 6, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(42, 'Madaripur District', 6, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(43, 'Manikganj District', 6, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(44, 'Munshiganj District', 6, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(45, 'Narayanganj District', 6, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(46, 'Rajbari District', 6, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(47, 'Shariatpur District', 6, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(48, 'Faridpur District', 6, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(49, 'Tangail District', 6, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(50, 'Narsingdi District', 6, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(51, 'Bagerhat District', 7, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(52, 'Chuadanga District', 7, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(53, 'JashoreDistrict', 7, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(54, 'JhenaidaDistrict', 7, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(55, 'Khulna District', 7, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(56, 'Kushtia District', 7, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(57, 'Magura District', 7, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(58, 'Meherpur District', 7, '2020-11-11 12:25:12', '2020-11-11 12:25:12', NULL),
(59, 'Narail District', 7, '2020-11-11 12:25:13', '2020-11-11 12:25:13', NULL),
(60, 'Satkhira District', 7, '2020-11-11 12:25:13', '2020-11-11 12:25:13', NULL),
(61, 'Habiganj District', 8, '2020-11-11 12:25:13', '2020-11-11 12:25:13', NULL),
(62, 'Moulvibazar District', 8, '2020-11-11 12:25:13', '2020-11-11 12:25:13', NULL),
(63, 'Sunamganj District', 8, '2020-11-11 12:25:13', '2020-11-11 12:25:13', NULL),
(64, 'Sylhet District', 8, '2020-11-11 12:25:13', '2020-11-11 12:25:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_patient`
--

CREATE TABLE `doctor_patient` (
  `id` bigint(20) NOT NULL,
  `doctor_id` bigint(20) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_patient`
--

INSERT INTO `doctor_patient` (`id`, `doctor_id`, `patient_id`, `created_at`, `deleted_at`) VALUES
(1, 5, 3, '2021-04-15 17:43:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Male', '2021-03-16 15:55:26', '2021-03-16 15:55:26', NULL),
(2, 'Female', '2021-03-16 15:55:26', '2021-03-16 15:55:26', NULL),
(3, 'Other', '2021-03-16 15:55:26', '2021-03-16 15:55:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `generic`
--

CREATE TABLE `generic` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `generic`
--

INSERT INTO `generic` (`id`, `name`) VALUES
(1, 'Aceclofenac'),
(2, 'Acetylcysteine USP'),
(3, 'Aciclovir'),
(4, 'Aciclovir BP 5% & Hydrocortisone BP 1%'),
(5, 'Acyclovir USP'),
(6, 'Adapalene'),
(7, 'Adapalene+Benzoyl peroxide'),
(8, 'Adefovir Dipivoxil'),
(9, 'Albendazole'),
(10, 'Allopurinol'),
(11, 'Allylestrenol'),
(12, 'Ambrisentan'),
(13, 'Ambroxol'),
(14, 'Amikacin Sulfate USP'),
(15, 'Amitriptyline HCl'),
(16, 'Amlexanox'),
(17, 'Amlodipine'),
(18, 'Amlodipine + Atenolol'),
(19, 'Amlodipine + Olmesartan Medoxomil'),
(20, 'Amoxicillin'),
(21, 'Amoxicillin + Clavulanic acid'),
(22, 'Antacid'),
(23, 'Antacid'),
(24, 'Antiallergic'),
(25, 'Aripiprazole'),
(26, 'Artemether + Lumefantrine'),
(27, 'Aspirin'),
(28, 'Astaxanthin'),
(29, 'Atorvastatin'),
(30, 'Azelastine Hydrochloride & Fluticasone Propionate'),
(31, 'Azithromycin'),
(32, 'Baclofen'),
(33, 'Baricitinib 2 mg'),
(34, 'Beclometasone Dipropionate'),
(35, 'Beclomethasone dipropionate'),
(36, 'Benzydamine Hydrochloride BP'),
(37, 'Beta Carotene + Vit. C + Vit. E'),
(38, 'Betahistine Mesilate'),
(39, 'Betamethasone + Salicylic Acid'),
(40, 'Betamethasone Dipropionate'),
(41, 'Betamethasone Dipropionate & Clotrimazole'),
(42, 'Betamethasone Dipropionate & Neomycin Sulphate'),
(43, 'Betrixaban'),
(44, 'Bicarbonate Hemodialysis Solution (Acidic Component)'),
(45, 'Bicarbonate Hemodialysis Solution (Basic Component)'),
(46, 'Bilastine'),
(47, 'Bimatoprost 0.03% & Timolol 0.5%'),
(48, 'Bisoprolol + Amlodipine'),
(49, 'Bisoprolol Fumarate'),
(50, 'Bisoprolol Fumarate+ Hydrochlorothiazide'),
(51, 'Bromazepam'),
(52, 'Bromfenac Sodium'),
(53, 'Bromhexine HCl'),
(54, 'Bromocriptine mesilate'),
(55, 'Budesonide+ Formoterol Fumarate Dihydrate'),
(56, 'Butamirate CItrate'),
(57, 'Cabergoline'),
(58, 'Calcipotriol'),
(59, 'Calcipotriol+Betamethasone Dipropionate'),
(60, 'Calcitriol'),
(61, 'Calcium + Vitamin-D'),
(62, 'Calcium 500 mg (algae Source) and Vitamin D3 200 IU'),
(63, 'Calcium 600 mg + Vitamin D 400 IU'),
(64, 'Calcium Carbonate'),
(65, 'Calcium Carbonate'),
(66, 'Calcium Carbonate (from Coral source) USP 1250 mg & Vit'),
(67, 'Calcium laclate gluconate + Calcium carbonate + Ascorbi'),
(68, 'Calcium+Vitamin-D+Multimineral'),
(69, 'Canagliflozin'),
(70, 'Carbamazepine'),
(71, 'Carbimazole'),
(72, 'Carboxymethylcellulose Sodium 1%'),
(73, 'Cefaclor'),
(74, 'Cefadroxil Monohydrate'),
(75, 'Cefazolin'),
(76, 'Cefepime'),
(77, 'Cefixime'),
(78, 'Cefoperazone'),
(79, 'Cefotaxime'),
(80, 'Cefpodoxime Proxetil'),
(81, 'Ceftazidime'),
(82, 'Ceftibuten'),
(83, 'Ceftriaxone'),
(84, 'Cefuroxime & Clavulanic Acid'),
(85, 'Cefuroxime Sodium'),
(86, 'Cephradine'),
(87, 'Cetirizine HCl'),
(88, 'Chloramphenicol'),
(89, 'Chlorhexidine Gluconate'),
(90, 'Chlorhexidine Gluconate 7.1% Solution'),
(91, 'Chlorpheniramine maleate BP'),
(92, 'Cholecalciferol EP (Vitamin D3)'),
(93, 'Ciclopirox Olamine'),
(94, 'Ciclopirox Olamine USP 1%'),
(95, 'Cilnidipine'),
(96, 'Cilostazol'),
(97, 'Cinchocaine HCI + Hydrocortisone + Framycetin Sulphate'),
(98, 'Cinnarizine'),
(99, 'Cinnarizine+Dimenhydrinate'),
(100, 'Ciprofloxacin'),
(101, 'Ciprofloxacin'),
(102, 'Ciprofloxacin 0.2% w/v IV Infusion'),
(103, 'Citicoline'),
(104, 'Clarithromycin'),
(105, 'Clindamycin HCl'),
(106, 'Clindamycin Phosphate+Tretinoin'),
(107, 'Clobetasol Propionate'),
(108, 'Clobetasol Propionate +Neomycin Sulphate +Nystatin'),
(109, 'Clobetasol Propionate BP'),
(110, 'Clobetasol Propionate, Ofloxacin, Ornidazole & Terbinaf'),
(111, 'Clobetasone Butyrate'),
(112, 'Clonazepam'),
(113, 'Clopidogrel'),
(114, 'Clopidogrel + Aspirin'),
(115, 'Clotrimazole'),
(116, 'Clotrimazole'),
(117, 'Coenzyme Q10 (Ubidecarenone USP)'),
(118, 'Colchicine'),
(119, 'Colistimethate Sodium'),
(120, 'Coral Calcium 600 mg + Vitamin D 400 IU Tablet'),
(121, 'Dantrolene Sodium'),
(122, 'Dapoxetine Hydrochloride INN'),
(123, 'Deflazacort'),
(124, 'Desloratadine'),
(125, 'Dex-Ibuprofen'),
(126, 'Dexamethasone'),
(127, 'Dexamethasone+Chloramphenicol'),
(128, 'Dexlansoprazole'),
(129, 'Dextran 70 + Hypromellose'),
(130, 'Dextromethorphan'),
(131, 'Dextromethorphan HBr + Phenylephrine HCl + Triprolidine'),
(132, 'Dextrose Anhydrous USP'),
(133, 'Dextrose Anhydrous USP 4.30% w/v & Sodium Chloride BP 0'),
(134, 'Diazepam'),
(135, 'Diclofenac'),
(136, 'Diclofenac Sodium + Misoprostol'),
(137, 'Diclofenac Sodium BP'),
(138, 'Dictofenac Sodium & Lidocain Hydrochloride'),
(139, 'Dicycloverine HCl'),
(140, 'Dienogest 2 mg Tablet'),
(141, 'Diltiazem HCl'),
(142, 'Diosmin + Hesperidine'),
(143, 'Diosmin BP 900 mg & Hesperidin USP 100 mg'),
(144, 'Diphenhydramine HCl'),
(145, 'Diphenhydramine HCl+ Zn Acetate'),
(146, 'Domperidone'),
(147, 'Domperidone'),
(148, 'Doxofylline INN'),
(149, 'Doxycycline HCI'),
(150, 'Doxylamine Succinate + Pyridoxine Hydrochloride'),
(151, 'Drospirenone & Estradiol'),
(152, 'Dry Powder Inhaler (DPI) Device'),
(153, 'Duloxetine'),
(154, 'Ebastine BP'),
(155, 'Econazole Nitrate +Triamcenolone Acetonide'),
(156, 'Eflornithine Hydrochloride 13.9%'),
(157, 'Empagliflozin'),
(158, 'Empagliflozin and Metformin Hydrochloride'),
(159, 'Enoxaparin Sodium'),
(160, 'Entecavir'),
(161, 'Eperisone HCl'),
(162, 'Erythromycin'),
(163, 'Erythromycin'),
(164, 'Erythropoietin BP'),
(165, 'Escitalopram'),
(166, 'Esomeprazole'),
(167, 'Esomeprazole'),
(168, 'Estriol'),
(169, 'Etodolac'),
(170, 'Etoricoxib'),
(171, 'Eucalyptol+Menthol+Methyl Salicylate+Thymol+Sodium Fluo'),
(172, 'Famotidine'),
(173, 'Favipiravir'),
(174, 'Febuxostat'),
(175, 'Fenofibrate'),
(176, 'Fenticonazole Nitrate BP'),
(177, 'Ferric Carboxymaltose'),
(178, 'Fexofenadine HCl'),
(179, 'Filgrastim'),
(180, 'Finsteride'),
(181, 'Flucloxacillin'),
(182, 'Fluconazole'),
(183, 'Flunarizine HCl'),
(184, 'Fluocinolone Acetonide USP 0.1 mg, Tretinoin USP 0.5 mg'),
(185, 'Fluoxetine HCl'),
(186, 'Flupenthixol + Melitracen'),
(187, 'Fluticasone Furoate'),
(188, 'Fluticasone propionate'),
(189, 'Fluticasone propionate'),
(190, 'Folic Acid and Zinc Sulfate Monohydrate'),
(191, 'Fondaparinux Sodium'),
(192, 'Fosfomycin 3 gm'),
(193, 'Furosemide'),
(194, 'Fusidic Acid & Hydrocortisone Acetate'),
(195, 'Gabapentin'),
(196, 'Gemifloxacin'),
(197, 'Gentamicin'),
(198, 'Glibenclamide'),
(199, 'Gliclazide'),
(200, 'Glimepiride'),
(201, 'Glimepiride and Metformin Hydrochloride'),
(202, 'Glucosamine Sulfate & Diacerein'),
(203, 'Glucosamine Sulfate + Chondroitin'),
(204, 'Glycerin BP'),
(205, 'Glycopyrronium + Indacaterol'),
(206, 'Granisetron HCl'),
(207, 'Guaifenesin + Levomenthol + Diphenhydramine HCl'),
(208, 'Halobetasol Propionate'),
(209, 'Haloperidol'),
(210, 'Hartmann’s solution'),
(211, 'Hydrocortisone Acetate'),
(212, 'Hydroxychloroquine Sulfate'),
(213, 'Ibandronic acid'),
(214, 'Imipramine'),
(215, 'Indapamide'),
(216, 'Insulin Glargine'),
(217, 'Insulin Human (rDNA)'),
(218, 'Insulin Human (rDNA)'),
(219, 'Ipratropium Bromide'),
(220, 'Ipratropium Bromide'),
(221, 'Iron (III) Hydroxide Polymaltose Complex, Folic Acid, T'),
(222, 'Iron Polymaltose + Thiamine + Riboflavin + Nicotinamide'),
(223, 'Iron Sucrose'),
(224, 'Itraconazole'),
(225, 'Ivabradine'),
(226, 'Ivermectin BP'),
(227, 'Ivermectin BP 0.5%'),
(228, 'Ketoconazole'),
(229, 'Ketoprofen'),
(230, 'Ketorolac Tromethamine'),
(231, 'Ketotifen Fumarate'),
(232, 'Ketotifen Fumarate'),
(233, 'L-Ornithine L-Aspartate 150 mg'),
(234, 'Lactulose'),
(235, 'Lamivudine'),
(236, 'Lamotrigine'),
(237, 'Lansoprazole'),
(238, 'Lansoprazole + Clarithromycin + Amoxicillin'),
(239, 'Letrozole'),
(240, 'Leucovorin (Folinic Acid)'),
(241, 'Levetiracetam'),
(242, 'Levocarnitine'),
(243, 'Levocetirizine'),
(244, 'Levodopa + Carbidopa'),
(245, 'Levofloxacin'),
(246, 'Levofloxacin 0.5% w/v IV Infusion'),
(247, 'Levonorgestrel'),
(248, 'Levosalbutamol'),
(249, 'Levothyroxine Sodium'),
(250, 'Light liquid paraffin & White soft paraffin'),
(251, 'Linagliptin'),
(252, 'Linagliptin and Metformin Hydrochloride'),
(253, 'Linezolid USP'),
(254, 'Lomefloxacin'),
(255, 'Lomefloxacin'),
(256, 'Loperamide HCl'),
(257, 'Loratadine'),
(258, 'Losartan Potassium'),
(259, 'Losartan Potassium + Hydrochlorthiazide'),
(260, 'Lubiprostone 8 mcg'),
(261, 'Lurasidone'),
(262, 'Macrogol & Electrolytes'),
(263, 'Magaldrate+Simethicone'),
(264, 'Magnesium Hydroxide & Liquid Paraffin'),
(265, 'Mebeverine Hydrochloride BP'),
(266, 'Meclizine HCl + Pyridoxine HCl'),
(267, 'Mecobalamin'),
(268, 'Melatonin'),
(269, 'Meloxicam'),
(270, 'Menthol + Thymol + Eucalyptol + Methyl Salicylate'),
(271, 'Meropenem'),
(272, 'Mesalamine USP 800 mg'),
(273, 'Metformin HCl'),
(274, 'Methyl Salicylate + Menthol'),
(275, 'Methylprednisolone'),
(276, 'Metronidazole'),
(277, 'Metronidazole 0.5% w/v IV Infusion'),
(278, 'Metronidazole+ Neomycin Sulphate+ Polymyxin B Sulphate'),
(279, 'Miconazole'),
(280, 'Miconazole Nitrate'),
(281, 'Miconazole nitrate+ Hydrocortisone'),
(282, 'Midazolam'),
(283, 'Mifepristone & Misoprostol'),
(284, 'Minoxidil BP'),
(285, 'Mirtazapine'),
(286, 'Misoprostol'),
(287, 'Mometasone Furoate'),
(288, 'Monobasic Sodium Phospate and Dibasic Sodium Phosphate'),
(289, 'Montelukast'),
(290, 'Moxifloxacin'),
(291, 'Moxifloxacin 0.16% w/v IV Infusion'),
(292, 'Moxifloxacin 0.5% & Dexamethasone Phosphate 0.1%'),
(293, 'Moxifloxacin USP'),
(294, 'Find More'),
(295, 'Multivitamin & Multimineral'),
(296, 'Multivitamin with Cod Liver Oil'),
(297, 'Multivitamin with L-Lysine'),
(298, 'Mupirocin'),
(299, 'Naproxen'),
(300, 'Naproxen+Esomeprazole'),
(301, 'Nebivolol Hydrochloride'),
(302, 'Nebivolol+Hydrochlorothiazide (β -blocker & Combinatio'),
(303, 'Nelfinavir'),
(304, 'Neomycin Sulphate + Bacitracin Zinc'),
(305, 'Neomycin Sulphate, Bacitracin Zinc & Polymyxin B Sulpha'),
(306, 'Nifedipine'),
(307, 'Nimodipine'),
(308, 'Nitazoxanide'),
(309, 'Nitrofurantoin USP'),
(310, 'Nitroglycerin'),
(311, 'Norepinephrine 2 mg/ 2 ml'),
(312, 'Norethisterone'),
(313, 'Nystatin'),
(314, 'Obeticholic Acid 5 mg'),
(315, 'Ofloxacin'),
(316, 'Olanzapine'),
(317, 'Olmesartan Medoxomil'),
(318, 'Olmesartan Medoxomil+Hydrochlorothiazide'),
(319, 'Olopatadine HCl'),
(320, 'Omeprazole'),
(321, 'Ondansetron HCl'),
(322, 'Orlistat'),
(323, 'Ornidazole'),
(324, 'Oxiconazole'),
(325, 'Oxymetazoline'),
(326, 'Palonosetron'),
(327, 'Pancreatin BP'),
(328, 'Pantoprazole'),
(329, 'Paracetamol & Caffeine'),
(330, 'Paracetamol+Tramadol'),
(331, 'Paroxetine HCl'),
(332, 'Pentoxifylline'),
(333, 'Permethrin'),
(334, 'Phenoxymethyl Penicillin'),
(335, 'Phytomenadione'),
(336, 'Piperacillin and Tazobactam'),
(337, 'Piracetam'),
(338, 'Pivmecillinam'),
(339, 'Pizotifen Malate'),
(340, 'Potassium Citrate & Citric Acid Monohydrate'),
(341, 'Povidone Iodine'),
(342, 'Prazosin'),
(343, 'Prednisolone'),
(344, 'Pregabalin'),
(345, 'Prochlorperazine Mesilate'),
(346, 'Procyclidine HCl'),
(347, 'Prucalopride 1 mg & 2 mg'),
(348, 'Rabeprazole Sodium INN'),
(349, 'Rabeprazole, Amoxicillin & Clarithromycin'),
(350, 'Racecadotril BP'),
(351, 'Ramipril'),
(352, 'Ranolazine'),
(353, 'Rasagiline'),
(354, 'Raubasine + Almitrine Bismesylate'),
(355, 'Remdesivir'),
(356, 'Retapamulin'),
(357, 'Reusable Insulin Pen'),
(358, 'Reusable Insulin Pen'),
(359, 'Rice based oral rehydration salt'),
(360, 'Rifaximin'),
(361, 'Risedronate Sodium'),
(362, 'Risedronate Sodium & Calcium'),
(363, 'Rivaroxaban'),
(364, 'Ropinirole'),
(365, 'Rosuvastatin'),
(366, 'Rupatadine 10 mg'),
(367, 'Sacubitril & Valsartan'),
(368, 'Salbutamol + Ipratropium Bromide'),
(369, 'Salbutamol + Ipratropium Bromide'),
(370, 'Salbutamol Sulphate'),
(371, 'Salbutamol Sulphate'),
(372, 'Salicylic Acid BP 12%'),
(373, 'Salmeterol & Fluticasone Propionate BP'),
(374, 'Salmeterol + Fluticasone'),
(375, 'Secnidazole'),
(376, 'Sildenafil Citrate INN'),
(377, 'Silodosin INN 8 mg'),
(378, 'Silver Sulfadiazine'),
(379, 'Simethicone'),
(380, 'Sitagliptin'),
(381, 'Sitagliptin + Metformin Hydrochloride'),
(382, 'Sodium Alendronate +Vit D3'),
(383, 'Sodium Alginate + Potassium Bicarbonate'),
(384, 'Sodium Chloride'),
(385, 'Sodium Chloride 0.5% w/v, Potassium Chloride 0.1% w/v a'),
(386, 'Sodium Chloride BP 0.225% w/v and Dextrose Anhydrous US'),
(387, 'Sodium Chloride BP 0.45% w/v and Dextrose Anhydrous USP'),
(388, 'Sodium Chloride BP 0.9% w/v'),
(389, 'Sodium Chloride BP 0.9% w/v and Dextrose USP 5% w/v'),
(390, 'Sodium Cromoglicate + Xylometazoline HCl'),
(391, 'Sodium Polystyrene Sulfonate USP'),
(392, 'Sodium valproate+ Valproic acid'),
(393, 'Sofosbuvir'),
(394, 'Solifenacin Succinate'),
(395, 'Solution of 5% Composite Amino Acid with Electrolytes'),
(396, 'Sparfloxacin'),
(397, 'Spironolactone + Furosemide'),
(398, 'Sucralfate 1 gm/5 ml Suspension'),
(399, 'Sulphamethoxazole+Trimethoprim'),
(400, 'Suvorexant'),
(401, 'Tacrolimus'),
(402, 'Tadalafil'),
(403, 'Tamsulosin HCl'),
(404, 'Tamsulosin Hydrochloride 0.4 mg & Dutasteride 0.5 mg'),
(405, 'Tenofovir Alafenamide'),
(406, 'Tenofovir Disoproxil Fumarate'),
(407, 'Tenoxicam'),
(408, 'Terbinafine HCL'),
(409, 'Tetracycline HCl'),
(410, 'Theophylline'),
(411, 'Thiopental Sodium'),
(412, 'TiboloneSteroid Hormone'),
(413, 'Find More'),
(414, 'Ticagrelor'),
(415, 'Tiemonium Methylsulfate'),
(416, 'Tofacitinib'),
(417, 'Tolfenamic Acid'),
(418, 'Tolterodine Tartrate'),
(419, 'Torsemide'),
(420, 'Tramadol HCl'),
(421, 'Tranexamic acid'),
(422, 'Travoprost 0.004%'),
(423, 'Triamcenolone Acetonide'),
(424, 'Trihexyphenidyl Hydrochloride USP'),
(425, 'Trimebutine Maleate'),
(426, 'Trimetazidine HCl'),
(427, 'Ulipristal Acetate INN 5 mg'),
(428, 'Urea'),
(429, 'Ursodeoxycholic Acid BP'),
(430, 'Valaciclovir'),
(431, 'Vildagliptin'),
(432, 'Vildagliptin+Metformin'),
(433, 'Vinpocetine'),
(434, 'Vitamin B Complex'),
(435, 'Vitamin B Complex and Zinc'),
(436, 'Vitamin B1 +Vitamin B6 +Vitamin B12'),
(437, 'Vitamin C+Vitamin E+ Zinc+Copper+Lutein'),
(438, 'Vitamin E as alpha-Tocopheryl Acetate'),
(439, 'Vitamin-C'),
(440, 'Voriconazole'),
(441, 'Xylometazoline HCl'),
(442, 'Zinc Oxide'),
(443, 'Zinc Oxide USP 10%, Avobenzone USP 1%, Octinoxate USP 7'),
(444, 'Zinc Sulfate Monohydrate'),
(445, 'Zinc Sulfate+Folic Acid+Carbonyl Iron'),
(446, 'Zinc Sulphate'),
(447, 'Zinc Sulphate Monohydrate + Ferrous Sulphate + Folic Ac'),
(448, 'Zinc sulphate Monohydrate +Carbonyl Iron+Folicacid+ Thi'),
(449, 'Zoledronic Acid 5 mg solution for infusion'),
(450, 'Zolmitriptan');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lab_test`
--

CREATE TABLE `lab_test` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab_test`
--

INSERT INTO `lab_test` (`id`, `name`, `remarks`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Blood Test', 'Test Name', '2021-04-09 15:24:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matrimony`
--

CREATE TABLE `matrimony` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matrimony`
--

INSERT INTO `matrimony` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Single', '2020-11-23 19:50:13', '2020-11-23 19:50:13', NULL),
(2, 'Married', '2020-11-23 19:50:13', '2020-11-23 19:50:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_schedule`
--

CREATE TABLE `medicine_schedule` (
  `id` bigint(20) NOT NULL,
  `schedule` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine_schedule`
--

INSERT INTO `medicine_schedule` (`id`, `schedule`) VALUES
(1, 'After Meal'),
(2, 'Before Meal');

-- --------------------------------------------------------

--
-- Table structure for table `permanent_address`
--

CREATE TABLE `permanent_address` (
  `id` bigint(20) NOT NULL,
  `care_of` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `post_office` varchar(100) DEFAULT NULL,
  `post_code` smallint(5) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `upazila_id` bigint(20) DEFAULT NULL,
  `user_basic_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permanent_address`
--

INSERT INTO `permanent_address` (`id`, `care_of`, `address`, `post_office`, `post_code`, `district_id`, `upazila_id`, `user_basic_id`) VALUES
(1, 'Voluptatem nihil consequatur amet sint aliqua Qui et nemo', 'Sint et anim laborum laborum Qui eum numquam rerum doloremque pariatur Id blanditiis doloremque incidunt eum iusto ut expedita', 'Ullamco sint amet fuga Qui laborum Sequi laboriosam inventore nisi', 10, 10, 256, 1),
(2, 'Voluptatem nulla qui quo est sit voluptas omnis quos ut', 'Nam at proident aspernatur quidem non tempor quo', 'Qui adipisci qui magnam architecto quae facilis', 100, 8, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL COMMENT 'Prescription Create Date',
  `cc` text DEFAULT NULL COMMENT 'Chief Complain.',
  `oe` text DEFAULT NULL COMMENT 'On Examination.',
  `dd` text DEFAULT NULL COMMENT 'Differential Diagnosois.',
  `ad` text DEFAULT NULL COMMENT 'Advice.',
  `tl` text DEFAULT NULL COMMENT 'Treatment List.',
  `pmh` text DEFAULT NULL COMMENT 'Past Medical History',
  `patient_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `date`, `cc`, `oe`, `dd`, `ad`, `tl`, `pmh`, `patient_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1992-11-04', 'Laboriosam do et praesentium est eiusmod voluptatem unde dolore laborum voluptatem qui veniam vel temporibus aut voluptatem sunt vero', 'Hic ut veniam in dolorem minim tenetur', 'Cumque tempor enim aut ullamco magna praesentium', 'Sint amet provident saepe fuga Cumque perferendis est et enim quia molestias impedit expedita aliquam voluptatem in', 'Dolores aliquam ea veniam facere nihil sunt est dignissimos ducimus in officiis voluptatem eligendi id', 'Voluptatum aliquid et perspiciatis quisquam rerum qui nihil et sed ab dolor iste ex', 3, '2021-04-15 17:43:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions_lab_test`
--

CREATE TABLE `prescriptions_lab_test` (
  `id` bigint(20) NOT NULL,
  `prescription_id` bigint(20) NOT NULL,
  `lab_test_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescriptions_lab_test`
--

INSERT INTO `prescriptions_lab_test` (`id`, `prescription_id`, `lab_test_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2021-04-15 17:43:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_medicine`
--

CREATE TABLE `prescription_medicine` (
  `id` bigint(20) NOT NULL,
  `prescription_id` bigint(20) NOT NULL,
  `medicine_id` bigint(20) NOT NULL,
  `frequency` varchar(255) NOT NULL,
  `medicine_schedule_id` bigint(20) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription_medicine`
--

INSERT INTO `prescription_medicine` (`id`, `prescription_id`, `medicine_id`, `frequency`, `medicine_schedule_id`, `duration`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Verita', 1, 'Ut omnis et iste iste aut reiciendis tempor sed', '2021-04-15 17:43:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `present_address`
--

CREATE TABLE `present_address` (
  `id` bigint(20) NOT NULL,
  `care_of` varchar(255) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `post_office` varchar(100) DEFAULT NULL,
  `post_code` smallint(5) UNSIGNED DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `upazila_id` bigint(20) DEFAULT NULL,
  `user_basic_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `present_address`
--

INSERT INTO `present_address` (`id`, `care_of`, `address`, `post_office`, `post_code`, `district_id`, `upazila_id`, `user_basic_id`) VALUES
(1, 'Nemo eligendi officia Nam sit Nam earum vel sapiente', 'Et minus dolorem eveniet quia eu nulla deserunt dolores eum quod tempor voluptas inventore laudantium', 'Nisi accusantium eu id aut irure proident perferendis eu deserunt qui accusantium in ut sit modi et ', 74, 51, 453, 1),
(2, 'Reprehenderit eos eaque neque et ut qui placeat amet nobis excepturi quas qui eos ut quis molestias nisi', 'Hic sint aut facilis modi culpa dolor sint et minim et ea tempore architecto aut dolor quia ut deserunt', 'Sed omnis in nisi eiusmod quasi optio voluptate esse animi voluptatem molestiae molestiae dolorem ad', 90, 44, 194, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `generic_id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `type_id` bigint(20) NOT NULL,
  `str_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `generic_id`, `brand_id`, `type_id`, `str_id`, `tax_id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Leigh Hale', 57, 92, 1, 2, 0, '', '2021-04-09 14:24:41', NULL, NULL),
(2, 'Autumn Irwin', 21, 29, 6, 2, 0, '', '2021-04-09 15:23:55', NULL, NULL),
(3, 'Inez Marquez', 380, 141, 26, 2, 0, '', '2021-04-10 18:21:42', '2021-04-10 18:21:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_strength`
--

CREATE TABLE `product_strength` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_strength`
--

INSERT INTO `product_strength` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '250 gm', '2021-02-15 16:59:49', NULL, NULL),
(2, '100 gm', '2021-02-15 16:59:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `name`) VALUES
(1, 'Syrup'),
(2, 'Tablet'),
(3, 'Capsule'),
(4, 'Topical medicine'),
(5, 'Suppositor'),
(6, 'Drop'),
(7, 'Inhaler'),
(8, 'Injection'),
(9, 'Gel'),
(10, 'Suspension'),
(11, 'Effervescent Tablet'),
(12, 'IV Injection'),
(13, 'Injection(Pre-filled Syringe)'),
(14, 'Sublingual Spray'),
(15, 'Tablet(Chewable)'),
(16, 'Infusion'),
(17, 'Powder for Suspension'),
(18, 'Intramuscular'),
(19, 'Intravenous'),
(20, 'Dry Syrup'),
(21, 'IM Injection'),
(22, 'Cream'),
(23, 'Ointment'),
(24, 'Cream & Ointment'),
(25, 'Eye Drop'),
(26, 'Ped. Drop'),
(27, 'MDI(Manual Daily Injection)'),
(28, 'DPI(Dry Powder Inhaler)'),
(29, 'Oral Solution');

-- --------------------------------------------------------

--
-- Table structure for table `product_unit`
--

CREATE TABLE `product_unit` (
  `id` bigint(20) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_unit`
--

INSERT INTO `product_unit` (`id`, `unit`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pics', '2021-02-20 21:24:35', NULL, NULL),
(2, 'Primary/strip', '2021-02-20 21:24:40', NULL, NULL),
(3, 'Secondary/box', '2021-02-20 21:25:31', NULL, NULL),
(4, 'Tertiary/caton', '2021-02-20 21:25:38', NULL, NULL),
(5, 'Kilogram', '2021-03-07 14:05:03', NULL, NULL),
(6, 'Gram', '2021-03-07 14:05:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_unit_relation`
--

CREATE TABLE `product_unit_relation` (
  `id` bigint(20) NOT NULL,
  `per_unit_id` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `unit_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `tax_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Islam', 'N/A', '2020-11-23 19:51:44', '2020-11-23 19:51:44', NULL),
(2, 'Hinduism', 'N/A', '2020-11-23 19:51:45', '2020-11-23 19:51:45', NULL),
(3, 'Buddhism', 'N/A', '2020-11-23 19:51:45', '2020-11-23 19:51:45', NULL),
(4, 'Christian', 'N/A', '2020-11-23 19:51:46', '2020-11-23 19:51:46', NULL),
(5, 'Others', 'N/A', '2020-11-23 19:51:46', '2020-11-23 19:51:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shadow_module`
--

CREATE TABLE `shadow_module` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `module_type_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shadow_module`
--

INSERT INTO `shadow_module` (`id`, `name`, `description`, `module_type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Home', 'dasdasdasd', 1, '2021-03-16 20:42:04', NULL, NULL),
(4, 'Prescription', 'This Module Contains Prescription-related Operations.', 3, '2021-03-21 18:11:36', '2021-03-22 23:36:44', NULL),
(5, 'Patient', 'This Section Handel Doctors patients', 3, '2021-03-23 13:21:52', NULL, NULL),
(6, 'Business', 'Business Module Handles Business Related Operations.', 4, '2021-03-24 13:44:21', NULL, NULL),
(7, 'Stock', 'Stock Module Handel\'s Stock Related Operations.', 4, '2021-03-24 18:16:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shadow_module_section`
--

CREATE TABLE `shadow_module_section` (
  `id` bigint(20) NOT NULL,
  `m_id` bigint(20) NOT NULL,
  `s_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shadow_module_section`
--

INSERT INTO `shadow_module_section` (`id`, `m_id`, `s_id`, `created_at`, `deleted_at`) VALUES
(1, 2, 7, '2021-03-16 16:27:55', NULL),
(2, 2, 6, '2021-03-16 16:27:55', NULL),
(3, 2, 5, '2021-03-16 16:27:55', NULL),
(4, 2, 4, '2021-03-16 16:27:55', NULL),
(5, 2, 3, '2021-03-16 16:27:55', NULL),
(6, 2, 2, '2021-03-16 16:27:55', NULL),
(7, 2, 1, '2021-03-16 16:27:55', NULL),
(9, 4, 23, '2021-03-21 18:11:36', '2021-03-22 23:36:44'),
(10, 4, 22, '2021-03-21 18:11:36', '2021-03-22 23:36:44'),
(11, 4, 21, '2021-03-21 18:11:36', '2021-03-22 23:36:44'),
(12, 4, 20, '2021-03-21 18:11:36', '2021-03-22 23:36:44'),
(13, 4, 19, '2021-03-21 18:11:36', '2021-03-22 23:36:44'),
(14, 4, 18, '2021-03-21 18:11:36', '2021-03-22 23:36:44'),
(15, 4, 17, '2021-03-21 18:11:36', '2021-03-22 23:36:44'),
(16, 4, 24, '2021-03-22 23:36:44', NULL),
(17, 4, 23, '2021-03-22 23:36:44', NULL),
(18, 4, 22, '2021-03-22 23:36:45', NULL),
(19, 4, 21, '2021-03-22 23:36:45', NULL),
(20, 4, 20, '2021-03-22 23:36:45', NULL),
(21, 4, 19, '2021-03-22 23:36:45', NULL),
(22, 4, 18, '2021-03-22 23:36:45', NULL),
(23, 4, 17, '2021-03-22 23:36:45', NULL),
(24, 5, 26, '2021-03-23 13:21:52', NULL),
(25, 5, 25, '2021-03-23 13:21:52', NULL),
(26, 6, 32, '2021-03-24 13:44:21', NULL),
(27, 6, 31, '2021-03-24 13:44:21', NULL),
(28, 6, 30, '2021-03-24 13:44:21', NULL),
(29, 6, 29, '2021-03-24 13:44:21', NULL),
(30, 6, 28, '2021-03-24 13:44:21', NULL),
(31, 6, 27, '2021-03-24 13:44:21', NULL),
(32, 7, 37, '2021-03-24 18:16:44', NULL),
(33, 7, 36, '2021-03-24 18:16:44', NULL),
(34, 7, 35, '2021-03-24 18:16:44', NULL),
(35, 7, 34, '2021-03-24 18:16:44', NULL),
(36, 7, 33, '2021-03-24 18:16:44', NULL),
(39, 9, 44, '2021-04-11 15:46:07', NULL),
(40, 9, 43, '2021-04-11 15:46:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shadow_module_type`
--

CREATE TABLE `shadow_module_type` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shadow_module_type`
--

INSERT INTO `shadow_module_type` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '2021-02-26 14:59:05', NULL, NULL),
(3, 'Doctor', '2021-03-21 18:11:36', NULL, NULL),
(4, 'User', '2021-03-24 13:44:21', NULL, NULL),
(5, 'Local', '2021-04-06 22:40:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shadow_permission`
--

CREATE TABLE `shadow_permission` (
  `id` bigint(20) NOT NULL,
  `privilege` bigint(20) NOT NULL,
  `r_id` bigint(20) NOT NULL,
  `m_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shadow_permission`
--

INSERT INTO `shadow_permission` (`id`, `privilege`, `r_id`, `m_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(7, 7, 2, 2, '2021-03-16 16:28:33', NULL, NULL),
(8, 6, 2, 2, '2021-03-16 16:28:33', NULL, NULL),
(9, 5, 2, 2, '2021-03-16 16:28:33', NULL, NULL),
(10, 4, 2, 2, '2021-03-16 16:28:33', NULL, NULL),
(11, 3, 2, 2, '2021-03-16 16:28:33', NULL, NULL),
(12, 2, 2, 2, '2021-03-16 16:28:33', NULL, NULL),
(13, 1, 2, 2, '2021-03-16 16:28:33', NULL, NULL),
(15, 23, 3, 4, '2021-03-21 18:14:17', NULL, '2021-04-06 19:40:18'),
(16, 22, 3, 4, '2021-03-21 18:14:17', NULL, '2021-04-06 19:40:18'),
(17, 21, 3, 4, '2021-03-21 18:14:17', NULL, '2021-04-06 19:40:18'),
(18, 20, 3, 4, '2021-03-21 18:14:17', NULL, '2021-04-06 19:40:18'),
(19, 19, 3, 4, '2021-03-21 18:14:17', NULL, '2021-04-06 19:40:18'),
(20, 18, 3, 4, '2021-03-21 18:14:17', NULL, '2021-04-06 19:40:18'),
(21, 17, 3, 4, '2021-03-21 18:14:17', NULL, '2021-04-06 19:40:18'),
(22, 24, 3, 4, '2021-03-23 00:09:09', NULL, '2021-04-06 19:40:18'),
(23, 26, 3, 5, '2021-03-23 13:22:08', NULL, NULL),
(24, 25, 3, 5, '2021-03-23 13:22:08', NULL, NULL),
(25, 32, 4, 6, '2021-03-24 13:45:31', NULL, NULL),
(26, 31, 4, 6, '2021-03-24 13:45:31', NULL, NULL),
(27, 30, 4, 6, '2021-03-24 13:45:31', NULL, NULL),
(28, 29, 4, 6, '2021-03-24 13:45:31', NULL, NULL),
(29, 28, 4, 6, '2021-03-24 13:45:31', NULL, NULL),
(30, 27, 4, 6, '2021-03-24 13:45:31', NULL, NULL),
(31, 37, 4, 7, '2021-03-24 18:18:10', NULL, NULL),
(32, 36, 4, 7, '2021-03-24 18:18:10', NULL, NULL),
(33, 35, 4, 7, '2021-03-24 18:18:10', NULL, NULL),
(34, 34, 4, 7, '2021-03-24 18:18:10', NULL, NULL),
(35, 33, 4, 7, '2021-03-24 18:18:10', NULL, NULL),
(36, 6, 3, 2, '2021-04-03 13:33:13', NULL, NULL),
(37, 5, 3, 2, '2021-04-03 13:33:13', NULL, NULL),
(38, 4, 3, 2, '2021-04-03 13:33:13', NULL, NULL),
(39, 3, 3, 2, '2021-04-03 13:33:13', NULL, NULL),
(40, 2, 3, 2, '2021-04-03 13:33:13', NULL, NULL),
(41, 1, 3, 2, '2021-04-03 13:33:13', NULL, NULL),
(42, 24, 3, 4, '2021-04-06 19:40:18', NULL, NULL),
(43, 22, 3, 4, '2021-04-06 19:40:18', NULL, NULL),
(44, 21, 3, 4, '2021-04-06 19:40:18', NULL, NULL),
(45, 20, 3, 4, '2021-04-06 19:40:18', NULL, NULL),
(46, 19, 3, 4, '2021-04-06 19:40:18', NULL, NULL),
(47, 18, 3, 4, '2021-04-06 19:40:18', NULL, NULL),
(48, 17, 3, 4, '2021-04-06 19:40:18', NULL, NULL),
(50, 37, 2, 7, '2021-04-10 17:51:56', NULL, NULL),
(51, 36, 2, 7, '2021-04-10 17:51:56', NULL, NULL),
(52, 35, 2, 7, '2021-04-10 17:51:56', NULL, NULL),
(53, 34, 2, 7, '2021-04-10 17:51:56', NULL, NULL),
(54, 33, 2, 7, '2021-04-10 17:51:56', NULL, NULL),
(55, 32, 2, 6, '2021-04-10 17:52:10', NULL, NULL),
(56, 31, 2, 6, '2021-04-10 17:52:10', NULL, NULL),
(57, 30, 2, 6, '2021-04-10 17:52:10', NULL, NULL),
(58, 29, 2, 6, '2021-04-10 17:52:10', NULL, NULL),
(59, 28, 2, 6, '2021-04-10 17:52:10', NULL, NULL),
(60, 27, 2, 6, '2021-04-10 17:52:10', NULL, NULL),
(61, 26, 2, 5, '2021-04-10 17:52:23', NULL, NULL),
(62, 25, 2, 5, '2021-04-10 17:52:23', NULL, NULL),
(63, 44, 3, 9, '2021-04-11 15:47:28', NULL, NULL),
(64, 43, 3, 9, '2021-04-11 15:47:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shadow_role`
--

CREATE TABLE `shadow_role` (
  `id` bigint(20) NOT NULL,
  `role` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shadow_role`
--

INSERT INTO `shadow_role` (`id`, `role`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 'This Role have the Previlliege of all Modules', '2021-03-16 16:25:32', NULL, NULL),
(2, 'Admin', 'This Role have the Previlliege of Some Modules', '2021-03-16 16:25:56', NULL, NULL),
(3, 'Doctor', 'This role can Operate on Doctor related operations', '2021-03-21 18:13:51', NULL, NULL),
(4, 'Business Man', 'This Role Can handle Buisness Related Operations.', '2021-03-24 13:45:15', NULL, NULL),
(5, 'Patient', '', '2021-03-27 20:07:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shadow_section`
--

CREATE TABLE `shadow_section` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(300) NOT NULL,
  `url_type_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shadow_section`
--

INSERT INTO `shadow_section` (`id`, `name`, `url`, `url_type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Add Medicine', 'core/medicine/create', 1, '2021-03-10 19:39:01', NULL, NULL),
(2, 'All Medicine', 'core/medicine/index', 1, '2021-03-10 19:40:37', NULL, NULL),
(3, 'Medicine Details', 'core/medicine/v', 2, '2021-03-10 19:41:01', NULL, NULL),
(4, 'Modify Medicine\'s Info', 'core/medicine/editable', 1, '2021-03-10 19:41:35', NULL, NULL),
(5, 'Edit Medicine Info', 'core/medicine/edit', 2, '2021-03-10 19:42:02', NULL, NULL),
(6, 'Delete Medicine', 'core/medicine/delete', 2, '2021-03-10 19:42:30', NULL, NULL),
(7, 'Archived Medicine', 'core/medicine/archive', 1, '2021-03-10 19:42:51', NULL, NULL),
(8, 'Add Lab Test', 'core/labtest/create', 1, '2021-03-10 19:43:21', NULL, NULL),
(9, 'All Lab Test', 'core/labtest/index', 1, '2021-03-10 19:43:35', NULL, NULL),
(10, 'Lab Test Details', 'core/labtest/v', 2, '2021-03-10 19:44:04', NULL, NULL),
(11, 'Modify Lab Test\'s Info', 'core/labtest/editable', 1, '2021-03-10 19:44:23', NULL, NULL),
(12, 'Edit Lab Test Info', 'core/labtest/edit', 2, '2021-03-10 19:45:14', NULL, NULL),
(13, 'Delete Lab Test', 'app/labtest/delete', 2, '2021-03-10 19:45:34', NULL, NULL),
(14, 'Archived Lab Test', 'app/labtest/archived', 1, '2021-03-10 19:46:15', NULL, NULL),
(15, 'Add User', 'app/user/create', 2, '2021-03-16 16:26:54', NULL, NULL),
(17, 'Add Prescription', 'app/prescription/create', 1, '2021-03-21 18:04:22', NULL, NULL),
(18, 'All Prescription', 'app/prescription/index', 1, '2021-03-21 18:05:05', NULL, NULL),
(19, 'Prescription\'s Detail', 'app/prescription/v', 2, '2021-03-21 18:05:33', NULL, NULL),
(20, 'Editable Prescription Info\'s', 'app/prescription/editable', 1, '2021-03-21 18:06:00', NULL, NULL),
(21, 'Edit Prescription', 'app/prescription/edit', 2, '2021-03-21 18:06:22', NULL, NULL),
(22, 'Delet Prescription', 'app/prescription/delete', 2, '2021-03-21 18:09:31', NULL, NULL),
(23, 'Archive Prescriptions', 'app/prescription/archive', 1, '2021-03-21 18:10:03', NULL, NULL),
(24, 'Patient Age Ajax', 'app/prescription/userData', 2, '2021-03-22 23:36:32', NULL, NULL),
(25, 'All Patients', 'app/patient/index', 1, '2021-03-23 13:20:24', NULL, NULL),
(26, 'Patient Details', 'app/patient/v', 2, '2021-03-23 13:21:06', NULL, NULL),
(27, 'All Business List', 'app/business/index', 1, '2021-03-24 13:35:47', NULL, NULL),
(28, 'Business Detail', 'app/business/v', 2, '2021-03-24 13:36:40', NULL, NULL),
(29, 'Add Business', 'app/business/create', 1, '2021-03-24 13:41:09', NULL, NULL),
(30, 'Modify Business Info', 'app/business/editable', 1, '2021-03-24 13:41:37', NULL, NULL),
(31, 'Edit Business Info', 'app/business/edit', 2, '2021-03-24 13:42:09', NULL, NULL),
(32, 'Delete Business', 'app/business/delete', 2, '2021-03-24 13:42:46', NULL, NULL),
(33, 'Inventory', 'app/stock/index', 1, '2021-03-24 17:40:03', NULL, NULL),
(34, 'Sell', 'app/stockin/create', 1, '2021-03-24 17:43:04', NULL, NULL),
(35, 'Purchase', 'app/stockout/create', 1, '2021-03-24 17:44:08', NULL, NULL),
(36, 'Sell Report', 'app/stockin/index', 1, '2021-03-24 17:44:54', NULL, NULL),
(37, 'Purchase Report', 'app/stockout/index', 1, '2021-03-24 17:45:33', NULL, NULL),
(38, 'Edit Profile', 'app/user/edit', 2, '2021-04-06 22:40:13', NULL, NULL),
(39, 'Profile', 'app/user/v', 2, '2021-04-09 14:32:43', NULL, NULL),
(40, 'User', 'app/user/edit', 2, '2021-04-10 16:50:44', NULL, NULL),
(41, 'User', 'app/user/create', 1, '2021-04-11 15:19:17', NULL, NULL),
(42, 'User', 'app/user/create', 1, '2021-04-11 15:39:52', NULL, NULL),
(43, 'Demo', 'app/user/Create', 1, '2021-04-11 15:41:15', NULL, NULL),
(44, 'Karly Barker', 'Cumque rerum autem q', 2, '2021-04-11 15:44:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shadow_url_type`
--

CREATE TABLE `shadow_url_type` (
  `id` bigint(20) NOT NULL,
  `url_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shadow_url_type`
--

INSERT INTO `shadow_url_type` (`id`, `url_type`) VALUES
(1, 'NavBar'),
(2, 'Action');

-- --------------------------------------------------------

--
-- Table structure for table `shadow_user`
--

CREATE TABLE `shadow_user` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_basic_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shadow_user`
--

INSERT INTO `shadow_user` (`id`, `user_name`, `password`, `user_basic_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'suadmin@admin.com', 'jGl25bVBBBW96Qi9Te4V37Fnqchz/Eu4qB9vKrRIqRg=', NULL, 999, '2021-03-16 16:41:32', NULL, NULL),
(2, 'admin@admin.com', 'jGl25bVBBBW96Qi9Te4V37Fnqchz/Eu4qB9vKrRIqRg=', 0, 2, '2021-03-16 16:43:36', NULL, NULL),
(3, 'doctor@admin.com', 'jGl25bVBBBW96Qi9Te4V37Fnqchz/Eu4qB9vKrRIqRg=', 0, 3, '2021-03-24 13:47:07', NULL, NULL),
(4, 'business@admin.com', 'jGl25bVBBBW96Qi9Te4V37Fnqchz/Eu4qB9vKrRIqRg=', 0, 4, '2021-03-24 13:48:11', NULL, NULL),
(5, 'mamunmia@turan.com', '2lHtO919/qoVTehznvIDi8rt6QK3jXcy5JojaDCO1hA=', 1, 3, '0000-00-00 00:00:00', NULL, NULL),
(6, 'nomesu@mailinator.com', 'sv6LRpKb+kxl/unV1DokI3mbGONgeC6avCe9Qgh3JD4=', 2, 3, '0000-00-00 00:00:00', NULL, NULL),
(7, 'patyryk@mailinator.com', 'jZae727K08KaOmKSgOaGzww/XVqGr/PKEgIMkjrcbJI=', 3, 5, '2021-04-15 17:43:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `unit_id` bigint(20) NOT NULL,
  `business_id` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock_report`
--

CREATE TABLE `stock_report` (
  `id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `amount` float NOT NULL,
  `unit_id` bigint(20) NOT NULL,
  `stock_type_id` bigint(20) NOT NULL,
  `business_id` bigint(20) NOT NULL,
  `bill_id` bigint(20) DEFAULT NULL,
  `invoise_id` bigint(20) DEFAULT NULL,
  `description` varchar(300) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock_type`
--

CREATE TABLE `stock_type` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_type`
--

INSERT INTO `stock_type` (`id`, `type`) VALUES
(1, 'Sell'),
(2, 'Purchase');

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE `tax` (
  `id` bigint(20) NOT NULL,
  `amount` double NOT NULL,
  `flag` int(11) NOT NULL COMMENT '1 = % , 0 = !%'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`id`, `amount`, `flag`) VALUES
(1, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `upazila`
--

CREATE TABLE `upazila` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `district_id` bigint(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upazila`
--

INSERT INTO `upazila` (`id`, `name`, `district_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Akkelpur Upazila', 1, '2020-11-11 12:26:07', '2020-11-11 12:26:07', NULL),
(2, 'Joypurhat Sadar Upazila', 1, '2020-11-11 12:26:07', '2020-11-11 12:26:07', NULL),
(3, 'Kalai Upazila', 1, '2020-11-11 12:26:07', '2020-11-11 12:26:07', NULL),
(4, 'Khetlal Upazila', 1, '2020-11-11 12:26:07', '2020-11-11 12:26:07', NULL),
(5, 'Panchbibi Upazila', 1, '2020-11-11 12:26:07', '2020-11-11 12:26:07', NULL),
(6, 'Adamdighi Upazila', 2, '2020-11-11 12:26:07', '2020-11-11 12:26:07', NULL),
(7, 'Bogura SadarUpazila', 2, '2020-11-11 12:26:07', '2020-11-11 12:26:07', NULL),
(8, 'Dhunat Upazila', 2, '2020-11-11 12:26:07', '2020-11-11 12:26:07', NULL),
(9, 'Dhupchanchia Upazila', 2, '2020-11-11 12:26:07', '2020-11-11 12:26:07', NULL),
(10, 'Gabtali Upazila', 2, '2020-11-11 12:26:07', '2020-11-11 12:26:07', NULL),
(11, 'Kahaloo Upazila', 2, '2020-11-11 12:26:07', '2020-11-11 12:26:07', NULL),
(12, 'Nandigram Upazila', 2, '2020-11-11 12:26:07', '2020-11-11 12:26:07', NULL),
(13, 'Sariakandi Upazila', 2, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(14, 'Shajahanpur Upazila', 2, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(15, 'Sherpur Upazila', 2, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(16, 'ShibganjUpazila', 2, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(17, 'Sonatola Upazila', 2, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(18, 'Atrai Upazila', 3, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(19, 'Badalgachhi Upazila', 3, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(20, 'Manda Upazila', 3, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(21, 'Dhamoirhat Upazila', 3, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(22, 'Mohadevpur Upazila', 3, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(23, 'Naogaon Sadar Upazila', 3, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(24, 'Niamatpur Upazila', 3, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(25, 'Patnitala Upazila', 3, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(26, 'Porsha Upazila', 3, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(27, 'Raninagar Upazila', 3, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(28, 'Sapahar Upazila', 3, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(29, 'Bagatipara Upazila', 4, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(30, 'Baraigram Upazila', 4, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(31, 'Gurudaspur Upazila', 4, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(32, 'Lalpur Upazila', 4, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(33, 'Natore Sadar Upazila', 4, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(34, 'Singra Upazila', 4, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(35, 'Naldanga Upazila', 4, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(36, 'Bholahat Upazila', 5, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(37, 'GomastapurUpazila', 5, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(38, 'Nachole Upazila', 5, '2020-11-11 12:26:08', '2020-11-11 12:26:08', NULL),
(39, 'NawabganjSadar Upazila', 5, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(40, 'ShibganjUpazila', 5, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(41, 'Atgharia Upazila', 6, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(42, 'Bera Upazila', 6, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(43, 'Bhangura Upazila', 6, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(44, 'Chatmohar Upazila', 6, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(45, 'Faridpur Upazila', 6, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(46, 'Ishwardi Upazila', 6, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(47, 'Pabna Sadar Upazila', 6, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(48, 'Santhia Upazila', 6, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(49, 'Sujanagar Upazila', 6, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(50, 'Belkuchi Upazila', 7, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(51, 'Chauhali Upazila', 7, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(52, 'Kamarkhanda Upazila', 7, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(53, 'Kazipur Upazila', 7, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(54, 'Raiganj Upazila', 7, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(55, 'Shahjadpur Upazila', 7, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(56, 'Sirajganj Sadar Upazila', 7, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(57, 'Tarash Upazila', 7, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(58, 'Ullahpara Upazila', 7, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(59, 'Bagha Upazila', 8, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(60, 'Bagmara Upazila', 8, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(61, 'Charghat Upazila', 8, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(62, 'Durgapur Upazila', 8, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(63, 'Godagari Upazila', 8, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(64, 'Mohanpur Upazila', 8, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(65, 'Paba Upazila', 8, '2020-11-11 12:26:09', '2020-11-11 12:26:09', NULL),
(66, 'Puthia Upazila', 8, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(67, 'Tanore Upazila', 8, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(68, 'Birampur Upazila', 9, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(69, 'Birganj Upazila', 9, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(70, 'Biral Upazila', 9, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(71, 'Bochaganj Upazila', 9, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(72, 'Chirirbandar Upazila', 9, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(73, 'PhulbariUpazila', 9, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(74, 'Ghoraghat Upazila', 9, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(75, 'Hakimpur Upazila', 9, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(76, 'Kaharole Upazila', 9, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(77, 'Khansama Upazila', 9, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(78, 'Dinajpur Sadar Upazila', 9, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(79, 'Nawabganj Upazila', 9, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(80, 'Parbatipur Upazila', 9, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(81, 'Phulchhari Upazila', 10, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(82, 'Gaibandha Sadar Upazila', 10, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(83, 'Gobindaganj Upazila', 10, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(84, 'Palashbari Upazila', 10, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(85, 'Sadullapur Upazila', 10, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(86, 'Sughatta Upazila', 10, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(87, 'Sundarganj Upazila', 10, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(88, 'Bhurungamari Upazila', 11, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(89, 'Char Rajibpur Upazila', 11, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(90, 'Chilmari Upazila', 11, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(91, 'Phulbari Upazila', 11, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(92, 'Kurigram Sadar Upazila', 11, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(93, 'Nageshwari Upazila', 11, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(94, 'Rajarhat Upazila', 11, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(95, 'Raomari Upazila', 11, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(96, 'Ulipur Upazila', 11, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(97, 'Aditmari Upazila', 12, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(98, 'Hatibandha Upazila', 12, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(99, 'KaliganjUpazila', 12, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(100, 'Lalmonirhat SadarUpazila', 12, '2020-11-11 12:26:10', '2020-11-11 12:26:10', NULL),
(101, 'Patgram Upazila', 12, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(102, 'Dimla Upazila', 13, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(103, 'Domar Upazila', 13, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(104, 'Jaldhaka Upazila', 13, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(105, 'Kishoreganj Upazila', 13, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(106, 'Nilphamari Sadar Upazila', 13, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(107, 'Saidpur Upazila', 13, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(108, 'Atwari Upazila', 14, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(109, 'Boda Upazila', 14, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(110, 'Debiganj Upazila', 14, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(111, 'Panchagarh Sadar Upazila', 14, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(112, 'Tetulia Upazila', 14, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(113, 'Badarganj Upazila', 15, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(114, 'GangachharaUpazila', 15, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(115, 'Kaunia Upazila', 15, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(116, 'Rangpur Sadar Upazila', 15, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(117, 'Mithapukur Upazila', 15, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(118, 'Pirgachha Upazila', 15, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(119, 'Pirganj Upazila', 15, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(120, 'Taraganj Upazila', 15, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(121, 'Baliadangi Upazila', 16, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(122, 'Haripur Upazila', 16, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(123, 'Pirganj Upazila', 16, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(124, 'Ranisankail Upazila', 16, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(125, 'Thakurgaon Sadar Upazila', 16, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(126, 'Atpara Upazila', 17, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(127, 'Barhatta Upazila', 17, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(128, 'Durgapur Upazila', 17, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(129, 'Khaliajuri Upazila', 17, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(130, 'Kalmakanda Upazila', 17, '2020-11-11 12:26:11', '2020-11-11 12:26:11', NULL),
(131, 'Kendua Upazila', 17, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(132, 'Madan Upazila', 17, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(133, 'Mohanganj Upazila', 17, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(134, 'Netrokona Sadar Upazila', 17, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(135, 'Purbadhala Upazila', 17, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(136, 'Jhenaigati Upazila', 18, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(137, 'Nakla Upazila', 18, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(138, 'Nalitabari Upazila', 18, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(139, 'Sherpur Sadar Upazila', 18, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(140, 'Sreebardi Upazila', 18, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(141, 'Baksiganj Upazila', 19, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(142, 'Dewanganj Upazila', 19, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(143, 'Islampur Upazila', 19, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(144, 'Jamalpur Sadar Upazila', 19, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(145, 'Madarganj Upazila', 19, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(146, 'Melandaha Upazila', 19, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(147, 'Sarishabari Upazila', 19, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(148, 'Trishal Upazila', 20, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(149, 'Dhobaura Upazila', 20, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(150, 'Fulbaria Upazila', 20, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(151, 'Gafargaon Upazila', 20, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(152, 'Gauripur Upazila', 20, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(153, 'Haluaghat Upazila', 20, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(154, 'Ishwarganj Upazila', 20, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(155, 'Mymensingh Sadar Upazila', 20, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(156, 'MuktagachhaUpazila', 20, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(157, 'Nandail Upazila', 20, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(158, 'Phulpur Upazila', 20, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(159, 'Bhaluka Upazila', 20, '2020-11-11 12:26:12', '2020-11-11 12:26:12', NULL),
(160, 'Tara KhandaUpazila', 20, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(161, 'Amtali Upazila', 21, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(162, 'Bamna Upazila', 21, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(163, 'Barguna Sadar Upazila', 21, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(164, 'Betagi Upazila', 21, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(165, 'Patharghata Upazila', 21, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(166, 'Taltali Upazila', 21, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(167, 'Agailjhara Upazila', 22, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(168, 'Babuganj Upazila', 22, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(169, 'Bakerganj Upazila', 22, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(170, 'Banaripara Upazila', 22, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(171, 'Gaurnadi Upazila', 22, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(172, 'Hizla Upazila', 22, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(173, 'BarishalSadar Upazila', 22, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(174, 'Mehendiganj Upazila', 22, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(175, 'Muladi Upazila', 22, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(176, 'Wazirpur Upazila', 22, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(177, 'Bhola Sadar Upazila', 23, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(178, 'BurhanuddinUpazila', 23, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(179, 'Char Fasson Upazila', 23, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(180, 'Daulatkhan Upazila', 23, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(181, 'Lalmohan Upazila', 23, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(182, 'Manpura Upazila', 23, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(183, 'Tazumuddin Upazila', 23, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(184, 'Jhalokati Sadar Upazila', 24, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(185, 'Kathalia Upazila', 24, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(186, 'Nalchity Upazila', 24, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(187, 'Rajapur Upazila', 24, '2020-11-11 12:26:13', '2020-11-11 12:26:13', NULL),
(188, 'Bauphal Upazila', 25, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(189, 'Dashmina Upazila', 25, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(190, 'Galachipa Upazila', 25, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(191, 'Kalapara Upazila', 25, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(192, 'Mirzaganj Upazila', 25, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(193, 'Patuakhali Sadar Upazila', 25, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(194, 'Rangabali Upazila', 25, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(195, 'Dumki Upazila', 25, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(196, 'Bhandaria Upazila', 26, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(197, 'Kawkhali Upazila', 26, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(198, 'Mathbaria Upazila', 26, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(199, 'Nazirpur Upazila', 26, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(200, 'Pirojpur Sadar Upazila', 26, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(201, 'Nesarabad(Swarupkati) Upazila', 26, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(202, 'Indurkani Upazila', 26, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(203, 'Ali Kadam Upazila', 27, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(204, 'Bandarban Sadar Upazila', 27, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(205, 'Lama Upazila', 27, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(206, 'Naikhongchhari Upazila', 27, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(207, 'Rowangchhari Upazila', 27, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(208, 'Ruma Upazila', 27, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(209, 'Thanchi Upazila', 27, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(210, 'Akhaura Upazila', 28, '2020-11-11 12:26:14', '2020-11-11 12:26:14', NULL),
(211, 'Bancharampur Upazila', 28, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(212, 'Brahmanbaria SadarUpazila', 28, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(213, 'Kasba Upazila', 28, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(214, 'Nabinagar Upazila', 28, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(215, 'Nasirnagar Upazila', 28, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(216, 'Sarail Upazila', 28, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(217, 'Ashuganj Upazila', 28, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(218, 'Bijoynagar Upazila', 28, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(219, 'Chandpur Sadar Upazila', 29, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(220, 'Faridganj Upazila', 29, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(221, 'Haimchar Upazila', 29, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(222, 'Haziganj Upazila', 29, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(223, 'Kachua Upazila', 29, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(224, 'Matlab Dakshin Upazila', 29, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(225, 'Matlab Uttar Upazila', 29, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(226, 'Shahrasti Upazila', 29, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(227, 'Anwara Upazila', 30, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(228, 'Banshkhali Upazila', 30, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(229, 'Boalkhali Upazila', 30, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(230, 'Chandanaish Upazila', 30, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(231, 'Fatikchhari Upazila', 30, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(232, 'Hathazari Upazila', 30, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(233, 'Karnaphuli Upazila', 30, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(234, 'LohagaraUpazila', 30, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(235, 'Mirsharai Upazila', 30, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(236, 'Patiya Upazila', 30, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(237, 'Rangunia Upazila', 30, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(238, 'Raozan Upazila', 30, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(239, 'Sandwip Upazila', 30, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(240, 'Satkania Upazila', 30, '2020-11-11 12:26:15', '2020-11-11 12:26:15', NULL),
(241, 'Sitakunda Upazila', 30, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(242, 'Barura Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(243, 'Brahmanpara Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(244, 'Burichang Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(245, 'Chandina Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(246, 'Chauddagram Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(247, 'Daudkandi Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(248, 'Debidwar Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(249, 'Homna Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(250, 'Laksam Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(251, 'Lalmai Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(252, 'Muradnagar Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(253, 'Nangalkot Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(254, 'Cumilla Adarsha Sadar Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(255, 'Meghna Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(256, 'Titas Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(257, 'MonohargonjUpazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(258, 'Cumilla Sadar Dakshin Upazila', 31, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(259, 'Chakaria Upazila', 32, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(260, 'Cox\'s Bazar SadarUpazila', 32, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(261, 'Kutubdia Upazila', 32, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(262, 'Maheshkhali Upazila', 32, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(263, 'Ramu Upazila', 32, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(264, 'Teknaf Upazila', 32, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(265, 'Ukhia Upazila', 32, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(266, 'Pekua Upazila', 32, '2020-11-11 12:26:16', '2020-11-11 12:26:16', NULL),
(267, 'Chhagalnaiya Upazila', 33, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(268, 'Daganbhuiyan Upazila', 33, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(269, 'Feni Sadar Upazila', 33, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(270, 'Parshuram Upazila', 33, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(271, 'Sonagazi Upazila', 33, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(272, 'Fulgazi Upazila', 33, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(273, 'Dighinala Upazila', 34, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(274, 'KhagrachhariUpazila', 34, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(275, 'Lakshmichhari Upazila', 34, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(276, 'Mahalchhari Upazila', 34, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(277, 'Manikchhari Upazila', 34, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(278, 'Matiranga Upazila', 34, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(279, 'Panchhari Upazila', 34, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(280, 'Ramgarh Upazila', 34, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(281, 'Lakshmipur Sadar Upazila', 35, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(282, 'Raipur Upazila', 35, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(283, 'Ramganj Upazila', 35, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(284, 'Ramgati Upazila', 35, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(285, 'Kamalnagar Upazila', 35, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(286, 'Begumganj Upazila', 36, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(287, 'Noakhali Sadar Upazila', 36, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(288, 'Chatkhil Upazila', 36, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(289, 'CompaniganjUpazila', 36, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(290, 'Hatiya Upazila', 36, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(291, 'Senbagh Upazila', 36, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(292, 'Sonaimuri Upazila', 36, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(293, 'SubarnacharUpazila', 36, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(294, 'Kabirhat Upazila', 36, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(295, 'Bagaichhari Upazila', 37, '2020-11-11 12:26:17', '2020-11-11 12:26:17', NULL),
(296, 'Barkal Upazila', 37, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(297, 'Kawkhali(Betbunia) Upazila', 37, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(298, 'Belaichhari Upazila', 37, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(299, 'Kaptai Upazila', 37, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(300, 'Juraichhari Upazila', 37, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(301, 'Langadu Upazila', 37, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(302, 'NaniyacharUpazila', 37, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(303, 'Rajasthali Upazila', 37, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(304, 'Rangamati Sadar Upazila', 37, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(305, 'Metropolitan Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(306, 'Adabor Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(307, 'Uttar Khan Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(308, 'Uttara Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(309, 'Kadamtali Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(310, 'Kalabagan Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(311, 'Kafrul Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(312, 'Kamrangirchar Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(313, 'Cantonment Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(314, 'Kotwali Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(315, 'Khilkhet Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(316, 'Khilgaon Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(317, 'Gulshan Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(318, 'Gendaria Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(319, 'Chawkbazar Model Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(320, 'Demra Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(321, 'Turag Thana', 38, '2020-11-11 12:26:18', '2020-11-11 12:26:18', NULL),
(322, 'Tejgaon Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(323, 'Tejgaon I/A Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(324, 'Dakshinkhan Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(325, 'Darus Salam Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(326, 'Dhanmondi  Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(327, 'New Market Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(328, 'Paltan Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(329, 'Pallabi Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(330, 'Bangshal Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(331, 'Badda Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(332, 'Bimanbandar Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(333, 'Motijheel Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(334, 'Mirpur Model Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(335, 'Mohammadpur Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(336, 'Jatrabari Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(337, 'Ramna Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(338, 'Rampura Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(339, 'Lalbagh Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(340, 'Shah Ali Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(341, 'Shahbagh Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(342, 'Sher-e-Bangla Nagar Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(343, 'Shyampur Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(344, 'Sabujbagh Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(345, 'Sutrapur Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(346, 'Hazaribagh Thana', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(347, 'Dhamrai Upazila', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(348, 'Dohar Upazila', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(349, 'Keraniganj Upazila', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(350, 'Nawabganj Upazila', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(351, 'Savar Upazila', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(352, 'Tejgaon Circle Upazila', 38, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(353, 'Gazipur Sadar Upazila', 39, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(354, 'Kaliakair Upazila', 39, '2020-11-11 12:26:19', '2020-11-11 12:26:19', NULL),
(355, 'Kaliganj Upazila', 39, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(356, 'Kapasia Upazila', 39, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(357, 'Sreepur Upazila', 39, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(358, 'Gopalganj Sadar Upazila', 40, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(359, 'Kashiani Upazila', 40, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(360, 'Kotalipara Upazila', 40, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(361, 'Muksudpur Upazila', 40, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(362, 'Tungipara Upazila', 40, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(363, 'Austagram Upazila', 41, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(364, 'Bajitpur Upazila', 41, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(365, 'Bhairab Upazila', 41, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(366, 'Hossainpur Upazila', 41, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(367, 'Itna Upazila', 41, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(368, 'Karimganj Upazila', 41, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(369, 'Katiadi Upazila', 41, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(370, 'Kishoreganj SadarUpazila', 41, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(371, 'Kuliarchar Upazila', 41, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(372, 'Mithamain Upazila', 41, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(373, 'Nikli Upazila', 41, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(374, 'Pakundia Upazila', 41, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(375, 'Tarail Upazila', 41, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(376, 'Rajoir Upazila', 42, '2020-11-11 12:26:20', '2020-11-11 12:26:20', NULL),
(377, 'MadaripurSadar Upazila', 42, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(378, 'Kalkini Upazila', 42, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(379, 'Shibchar Upazila', 42, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(380, 'DaulatpurUpazila', 43, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(381, 'Ghior Upazila', 43, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(382, 'Harirampur Upazila', 43, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(383, 'ManikgonjSadar Upazila', 43, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(384, 'Saturia Upazila', 43, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(385, 'Shivalaya Upazila', 43, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(386, 'Singair Upazila', 43, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(387, 'Gazaria Upazila', 44, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(388, 'Lohajang Upazila', 44, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(389, 'Munshiganj Sadar Upazila', 44, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(390, 'Sirajdikhan Upazila', 44, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(391, 'Sreenagar Upazila', 44, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(392, 'Tongibari Upazila', 44, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(393, 'Araihazar Upazila', 45, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(394, 'Bandar Upazila', 45, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(395, 'Narayanganj SadarUpazila', 45, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(396, 'Rupganj Upazila', 45, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(397, 'Sonargaon Upazila', 45, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(398, 'Baliakandi Upazila', 46, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(399, 'GoalandaghatUpazila', 46, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(400, 'Pangsha Upazila', 46, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(401, 'Rajbari Sadar Upazila', 46, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(402, 'Kalukhali Upazila', 46, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(403, 'Bhedarganj Upazila', 47, '2020-11-11 12:26:21', '2020-11-11 12:26:21', NULL),
(404, 'Damudya Upazila', 47, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(405, 'Gosairhat Upazila', 47, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(406, 'Naria Upazila', 47, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(407, 'Shariatpur Sadar Upazila', 47, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(408, 'Zajira Upazila', 47, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(409, 'Shakhipur Upazila', 47, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(410, 'Alfadanga Upazila', 48, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(411, 'Bhanga Upazila', 48, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(412, 'Boalmari Upazila', 48, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(413, 'Charbhadrasan Upazila', 48, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(414, 'Faridpur Sadar Upazila', 48, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(415, 'Madhukhali Upazila', 48, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(416, 'Nagarkanda Upazila', 48, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(417, 'Sadarpur Upazila', 48, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(418, 'Saltha Upazila', 48, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(419, 'Gopalpur Upazila', 49, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(420, 'Basail Upazila', 49, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(421, 'Bhuapur Upazila', 49, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(422, 'Delduar Upazila', 49, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(423, 'Ghatail Upazila', 49, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(424, 'Kalihati Upazila', 49, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(425, 'Madhupur Upazila', 49, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(426, 'Mirzapur Upazila', 49, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(427, 'Nagarpur Upazila', 49, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(428, 'Sakhipur Upazila', 49, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(429, 'Dhanbari Upazila', 49, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(430, 'Tangail Sadar Upazila', 49, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(431, 'Narsingdi Sadar Upazila', 50, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(432, 'Belabo Upazila', 50, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(433, 'Monohardi Upazila', 50, '2020-11-11 12:26:22', '2020-11-11 12:26:22', NULL),
(434, 'Palash Upazila', 50, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(435, 'RaipuraUpazila', 50, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(436, 'Shibpur Upazila', 50, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(437, 'Bagerhat Sadar Upazila', 51, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(438, 'Chitalmari Upazila', 51, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(439, 'Fakirhat Upazila', 51, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(440, 'Kachua Upazila', 51, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(441, 'Mollahat Upazila', 51, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(442, 'Mongla Upazila', 51, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(443, 'Morrelganj Upazila', 51, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(444, 'Rampal Upazila', 51, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(445, 'Sarankhola Upazila', 51, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(446, 'Alamdanga Upazila', 52, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(447, 'Chuadanga Sadar Upazila', 52, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(448, 'Damurhuda Upazila', 52, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(449, 'Jibannagar Upazila', 52, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(450, 'Abhaynagar Upazila', 53, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(451, 'Bagherpara Upazila', 53, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(452, 'Chaugachha Upazila', 53, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(453, 'JhikargachhaUpazila', 53, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(454, 'Keshabpur Upazila', 53, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(455, 'Jashore SadarUpazila', 53, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(456, 'Manirampur Upazila', 53, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(457, 'Sharsha Upazila', 53, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(458, 'Harinakunda Upazila', 54, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(459, 'Jhenaidah Sadar Upazila', 54, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(460, 'Kaliganj Upazila', 54, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(461, 'Kotchandpur Upazila', 54, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(462, 'Maheshpur Upazila', 54, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(463, 'Shailkupa Upazila', 54, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(464, 'Batiaghata Upazila', 55, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(465, 'Dacope Upazila', 55, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(466, 'Dumuria Upazila', 55, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(467, 'Dighalia Upazila', 55, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(468, 'Koyra Upazila', 55, '2020-11-11 12:26:23', '2020-11-11 12:26:23', NULL),
(469, 'Paikgachha Upazila', 55, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(470, 'Phultala Upazila', 55, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(471, 'Rupsha Upazila', 55, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(472, 'Terokhada Upazila', 55, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(473, 'Bheramara Upazila', 56, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(474, 'Daulatpur Upazila', 56, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(475, 'Khoksa Upazila', 56, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(476, 'Kumarkhali Upazila', 56, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(477, 'Kushtia Sadar Upazila', 56, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(478, 'Mirpur Upazila', 56, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(479, 'Magura Sadar Upazila', 57, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(480, 'Mohammadpur Upazila', 57, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(481, 'Shalikha Upazila', 57, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(482, 'Sreepur Upazila', 57, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(483, 'Gangni Upazila', 58, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(484, 'Meherpur Sadar Upazila', 58, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(485, 'Mujibnagar Upazila', 58, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(486, 'Kalia Upazila', 59, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(487, 'Lohagara Upazila', 59, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(488, 'Narail Sadar Upazila', 59, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(489, 'Naragati Thana', 59, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(490, 'Assasuni Upazila', 60, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(491, 'Debhata Upazila', 60, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(492, 'Kalaroa Upazila', 60, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(493, 'Kaliganj Upazila', 60, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(494, 'Satkhira Sadar Upazila', 60, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(495, 'Shyamnagar Upazila', 60, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(496, 'Tala Upazila', 60, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(497, 'Ajmiriganj Upazila', 61, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(498, 'Bahubal Upazila', 61, '2020-11-11 12:26:24', '2020-11-11 12:26:24', NULL),
(499, 'BaniyachongUpazila', 61, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(500, 'Chunarughat Upazila', 61, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(501, 'Habiganj Sadar Upazila', 61, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(502, 'Lakhai Upazila', 61, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(503, 'Madhabpur Upazila', 61, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(504, 'Nabiganj Upazila', 61, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(505, 'SayestaganjUpazila', 61, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(506, 'Barlekha Upazila', 62, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(507, 'Juri Upazila', 62, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(508, 'Kamalganj Upazila', 62, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(509, 'Kulaura Upazila', 62, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(510, 'Moulvibazar SadarUpazila', 62, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(511, 'Rajnagar Upazila', 62, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(512, 'Sreemangal Upazila', 62, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(513, 'Bishwamvarpur Upazila', 63, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(514, 'Chhatak Upazila', 63, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(515, 'Dakshin SunamganjUpazila', 63, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(516, 'Derai Upazila', 63, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(517, 'DharamapashaUpazila', 63, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(518, 'Dowarabazar Upazila', 63, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(519, 'Jagannathpur Upazila', 63, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(520, 'Jamalganj Upazila', 63, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(521, 'Sullah Upazila', 63, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(522, 'Sunamganj Sadar Upazila', 63, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(523, 'Tahirpur Upazila', 63, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(524, 'Balaganj Upazila', 64, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(525, 'Beanibazar Upazila', 64, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(526, 'Bishwanath Upazila', 64, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(527, 'Companigonj Upazila', 64, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(528, 'Dakshin Surma Upazila', 64, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(529, 'Fenchuganj Upazila', 64, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(530, 'Golapganj Upazila', 64, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(531, 'Gowainghat Upazila', 64, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(532, 'Jaintiapur Upazila', 64, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(533, 'Kanaighat Upazila', 64, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(534, 'Osmani Nagar Upazila', 64, '2020-11-11 12:26:25', '2020-11-11 12:26:25', NULL),
(535, 'Sylhet Sadar Upazila', 64, '2020-11-11 12:26:26', '2020-11-11 12:26:26', NULL),
(536, 'Zakiganj Upazila', 64, '2020-11-11 12:26:26', '2020-11-11 12:26:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_basic`
--

CREATE TABLE `user_basic` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father` varchar(255) DEFAULT NULL,
  `mother` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_reg` varchar(50) DEFAULT NULL,
  `birth_place` text DEFAULT NULL,
  `spouse` varchar(255) DEFAULT NULL,
  `nid` varchar(20) DEFAULT NULL,
  `height` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `gender_id` bigint(20) DEFAULT NULL,
  `blood_group_id` bigint(20) DEFAULT NULL,
  `religion_id` bigint(20) DEFAULT NULL,
  `nationality_id` bigint(20) DEFAULT NULL,
  `matrimony_id` bigint(20) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_basic`
--

INSERT INTO `user_basic` (`id`, `name`, `father`, `mother`, `email`, `phone`, `birth_date`, `birth_reg`, `birth_place`, `spouse`, `nid`, `height`, `weight`, `gender_id`, `blood_group_id`, `religion_id`, `nationality_id`, `matrimony_id`, `occupation`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Chanda Whitehead', 'Guy Browning', 'Samuel Kelly', 'luryf@mailinator.com', '+1 (439) 611-9209', '0000-00-00', '13', '5', 'Kendall Norman', '61', '78', '44', 3, 1, 1, 16, 2, 'Aristotle Walter', '2021-04-15 17:43:11', NULL, NULL),
(2, 'Celeste Kent', 'Tyler Swanson', 'Arsenio Haynes', 'rofu@mailinator.com', '+1 (782) 547-9064', '0000-00-00', '5', '27', 'Winter Carson', '56', '97', '82', 3, 6, 2, 227, 2, 'Chandler Mcintosh', '2021-04-15 17:42:20', NULL, NULL),
(3, 'Habib', NULL, NULL, 'patyryk@mailinator.com', '+1 (864) 443-2581', '2005-01-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_group`
--
ALTER TABLE `blood_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_type_id` (`business_type_id`);

--
-- Indexes for table `business_owner`
--
ALTER TABLE `business_owner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_basic_id` (`user_id`);

--
-- Indexes for table `business_type`
--
ALTER TABLE `business_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_patient`
--
ALTER TABLE `doctor_patient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generic`
--
ALTER TABLE `generic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `lab_test`
--
ALTER TABLE `lab_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matrimony`
--
ALTER TABLE `matrimony`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_schedule`
--
ALTER TABLE `medicine_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permanent_address`
--
ALTER TABLE `permanent_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sdfasdfsdf` (`patient_id`);

--
-- Indexes for table `prescriptions_lab_test`
--
ALTER TABLE `prescriptions_lab_test`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dsdfsdf` (`prescription_id`),
  ADD KEY `asdasdfsdfdf` (`lab_test_id`);

--
-- Indexes for table `prescription_medicine`
--
ALTER TABLE `prescription_medicine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dfgdfgdsg` (`prescription_id`),
  ADD KEY `sdfsdfsdfsdf` (`medicine_id`),
  ADD KEY `medicine_schedule_id` (`medicine_schedule_id`);

--
-- Indexes for table `present_address`
--
ALTER TABLE `present_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dffsd` (`brand_id`),
  ADD KEY `sdfsd` (`generic_id`),
  ADD KEY `sdfsdfsdfsdfs` (`type_id`),
  ADD KEY `sdfsdf` (`str_id`);

--
-- Indexes for table `product_strength`
--
ALTER TABLE `product_strength`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_unit`
--
ALTER TABLE `product_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_unit_relation`
--
ALTER TABLE `product_unit_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `tax_id` (`tax_id`),
  ADD KEY `per_unit_id` (`per_unit_id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shadow_module`
--
ALTER TABLE `shadow_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`module_type_id`);

--
-- Indexes for table `shadow_module_section`
--
ALTER TABLE `shadow_module_section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `m_id` (`m_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `shadow_module_type`
--
ALTER TABLE `shadow_module_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shadow_permission`
--
ALTER TABLE `shadow_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shadow_permission_ibfk_1` (`m_id`),
  ADD KEY `privilege` (`privilege`),
  ADD KEY `r_id` (`r_id`);

--
-- Indexes for table `shadow_role`
--
ALTER TABLE `shadow_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shadow_section`
--
ALTER TABLE `shadow_section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `url_type_id` (`url_type_id`);

--
-- Indexes for table `shadow_url_type`
--
ALTER TABLE `shadow_url_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shadow_user`
--
ALTER TABLE `shadow_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_basic_id` (`user_basic_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_id` (`business_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `stock_report`
--
ALTER TABLE `stock_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_id` (`business_id`),
  ADD KEY `stock_report_ibfk_2` (`item_id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indexes for table `stock_type`
--
ALTER TABLE `stock_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upazila`
--
ALTER TABLE `upazila`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_basic`
--
ALTER TABLE `user_basic`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_group`
--
ALTER TABLE `blood_group`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_owner`
--
ALTER TABLE `business_owner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_type`
--
ALTER TABLE `business_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `doctor_patient`
--
ALTER TABLE `doctor_patient`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `generic`
--
ALTER TABLE `generic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=451;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lab_test`
--
ALTER TABLE `lab_test`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matrimony`
--
ALTER TABLE `matrimony`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicine_schedule`
--
ALTER TABLE `medicine_schedule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permanent_address`
--
ALTER TABLE `permanent_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prescriptions_lab_test`
--
ALTER TABLE `prescriptions_lab_test`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prescription_medicine`
--
ALTER TABLE `prescription_medicine`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `present_address`
--
ALTER TABLE `present_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_strength`
--
ALTER TABLE `product_strength`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product_unit`
--
ALTER TABLE `product_unit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_unit_relation`
--
ALTER TABLE `product_unit_relation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shadow_module`
--
ALTER TABLE `shadow_module`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shadow_module_section`
--
ALTER TABLE `shadow_module_section`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `shadow_module_type`
--
ALTER TABLE `shadow_module_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shadow_permission`
--
ALTER TABLE `shadow_permission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `shadow_role`
--
ALTER TABLE `shadow_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shadow_section`
--
ALTER TABLE `shadow_section`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `shadow_url_type`
--
ALTER TABLE `shadow_url_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shadow_user`
--
ALTER TABLE `shadow_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_report`
--
ALTER TABLE `stock_report`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_type`
--
ALTER TABLE `stock_type`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upazila`
--
ALTER TABLE `upazila`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=537;

--
-- AUTO_INCREMENT for table `user_basic`
--
ALTER TABLE `user_basic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `business_ibfk_1` FOREIGN KEY (`business_type_id`) REFERENCES `business_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
