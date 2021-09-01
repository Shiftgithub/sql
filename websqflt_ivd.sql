-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 04:06 PM
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
-- Database: `websqflt_ivd`
--

-- --------------------------------------------------------

--
-- Table structure for table `a`
--

CREATE TABLE `a` (
  `id` int(11) NOT NULL,
  `a` text COLLATE utf8_unicode_ci NOT NULL,
  `visual` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL,
  `text_data_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `a`
--

INSERT INTO `a` (`id`, `a`, `visual`, `comment`, `page_id`, `text_data_id`) VALUES
(1, 'http://bdnews24.com/bangladesh/2013/04/20/fire-breaks-out-at-multiplan-centre', 'BD News 24', 'Collected from bdnews24.com', 6, 64),
(2, 'http://news.cnet.com/', 'Cnet.com', 'Collected from cnet.com', 6, 65);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `page_id` int(11) NOT NULL,
  `priority` int(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `page_id`, `priority`) VALUES
(6, 'Piano', 5, 100),
(8, 'Keyboards', 5, 100),
(9, 'Saxophones', 5, 100),
(10, 'Services', 5, 100),
(13, 'Acoustic Guitar', 5, 100),
(15, 'Drums', 5, 100),
(16, 'Sound interface ', 5, 100),
(17, 'Strings', 5, 100),
(18, 'Guitar Effects Pedal', 5, 100),
(20, 'Stands', 5, 100),
(21, 'Straps', 5, 100),
(22, 'Audio Excessories', 5, 100),
(24, 'Instrument accessories', 5, 100),
(25, 'Pro-Audio', 5, 100),
(26, 'Drums Sticks', 5, 100),
(27, 'Electric Guitar', 5, 100),
(28, 'Bass Guitar', 5, 100),
(29, 'Violin Accessory  ', 5, 100),
(30, 'Guitar Accessory ', 5, 100),
(31, 'Percussion Instruments', 5, 100),
(32, 'Professional Speaker', 5, 100),
(33, 'Ukulele', 5, 100),
(34, 'Violin', 5, 100);

-- --------------------------------------------------------

--
-- Table structure for table `category_vs_text_data`
--

CREATE TABLE `category_vs_text_data` (
  `id` int(11) NOT NULL,
  `text_data_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_vs_text_data`
--

INSERT INTO `category_vs_text_data` (`id`, `text_data_id`, `category_id`) VALUES
(7, 79, 8),
(16, 94, 9),
(31, 113, 13),
(34, 116, 18),
(35, 117, 18),
(36, 118, 18),
(37, 119, 18),
(38, 120, 18),
(39, 121, 18),
(40, 122, 18),
(41, 123, 18),
(42, 124, 18),
(43, 125, 18),
(44, 126, 18),
(45, 127, 18),
(46, 128, 18),
(47, 129, 18),
(48, 130, 18),
(49, 131, 18),
(50, 132, 18),
(51, 133, 15),
(52, 136, 16),
(58, 142, 16),
(59, 143, 16),
(64, 148, 18),
(65, 149, 13),
(67, 154, 17),
(68, 155, 17),
(69, 156, 17),
(72, 159, 17),
(73, 160, 17),
(74, 161, 17),
(76, 163, 17),
(77, 164, 17),
(82, 169, 17),
(83, 170, 17),
(84, 171, 17),
(86, 173, 17),
(87, 174, 17),
(88, 175, 17),
(89, 176, 17),
(90, 177, 17),
(91, 178, 17),
(92, 181, 13),
(93, 182, 13),
(94, 183, 13),
(95, 184, 20),
(96, 185, 21),
(97, 186, 13),
(98, 187, 13),
(99, 188, 22),
(100, 189, 22),
(101, 190, 22),
(102, 191, 22),
(103, 192, 22),
(104, 193, 22),
(105, 199, 24),
(109, 204, 25),
(110, 205, 13),
(111, 206, 13),
(112, 207, 13),
(113, 208, 13),
(114, 209, 13),
(115, 210, 26),
(116, 211, 26),
(117, 212, 26),
(118, 213, 8),
(120, 215, 27),
(121, 216, 27),
(122, 217, 27),
(123, 218, 27),
(124, 219, 27),
(125, 220, 27),
(126, 221, 27),
(127, 222, 27),
(128, 223, 27),
(129, 224, 27),
(137, 232, 28),
(138, 233, 28),
(139, 234, 28),
(140, 235, 28),
(141, 236, 28),
(142, 237, 28),
(143, 238, 28),
(144, 239, 28),
(145, 240, 28),
(146, 241, 28),
(147, 250, 28),
(148, 251, 28),
(149, 252, 28),
(150, 253, 13),
(151, 254, 17),
(152, 255, 17),
(153, 256, 26),
(154, 257, 26),
(155, 258, 26),
(156, 259, 26),
(157, 260, 26),
(158, 261, 26),
(159, 262, 26),
(160, 263, 29),
(161, 264, 29),
(162, 265, 29),
(163, 266, 17),
(164, 267, 29),
(165, 268, 22),
(166, 269, 30),
(167, 270, 31),
(168, 271, 29),
(169, 272, 29),
(170, 273, 30),
(171, 274, 30),
(172, 275, 30),
(173, 276, 18),
(174, 277, 26),
(175, 278, 26),
(176, 279, 26),
(177, 280, 26),
(178, 281, 26),
(179, 282, 16),
(180, 283, 16),
(181, 284, 6),
(182, 285, 25),
(183, 286, 6),
(184, 287, 13),
(185, 288, 13),
(186, 289, 13),
(187, 290, 13),
(188, 291, 13),
(189, 292, 15),
(190, 293, 8),
(191, 294, 25),
(192, 295, 22),
(193, 296, 22),
(194, 297, 27),
(195, 298, 25),
(196, 299, 13),
(197, 300, 13),
(198, 301, 13),
(199, 302, 13),
(200, 303, 13),
(201, 304, 13),
(202, 305, 33),
(203, 306, 30),
(204, 307, 30),
(205, 308, 30),
(206, 309, 34),
(207, 310, 33),
(208, 311, 30),
(210, 313, 33),
(211, 314, 13),
(212, 315, 28),
(213, 316, 31),
(214, 317, 34),
(215, 318, 22),
(216, 319, 22),
(217, 320, 13),
(218, 321, 30),
(219, 322, 13),
(220, 323, 22),
(221, 326, 34),
(222, 327, 24),
(223, 328, 29),
(224, 329, 6);

-- --------------------------------------------------------

--
-- Table structure for table `dated`
--

CREATE TABLE `dated` (
  `id` int(11) NOT NULL,
  `text_data_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `dated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dated`
--

INSERT INTO `dated` (`id`, `text_data_id`, `page_id`, `dated`) VALUES
(7, 64, 6, '2013-05-01'),
(8, 65, 6, '2013-05-10'),
(9, 66, 6, '2013-05-10'),
(10, 97, 6, '2014-07-10'),
(11, 98, 6, '2014-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `downloadtype_id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `page_id` int(11) NOT NULL,
  `text_data_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `downloadtype`
--

CREATE TABLE `downloadtype` (
  `id` int(11) NOT NULL,
  `downloadtype` varchar(5) CHARACTER SET latin1 NOT NULL,
  `phpcheck` varchar(400) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `downloadtype`
--

INSERT INTO `downloadtype` (`id`, `downloadtype`, `phpcheck`) VALUES
(1, '.pdf', 'application/pdf'),
(2, '.doc', 'application/msword'),
(3, '.zip', 'application/zip'),
(4, '.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document');

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `text_data_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`id`, `text_data_id`) VALUES
(1, 126),
(2, 121),
(3, 118),
(4, 119),
(5, 131),
(6, 122),
(7, 79),
(8, 136),
(9, 142),
(10, 143),
(11, 175),
(12, 176);

-- --------------------------------------------------------

--
-- Table structure for table `fixedtext`
--

CREATE TABLE `fixedtext` (
  `id` int(11) NOT NULL,
  `fixedtext` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fixedtext`
--

INSERT INTO `fixedtext` (`id`, `fixedtext`) VALUES
(1, 'Inventory Software'),
(2, 'Garage Band, the best choice for Musical Products in Bangladesh'),
(3, 'Garage Band, the best choice for Musical Products in Bangladesh. We are Importer and Distributor of all kinds of musical instruments. \r\n\r\nWe have a great collection of Acoustic electric guitars, Acoustic guitars, Amplifiers Effects, Basses, Classical guitars, Electric guitars, Guitar packs, Guitars accessories, Strings, Ukuleles, Accordions, Arranger keyboards, Combo organs - digital harpsicho, Digital pianos, Expanders, Keyboard - piano benches, Keyboard bags, Keyboard stands,Keyboards accessories, Brazilian percussions, Cymbals, Drum accessories, Drumsets, Electronic drums, Marching band, Orchestral drums, Percussions, Snare drums, Clarinets, Flugelhorns, French horns, Harmonicas, Oboes &amp; bassoons, Other instruments, Recorders, Saxophones, Transverse flutes, Trombones, Trumpets &amp; cornets, Tubas and many more.\r\n\r\nWe also perform repair and Repair and Maintenance services of musical instruments.'),
(4, 'garagebandbd.com'),
(5, 'adovasoft@gmail.com'),
(6, 'Music for All'),
(7, 'https://www.facebook.com/pages/Garage-Band/1422353004700154');

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `caption` text CHARACTER SET latin1 NOT NULL,
  `page_id` int(11) NOT NULL,
  `text_data_id` int(11) NOT NULL,
  `imgtype_id` int(11) NOT NULL,
  `link` varchar(200) CHARACTER SET latin1 NOT NULL,
  `border` tinyint(4) NOT NULL DEFAULT 1,
  `priority` int(3) UNSIGNED NOT NULL DEFAULT 50
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `img`
--

INSERT INTO `img` (`id`, `caption`, `page_id`, `text_data_id`, `imgtype_id`, `link`, `border`, `priority`) VALUES
(174, 'Multiplan Centre', 6, 64, 1, '', 1, 50),
(175, 'Apple Strikes', 6, 65, 1, '', 0, 50),
(176, 'FACOBOOK Updates', 6, 66, 1, '', 1, 50),
(177, 'Ukulele', 1, 69, 1, '', 0, 100),
(178, 'Drums', 1, 69, 1, '', 0, 100),
(179, 'Violin', 1, 69, 1, '', 0, 100),
(181, 'Together we thrive ', 1, 70, 1, '', 0, 100),
(182, 'Accurate information', 1, 71, 1, '', 0, 100),
(184, 'Responsibilities ', 1, 72, 1, '', 1, 100),
(185, 'Stronger Togather', 1, 73, 3, '', 0, 100),
(206, 'View 2 of Arranger keyboards', 5, 79, 1, '', 0, 100),
(207, 'View 4 of Arranger keyboards', 5, 79, 1, '', 0, 100),
(231, 'View 1 of Saxophones 9673', 5, 94, 1, '', 0, 100),
(235, 'Justin Bieber', 6, 97, 1, '', 1, 50),
(236, 'Usher', 6, 98, 1, '', 1, 50),
(267, 'Tagima Vegas N', 5, 113, 1, '', 0, 100),
(268, 'Tagima Vegas Bk', 5, 113, 1, '', 0, 100),
(269, 'Tagima Vegas Eq ', 5, 113, 1, '', 0, 100),
(278, 'Nux MFX-10 Multi Effects Processor', 5, 116, 1, '', 0, 100),
(279, 'Nux MFX-10 Multi Effects Processor', 5, 116, 1, '', 0, 100),
(280, 'Nux MFX-10 Multi Effects Processor', 5, 116, 1, '', 0, 100),
(281, 'Nux MFX-10 Multi Effects Processor', 5, 116, 1, '', 0, 100),
(282, 'PG-2 Portable Guitar Effects', 5, 117, 1, '', 0, 100),
(283, 'PG-2 Portable Guitar Effects', 5, 117, 1, '', 0, 100),
(284, 'PG-2 Portable Guitar Effects', 5, 117, 1, '', 0, 100),
(285, 'PG-2 Portable Guitar Effects', 5, 117, 1, '', 0, 100),
(286, 'Nux PA-2 Portable Acoustic Guitar EFX', 5, 118, 1, '', 0, 100),
(287, 'Nux PA-2 Portable Acoustic Guitar EFX', 5, 118, 1, '', 0, 100),
(288, 'Nux PA-2 Portable Acoustic Guitar EFX', 5, 118, 1, '', 0, 100),
(289, 'Nux PA-2 Portable Acoustic Guitar EFX', 5, 118, 1, '', 0, 100),
(290, 'Nux GP-1 Guitar Plug Headphone Amp', 5, 119, 1, '', 0, 100),
(291, 'Nux GP-1 Guitar Plug Headphone Amp', 5, 119, 1, '', 0, 100),
(292, 'Nux GP-1 Guitar Plug Headphone Amp', 5, 119, 1, '', 0, 100),
(293, 'Nux GP-1 Guitar Plug Headphone Amp', 5, 119, 1, '', 0, 100),
(294, 'Nux Time Core Stomp Box', 5, 120, 1, '', 0, 100),
(295, 'Nux Time Core Stomp Box', 5, 120, 1, '', 0, 100),
(296, 'Nux Time Core Stomp Box', 5, 120, 1, '', 0, 100),
(297, 'Nux Time Core Stomp Box', 5, 120, 1, '', 0, 100),
(298, 'Nux Phaser Core  Stomp Box', 5, 121, 1, '', 0, 100),
(299, 'Nux Phaser Core  Stomp Box', 5, 121, 1, '', 0, 100),
(300, 'Nux Phaser Core  Stomp Box', 5, 121, 1, '', 0, 100),
(301, 'Nux Phaser Core  Stomp Box', 5, 121, 1, '', 0, 100),
(302, 'Nux Mod Core Stomp Box', 5, 122, 1, '', 0, 100),
(303, 'Nux Mod Core Stomp Box', 5, 122, 1, '', 0, 100),
(304, 'Nux Mod Core Stomp Box', 5, 122, 1, '', 0, 100),
(305, 'Nux Mod Core Stomp Box', 5, 122, 1, '', 0, 100),
(306, 'Nux Metal Core Stomp Box', 5, 123, 1, '', 0, 100),
(307, 'Nux Metal Core Stomp Box', 5, 123, 1, '', 0, 100),
(308, 'Nux Metal Core Stomp Box', 5, 123, 1, '', 0, 100),
(309, 'Nux Metal Core Stomp Box', 5, 123, 1, '', 0, 100),
(310, 'Nux Loop Core Stomp Box', 5, 124, 1, '', 0, 100),
(311, 'Nux Loop Core Stomp Box', 5, 124, 1, '', 0, 100),
(312, 'Nux Loop Core Stomp Box', 5, 124, 1, '', 0, 100),
(313, 'Nux Loop Core Stomp Box', 5, 124, 1, '', 0, 100),
(314, 'Nux Flanger Core Stomp Box', 5, 125, 1, '', 0, 100),
(315, 'Nux Flanger Core Stomp Box', 5, 125, 1, '', 0, 100),
(316, 'Nux Flanger Core Stomp Box', 5, 125, 1, '', 0, 100),
(317, 'Nux Flanger Core Stomp Box', 5, 125, 1, '', 0, 100),
(318, 'Nux Drive Core Stomp Box', 5, 126, 1, '', 0, 100),
(319, 'Nux Drive Core Stomp Box', 5, 126, 1, '', 0, 100),
(320, 'Nux Drive Core Stomp Box', 5, 126, 1, '', 0, 100),
(321, 'Nux Drive Core Stomp Box', 5, 126, 1, '', 0, 100),
(322, 'Nux Chorus Core Stomp Box', 5, 127, 1, '', 0, 100),
(323, 'Nux Chorus Core Stomp Box', 5, 127, 1, '', 0, 100),
(324, 'Nux Chorus Core Stomp Box', 5, 127, 1, '', 0, 100),
(325, 'Nux Chorus Core Stomp Box', 5, 127, 1, '', 0, 100),
(326, 'Nux OD-3 Vintage Overdrive', 5, 128, 1, '', 0, 100),
(327, 'Nux OD-3 Vintage Overdrive', 5, 128, 1, '', 0, 100),
(328, 'Nux OD-3 Vintage Overdrive', 5, 128, 1, '', 0, 100),
(329, 'Nux OD-3 Vintage Overdrive', 5, 128, 1, '', 0, 100),
(330, 'Nux HG-6 Modern High Gain', 5, 129, 1, '', 0, 100),
(331, 'Nux HG-6 Modern High Gain', 5, 129, 1, '', 0, 100),
(332, 'Nux HG-6 Modern High Gain', 5, 129, 1, '', 0, 100),
(333, 'Nux HG-6 Modern High Gain', 5, 129, 1, '', 0, 100),
(334, 'Nux AS-4 Modern Amplifier Simulator', 5, 130, 1, '', 0, 100),
(335, 'Nux AS-4 Modern Amplifier Simulator', 5, 130, 1, '', 0, 100),
(336, 'Nux AS-4 Modern Amplifier Simulator', 5, 130, 1, '', 0, 100),
(337, 'Nux AS-4 Modern Amplifier Simulator', 5, 130, 1, '', 0, 100),
(338, 'Nux CH-3 Vintage Chorus', 5, 131, 1, '', 0, 100),
(339, 'Nux CH-3 Vintage Chorus', 5, 131, 1, '', 0, 100),
(340, 'Nux CH-3 Vintage Chorus', 5, 131, 1, '', 0, 100),
(341, 'Nux CH-3 Vintage Chorus', 5, 131, 1, '', 0, 100),
(342, 'Nux PT-6 Pedal Tuner', 5, 132, 1, '', 0, 100),
(343, 'Nux PT-6 Pedal Tuner', 5, 132, 1, '', 0, 100),
(344, 'Nux PT-6 Pedal Tuner', 5, 132, 1, '', 0, 100),
(345, 'Nux PT-6 Pedal Tuner', 5, 132, 1, '', 0, 100),
(346, 'NUX DM-3 Digital Drum Kit', 5, 133, 1, '', 0, 100),
(347, 'NUX DM-3 Digital Drum Kit', 5, 133, 1, '', 0, 100),
(348, 'NUX DM-3 Digital Drum Kit', 5, 133, 1, '', 0, 100),
(349, 'TASCAM US-100', 5, 136, 1, '', 0, 100),
(350, 'TASCAM US-100', 5, 136, 1, '', 0, 100),
(351, 'TASCAM US-100', 5, 136, 1, '', 0, 100),
(352, 'TASCAM US-100', 5, 136, 1, '', 0, 100),
(368, 'TASCAM US-200', 5, 142, 1, '', 0, 100),
(369, 'TASCAM US-200', 5, 142, 1, '', 0, 100),
(370, 'TASCAM US-600', 5, 143, 1, '', 0, 100),
(371, 'TASCAM US-600', 5, 143, 1, '', 0, 100),
(372, 'TASCAM US-600', 5, 143, 1, '', 0, 100),
(380, 'Nux MG-100 Multi Effects Processor', 5, 148, 1, '', 0, 100),
(381, 'Nux MG-100 Multi Effects Processor', 5, 148, 1, '', 0, 100),
(382, 'Nux MG-100 Multi Effects Processor', 5, 148, 1, '', 0, 100),
(383, 'Nux MG-100 Multi Effects Processor', 5, 148, 1, '', 0, 100),
(384, 'Ibanez V72ECE Electro Acoustic Guitar', 5, 149, 1, '', 0, 100),
(385, 'Ibanez V72ECE Electro Acoustic Guitar', 5, 149, 1, '', 0, 100),
(386, 'Ibanez V72ECE Electro Acoustic Guitar', 5, 149, 1, '', 0, 100),
(387, 'Ibanez V72ECE Electro Acoustic Guitar', 5, 149, 1, '', 0, 100),
(389, 'Daddario Electric Guitar Strings EXL120 Super Light 9-42', 5, 154, 1, '', 0, 100),
(390, 'Daddario Electric Guitar Strings EXL110 Regular Light 10-46', 5, 155, 1, '', 0, 100),
(391, 'Daddario Electric Guitar Strings EXL130 Extra Super Light 8-38', 5, 156, 1, '', 0, 100),
(394, 'Daddario Acoustic Guitar Strings EZ900 Bronze Extra Light 10-50', 5, 159, 1, '', 0, 100),
(395, 'Daddario Acoustic Guitar Strings EZ920 Bronze Medium Light 12-54', 5, 160, 1, '', 0, 100),
(396, 'Daddario Acoustic Guitar Strings EZ910 American Bronze Light 11-52', 5, 161, 1, '', 0, 100),
(398, 'Daddario Classical Guitar Strings EJ27N Normal Tension 28-43', 5, 163, 1, '', 0, 100),
(399, 'Daddario Classical Guitar Strings EJ45. Normal Tension 28-43', 5, 164, 1, '', 0, 100),
(400, '(Martin) Darco 80/20 Bronze Light Acoustic String 12-54', 5, 169, 1, '', 0, 100),
(401, '(Martin) Darco 80/20 Bronze Extra Light Acoustic String 10-47', 5, 170, 1, '', 0, 100),
(402, '(Martin) Darco D9300 Extra Light Electric Guitar Strings 9-42 ', 5, 171, 1, '', 0, 100),
(404, 'GHS Boomers Roundwound Extra Light Electric Guitar Strings 9-42', 5, 173, 1, '', 0, 100),
(405, 'Martin Extra Light M170 80/20 Bronze Acoustic Guitar String 10-47', 5, 174, 1, '', 0, 100),
(406, 'Dean Markley Signature Series Electric Guitar Strings JZ 12-54', 5, 175, 1, '', 0, 100),
(407, 'Dean Markley Signature Series Electric Guitar Strings LT 9-42', 5, 176, 1, '', 0, 100),
(408, 'Fender Electric Guitar Strings Light Nickel Plated Steel 9-42', 5, 177, 1, '', 0, 100),
(409, 'Fender Acoustic Guitar Strings Custom Light 60CL Bronze Plated 11-52', 5, 178, 1, '', 0, 100),
(415, 'audio', 0, 0, 1, '', 0, 98),
(417, 'ac guitar', 0, 0, 1, '', 0, 96),
(418, 'supplier', 0, 0, 1, '', 0, 94),
(419, 'mixed', 0, 0, 1, '', 0, 90),
(420, 'drums', 0, 0, 1, '', 0, 95),
(421, 'mixer', 0, 0, 1, '', 0, 100),
(429, 'View 1 of DBX Driverack 260/Speaker Management', 5, 204, 1, '', 0, 100),
(435, 'View 1 of B.C.Rich JRV EGDR Fr', 5, 215, 1, '', 0, 100),
(436, 'View 2 of B.C.Rich JRV EGDR Fr', 5, 215, 1, '', 0, 100),
(437, 'View 4 of B.C.Rich JRV EGDR Fr', 5, 215, 1, '', 0, 100),
(438, 'View 5 of B.C.Rich JRV EGDR Fr', 5, 215, 1, '', 0, 100),
(439, 'View 1 of B.C.Rich Kerry King Speed V', 5, 216, 1, '', 0, 100),
(440, 'View 2 of B.C.Rich Kerry King Speed V', 5, 216, 1, '', 0, 100),
(441, 'View 3 of B.C.Rich Kerry King Speed V', 5, 216, 1, '', 0, 100),
(442, 'View 4 of B.C.Rich Kerry King Speed V', 5, 216, 1, '', 0, 100),
(443, 'View 5 of B.C.Rich Kerry King Speed V', 5, 216, 1, '', 0, 100),
(444, 'View 1 of B.C.Rich Kerry King V Two Tribal onyx', 5, 217, 1, '', 0, 100),
(445, 'View 2 of B.C.Rich Kerry King V Two Tribal onyx', 5, 217, 1, '', 0, 100),
(446, 'View 3 of B.C.Rich Kerry King V Two Tribal onyx', 5, 217, 1, '', 0, 100),
(447, 'View 4 of B.C.Rich Kerry King V Two Tribal onyx', 5, 217, 1, '', 0, 100),
(448, 'View 5 of B.C.Rich Kerry King V Two Tribal onyx', 5, 217, 1, '', 0, 100),
(449, 'View 1 of B.C.Rich Mock Contour Deluxe', 5, 218, 1, '', 0, 100),
(450, 'View 2 of B.C.Rich Mock Contour Deluxe', 5, 218, 1, '', 0, 100),
(451, 'View 3 of B.C.Rich Mock Contour Deluxe', 5, 218, 1, '', 0, 100),
(452, 'View 4 of B.C.Rich Mock Contour Deluxe', 5, 218, 1, '', 0, 100),
(453, 'View 5 of B.C.Rich Mock Contour Deluxe', 5, 218, 1, '', 0, 100),
(454, 'View 1 of B.C.Rich Mocking Bird Fr', 5, 219, 1, '', 0, 100),
(455, 'View 2 of B.C.Rich Mocking Bird Fr', 5, 219, 1, '', 0, 100),
(456, 'View 3 of B.C.Rich Mocking Bird Fr', 5, 219, 1, '', 0, 100),
(457, 'View 1 of B.C.Rich Villain One', 5, 220, 1, '', 0, 100),
(458, 'View 2 of B.C.Rich Villain One', 5, 220, 1, '', 0, 100),
(459, 'View 3 of B.C.Rich Villain One', 5, 220, 1, '', 0, 100),
(460, 'View 4 of B.C.Rich Villain One', 5, 220, 1, '', 0, 100),
(461, 'View 5 of B.C.Rich Villain One', 5, 220, 1, '', 0, 100),
(462, 'View 1 of B.C.Rich Villain Escape 7', 5, 221, 1, '', 0, 100),
(463, 'View 2 of B.C.Rich Villain Escape 7', 5, 221, 1, '', 0, 100),
(464, 'View 3 of B.C.Rich Villain Escape 7', 5, 221, 1, '', 0, 100),
(465, 'View 4 of B.C.Rich Villain Escape 7', 5, 221, 1, '', 0, 100),
(466, 'View 5 of B.C.Rich Villain Escape 7', 5, 221, 1, '', 0, 100),
(467, 'View 1 of B.C.Rich WarBeast Tremolo', 5, 222, 1, '', 0, 100),
(468, 'View 2 of B.C.Rich WarBeast Tremolo', 5, 222, 1, '', 0, 100),
(469, 'View 3 of B.C.Rich WarBeast Tremolo', 5, 222, 1, '', 0, 100),
(470, 'View 4 of B.C.Rich WarBeast Tremolo', 5, 222, 1, '', 0, 100),
(471, 'View 5 of B.C.Rich WarBeast Tremolo', 5, 222, 1, '', 0, 100),
(472, 'View 1 of B.C.Rich Kerry King Warlock 2', 5, 223, 1, '', 0, 100),
(473, 'View 2 of B.C.Rich Kerry King Warlock 2', 5, 223, 1, '', 0, 100),
(474, 'View 3 of B.C.Rich Kerry King Warlock 2', 5, 223, 1, '', 0, 100),
(475, 'View 1 of B.C.Rich Warlock Fr', 5, 224, 1, '', 0, 100),
(476, 'View 2 of B.C.Rich Warlock Fr', 5, 224, 1, '', 0, 100),
(477, 'View 3 of B.C.Rich Warlock Fr', 5, 224, 1, '', 0, 100),
(478, 'View 4 of B.C.Rich Warlock Fr', 5, 224, 1, '', 0, 100),
(479, 'View 5 of B.C.Rich Warlock Fr', 5, 224, 1, '', 0, 100),
(503, 'View 1 of Spector Legend 4X Classic', 5, 232, 1, '', 0, 100),
(504, 'View 2 of Spector Legend 4X Classic', 5, 232, 1, '', 0, 100),
(505, 'View 3 of Spector Legend 4X Classic', 5, 232, 1, '', 0, 100),
(506, 'View 1 of Spector legend 5 Classic Alex Webster', 5, 233, 1, '', 0, 100),
(507, 'View 2 of Spector legend 5 Classic Alex Webster', 5, 233, 1, '', 0, 100),
(508, 'View 3 of Spector legend 5 Classic Alex Webster', 5, 233, 1, '', 0, 100),
(509, 'View 4 of Spector legend 5 Classic Alex Webster', 5, 233, 1, '', 0, 100),
(510, 'View 1 of Spector legend 4 Standard Black', 5, 234, 1, '', 0, 100),
(511, 'View 2 of Spector legend 4 Standard Black', 5, 234, 1, '', 0, 100),
(512, 'View 3 of Spector legend 4 Standard Black', 5, 234, 1, '', 0, 100),
(513, 'View 1 of Spector legend 4 Standard Blue', 5, 235, 1, '', 0, 100),
(514, 'View 2 of Spector legend 4 Standard Blue', 5, 235, 1, '', 0, 100),
(515, 'View 3 of Spector legend 4 Standard Blue', 5, 235, 1, '', 0, 100),
(516, 'View 4 of Spector legend 4 Standard Blue', 5, 235, 1, '', 0, 100),
(517, 'View 1 of Spector legend 4 Classic HoloFlash', 5, 236, 1, '', 0, 100),
(518, 'View 2 of Spector legend 4 Classic HoloFlash', 5, 236, 1, '', 0, 100),
(519, 'View 3 of Spector legend 4 Classic HoloFlash', 5, 236, 1, '', 0, 100),
(520, 'View 1 of Spector Legend 4 Classic Slate Gray', 5, 237, 1, '', 0, 100),
(521, 'View 2 of Spector Legend 4 Classic Slate Gray', 5, 237, 1, '', 0, 100),
(522, 'View 3 of Spector Legend 4 Classic Slate Gray', 5, 237, 1, '', 0, 100),
(523, 'View 1 of Spector Legend 5 Standard Black', 5, 238, 1, '', 0, 100),
(524, 'View 2 of Spector Legend 5 Standard Black', 5, 238, 1, '', 0, 100),
(525, 'View 3 of Spector Legend 5 Standard Black', 5, 238, 1, '', 0, 100),
(526, 'View 1 of Spector Legend 5 Standard Blue', 5, 239, 1, '', 0, 100),
(527, 'View 2 of Spector Legend 5 Standard Blue', 5, 239, 1, '', 0, 100),
(528, 'View 1 of Spector Legend 6 Classic ', 5, 240, 1, '', 0, 100),
(529, 'View 2 of Spector Legend 6 Classic ', 5, 240, 1, '', 0, 100),
(530, 'View 3 of Spector Legend 6 Classic ', 5, 240, 1, '', 0, 100),
(531, 'View 1 of Spector Core 4 Fretted', 5, 241, 1, '', 0, 100),
(532, 'View 2 of Spector Core 4 Fretted', 5, 241, 1, '', 0, 100),
(533, 'View 3 of Spector Core 4 Fretted', 5, 241, 1, '', 0, 100),
(534, 'View 4 of Spector Core 4 Fretted', 5, 241, 1, '', 0, 100),
(535, 'Products Test Inage', 5, 79, 1, '', 1, 50),
(536, 'aa', 5, 79, 1, '', 1, 50),
(544, 'Fazley Rabbi', 2, 245, 1, '', 1, 50),
(545, 'Mahabud', 2, 246, 1, '', 1, 50),
(546, 'Ali Rezowan', 2, 247, 1, '', 1, 50),
(547, 'Md Mahabub Alam', 2, 249, 1, '', 1, 50),
(548, 'View 1 of Music Man Bass ( 4 String )', 5, 250, 1, '', 0, 100),
(549, 'View 1 of Music Man Bass ( 5 String )', 5, 251, 1, '', 0, 100),
(550, 'View 1 of Ibanez ( GSR 205 )', 5, 252, 3, '', 0, 100),
(551, 'View 1 of Wash-burn Acoustic ', 5, 253, 1, '', 0, 100),
(552, 'View 1 of D\\\'addario bass strings 4', 5, 254, 1, '', 0, 100),
(553, 'View 1 of Vic Firth NOVA', 5, 256, 1, '', 0, 100),
(554, 'View 1 of YAMAHA Percosin', 5, 257, 1, '', 0, 100),
(555, 'View 1 of TAMA 7A ', 5, 258, 1, '', 0, 100),
(556, 'View 1 of TAMA 5A ', 5, 259, 1, '', 0, 100),
(557, 'View 1 of Fleet Mallet', 5, 260, 1, '', 0, 100),
(558, 'View 1 of Pro Mark 5A ', 5, 261, 1, '', 0, 100),
(559, 'View 1 of YAMAHA 5A ', 5, 262, 1, '', 0, 100),
(560, 'View 1 of Violin Mute', 5, 263, 1, '', 0, 100),
(561, 'View 1 of Rosin ( Wood Box )', 5, 264, 1, '', 0, 100),
(562, 'View 2 of Rosin ( Wood Box )', 5, 264, 1, '', 0, 100),
(563, 'View 1 of Rosin ( Normal )', 5, 265, 1, '', 0, 100),
(564, 'View 1 of Ukulele String ( Alice )', 5, 266, 1, '', 0, 100),
(565, 'View 1 of Violin Parts', 5, 267, 1, '', 0, 100),
(566, 'View 1 of AROMA MECHANICAL METRONOME ', 5, 268, 1, '', 0, 100),
(567, 'View 1 of Alice Sound Hole Block', 5, 269, 1, '', 0, 100),
(568, 'View 1 of Fleet Wind Bell / Chime', 5, 270, 1, '', 0, 100),
(569, 'View 1 of Violin Pickup KQ2 ', 5, 271, 1, '', 0, 100),
(570, 'View 1 of Violin Rest', 5, 272, 1, '', 0, 100),
(571, 'View 1 of Fish Man Equalizer ', 5, 273, 1, '', 0, 100),
(572, 'View 1 of Dream Maker Equalizer ', 5, 274, 1, '', 0, 100),
(573, 'View 1 of LC 5 Band Equalizer ', 5, 275, 1, '', 0, 100),
(574, 'View 1 of DiGi Tech RP-355', 5, 276, 1, '', 0, 100),
(575, 'View 1 of Rivera Brush Stick ( Plastic )', 5, 277, 1, '', 0, 100),
(576, 'View 2 of Rivera Brush Stick ( Plastic )', 5, 277, 1, '', 0, 100),
(577, 'View 1 of Rivera Brush Stick ( Metal )', 5, 278, 1, '', 0, 100),
(578, 'View 1 of Fiber Color Drum Stick', 5, 279, 1, '', 0, 100),
(579, 'View 1 of Drum Stick ( Normal )', 5, 280, 1, '', 0, 100),
(580, 'View 1 of Rock DrumStick', 5, 281, 1, '', 0, 100),
(581, 'View 1 of M-Audio M-Track', 5, 282, 1, '', 0, 100),
(582, 'View 2 of M-Audio M-Track', 5, 282, 1, '', 0, 100),
(583, 'View 3 of M-Audio M-Track', 5, 282, 1, '', 0, 100),
(584, 'QSC RMX 5050', 5, 285, 1, '', 0, 50),
(585, 'QSC RMX 5050', 5, 285, 1, '', 0, 50),
(587, 'QSC MRX 5050', 5, 285, 1, '', 0, 50),
(590, 'Fazley QR', 2, 245, 3, '', 1, 50),
(591, 'Mahbub QR', 2, 246, 3, '', 1, 50),
(592, 'Rezowan QR', 2, 247, 3, '', 1, 50),
(593, 'Md Mahabub Alam QR', 2, 249, 3, '', 1, 50),
(594, 'Md Mahade Alam\r\n', 2, 244, 1, '', 1, 50),
(595, 'Md Mahade Alam QR', 2, 244, 3, '', 1, 50),
(596, 'View 1 of ARK 816 Electrical Piano', 5, 286, 1, '', 0, 100),
(597, 'View 2 of ARK 816 Electrical Piano', 5, 286, 1, '', 0, 100),
(598, 'View 3 of ARK 816 Electrical Piano', 5, 286, 1, '', 0, 100),
(599, 'View 4 of ARK 816 Electrical Piano', 5, 286, 1, '', 0, 100),
(600, 'View 1 of Wash-burn Disney ', 5, 297, 1, '', 0, 100),
(601, 'View 2 of Wash-burn Disney ', 5, 297, 1, '', 0, 100),
(602, 'View 3 of Wash-burn Disney ', 5, 297, 1, '', 0, 100),
(603, 'View 4 of Wash-burn Disney ', 5, 297, 1, '', 0, 100),
(604, 'View 1 of Yamaha-MG16XU', 5, 298, 1, '', 0, 100),
(605, 'View 1 of Guitar Link Cable', 5, 318, 1, '', 0, 100),
(606, 'View 1 of Microphone Link Cable', 5, 319, 1, '', 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `imgtype`
--

CREATE TABLE `imgtype` (
  `id` int(11) NOT NULL,
  `imgtype` varchar(5) CHARACTER SET latin1 NOT NULL,
  `phpcheck` varchar(15) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `imgtype`
--

INSERT INTO `imgtype` (`id`, `imgtype`, `phpcheck`) VALUES
(1, '.jpg', 'image/jpeg'),
(2, '.gif', 'image/gif'),
(3, '.png', 'image/png');

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mail`
--

INSERT INTO `mail` (`id`, `date`, `subject`, `message`) VALUES
(17, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Aomr\n Address : \n E-mail : tweyddo3ih@outlook.com\n Country : Congo, The Democratic Republic of The\n Phone : N4xQObJHH\n\nBooking Description : Holy Todole, so glad I clicked on this site first!\n\nOrdered : Spector Core 4 Fretted'),
(18, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Candelario\n Address : \n E-mail : v85j6z4zi@mail.com\n Country : Iran, Islamic Republic of\n Phone : ZN6JncfkXb\n\nBooking Description : Anastasia Grummel - As always bfuitaeul work!!!!! I love the Graffiti engagement shoot.  And the sunshine shoot, so wonderful! God has truly blessed you with talent. Keep up the good work.  Ana\n\nOrdered : Pro Mark 5A '),
(19, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Dineshraj\n Address : \n E-mail : nyxd6zc259r@gmail.com\n Country : Tanzania, United Republic of\n Phone : TsqViZs9RAS\n\nBooking Description : can hear it straighta0from the co-creator, Lisa Spector, who was intveriewed by Edie Jarolima0at Animal Cafe.a0 Oh, and find out what Lisa is doing coming up on Animal Planet with Victoria Stillwell! I think\n\nOrdered : Spector legend 4 Standard Black'),
(20, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Brallan\n Address : \n E-mail : foy05q59i@hotmail.com\n Country : Czech Republic\n Phone : OICs36hhJ\n\nBooking Description : Hab ich das jetzt richtig vetsranden:Durch das austragen aus der Blacklist&iuml;&raquo;&iquest; erscheint dann bei  verwendeter Grafiktreiber  halt z.B. noveu ?Der Grafiktreiber selber arbeitet aber korrekt ? Es ist also nur eine  Schf6nheits Operation \n\nOrdered : TAMA 7A '),
(21, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Emi\n Address : \n E-mail : xoadkdjd1@yahoo.com\n Country : Korea, Democratic Peoples Republic of\n Phone : MbLjsKo7j\n\nBooking Description : Amen. Its really just you anyawy with moments of someone who really sees you. I am grateful, I am my best friend, I am kind to me and you, I forgive me and you and I will deny myself .. of those negative things, give the love away and it will return to you. Be wise, be well and walk by faith, faith in Him who has saved you, provided for you, protected you. See Him, the Lord of the Universe, Jesus Christ the ultimate, the all in all, rescuer, hero, creator of all that exists. I am not alone, I can be who I was created to be, I can do what I was created to do and I am.\n\nOrdered : B.C.Rich JRV EGDR Fr'),
(22, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Anton\n Address : \n E-mail : y852rrkvip2@yahoo.com\n Country : Syrian Arab Republic\n Phone : bdGArxcIE\n\nBooking Description : Sita my friend,Evie, the music, the song, the words,  bring back such vivid meerioms of those days. And a picture of you too. This is a joyful day indeed.Cheryl\n\nOrdered : YAMAHA Percosin'),
(23, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Deborah\n Address : \n E-mail : 3qmevtxo85j@mail.com\n Country : Czech Republic\n Phone : dpxHxkLM69G\n\nBooking Description : RhythmRhythm speeds up the blood prrseuse, breathing rate and pulse. Soon the body can&acirc;??t resist the temptation to jump into action. Beta waves in the brain make a person react to the rhythm, first slowly, then progressively quicker, as the rhythm dictates. These vibrating impulses travel through the spinal cord towards the arm and leg muscles. Like a puppet on a string, the body wants &acirc;?? then starts to move. An upbeat tempo like &acirc;??Jesus Christ, Superstar&acirc;?? leaves you with no choice: what begins with toe tapping and finger snapping, drives you to jump out of your chair to dance.Elisabeth Miles, who authored the book &acirc;??TUNE YOUR BRAIN: Using music to manage your mind, body and mood&acirc;?? (Berkley Books) states that rhythmic movements create endorphins in the brain. These chemicals are the creators of the &acirc;??feel-good feelings&acirc;??.It&acirc;??s therefore no coincidence, that the rhythmic bells at Christmas or the rapping of the drums at Nazi rallies, the cling-clang of the Hare Krishna or the pounding on a hollow tree trunk by a medicine man usurp a communal response to follow a leader. Call it the pied-piper syndrome.Adding happy lyrics to a rhythmic tune eases the primary intention of helping to memorize the music. But by no means are lyrics the most important of the two. Rhythm alone is enough to create the pied-piper effect. In the days that the liturgy was in Latin, songs were not understood by the masses. The tunes, however were easily assimilated, despite the absence of comprehension, because the melodies were hummed and the rhythm clapped which drilled the music into the churchgoer&acirc;??s memory. Often gospel lyrics were corrupted with the native language to resemble a childlike nonsensical nursery rhyme.Researchers discovered that music doesn&acirc;??t have to be happy to make a lasting effect on people. (I think suddenly of &acirc;??The Lorelei&acirc;?? in &acirc;??The Holocaust&acirc;??). Sad, somber, melancholic, downbeat and depressing melodies, like the ones droned to death at funerals set people at ease and bring comfort and humbleness, as long as they are aesthetically high rated. &acirc;??It is perceived as pleasurable, despite the sad content&acirc;?? remarks Valerie Stratton, Ph.D., associate professor of psychology at the Pennsylvania State University. Dr. Stratton goes on to say that listening to smooth hum-like Gregorian chants is an effective method of relaxation, whether during group therapy or while on a solo walk in the woods. This explains the effect monasteries have had for centuries on the condition of mental patients. The soothing, simple, predictable rhythm patterns lower the blood prrseuse and muscle tension and slow the heart beat from a regular 75 beats a minute to a mere 50.Dr. Stratton also refers to the so called &acirc;??Mozart-effect&acirc;??: a background of Mozart sonatas has proven to improve performance on space-time reasoning tests. Unfortunately, the opposite has been evidenced to be true too. Tests suggest that overstimulating rhythms, with little or no creative value, stifle the perception and concentration of the test takers. When lyrics with incoherent subliminal messages were added, and repeated at high frequency, test takers were driven to annoyance and aggressive behavior.Like with the visual arts, religion has made efficient use of music throughout history. Even the denominations that forbid music in their services use the influence of rhythm on a person&acirc;??s mood by means of the preacher&acirc;??s speech pattern. A short-long boom and drone scheme of syllables by a preacher&acirc;??s voice draws attention just as a concussion instrument does. The speech pattern is lessened to a basic beat. It is just as suggestive as the rhythm produced by a musical instrument and invites the congregation to join in with hand clapping, knee-jerking and hip swaying.Foremost though, religious leaders have made use of upbeat and downbeat music to alter the mood of the masses to fit their intentions and expectations, whether it be for saintly celebrations as an escape from the misery of poverty or for the preparations of war. Whether a musical composition is stormy and pounding or serene and fatigued, the church shepherds will go to great length to turn that tune into the right rhythm for their sheep to march on.\n\nOrdered : Daddario Electric Guitar Strings EXL120 Super Light 9-42'),
(24, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Alejandro\n Address : \n E-mail : ld770eelrf@outlook.com\n Country : Macedonia, The Former Yugoslav Republic of\n Phone : 1309Irdq0sg\n\nBooking Description : I totally agree  Ive read at least a hredund books in the last 20 years and no book will ever compare to a real class, someone to look at your playing and give you real feedback.\n\nOrdered : Avid First Track Duo'),
(25, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Milad\n Address : \n E-mail : x9eseezrfj@mail.com\n Country : Czech Republic\n Phone : j3poybs8JYEm\n\nBooking Description : Catania.Ma il mio idioletto e8 puiottsto composito: solo la famiglia di mio padre e8 di Catania, quella di mia madre viene da Villarosa, provincia di Enna - che a sua volta e8 un borgo di minatori di fondazione recente, i miei nonni erano la prima generazione nata in loco; credo di aver ricostruito che la famiglia di mio nonno fosse di Bagheria, presso Palermo, quella di mia nonna di Petralia, sulle Madonie.E io?If9 nenti ci trasu, annascii a Bergamo (provincia, diciamo). :-P\n\nOrdered : GHS Boomers Roundwound Extra Light Electric Guitar Strings 9-42'),
(26, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Julia\n Address : \n E-mail : 8blty3voe5l@yahoo.com\n Country : Macedonia, The Former Yugoslav Republic of\n Phone : Jptnvk9Vv\n\nBooking Description : By , July 3, 2012 at 9:18 pm It was a stealth game. If you made the wponaes too powerful, the team feared that no one would sneak.  Which is unfortunately why Splinter Cell is not a sneaker anymore. Sam is the ultimate soldier with instant-kill options. Maxime Beland should read this. Then again, he wanted to make it a shooter anyway, not a stealth game.\n\nOrdered : Arranger keyboards Model 14562'),
(27, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Dandara\n Address : \n E-mail : 8lzsinuvh@yahoo.com\n Country : Korea, Republic of\n Phone : TlQ4R4cA\n\nBooking Description : Interesting. I am also not a member of the party, but dntoae monthly.The last email I received seeking money was just when all these stupid senior liberals were bashing Dion and trying to force him to quit. I replied to that email suggesting they will not get more money from me until they get those idiots to shut up.A week later I got a reply thanking me for my input, and that the party appreciates and listens to the policy ideas from people like me. It was quite apparent they did not read my email, which is bad enough (though I understand they cannot respond to them all), but it was pretty stupid to send a form letter back to make it obvious that despite their claim to listen to people like me, they are not actually listening at all.\n\nOrdered : Ukulele String ( Alice )'),
(28, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Adrian\n Address : \n E-mail : 5aeuwasf53k@yahoo.com\n Country : Tanzania, United Republic of\n Phone : 6RxCDRtb\n\nBooking Description : Um Paul.  the sunshine girls cmeomnt was not the issue.  What was the issue was telling Kris Simms that she was a pawn being used by Paledau (sp?) to undercut Quebec CBC and that SunTV would be shut down when it happened.  THAT is unacceptable and smacks of being in Cahoots with the CBC to ensure their survival.  He HAD to have gotten that idea from somewhere and CBC and their  friends with benefits  seems like the source.  Threatening a broadcaster to protect one on the taxpayer dime is not OK in my books.\n\nOrdered : B.C.Rich WarBeast Tremolo'),
(29, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Kecubung\n Address : \n E-mail : alm1se7z@gmail.com\n Country : Central African Republic\n Phone : 5MOEdL0cma1\n\nBooking Description : Agreed. I like the policies and dticerion the party is heading, I just think they need someone to articulate that dticerion better to  Canadian voters.  In 6 months when the gravity of our financial and environmental situation becomes more apparent to the average Canadian, hopefully the liberals will be able to better explain their proposed solutions to the problems we face.  Then possible supporters will see the benefit to a strong and well funded opposition to the CPC free market policies.\n\nOrdered : Ibanez ( GSR 205 )'),
(30, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Enrique\n Address : \n E-mail : f159lg32fui@yahoo.com\n Country : Congo, The Democratic Republic of The\n Phone : ezUzmb2x\n\nBooking Description : Extremely on both. The look on his face during the inveetirw that WAS on the record, bordered on a very creepy, simmering anger so I too agree with Joanne on  condescending .What this whole thing has exposed in my mind is that James Moore has no credibility on this file because of this series of conversations.He comes across as a typical snake in the grass politician and his sexist  Sunshine Girls  comment implied to me precisely what you felt too, Sandy.\n\nOrdered : Violin Rest'),
(31, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Aril\n Address : \n E-mail : leknez76@hotmail.com\n Country : Lao Peoples Democratic Republic\n Phone : ITaMPFPFT0mP\n\nBooking Description : That is interesting.I datone to the LPC because they are the only party that can defeat Harper. The reason I hesitate in donating to them are the many stories about backstabbing. I suggest the bigger issue is the fact the party seems intent on defeating itself. I am not interested in funding another leadership contest. I will datone again once a new leader is chosen.Spector is a hack.\n\nOrdered : Test Product'),
(32, '2016-03-05', 'PRODUCT ORDER FROM SITE', '\n Name : Yashwanth\n Address : \n E-mail : k85r2v08@yahoo.com\n Country : Korea, Democratic Peoples Republic of\n Phone : j0dMHRMY\n\nBooking Description : And my precious wee GrDaughter (named after ME!) will be a yr old in May! Good Lord ineedd,how time flies.And I still am too far away,and green with envy of you Grannies that get to nuzzle those chubby cheeks often,get to see those sweet smiles,the first tooth,ahhhh,and the wonderful smell of a clean babe. I really need to move to Alberta now I am really missing her.\n\nOrdered : TASCAM US-200'),
(33, '2016-03-06', 'PRODUCT ORDER FROM SITE', '\n Name : Hector\n Address : \n E-mail : 65onxo2cwd1@gmail.com\n Country : Macedonia, The Former Yugoslav Republic of\n Phone : iUrgGUTx27ql\n\nBooking Description :   The Ottawa Citizen&acirc;??s Dan Gardner will call another elmapxe of what he calls the connection between the Harper gov&acirc;??t and SNN. Fine. SNN can then portray the CBC, GLO-BULL, CTV as mouthpieces of the LPOC/NDPQ. The way the CBC operates though, they should be forced to be a political party with all the legalities that that entails, especially funding by taxpayers.\n\nOrdered : Nux HG-6 Modern High Gain'),
(34, '2016-03-06', 'PRODUCT ORDER FROM SITE', '\n Name : Igor\n Address : \n E-mail : molf67ve@yahoo.com\n Country : Iran, Islamic Republic of\n Phone : ueuw3bbb1\n\nBooking Description : Pretty section of cotnnet. I just stumbled upon your web site andin accession capital to assert that I get in fact enjoyed account your blog posts.Any way I will be subscribing to your augment and evenI achievement you access consistently quickly.  +11Was this answer helpful?\n\nOrdered : Nux Drive Core Stomp Box'),
(35, '2016-03-06', 'PRODUCT ORDER FROM SITE', '\n Name : Mario\n Address : \n E-mail : 10dtyq03q@outlook.com\n Country : Macedonia, The Former Yugoslav Republic of\n Phone : EIijXguGxTK\n\nBooking Description : Action requires knwedelgo, and now I can act!\n\nOrdered : Rosin ( Normal )'),
(36, '2016-03-06', 'PRODUCT ORDER FROM SITE', '\n Name : Thobani\n Address : \n E-mail : x1mrr81b49v@yahoo.com\n Country : Macedonia, The Former Yugoslav Republic of\n Phone : 5pXfHZioG\n\nBooking Description : Sorry for this very late reply. An Epiphone Les Paul Standard is a real Les Paul made by Epiphone that ferutaes neary all the Gibson ferutaes. The Epiphone les paul 100 is a cheap les-paul style copy guitar that ferutaes barely any of the actualy Les Paul ferutaes at all.\n\nOrdered : Nux AS-4 Modern Amplifier Simulator'),
(37, '2016-03-06', 'PRODUCT ORDER FROM SITE', '\n Name : Longini\n Address : \n E-mail : rshxpr3h0@yahoo.com\n Country : Korea, Democratic Peoples Republic of\n Phone : pHJ8bXKrkWir\n\nBooking Description : didnt you go to get a refund if only one piuckp worked?i mean its the first thing you do when you have something wrong with your guitar,they have to give you your money back\n\nOrdered : Spector legend 4 Classic HoloFlash'),
(38, '2016-03-06', 'PRODUCT ORDER FROM SITE', '\n Name : Harminder\n Address : \n E-mail : uo4sllgmxyx@outlook.com\n Country : Tanzania, United Republic of\n Phone : qv04HiJb\n\nBooking Description : Lisa Cadiz Wow, wee, number 5! Congrats. Looks faubolus, especially like the llght-coloured wood and joinery at neck. Hope this one makes it to our house:) Lisa\n\nOrdered : (Martin) Darco 80/20 Bronze Light Acoustic String 12-54'),
(39, '2016-03-06', 'PRODUCT ORDER FROM SITE', '\n Name : Cecilia\n Address : \n E-mail : 8hbm2fo3oac@outlook.com\n Country : Syrian Arab Republic\n Phone : qqCqXgduRGZW\n\nBooking Description : dear lisa,hullo again. just seen your website   ..you look great, wow. look forrdwato your lessons  .second sight! thats part of my past. hey you must have it. i love gospel/country music and the blue ridge mountains thing.you SOUND a great gal.regards and then some,billy\n\nOrdered : Nux Metal Core Stomp Box'),
(40, '2016-03-06', 'PRODUCT ORDER FROM SITE', '\n Name : Tricia\n Address : \n E-mail : o1idjtle@hotmail.com\n Country : Korea, Democratic Peoples Republic of\n Phone : 9tTP4sfSzYwA\n\nBooking Description : Music4thsoul March 28, 2011N.E.R.D gonna be in Germany again soon   Tis a real shame that it was not PUT UP ON HERE as usual ..  :/ Thank you NERD for swinging by again soon ..we are so extceid!!!!\n\nOrdered : Fleet Wind Bell / Chime'),
(41, '2016-03-06', 'PRODUCT ORDER FROM SITE', '\n Name : Bill\n Address : \n E-mail : cpaanoyjxn@outlook.com\n Country : Macedonia, The Former Yugoslav Republic of\n Phone : e20h5oOaS\n\nBooking Description : Catania.Ma il mio idioletto e8 pusttoito composito: solo la famiglia di mio padre e8 di Catania, quella di mia madre viene da Villarosa, provincia di Enna - che a sua volta e8 un borgo di minatori di fondazione recente, i miei nonni erano la prima generazione nata in loco; credo di aver ricostruito che la famiglia di mio nonno fosse di Bagheria, presso Palermo, quella di mia nonna di Petralia, sulle Madonie.E io?If9 nenti ci trasu, annascii a Bergamo (provincia, diciamo). :-P\n\nOrdered : Ibanez V74ECE Electro Acoustic Guitar'),
(42, '2016-03-06', 'PRODUCT ORDER FROM SITE', '\n Name : ArteNisa\n Address : \n E-mail : kxgn0xztr@yahoo.com\n Country : Tanzania, United Republic of\n Phone : 2d42OYvZ\n\nBooking Description : Tapez votre commentaire                                                            Vous poevuz utiliser ces mots-cle9s HTML : &lt;a&gt; &lt;abbr&gt; &lt;acronym&gt; &lt;b&gt; &lt;blockquote&gt; &lt;cite&gt; &lt;code&gt; &lt;del&gt; &lt;em&gt; &lt;i&gt; &lt;q&gt; &lt;strike&gt; &lt;strong&gt;                                                                           :D :lol: :) ;) :P 8) :roll: :( :cry: :oops: :? :| :o 8O :x :twisted: :evil: :mrgreen: :idea: :arrow: :!: :?:  Pre9venez moi de tous les nouveaux commentaires par email. Pre9venez moi de tous les nouveaux articles par email.\n\nOrdered : Spector Legend 4 Classic Slate Gray'),
(43, '2016-03-06', 'PRODUCT ORDER FROM SITE', '\n Name : Tawseef\n Address : \n E-mail : 7f6uuy0tv@mail.com\n Country : Tanzania, United Republic of\n Phone : G59cQVb1q\n\nBooking Description : habe eine frage ich habe eig eine gute grafikkarte sieddem&iuml;&raquo;&iquest; ich aber windows 7 neu drauf gezogen habe steht dort immer vga grafikkarte und die quali ist auch schlecht pls help\n\nOrdered : QSC RMX 5050 Serise Power Amp'),
(44, '2016-03-06', 'PRODUCT ORDER FROM SITE', '\n Name : Ferdinand\n Address : \n E-mail : 6xlllyomhiq@hotmail.com\n Country : Moldova, Republic of\n Phone : ZeQLyrisc4Q\n\nBooking Description : well.first id like to say its an honor .I just bought my first guaitr this past year&amp; its been fascinating!! all i could think about is guaitrs???I have to keep myself from going near a music/guitsr store.Its almost like an addiction?But i just started taking lessons about 5 mo ago  But, i  dint really put much effort or time, because of life issues you know?. i really would like to sing &amp; play for peole someday, like say a church, or the elderly. music is a  language .thats all i can describe, &amp; i would love to learn the language..:)\n\nOrdered : Alice Sound Hole Block'),
(45, '2016-03-06', 'PRODUCT ORDER FROM SITE', '\n Name : Hayani\n Address : \n E-mail : 5k3ywrygk3@outlook.com\n Country : Czech Republic\n Phone : dxvGX4kWr1\n\nBooking Description : At 57, I finally rezeaild how really passionate I am about music. I love it, and I always have. I have it in my life all the time and I find it  fulfilling . I find that there ispurity  in the notes on the acoustic guitar. I enjoy my electrics as well, but not the way I do the acoustic. I love simply strumming it to hear how true a sound it is. Nothing fake, nothing altered, just  pure  notes. Its what the sound does for me. And above all, I want to learn to play really well, for me.\n\nOrdered : Rosin ( Wood Box )'),
(46, '2016-03-06', 'PRODUCT ORDER FROM SITE', '\n Name : Kiran\n Address : \n E-mail : scue27n1@hotmail.com\n Country : Tanzania, United Republic of\n Phone : KouHad2FH\n\nBooking Description : I saw a tv program which palocrimed that you can learn many new skills these days just using the internet. That got me thinking ..hmmm I would like a new skill. What would I like to learn.? Then in a moment of inspiration I thought of the guitar. I bought one the same day and found this site. I have a 2 year old daughter and it will be great to share guitar playing with her as she gets older too.\n\nOrdered : Rock DrumStick'),
(47, '2016-03-06', 'PRODUCT ORDER FROM SITE', '\n Name : Lalely\n Address : \n E-mail : b91za37rgpw@gmail.com\n Country : Syrian Arab Republic\n Phone : QsgkuJ942X\n\nBooking Description : Love hearing all the steoirs, keep them coming.  Thank you Lisa for all you do and all the instructors over at guitar tricks.  I have learned so much from everyone and I love your down to the earth approach with websites like this, it is greatI would also like to give a BIG SHOUT OUT.  I checked out his youtube.  nice stuff.Jaime\n\nOrdered : Nux Loop Core Stomp Box'),
(48, '2016-04-27', 'Emily', ' Name : Emily\n Company : Emily\n E-mail : nfqaewwjx@gmail.com\n\nHi my name is Emily and I just wanted to drop you a quick note here instead of calling you. I came to your Garage Band - Music for All - Contact Us page and noticed you could have a lot more traffic. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get keyword targeted visitors from and they let you try the service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. Visit them here: http://mariowelte.de/8ajy'),
(49, '2016-05-02', 'Donna', ' Name : Donna\n Company : Donna\n E-mail : ivlxgpcck@gmail.com\n\nDid you just create your new Facebook page? Do you want your page to look a little more &quot;established&quot;? I found a service that can help you with that. They can send organic and 100% real likes and followers to your social pages and you can try before you buy with their free trial. Their service is completely safe and they send all likes to your page naturally and over time so nobody will suspect that you bought them. Try their service for free here: http://sirrico.net/yourls/p7gq'),
(50, '2016-05-05', 'Emily', ' Name : Emily\n Company : Emily\n E-mail : jpuvitxkwt@gmail.com\n\nHi my name is Emily and I just wanted to drop you a quick message here instead of calling you. I discovered your Garage Band - Music for All - Contact Us website and noticed you could have a lot more hits. I have found that the key to running a successful website is making sure the visitors you are getting are interested in your website topic. There is a company that you can get keyword targeted visitors from and they let you try their service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. Check it out here: http://yxbp.com/9xxk'),
(51, '2016-05-11', 'Bella', ' Name : Bella\n Company : Bella\n E-mail : utotakand@gmail.com\n\nI found a way to get 500+ visitors per day to my website and this service will let you try it for free: http://i7n.co/2ck97'),
(52, '2016-05-16', 'Rachel', ' Name : Rachel\n Company : Rachel\n E-mail : ybppdl@gmail.com\n\nHello I just wanted to drop you a quick message here instead of calling you. I discovered your Garage Band - Music for All - Contact Us website and noticed you could have a lot more visitors. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get keyword targeted traffic from and they let you try their service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. Check it out here: http://yxbp.com/9xxk'),
(53, '2016-05-24', 'Mindy', ' Name : Mindy\n Company : Mindy\n E-mail : ubfqozxkzm@gmail.com\n\nGet get targeted paid traffic sent to your Garage Band - Music for All - Contact Us website for 7 days free here: http://qa.juststicky.com/yourls/2ezt'),
(54, '2016-05-26', 'Bella', ' Name : Bella\n Company : Bella\n E-mail : csbyvxsme@googlemail.com\n\nGet get targeted paid traffic sent to your Garage Band - Music for All - Contact Us website for 7 days free here: http://cross901.lolipop.jp/0/io'),
(55, '2016-06-03', 'Natalie', ' Name : Natalie\n Company : Natalie\n E-mail : ylwjyvis@googlemail.com\n\nHi my name is Natalie and I just wanted to send you a quick message here instead of calling you. I came to your Garage Band - Music for All - Contact Us website and noticed you could have a lot more traffic. I have found that the key to running a successful website is making sure the visitors you are getting are interested in your website topic. There is a company that you can get keyword targeted traffic from and they let you try the service for free for 7 days. I managed to get over 300 targeted visitors to day to my website. Check it out here: http://sirrico.net/yourls/p5sk'),
(56, '2016-06-25', 'PRODUCT ORDER FROM SITE', '\n Name : jioio\n Address : jiojiojio\n E-mail : a@gmail.com\n Country : Bangladesh\n Phone : 01911254563\n\nBooking Description : fytyty\n\nOrdered : B.C.Rich Mock Contour Deluxe'),
(57, '2016-06-25', 'PRODUCT ORDER FROM SITE', '\n Name : Ratul\n Address : \n E-mail : ratuljh@gmail.com\n Country : Bangladesh\n Phone : 01915170777\n\nBooking Description : Just for testing purpose\n\nOrdered : B.C.Rich Mock Contour Deluxe'),
(58, '2016-07-12', 'PRODUCT ORDER FROM SITE', '\n Name : Aqib Mahmud\n Address : 156,ghatfarhadbag,kazem ali road,kotowali,chittagong\n E-mail : aqibmahmud7@gmail.com\n Country : Bangladesh\n Phone : +8801775399475\n\nBooking Description : I want 1 set of Daddario Acoustic Guitar Strings EZ900 Bronze Extra Light 10-50 for my acoustic guitar.hooe I will get my original product.thank you\n\nOrdered : Daddario Acoustic Guitar Strings EZ900 Bronze Extra Light 10-50'),
(59, '2016-08-13', 'Nadine', ' Name : Nadine\n Company : Nadine\n E-mail : hookqqb@derkras.com\n\nHi my name is Nadine and I just wanted to drop you a quick note here instead of calling you. I discovered your Garage Band - Music for All - Contact Us page and noticed you could have a lot more visitors. I have found that the key to running a successful website is making sure the visitors you are getting are interested in your website topic. There is a company that you can get keyword targeted visitors from and they let you try the service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. http://www.teqdar.net/shortl/6adt'),
(60, '2016-08-24', 'Teresa', ' Name : Teresa\n Company : Teresa\n E-mail : tkrjmv@charkler.com\n\nHello my name is Teresa and I just wanted to send you a quick note here instead of calling you. I came to your Garage Band - Music for All - Contact Us website and noticed you could have a lot more traffic. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your website topic. There is a company that you can get keyword targeted visitors from and they let you try their service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. http://pandalove.info/35p0i'),
(61, '2016-08-26', 'willing to purchase a guitar', ' Name : Jum\n Company : I dont run a company\n E-mail : dewanjum@gmail.com\n\nHello\r\n\r\nDo u have any or can import any Electric guitar under 20K like SX strat and SX les paul? Any good copy of Les paul or Strat?'),
(62, '2016-10-12', 'information', ' Name : Jubair Orko\n Company : nothing \n E-mail : marufjubair7@gmail.com\n\ni wanna know about the time schedule of your stores opening...plz let me know today if possible'),
(63, '2016-10-16', 'PRODUCT ORDER FROM SITE', '\n Name : tacit\n Address : \n E-mail : \n Country : Bangladesh\n Phone : 01911279715\n\nBooking Description : \n\nOrdered : Daddario Acoustic Guitar Strings EZ900 Bronze Extra Light 10-50'),
(64, '2016-11-05', 'PRODUCT ORDER FROM SITE', '\n Name : Howdy\n Address : \n E-mail : 7k7lw9zl@yahoo.com\n Country : Lao Peoples Democratic Republic\n Phone : 5YYPiDfinlMM\n\nBooking Description : I believed that The Human Rights Council is staluturrcly flawed, as was its predecessor the terrible Human Rights Commission. Governments checking on Human Rights of other governments. Is like an ILO composed by employers.\n\nOrdered : Nux MFX-10 Multi Effects Processor'),
(65, '2016-11-05', 'PRODUCT ORDER FROM SITE', '\n Name : Kevrel\n Address : \n E-mail : vu9rn1vef@gmail.com\n Country : Korea, Democratic Peoples Republic of\n Phone : DZRhfkWrL\n\nBooking Description : 1a9After examine just a number of of the weblog posts in your website now, and I actually like your way of blogging. I bomrkaoked it to my bookmark website record and can be checking again soon. Pls try my website as well and permit me know what you believe.\n\nOrdered : Daddario Electric Guitar Strings EXL110 Regular Light 10-46'),
(66, '2016-11-05', 'PRODUCT ORDER FROM SITE', '\n Name : Butch\n Address : \n E-mail : w8nba94s@mail.com\n Country : Central African Republic\n Phone : crOugvqFbW\n\nBooking Description : Je doute que votre &amp;lqo&amp;q;&amp;nbsp;cursauo;est beau&amp;nbsp;&amp;raquo; repr&Atilde;?&Acirc;&copy;sente la majorit&Atilde;?&Acirc;&copy; des impressions des lecteurs et lectrices &Atilde;?&Acirc;&copy;ventuels, mais il est vrai que je me suis attach&Atilde;?&Acirc;&copy; &Atilde;?&Acirc;&nbsp; faire en sorte que la prose donne quelque id&Atilde;?&Acirc;&copy;e de la beaut&Atilde;?&Acirc;&copy; du temps alors v&Atilde;?&Acirc;&copy;cu. Je vous remercie beaucoup de cet encouragement.\n\nOrdered : Nux PT-6 Pedal Tuner'),
(67, '2016-11-20', 'Test, just a test', ' Name : XRumerTest\n Company : google\n E-mail : yourmail@gmail.com\n\nHello. And Bye.'),
(68, '2016-11-21', 'Are you creative? Wear this shirt and be close to your dog. It is so crazy but lovely. Try it!', ' Name : DamonciG\n Company : google\n E-mail : terrellgregorynq575@hotmail.com\n\nAre you creative? Wear this shirt and be close to your dog. It is so crazy but lovely. Try it! \r\nClick for info: \r\nhttp://bit.ly/Dogs-Tshirt \r\n \r\nThank you!!'),
(69, '2016-11-22', 'I like Cats and so do you? bought a satisfied Tshirt with your hobby', ' Name : RonaldLarne\n Company : google\n E-mail : marlonharperzm237@hotmail.com\n\nI like Cats and so do you? bought a satisfied Tshirt with your hobby \r\nClick for info: \r\nhttp://bit.ly/Cats-tshirt \r\n \r\nThx'),
(70, '2016-11-22', 'No one wants to be eclipsed by just his clothes. This T-shirt with the image of your pets will show who you are. Wear it now!', ' Name : RussellPoode\n Company : google\n E-mail : darrelcolese301@hotmail.com\n\nNo one wants to be eclipsed by just his clothes. This T-shirt with the image of your pets will show who you are. Wear it now! \r\nClick: \r\n \r\nhttp://bit.ly/Dogstee \r\n \r\nThx'),
(71, '2016-11-24', 'I like Cats and so do you? bought a satisfied Tshirt with Your hobby!', ' Name : JamesSCurl\n Company : google\n E-mail : edmundbarnettkc331@mail.ru\n\nI like Cats and so do you? bought a satisfied Tshirt with Your hobby! \r\nClick: \r\nhttp://bit.ly/Catsshirt \r\n \r\nThank you'),
(72, '2016-12-11', 'Evelyn Serrell', ' Name : Evelyn Serrell\n Company : Evelyn Serrell\n E-mail : bhnjaszx@qrapauzgijj.com\n\nThis is a memo to the webmaster. I discovered your Garage Band - Music for All - Contact Us page by searching on Google but it was difficult to find as you were not on the front page of search results. I know you could have more traffic to your website. I have found a website which offers to dramatically increase your rankings and traffic to your website: http://hud.sn/6sk5 I managed to get close to 500 visitors/day using their service, you can also get a lot more targeted visitors from Google than you have now. Their services brought significantly more visitors to my website. I hope this helps!'),
(73, '2016-12-13', 'Jennifer', ' Name : Jennifer\n Company : Jennifer\n E-mail : tqbefduonm@jbpecbzhl.com\n\nI decided to leave a message here on your Garage Band - Music for All - Contact Us page instead of calling you. Do you need more likes for your Facebook Fan Page? The more people that LIKE your website and fanpage on Facebook, the more credibility you will have with new visitors. It works the same for Twitter, Instagram and Youtube. When people visit your page and see that you have a lot of followers, they now want to follow you too. They too want to know what all the hype is and why all those people are following you. Get some free likes, followers, and views just for trying this service I found: http://tapeciarnia.waw.pl/1xcx2'),
(74, '2016-12-15', 'We do not just bring you a Legging', ' Name : Peteranert\n Company : google\n E-mail : terrellgregorynq575@mail.ru\n\nWe do not just bring you a Legging. We are beautifying and making you much more confident! \r\nClick: \r\nhttp://leggingshop.org \r\n \r\nThank you!!'),
(75, '2016-12-16', 'RE: Your Business', ' Name : BusinessCapitalAdvisor\n Company : google\n E-mail : fundingteam+garagebandbd.com@businesscapitaladvisor.com\n\nHi, letting you know that http://BusinessCapitalAdvisor.com can find your business a loan for $2,000 - $350K Without personal credit-checks, traditional personal guarantees, or collateral. \r\n \r\nFind Out how much you qualify for here: \r\n \r\nhttp://BusinessCapitalAdvisor.com/i.php?id=e53 \r\n \r\nMinimum requirements include your company being established for at least a year and with current gross revenue of at least 120K. Eligibility and funding can be completed in as fast as 48hrs with No Credit Checks placed. Terms are personalized for each business so I suggest applying to find out exactly how much you can get on various terms. \r\n \r\nThis free service from a qualified lender does not require any personal information since the loan is based on annual revenue of your business. These funds are Non-Restrictive, allowing you to spend the full amount in any way you require including business debt consolidation, hiring, marketing, or Absolutely Any Other expense. \r\n \r\nIf you need fast, credit-free funding take a look at these programs now. \r\n \r\nClick Here: http://BusinessCapitalAdvisor.com/i.php?id=e53 \r\n \r\nHave a great day, \r\nThe Business Capital Advisor Team \r\n \r\nunsubscribe/remove - http://businesscapitaladvisor.com/r.php?url=garagebandbd.com&amp;id=e53'),
(76, '2016-12-17', 'Jennifer', ' Name : Jennifer\n Company : Jennifer\n E-mail : nqnstsz@bbmxjyvxljt.com\n\nDid you just create your new Facebook page? Do you want your page to look a little more &quot;established&quot;? I found a service that can help you with that. They can send organic and 100% real likes and followers to your social pages and you can try before you buy with their free trial. Their service is completely safe and they send all likes to your page naturally and over time so nobody will suspect that you bought them. Try their service for free here: http://trck.be/1SZ'),
(77, '2016-12-26', 'Jennifer', ' Name : Jennifer\n Company : Jennifer\n E-mail : zskvalrei@nhmqcjc.com\n\nI decided to leave a message here on your Garage Band - Music for All - Contact Us page instead of calling you. Do you need more likes for your Facebook Fan Page? The more people that LIKE your website and fanpage on Facebook, the more credibility you will have with new visitors. It works the same for Twitter, Instagram and Youtube. When people visit your page and see that you have a lot of followers, they now want to follow you too. They too want to know what all the hype is and why all those people are following you. Get some free likes, followers, and views just for trying this service I found: http://8si.ru/2gerk'),
(78, '2016-12-29', 'hKuTxXTEkxlzZSPt', ' Name : Barnypok\n Company : XeFfrDqKKCJhK\n E-mail : jfvynms4281rt@hotmail.com\n\nlkXY5n http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(79, '2016-12-29', 'Evelyn Serrell', ' Name : Evelyn Serrell\n Company : Evelyn Serrell\n E-mail : oivdtff@whangt.com\n\nThis is a memo to the webmaster. I discovered your Garage Band - Music for All - Contact Us page by searching on Google but it was difficult to find as you were not on the first page of search results. I know you could have more traffic to your site. I have found a company which offers to dramatically improve your rankings and traffic to your site: http://hud.sn/6sk5 I managed to get close to 500 visitors/day using their service, you could also get many more targeted traffic from Google than you have now. Their services brought significantly more traffic to my site. I hope this helps!'),
(80, '2016-12-31', 'cpQhYyLmpUrQFI', ' Name : Barnypok\n Company : dkRnzsQARAIFEgz\n E-mail : jfvynms4281rt@hotmail.com\n\nlKmAgI http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(81, '2017-01-02', 'Livia Schacter', ' Name : Livia Schacter\n Company : Livia Schacter\n E-mail : otjohxq@vmhtclnlxer.com\n\nHello my name is Livia Schacter and I just wanted to send you a quick message here instead of calling you. I discovered your Garage Band - Music for All - Contact Us page and noticed you could have a lot more traffic. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your website topic. There is a company that you can get keyword targeted visitors from and they let you try their service for free for 7 days. I managed to get over 300 targeted visitors to day to my site. http://iscripts.co/r'),
(82, '2017-01-03', 'KkUgXJbDzSJqVehO', ' Name : Barnypok\n Company : GyHmWNGEdGhkqi\n E-mail : jfvynms4281rt@hotmail.com\n\nSG7Kf5 http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(83, '2017-01-03', 'OpdXlWyRtuKc', ' Name : Barnypok\n Company : BpvlnxqnUUZqgs\n E-mail : jfvynms4281rt@hotmail.com\n\nrOUIJ4 http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(84, '2017-01-04', 'xqxemgslHQwE', ' Name : Barnypok\n Company : BlOELQDqMmaV\n E-mail : jfvynms4281rt@hotmail.com\n\nknP1vy http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(85, '2017-01-05', 'VQpXfOWAbkx', ' Name : Barnypok\n Company : PaTzkjFTaZnQUHiHrvh\n E-mail : jfvynms4281rt@hotmail.com\n\nWrw3Kn http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(86, '2017-01-06', 'mWhfggJLuQ', ' Name : Barnypok\n Company : ckpRIzlcwqIuQZtafw\n E-mail : jfvynms4281rt@hotmail.com\n\nRaeR9L http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(87, '2017-01-08', 'kBqBLoEcvzHObM', ' Name : Barnypok\n Company : fqVxYGQdvpaTS\n E-mail : jfvynms4281rt@hotmail.com\n\n5XzfIb http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com'),
(88, '2017-01-10', 'Jennifer', ' Name : Jennifer\n Company : Jennifer\n E-mail : oaadazfev@hhorkutic.com\n\nI decided to leave a message here on your Garage Band - Music for All - Contact Us page instead of calling you. Do you need more likes for your Facebook Fan Page? The more people that LIKE your website and fanpage on Facebook, the more credibility you will have with new visitors. It works the same for Twitter, Instagram and Youtube. When people visit your page and see that you have a lot of followers, they now want to follow you too. They too want to know what all the hype is and why all those people are following you. Get some free likes, followers, and views just for trying this service I found: http://hothor.se/2rsx5\r\nJennifer http://8si.ru/2gerk'),
(89, '2017-01-20', 'Sharon Cervantes', ' Name : Sharon Cervantes\n Company : Sharon Cervantes\n E-mail : knkxmf@zeaepclnbtp.com\n\nThis is a memo to the webmaster. I came to your Garage Band - Music for All - Contact Us page by searching on Google but it was difficult to find as you were not on the first page of search results. I know you could have more traffic to your site. I have found a company which offers to dramatically improve your rankings and traffic to your site: http://8si.ru/30cjj} I managed to get close to 500 visitors/day using their service, you can also get a lot more targeted visitors from search engines than you have now. Their services brought significantly more visitors to my website. I hope this helps!\r\nSharon Cervantes http://korturl.no/1tg1z'),
(90, '2017-01-20', 'Jennifer', ' Name : Jennifer\n Company : Jennifer\n E-mail : uyxzvrua@rbyfgd.com\n\nI decided to leave a message here on your Garage Band - Music for All - Contact Us page instead of calling you. Do you need more likes for your Facebook Fan Page? The more people that LIKE your website and fanpage on Facebook, the more credibility you will have with new visitors. It works the same for Twitter, Instagram and Youtube. When people visit your page and see that you have a lot of followers, they now want to follow you too. They too want to know what all the hype is and why all those people are following you. Get some free likes, followers, and views just for trying this service I found: http://r.advantech.com/oq\r\nJennifer http://hothor.se/2rsx5'),
(91, '2017-01-21', 'RE: Capital for Your Business', ' Name : GetBusinessFunded\n Company : google\n E-mail : fundingteam+garagebandbd.com@getbusinessfunded.com\n\nHi, letting you know that http://GetBusinessFunded.com can find your business a loan for $2,000 - $350K Without personal credit-checks, traditional personal guarantees, or collateral. \r\n \r\nFind Out how much you qualify for here: \r\n \r\nhttp://GetBusinessFunded.com/i.php?id=e56 \r\n \r\nMinimum requirements include your company being established for at least a year and with current gross revenue of at least 120K. Eligibility and funding can be completed in as fast as 48hrs with No Credit Checks placed. Terms are personalized for each business so I suggest applying to find out exactly how much you can get on various terms. \r\n \r\nThis free service from a qualified lender does not require any personal information since the loan is based on annual revenue of your business. These funds are Non-Restrictive, allowing you to spend the full amount in any way you require including business debt consolidation, hiring, marketing, or Absolutely Any Other expense. \r\n \r\nIf you need fast, credit-free funding take a look at these programs now. \r\n \r\nClick Here: http://GetBusinessFunded.com/i.php?id=e56 \r\n \r\nHave a great day, \r\nThe Get Business Funded Team \r\n \r\nunsubscribe/remove - http://getbusinessfunded.com/r.php?url=garagebandbd.com&amp;id=e56'),
(92, '2017-01-24', 'Alison Hamilton', ' Name : Alison Hamilton\n Company : Alison Hamilton\n E-mail : ejsnbxbdw@goqepdcurcv.com\n\nHello my name is Alison Hamilton and I just wanted to drop you a quick note here instead of calling you. I came to your Garage Band - Music for All - Contact Us page and noticed you could have a lot more traffic. I have found that the key to running a popular website is making sure the visitors you are getting are interested in your website topic. There is a company that you can get keyword targeted visitors from and they let you try the service for free for 7 days. I managed to get over 300 targeted visitors to day to my website. http://s.t0m-s.be/5q\r\nAlison Hamilton http://trck.be/1SX'),
(93, '2017-01-24', 'RE: Unlimited Lead Generation Software', ' Name : Unlimited\n Company : google\n E-mail : leadgenteam+solfamusicbd.com@get-unlimited-leads.co\n\nHi, would you like more business leads at no-cost? Currently http://Get-Unlimited-Leads.co is offering popular unlimited lead generation software, free-for a limited time. \r\n \r\nDownload and install now to be building databases of leads in minutes: \r\n \r\nhttp://Get-Unlimited-Leads.co \r\n \r\nThe Unlimited Lead Generator works by automatically visting yellow page directories and building a database according to your search terms. This can be used for email, cold-calling, direct mail, or to sell immediately - priced per lead. Runs on Windows, Mac, and Linux with multiple job and VPN/proxy support. Similar software retails for over $100 with less features. \r\n \r\nThis download is only available as a short promotional offer, please download now if at all interested. \r\n \r\nClick Here: http://GetUnlimitedLeads.co \r\n \r\nHave a Great Day, \r\nThe Unlimited Lead Generator Team \r\n \r\nunsubscribe/remove Here: http://get-unlimited-leads.co/r.php?url=solfamusicbd.com&amp;id=ulg03'),
(94, '2017-01-26', 'Jennifer', ' Name : Jennifer\n Company : Jennifer\n E-mail : qekamv@exulnxk.com\n\nDid you just create your new Facebook page? Do you want your page to look a little more &quot;established&quot;? I found a service that can help you with that. They can send organic and 100% real likes and followers to your social pages and you can try before you buy with their free trial. Their service is completely safe and they send all likes to your page naturally and over time so nobody will suspect that you bought them. Try their service for free here: http://decd.be/nam23DABX'),
(95, '2017-01-31', 'Maria Anderson', ' Name : Maria Anderson\n Company : Maria Anderson\n E-mail : nnljngqphy@ydegevdh.com\n\nThis is a message to the website creator. I discovered your Garage Band - Music for All - Contact Us page by searching on Google but it was difficult to find as you were not on the front page of search results. I know you could have more visitors to your site. I have found a website which offers to dramatically increase your website rankings and traffic to your website: http://acortarurl.es/57 I managed to get close to 500 visitors/day using their service, you could also get many more targeted traffic from Google than you have now. Their services brought significantly more traffic to my site. I hope this helps!'),
(96, '2017-02-03', 'Eva Carlson', ' Name : Eva Carlson\n Company : Eva Carlson\n E-mail : lyxvdcmy@fbrlyvakh.com\n\nThis is a message to the website creator. I discovered your Garage Band - Music for All - Contact Us page by searching on Google but it was hard to find as you were not on the front page of search results. I know you could have more visitors to your site. I have found a website which offers to dramatically increase your rankings and traffic to your website: http://acortarurl.es/57 I managed to get close to 500 visitors/day using their services, you could also get many more targeted visitors from Google than you have now. Their service brought significantly more traffic to my website. I hope this helps!'),
(97, '2017-02-07', 'Lora Wood', ' Name : Lora Wood\n Company : Lora Wood\n E-mail : gxhwzfva@obnyoqatqe.com\n\nHello my name is Lora Wood and I just wanted to send you a quick note here instead of calling you. I discovered your Garage Band - Music for All - Contact Us page and noticed you could have a lot more visitors. I have found that the key to running a successful website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get keyword targeted visitors from and they let you try their service for free for 7 days. I managed to get over 300 targeted visitors to day to my website. http://v-doc.co/nm/bat6h'),
(98, '2017-02-12', 'Sabrina Warren', ' Name : Sabrina Warren\n Company : Sabrina Warren\n E-mail : wscnacn@yjfrnbxrprd.com\n\nHello my name is Sabrina Warren and I just wanted to send you a quick message here instead of calling you. I came to your Garage Band - Music for All - Contact Us page and noticed you could have a lot more visitors. I have found that the key to running a successful website is making sure the visitors you are getting are interested in your subject matter. There is a company that you can get keyword targeted traffic from and they let you try their service for free for 7 days. I managed to get over 300 targeted visitors to day to my website. http://fot.li/2ne\r\nSabrina Warren http://s.t0m-s.be/3V'),
(99, '2017-02-16', 'PRODUCT ORDER FROM SITE', '\n Name : Mitul\n Address : House no.12,road no.15,Rupnagor R/A,Murpur,Dhaka-1216\n E-mail : lutfa.bokul@gmail.com\n Country : Bangladesh\n Phone : 01718961833\n\nBooking Description : \n\nOrdered : Daddario Acoustic Guitar Strings EZ900 Bronze Extra Light 10-50');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `page` varchar(20) CHARACTER SET latin1 NOT NULL,
  `visual` varchar(20) CHARACTER SET latin1 NOT NULL,
  `pagetype_id` int(4) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `page`, `visual`, `pagetype_id`, `priority`) VALUES
(5, 'products', 'Products', 3, 98);

-- --------------------------------------------------------

--
-- Table structure for table `pagetype`
--

CREATE TABLE `pagetype` (
  `id` int(11) NOT NULL,
  `pagetype` varchar(50) CHARACTER SET latin1 NOT NULL,
  `visual` varchar(50) CHARACTER SET latin1 NOT NULL,
  `transferable` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pagetype`
--

INSERT INTO `pagetype` (`id`, `pagetype`, `visual`, `transferable`) VALUES
(-1, 'auto_updated', 'Auto Updated', 0),
(0, 'custom', 'Custom', 1),
(1, 'common', 'Common', 1),
(2, 'dated', 'Blog or News with Date', 0),
(3, 'product_soft', 'Product Soft', 0),
(5, 'common_showcase', 'Common with Showcase', 1),
(6, 'product', 'Product', 1),
(7, 'services_showcase', 'Services with Showcase', 1),
(8, 'people', 'People', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `sells_id` bigint(20) UNSIGNED ZEROFILL NOT NULL,
  `date` date NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`sells_id`, `date`, `amount`) VALUES
(00000000000000000001, '2020-09-22', -32000),
(00000000000000000004, '2020-10-21', -603172500),
(00000000000000000005, '2020-10-21', 402266),
(00000000000000000006, '2020-10-24', 32000),
(00000000000000000007, '2020-10-24', 3000),
(00000000000000000007, '2020-10-24', 0),
(00000000000000000007, '2020-10-24', -2),
(00000000000000000007, '2020-10-24', 5357),
(00000000000000000008, '2020-10-24', 1000),
(00000000000000000009, '2020-10-24', 2000),
(00000000000000000009, '2020-10-24', 500),
(00000000000000000010, '2020-10-24', -320000),
(00000000000000000011, '2020-10-24', -40000),
(00000000000000000012, '2020-10-24', -50000);

-- --------------------------------------------------------

--
-- Table structure for table `people_email`
--

CREATE TABLE `people_email` (
  `text_data_id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `people_email`
--

INSERT INTO `people_email` (`text_data_id`, `email`) VALUES
(244, 'info@garageband.com'),
(245, 'thegaragebandbd@gmail.com'),
(246, 'expressmahbub@gmail.com'),
(247, 'rezowan@garagebandbd.com'),
(249, 'alam@garagebandbd.com');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(11) NOT NULL,
  `position` varchar(20) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `position`) VALUES
(1, 'center'),
(2, 'right'),
(3, 'left');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `text_data_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `p_price` double NOT NULL,
  `negotiable` tinyint(1) NOT NULL,
  `note` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`text_data_id`, `price`, `p_price`, `negotiable`, `note`) VALUES
(79, 15000, 10000, 1, 'High Quality'),
(94, 15000, 10000, 2, ''),
(113, 16500, 5000, 0, 'With Bag And Picks'),
(116, 13500, 8300, 2, '1 Year Service Warranty '),
(117, 6500, 3000, 0, '1 Year Service Warranty '),
(118, 6500, 3000, 0, '1 Year Service Warranty '),
(119, 2500, 1100, 0, '1 Year Service Warranty '),
(120, 7000, 3500, 0, '1 Year Service Warranty '),
(121, 6500, 3000, 0, '1 Year Service Warranty '),
(122, 7500, 3500, 0, '1 Year Service Warranty '),
(123, 7000, 3000, 0, '1 Year Service Warranty '),
(124, 9000, 5600, 0, '1 Year Service Warranty '),
(125, 6500, 3000, 0, '1 Year Service Warranty '),
(126, 6500, 3000, 0, '1 Year Service Warranty '),
(127, 6500, 3000, 0, '1 Year Service Warranty '),
(128, 5800, 2500, 0, '1 Year Service Warranty '),
(129, 5800, 2500, 0, '1 Year Service Warranty '),
(130, 5800, 2500, 0, '1 Year Service Warranty '),
(131, 5800, 2500, 0, '1 Year Service Warranty '),
(132, 5500, 2500, 0, '1 Year Service Warranty '),
(133, 65000, 28000, 0, ''),
(136, 11500, 8700, 0, ''),
(142, 14500, 11900, 0, '1 Year Service Warranty '),
(143, 17000, 14500, 0, '1 Year Service Warranty '),
(148, 8500, 6000, 0, '1 Year Service Warranty '),
(149, 18500, 11800, 0, 'With Bag And Picks'),
(154, 400, 150, 0, ''),
(155, 400, 150, 0, ''),
(156, 400, 150, 0, ''),
(159, 400, 150, 0, ''),
(160, 400, 150, 0, ''),
(161, 400, 150, 0, ''),
(163, 400, 150, 0, ''),
(164, 400, 150, 0, ''),
(169, 500, 300, 0, ''),
(170, 500, 300, 0, ''),
(171, 500, 300, 0, ''),
(173, 600, 400, 0, ''),
(174, 550, 350, 0, ''),
(175, 650, 400, 0, ''),
(176, 650, 400, 0, ''),
(177, 300, 120, 0, ''),
(178, 300, 120, 0, ''),
(181, 10500, 4575, 0, ''),
(182, 13500, 5300, 0, ''),
(183, 12500, 4700, 0, ''),
(184, 15500, 8700, 0, ''),
(185, 500, 200, 0, ''),
(186, 12500, 5000, 0, ''),
(187, 11800, 4575, 0, ''),
(188, 200, 50, 0, ''),
(189, 200, 50, 0, ''),
(190, 150, 50, 0, ''),
(191, 150, 45, 0, ''),
(192, 280, 160, 0, ''),
(193, 150, 50, 0, ''),
(199, 500, 200, 0, ''),
(204, 25500, 18900, 2, ''),
(205, 14500, 6000, 1, ''),
(206, 14500, 6000, 0, ''),
(207, 14599, 5900, 0, ''),
(208, 14599, 5900, 0, ''),
(209, 11599, 5000, 0, ''),
(210, 650, 250, 0, ''),
(211, 650, 250, 0, ''),
(212, 650, 250, 0, ''),
(213, 100, 98, 0, 'None'),
(215, 47500, 0, 0, '1 Year Service Warranty '),
(216, 75500, 0, 0, '1 Year Service Warranty '),
(217, 54500, 0, 0, '1 Year Service Warranty '),
(218, 60500, 0, 0, '1 Year Service Warranty '),
(219, 45500, 0, 0, '1 Year Service Warranty '),
(220, 24500, 0, 0, '1 Year Service Warranty '),
(221, 45000, 0, 0, '1 Year Service Warranty '),
(222, 42000, 0, 0, '1 Year Service Warranty '),
(223, 38500, 0, 0, '1 Year Service Warranty '),
(224, 34500, 0, 0, '1 Year Service Warranty '),
(232, 69500, 0, 0, '1 Year Service Warranty '),
(233, 86500, 0, 0, '1 Year Service Warranty '),
(234, 48500, 0, 0, '1 Year Service Warranty '),
(235, 48500, 0, 0, '1 Year Service Warranty '),
(236, 70500, 0, 0, '1 Year Service Warranty '),
(237, 70500, 0, 0, '1 Year Service Warranty '),
(238, 52500, 0, 0, '1 Year Service Warranty '),
(239, 52500, 0, 0, '1 Year Service Warranty '),
(240, 72500, 0, 0, '1 Year Service Warranty '),
(241, 82000, 0, 0, '1 Year Service Warranty '),
(250, 30500, 12500, 1, ''),
(251, 30500, 12500, 1, ''),
(252, 35500, 24500, 1, ''),
(253, 18500, 8000, 1, ''),
(254, 1450, 1000, 1, ''),
(255, 1850, 1000, 1, ''),
(256, 750, 300, 0, ''),
(257, 750, 300, 0, ''),
(258, 1550, 300, 1, ''),
(259, 1450, 300, 1, ''),
(260, 1250, 300, 0, ''),
(261, 1200, 300, 0, ''),
(262, 750, 150, 0, ''),
(263, 450, 150, 0, ''),
(264, 950, 150, 0, ''),
(265, 650, 100, 0, ''),
(266, 450, 100, 0, ''),
(267, 1800, 500, 0, ''),
(268, 4500, 1000, 0, ''),
(269, 800, 200, 0, ''),
(270, 6500, 1500, 0, ''),
(271, 1500, 750, 0, ''),
(272, 1300, 550, 0, ''),
(273, 5500, 1500, 0, ''),
(274, 3500, 1000, 0, ''),
(275, 3500, 1000, 0, ''),
(276, 16000, 13000, 0, ''),
(277, 1300, 650, 0, ''),
(278, 1250, 650, 0, ''),
(279, 850, 120, 0, ''),
(280, 500, 100, 0, ''),
(281, 1450, 650, 0, ''),
(282, 14500, 7500, 0, ''),
(283, 17500, 8500, 0, ''),
(284, 10, 8, 0, ''),
(285, 0, 0, 2, ''),
(286, 40500, 22000, 1, ''),
(287, 4800, 3150, 2, ''),
(288, 4800, 3150, 2, ''),
(289, 5800, 3150, 2, ''),
(290, 8000, 3150, 2, ''),
(291, 5800, 3150, 2, ''),
(292, 13000, 5200, 2, ''),
(293, 13500, 5250, 2, ''),
(294, 30000, 14000, 2, ''),
(295, 5000, 1400, 2, ''),
(296, 5000, 1400, 2, ''),
(297, 7000, 4000, 2, ''),
(298, 40000, 25000, 2, ''),
(299, 7000, 2491, 0, ''),
(300, 5500, 2616, 0, ''),
(301, 5500, 2616, 0, ''),
(302, 5500, 2591, 0, ''),
(303, 5500, 1739, 0, ''),
(304, 5500, 1739, 0, ''),
(305, 4500, 1516, 0, ''),
(306, 800, 400, 0, ''),
(307, 3250, 2000, 0, ''),
(308, 4200, 1800, 0, ''),
(309, 4800, 2500, 0, ''),
(310, 13500, 7000, 0, ''),
(311, 100, 50, 0, ''),
(313, 8500, 3500, 0, ''),
(314, 5500, 3500, 0, ''),
(315, 17000, 12000, 0, ''),
(316, 7000, 5000, 0, ''),
(317, 5000, 3000, 0, ''),
(318, 2000, 1000, 0, ''),
(319, 1800, 800, 0, ''),
(320, 2000, 1500, 0, ''),
(321, 500, 200, 0, ''),
(322, 5500, 3000, 0, ''),
(323, 16000, 12000, 0, ''),
(326, 3450, 2000, 0, ''),
(327, 1200, 1120, 0, ''),
(328, 600, 3000, 0, ''),
(329, 22, 5, 1, 'ttttt');

-- --------------------------------------------------------

--
-- Table structure for table `sells`
--

CREATE TABLE `sells` (
  `id` bigint(20) UNSIGNED ZEROFILL NOT NULL,
  `date` date NOT NULL,
  `customer` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `discount` double NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL COMMENT '0=Ordered,  1=delivered-payed,  2=delivered-due,  3=delivered-seteled'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sells`
--

INSERT INTO `sells` (`id`, `date`, `customer`, `discount`, `status`) VALUES
(00000000000000000001, '2020-09-22', '', 0, 4),
(00000000000000000003, '2020-09-28', '', 0, 5),
(00000000000000000004, '2020-10-21', '', 0, 4),
(00000000000000000005, '2020-10-21', '', 234, 3),
(00000000000000000006, '2020-10-24', 'bissho', 0, 0),
(00000000000000000007, '2020-10-24', '', 45, 0),
(00000000000000000008, '2020-10-24', '', 0, 1),
(00000000000000000009, '2020-10-24', 'gggg', 1000, 0),
(00000000000000000010, '2020-10-24', 'weer', 0, 4),
(00000000000000000011, '2020-10-24', 'Thank you ', 6000, 4),
(00000000000000000012, '2020-10-24', 'Thank you ', 6000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sells_details`
--

CREATE TABLE `sells_details` (
  `id` int(11) NOT NULL,
  `sells_id` bigint(20) UNSIGNED ZEROFILL NOT NULL,
  `text_data_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sells_details`
--

INSERT INTO `sells_details` (`id`, `sells_id`, `text_data_id`, `quantity`, `rate`) VALUES
(1, 00000000000000000001, 323, 2, 16000),
(3, 00000000000000000004, 283, 34467, 17500),
(4, 00000000000000000006, 323, 2, 16000),
(5, 00000000000000000007, 308, 2, 4200),
(6, 00000000000000000008, 169, 2, 500),
(7, 00000000000000000009, 323, 5, 16000),
(8, 00000000000000000010, 323, 20, 16000),
(9, 00000000000000000011, 215, 2, 47500),
(10, 00000000000000000011, 164, 30, 400),
(11, 00000000000000000011, 292, 3, 13000),
(12, 00000000000000000012, 215, 2, 47500),
(13, 00000000000000000012, 164, 30, 400),
(14, 00000000000000000012, 292, 3, 13000);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `text_data_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`text_data_id`, `stock`) VALUES
(79, 0),
(94, 0),
(113, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(124, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(129, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(136, 0),
(142, 0),
(143, 0),
(148, 0),
(149, 0),
(154, 0),
(155, 0),
(156, 0),
(159, 0),
(160, 0),
(161, 0),
(163, 0),
(164, 60),
(169, -2),
(170, 0),
(171, 0),
(173, 0),
(174, 0),
(175, 0),
(176, 0),
(177, 0),
(178, 0),
(181, 0),
(182, 0),
(183, 0),
(184, 0),
(185, 0),
(186, 0),
(187, 0),
(188, 0),
(189, 0),
(190, 0),
(191, 0),
(192, 0),
(193, 0),
(199, 0),
(204, 0),
(205, 0),
(206, 0),
(207, 0),
(208, 0),
(209, 0),
(210, 0),
(211, 0),
(212, 0),
(213, 0),
(215, 4),
(216, 0),
(217, 0),
(218, 0),
(219, 0),
(220, 0),
(221, 0),
(222, 0),
(223, 0),
(224, 0),
(232, 0),
(233, 0),
(234, 0),
(235, 0),
(236, 0),
(237, 0),
(238, 0),
(239, 0),
(240, 0),
(241, 0),
(250, 0),
(251, 0),
(252, 0),
(253, 0),
(254, 0),
(255, 0),
(256, 0),
(257, 0),
(258, 0),
(259, 0),
(260, 0),
(261, 0),
(262, 0),
(263, 0),
(264, 0),
(265, 0),
(266, 0),
(267, 0),
(268, 0),
(269, 0),
(270, 0),
(271, 0),
(272, 0),
(273, 0),
(274, 0),
(275, 0),
(276, 0),
(277, 0),
(278, 0),
(279, 0),
(280, 0),
(281, 0),
(282, 0),
(283, 34467),
(284, 0),
(285, 0),
(286, 0),
(287, 0),
(288, 0),
(289, 0),
(290, 0),
(291, 0),
(292, 6),
(293, 0),
(294, 0),
(295, 0),
(296, 0),
(297, 0),
(298, 0),
(299, 0),
(300, 0),
(301, 0),
(302, 0),
(303, 0),
(304, 0),
(305, 0),
(306, 0),
(307, 0),
(308, 0),
(309, 0),
(310, 0),
(311, 0),
(313, 0),
(314, 0),
(315, 0),
(316, 0),
(317, 0),
(318, 0),
(319, 0),
(320, 0),
(321, 0),
(322, 0),
(323, 22),
(326, 0),
(327, 0),
(328, 0),
(329, 10);

-- --------------------------------------------------------

--
-- Table structure for table `stock_update`
--

CREATE TABLE `stock_update` (
  `id` int(11) NOT NULL,
  `text_data_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `stock` int(11) NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock_update`
--

INSERT INTO `stock_update` (`id`, `text_data_id`, `date`, `stock`, `status`) VALUES
(1, 323, '2020-09-22', 2, 2),
(2, 323, '2020-09-26', 2, 2),
(3, 283, '2020-10-21', 34467, 2),
(4, 323, '2020-10-21', -2, 4),
(5, 329, '2020-10-24', 10, 0),
(6, 169, '2020-10-24', -2, 1),
(7, 323, '2020-10-24', 20, 2),
(8, 215, '2020-10-24', 2, 2),
(9, 164, '2020-10-24', 30, 2),
(10, 292, '2020-10-24', 3, 2),
(11, 215, '2020-10-24', 2, 2),
(12, 164, '2020-10-24', 30, 2),
(13, 292, '2020-10-24', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `text_data`
--

CREATE TABLE `text_data` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `heading` varchar(200) CHARACTER SET latin1 NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL,
  `priority` int(11) NOT NULL,
  `hidden` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `text_data`
--

INSERT INTO `text_data` (`id`, `page_id`, `heading`, `content`, `priority`, `hidden`) VALUES
(64, 6, 'Fire breaks out at Multiplan Centre', 'A fire broke out at the Multiplan Centre, known as the computer equipment market, in the capital’s Elephant Road on Saturday morning.\r\n\r\nFire Service control room official Mohammad Ali told bdnews24.com that the fire started from the fifth floor of the high-rise building at around 10.30am.\r\n\r\nThe cause of the fire could not be determined immediately.\r\n\r\nEight fire fighting units rushed to the spot and were trying to douse the blaze.\r\n\r\nDhanmondi Police Station Inspector (Patrol) Sazzad Hossain told bdnews24.com from the spot that smoke was billowing out of the building.\r\n\r\n&quot;Some people took shelter on the rooftop after the fire broke out. They are being rescued with aerial ladder.&quot;\r\n\r\nHowever, there was no report of any injury or causality.\r\n\r\nThe extent of the damage could not be known immediately.\r\nA fire broke out at the Multiplan Centre, known as the computer equipment market, in the capital’s Elephant Road on Saturday morning.\r\n\r\nFire Service control room official Mohammad Ali told bdnews24.com that the fire started from the fifth floor of the high-rise building at around 10.30am.\r\n\r\nThe cause of the fire could not be determined immediately.\r\n\r\nEight fire fighting units rushed to the spot and were trying to douse the blaze.\r\n\r\nDhanmondi Police Station Inspector (Patrol) Sazzad Hossain told bdnews24.com from the spot that smoke was billowing out of the building.\r\n\r\n&quot;Some people took shelter on the rooftop after the fire broke out. They are being rescued with aerial ladder.&quot;\r\n\r\nHowever, there was no report of any injury or causality.\r\n\r\nThe extent of the damage could not be known immediately.', 81, 0),
(65, 6, 'Apple strikes iRadio deal with Universal Music', 'Apple is getting closer to rolling out its free Internet radio service. \r\n\r\n The company has reached a licensing deal with the world\'s largest music label, Universal Music Group, according to people familiar with the situation. Apple is still in deep negotiations with Warner Music Group on some specifics. It also still needs an agreement with Sony Music, which has been tougher for Apple to get on board. \r\n\r\n Apple spokesperson Tom Neumayr declined to comment. \r\n\r\n The deal with Universal, which the Financial Times reported Thursday, could become very lucrative. \r\n\r\n After much back and forth about the terms, the deal reached with Universal -- and the one on the table with Warner Music -- could prove far sweeter for the music labels than what they get from Pandora, the service that closest resembles what Apple is building, sources say.\r\n\r\nJust last month, the labels had agreed to let  Apple pay a per-stream rate that was half of what the labels get from Pandora. That changed, however, and sources now say that the deal has Apple paying the same rate as Pandora, or even higher. \r\n\r\n While that alone could be lucrative because of Apple\'s sheer size -- and Apple plans eventually to roll this service out globally -- the hope for the labels is much bigger because it comes with two other potential revenue sources. Apple has told the music labels that it plans to build out its ad business, including potentially adding audio ads such as those heard on Pandora\'s free service. \r\n\r\n Under the deal, sources say that rights holders would get about 50 percent of the ad revenue, which is an unusually high share. It\'s also a bit of a gamble because, as it is now, Apple\'s still needs to build out the iAd business to serve a global Internet radio service. The reason the labels pushed for a higher per-stream rate is because Apple\'s radio service might roll out with little, if any, advertising, sources said. \r\n\r\n Apple is also paying an advance, sources say. \r\n\r\n The product, which would be tied to  iTunes, would be made for mobile devices. It would contain some features not available on Pandora -- such as the ability to rewind a song from the middle of it, sources say -- and would have a simple button that would let users easily purchase a song. This, too, could be a boon to the labels, which collect roughly 70 percent of every dollar from an iTunes purchases. Currently, there are about 500 million iTunes accounts; Pandora, by contrast, has about 70 million active users. \r\n\r\n The deal underscores Apple\'s desire to make a radio product happen amid growing competition. There\'s been a proliferation of streaming music services with both free and paid plans, from Pandora to Spotify to Deezer. Apple rival Google is also set to launch its own streaming-music service as part of YouTube. Sources told CNET recently that Google is aiming to launch its product, which would work on desktop and mobile devices, this summer and that it is also working on another subscription music service for Google Play, which could roll out first. \r\n\r\n Apple has told the labels it wants to launch its streaming music service this summer.', 82, 0),
(66, 6, 'Facebook updates Home, says downloads reach 1M', 'MENLO PARK, Calif. -- Facebook is releasing a new version of Facebook Home, the social network\'s software suite for Android, the company announced at its headquarters here Thursday. \r\n\r\n The new product will go live on Google Play at 1 p.m. Thursday as an update to the Facebook  Android app, but users probably won\'t see it till about 3 p.m., Facebook said. \r\n\r\n Facebook VP of Engineering Cory Ondrejka said the company is planning on several improvements to the product in the coming weeks, but today\'s update will have bug fixes. Also, for any Android devices that don\'t support Home, Facebook won\'t block users who want to transfer Home -- in a process called sideloading -- from supported devices. More than 10,000 people were using this method to get Home on unsupported devices shortly after Home launched, Facebook said. \r\n\r\n Facebook Home\'s reception has been less than stellar so far. It\'s been installed nearly 1 million times since release, according to Facebook. The social network itself, however, has more than 1 billion users. Home has also been collecting negative reviews. \r\n\r\n\r\n The company\'s partnership with HTC doesn\'t seem to have worked out so well either. AT&amp;T is selling the HTC &quot;Facebook phone&quot; for 99 cents, a month after it launched. \r\n\r\n Facebook Director of Product Adam Mosseri said the company has taken complaints from users into consideration as it moves forward with updates to the product. \r\n\r\n &quot;The clear signal is: missing launching features, and not being able to rearrange the apps,&quot; he said. \r\n\r\n In the future, Facebook promises improvements to Chat Heads, like adding a swipe movement to bring up your buddy list, and adding folders for easy access to apps. Facebook didn\'t provide a time frame for when these features will appear on Home. \r\n\r\n The issues surfaced by users may be why people aren\'t downloading Facebook Home in droves. \r\n\r\n &quot;It\'s not really important to us,&quot; Mosseri said about the low number of downloads. &quot;What\'s important to us is if people are liking the apps a lot.&quot; \r\n\r\n Facebook will also add more prompts for new users to provide more instruction when users launch Facebook Home for the first time. \r\n\r\n &quot;The idea is that because it\'s a novel interface, you slowly, gently lead the user into using the interface,&quot; Mosseri said.', 74, 0),
(67, 4, 'Call :', '+88 0197 5353737\r\n\r\n+88 044 75981603\r\n\r\n', 98, 0),
(68, 4, 'Email :', 'info@garagebandbd.com\r\n\r\nthegaragebandbd@gmail.com\r\n\r\n', 99, 0),
(69, 1, 'Our Products and Service', 'With the experience in the music industry, we know how important it is to have the best to suit your individual taste and needs. We have evolved from dealing in traditional acoustic instruments to modern state of the art hi-tech musical instruments &amp; equipment.\r\n\r\nWe are the Importer, Retailer &amp; General Order Supplier of Musical Instruments, Sound Systems, Conference Systems, Language Laboratory, DJ Systems, Home Entertainment Systems &amp; Audio Studio Systems for Professional Home Studio.\r\n\r\nWe are the Distributor of B. C. Rich Guitars, SPECTOR Bass, Finley Acoustics. We also provide Peavey, Marshall, Line 6, Pioneer Home &amp; DJ Systems, Takamine Acoustics, Taylor Acoustics, Samson, T-Rex, Crest Audio, Seymour Duncan, Custom, MXL Microphone, Electro-Harmonix, Cherub &amp; NUX, all sort of guitar accessories, Audio accessories........ ', 50, 0),
(70, 1, 'Our motto', 'Our motto is to offer high quality products at affordable value. Customer service and satisfaction is also our top priority whereby we place heavy emphasis on after sales support. We are proud to stand behind the products &amp; services we provide.\r\n\r\nWith one of the most extensive range of musical instruments and equipments in Bangladesh, we have something for everyone &amp; giving our customers a totally enjoyable musical shopping experience. Your search for the right products start here ………. at &quot; GARAGE BAND &quot;', 68, 0),
(71, 1, 'Benefits', 'Benefits offered by GARAGE BAND :\r\n\r\n(1) Saving money\r\n(2) Saving time\r\n(3) Accurate information\r\n(4) Excellent quality', 50, 0),
(72, 1, 'Responsibilities', '• Make sure best price for client\r\n• Sourcing\r\n• Sampling\r\n• Placement of orders\r\n• Pre-production check\r\n• Production control\r\n• Merchandising\r\n• Quality control\r\n• Logistic support\r\n• Shipment monitoring.', 50, 0),
(73, 1, 'Our drean A Stronger Future Togather in a wonderful world', '• To build a stronger future, we need to adopt a global and local focus and work together with closer ties to achieve better results and performance.\r\n\r\n• A partnership which with build trust, goodwill and foster a relationship which will bring profits to both our companies.\r\n\r\n• Garage Band look forward to developing this relationship by striving to achieve better performances in terms of delivery, quality and avoiding short shipment.', 50, 0),
(79, 5, 'Arranger keyboards Model 14562', 'We have high quality Arranger keyboards', 35, 0),
(94, 5, 'Saxophones 9673', 'We have a classic collection of high quality Saxophones', 50, 0),
(97, 6, 'Bieber`s plea deal statement ', 'Justin Bieber is `glad` his egging case has been resolved, the star`s representative confirms.\r\n\r\nOn Wednesday the Baby singer`s attorneys entered a no contest plea to charges of misdemeanour vandalism on behalf of the heartthrob in Los Angeles County Superior Court.\r\n\r\nAnd his spokesperson says the star is relieved he was able to come to an agreement with prosecutors.\r\n\r\n`Justin is glad to get this matter resolved and behind him,` his representative confirmed in a written statement to CNN. `He will continue to move forward focusing on his career and his music.`\r\n\r\nAs part of his plea deal, Justin must complete 12 weekly anger management sessions and five days of community service.\r\n\r\nJudge Leland Harris put him on two years probation and the star has been ordered to pay $80,900 restitution to his former neighbours for the damage his egg-throwing caused their home.\r\n\r\nThe 20-year-old pop star was accused of throwing the food in Calabasas, California, earlier this year. Repair costs for the home struck have been estimated at $20,000.\r\n\r\nAssistant District Attorney Alan Yochelson reportedly told the magistrate the incident was `an extremely immature and silly act` that caused `incredible amount of damage` to a `dream house`.\r\n\r\nJustin no longer lives near the neighbour he`s accused of egging in the Los Angeles suburbs, having apparently sold his former house months ago to Khloe Kardashian.\r\n\r\nThis isn`t the only legal case the young star is involved in. Earlier this year he was arrested for DUI while in Miami, with his team said to be working on a plea bargain.', 81, 0),
(98, 6, 'Usher to return at VMSs', 'MTV today announced via its various social media channels that Grammy&reg; Award winner, multi-platinum selling, recording artist Usher will make a triumphant return to MTV and the VMA stage during the `2014 MTV Video Music Awards` live from the Forum in Inglewood, CA on Sunday, 24TH August. MTV VMA 2014 will air on MTV in the UK on Monday 25th August at 9pm.\r\n\r\nA VMA mainstay, Usher has delivered some of the show`s most high octane and memorable performances including 2010`s stunning combo of `OMG` and `DJ Got Us Fallin` in Love,` 2004`s mashup of `Confession` and `Yeah` (featuring Ludacris and Lil John).\r\n\r\nHot on the heels of releasing their self-titled debut album, Australian pop-punk band and upcoming MTV Artist to Watch 5 Seconds of Summer, also known as Luke Hemmings, Michael Clifford, Calum Hood and Ashton Irwin, will take the VMA stage for the first time. The teen sensations have been wowing live audiences worldwide and will surely bring the audience to their feet on this night.\r\n\r\n`Can`t wait to play the VMAs this year,` says 5 Seconds of Summer. It`s a huge honor and we always love coming over to the States. We can`t wait to play on such a big stage!`\r\n\r\nUsher and 5 Seconds of Summer join previously announced Ariana Grande, who will also be performing on the VMA stage for the first time. Nominations and additional performers will be announced at a later date.\r\n\r\nFor updates please head to VMA.MTV.com or www.mtvpress.com, and follow @mtv on Instagram or Twitter. ', 100, 0),
(113, 5, 'Tagima Cutaway Classical (Vegas) Semi Acoustic', 'A premium class cutaway classical semi acoustic guitar with on board studio quality Pickup System!\r\n\r\n# Brand: Tagima\r\n# Arm: Natowood\r\n# Controls: Bass, mid, treble and presence + volume\r\n# Color: Natural\r\n# Strings: Nylon\r\n# Equalization: Piezo with pre and active 4-band digita tuner\r\n# Scale: 25.5 inches in Rosewood\r\n# Range and background : Natowood\r\n# Marking: Polka Dot\r\n# Top: Spruce\r\n\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"//www.youtube.com/embed/ZGsDMevqLhY\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(116, 5, 'Nux MFX-10 Multi Effects Processor', 'Nux MFX-10 Multi Effects Processor\r\n\r\n# A total of 55 models, up to nine can be used simultaneously\r\n# 19 classic amp and pedal models with A/B channel switching\r\n# Vintage 3-band passive EQ for every amp model\r\n# Parametric EQ with extra middle frequency sweep control for pedals\r\n# 12 cabinet models provide two different modes for guitar amplifier or mixer/PA input\r\n# Built-in drum machine with CD quality PCM sounds\r\n# Up to 20 seconds phrase loop with sound on sound\r\n# The AUX IN jack makes it easy to practice along with MP3, CDs and other inputs\r\n# The expression pedal lets you adjust the volume or effects parameters in real time\r\n# Big backlit 160 x 128 TFT LCD for clear, easy viewing of the device’s name, parameters, tuner display etc\r\n# A total of 72 presets: 36 factory + 36 user presets. The A/B switch allows you to use up to 144 presets\r\n# New generation 32-bit DSP, High Performance 24 Bit/ 48kHz AD/DA convertors\r\n# Latest TS/AC (True Simulation of Analog Circuits) Technology duplicates the distortion and tone shape of tube and vintage effect pedals\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/76CwRpytFgo\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(117, 5, 'Nux PG-2 Portable Electric Guitar Effects ', 'PG-2 Portable Guitar Effects\r\n\r\n# Two tuning modes (Chromatic, Guitar), flat tuning function\r\n# Built-in metronome with selectable rhythm patterns\r\n# 9 user and 9 preset programs\r\n# AUX IN makes it easy to jam along with an external music-playback device (mp3 player, etc.)\r\n# Three bass preamp: CLEAN, BLUES and ROCK\r\n# Three variable speed modulation effects: CHORUS, FLANGER and TREMOLO\r\n# More than 800ms DELAY, ROOM and SPRING REVERB\r\n# Noise Gate\r\n# Backlit LCD screen for tuner and metronome\r\n# Two AA batteries provide more than 8 hours\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/3OgV-b4_038\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(118, 5, 'Nux PA-2 Portable Acoustic Guitar EFX', 'Nux PA-2 Portable Acoustic Guitar EFX\r\n\r\n# Two tuning modes (Chromatic, Guitar), flat tuning function\r\n# Built-in metronome with selectable rhythm patterns\r\n# 9 user and 9 preset programs\r\n# AUX IN makes it easy to jam along with an external music-playback device (mp3 player, etc.)\r\n# Three acoustic preamp: FLAT, JUMBO and MELLOW\r\n# Three variable speed modulation effects: CHORUS-1, CHORUS-2 and WIDE\r\n# More than 300ms DELAY, ROOM and HALL REVERB\r\n# PHASE SWITH\r\n# Backlit LCD screen for tuner and metronome\r\n# Two AA batteries provide more than 8 hours\r\n\r\n\r\n', 50, 0),
(119, 5, 'Nux GP-1 Guitar Plug Headphone Amp', 'Nux GP-1 Guitar Plug Headphone Amp\r\n\r\nFeatures:\r\n# Classic British Distortion.\r\n# AUX In Jack makes it easy to practice along with your audio player.\r\n# Two AAA batteries provide more than 40 hours continuous play time.\r\n \r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/GxLkVctwGN8\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(120, 5, 'Nux Time Core Stomp Box', 'Nux Time Core Stomp Box\r\n\r\nTime Core is the Swiss knife box which creates variety types of delay and stereo loop machine with 40 seconds record time.\r\nThree knobs and one rotary switch make the operation versatile and intuitive, there is a switch for fade out of effect sound when switch off the effect. \r\n\r\n# 7 delay effects\r\n# True stereo signal processing\r\n# Tone Lock function and one preset save/recall\r\n# Built-in 40 seconds stereo loop machine\r\n# New generation 32-bit DSP, high performance 24-bit 44.1 kHz AD/DA convert\r\n# Flexible I/O jacks detect the stereo and mono connections automatically\r\n# True bypass\r\n# Runs on battery and AC power\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/giXA5GWRpjc\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(121, 5, 'Nux Phaser Core  Stomp Box', 'Nux Phaser Core  Stomp Box\r\n\r\nNot just a basic phaser pedal in market. Each unit has 2 types of important effects that players liked.\r\n\r\n# 4 - stage and Tape 8-stage\r\n# Tone Lock function and one preset save/recall\r\n# New generation 32-bit DSP, high performance 24-bit 44.1 kHz AD/DA convert\r\n# True bypass\r\n# Runs on battery or AC power\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/Asme_YiZRxE\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(122, 5, 'Nux Mod Core Stomp Box', 'Nux Mod Core Stomp Box\r\n\r\nMod Core is the all-in-one box that includes all types of modulation effect that the players have wanted for many years.\r\nChorus, flanger, phaser, tremolo, rotary, pan, u-vibe and vibrato. Each model can be change from normal to deluxe, so a total of 16 models you can choose.\r\n\r\n# 8 Modulation effects.\r\n# True stereo signal processing.\r\n# Tone Lock function and one preset save/recall.\r\n# New generation 32-bit DSP, high performance 24-bit\r\n# 44.1 kHz AD/DA convert.\r\n# Input/output Sensing circuit select optimized routing automatically.\r\n# True bypass.\r\n# Runs on battery and AC power\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/5SgDcO4wWP0\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n', 50, 0),
(123, 5, 'Nux Metal Core Stomp Box', 'Nux Metal Core Stomp Box\r\n\r\nA tons of bottom and aggressive high make Metal Core is suitable a hardcore player! Bass and high controls the tone very easily. Voice1 and voice 2 have big different from old school to a modern thresh metal!\r\n\r\n# 2 voice of metal sound.\r\n# 2-Band EQ.\r\n# Tone Lock function and one preset save/recall.\r\n# New generation 32-bit DSP, high performance 24-bit\r\n# 44.1 kHz AD/DA convert.\r\n# True bypass.\r\n# Runs on battery or AC power\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/q00_cxtBZlE\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(124, 5, 'Nux Loop Core Stomp Box', 'Nux Loop Core Stomp Box\r\n\r\nNUX Loop Core allows you to record and create music phases and play back as loops! It has 40 built-in drum patterns and offers you 99 user memories! Whether you practice, compose, or play live gigs, you will get inspired by the well-considered features of Loop Core!\r\n \r\n# Record and overdub as many layers as you need.\r\n# Up to 6 Hours recording time.\r\n# Mono or Stereo recording*(stereo input only via aux-in jack).\r\n# 99 user memories.\r\n# Built-in drum patterns with TAP tempo.\r\n# Change the playback tempo of your recorded phrases without changing the key.\r\n# Switching phrases without latency.\r\n# Extensional pedal (optional) for more control.\r\n# Import and backup phrases with PC.\r\n# True-bypass.\r\n# Runs on batteries and AC adaptor.\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/hOz8O68_VOI\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n', 50, 0),
(125, 5, 'Nux Flanger Core Stomp Box', 'Nux Flanger Core Stomp Box\r\n\r\nNot just a basic flanger pedal in market. Each unit has 2 types of important effects that players liked.\r\n\r\n# Normal and Tape Flanger\r\n# Tone Lock function and one preset save/recall\r\n# New generation 32-bit DSP, high performance 24-bit\r\n# 44.1 kHz AD/DA convert\r\n# True bypass\r\n# Runs on battery or AC power\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/lObEyg21rgk\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n', 50, 0),
(126, 5, 'Nux Drive Core Stomp Box', 'Nux Drive Core Stomp Box\r\n\r\nThe Drive Core is a mixture of a signal booster and overdrive, giving a player the ability to fatten up and overdrive their favorite amplifier sound.\r\n\r\n# Separate signal booster circuit\r\n# Warm and natural overdrive of tube saturation\r\n# Mixture of boost and overdrive sound\r\n# True Bypass\r\n# Runs on battery or AC power\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/T5uFAHiL8QE\" frameborder=\"0\" allowfullscreen></iframe>\r\n', 50, 0),
(127, 5, 'Nux Chorus Core Stomp Box', 'Nux Chorus Core Stomp Box\r\n\r\nNot just a basic chorus pedal in market. Each unit has 2 types of important effects that players liked\r\n\r\n# Normal and Tri chorus\r\n# Tone Lock function and one preset save/recall\r\n# New generation 32-bit DSP, high performance 24-bit\r\n# 44.1 kHz AD/DA convert\r\n# True bypass\r\n# Runs on battery or AC power\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/RNcsXz4wUkg\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(128, 5, 'Nux OD-3 Vintage Overdrive', 'Nux OD-3 Vintage Overdrive\r\n\r\n# Delivers that warm, natural tube overdrive sound\r\n# By rotating the knobs you can boost the guitar amp for colorful tone or overdrive itself for unique pedal sound.\r\n# True bypass provides transparent tone\r\n# LED indicator shows status of effect and battery condition\r\n# The pedal can be powered by a battery or an optional AC adaptor\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/1rW0Cvhyo3M\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(129, 5, 'Nux HG-6 Modern High Gain', 'Nux HG-6 Modern High Gain\r\n\r\n# Very high gain makes the distortion sound aggressive\r\n# 3 gain stages fully discrete circuit. FET simulate the characteristic distortion of tube amplifier\r\n# Active middle frequency EQ circuit\r\n# True bypass provides transparent tone\r\n# LED indicator shows status of effect and battery condition\r\n# The pedal can be powered by a battery or an optional AC adaptor\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/nckPktTETZE\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(130, 5, 'Nux AS-4 Modern Amplifier Simulator', 'Nux AS-4 Modern Amplifier Simulator\r\n\r\n# Simulates the characteristic distortion and cabinet sound of a guitar amplifier\r\n# Extra amount of gain boosts high frequencies for greater distortion effect\r\n# True bypass provides transparent tone\r\n# Bass and high tone control\r\n# LED indicator shows status of effect and battery condition\r\n# The pedal can be powered by a battery or an optional AC adaptor\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/8FeihjnTGNA\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n', 50, 0),
(131, 5, 'Nux CH-3 Vintage Chorus', 'Nux CH-3 Vintage Chorus\r\n\r\n# Very high quality effect with flexible function\r\n# Adapted low noise BBD in delay circuit, natural and clear sound\r\n# True bypass provides transparent tone\r\n# LED indicator shows status of effect and battery condition\r\n# The pedal can be powered by a battery or an optional AC adaptor\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/dKnedJGz4SM\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(132, 5, 'Nux PT-6 Pedal Tuner', 'Nux PT-6 Pedal Tuner\r\n\r\n# Chromatic tuning mode allows a wide range of tuning options.\r\n# LED display gives you a clearer tuning view.\r\n# Flat tuning and A4 range.\r\n# True Bypass Circuitry to allow you to quickly switch the signal in and out without latency or loss of tone.\r\n# If no signal is present for 5 minutes, it will shut-off automatically.\r\n\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/7KDGmzL-ryI\" frameborder=\"0\" allowfullscreen></iframe>\r\n', 50, 0),
(133, 5, 'Nux DM-3 Digital Drum Kit', 'NUX DM-3 Digital Drum Kit\r\n\r\n1.Drum pads\r\n# Drum pads: Snare, Tom1, Tom2, Tom3, Kick\r\n# Cymbals: Crash, Ride, Hi-hat\r\n# You can set the parameters of each drum pad and cymbals in the trigger menu. You can select each trigger by hitting the corresponding trigger: Sensitive, Scan Time, Mask Time, Retrig-C, X-Talk, Rim-Sens. Maximum 8 sounds for each drum pad.\r\n\r\n2.Appearance\r\n# Solid metal drum stand offers a sturdy four leg design with new, improved ball-clamp snare and cymbal mounts for fast, flexible component placement, lets you play with confidence.\r\n\r\n3.Sound system\r\n# More than 300 sounds. You can set the Phase effect, Volume and Trigger curve parameters.\r\n# Through setting the sound effects, you can add Reverb, Chorus, Compressor and EQ effects to drum kit sound.\r\n\r\n4.Records\r\n# You can record and save your performance while you are playing.\r\n\r\n5.SD card\r\n# You can playback MIDI files in a SD card (support GM drum sound only).\r\n# SD card can import WAV format sound to the drum module.\r\n\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/6lEq6CELq0Q\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(136, 5, 'TASCAM US-100', '\r\nTASCAM US-100\r\n\r\nThe US-100 is the perfect introduction to digital recording. Whether you use it to digitize your vinyl collection with the built-in RIAA preamp or using it with software you already own like Garage Band, the durable US-100 is your affordable ticket to start recording. \r\n\r\n# 2-in / 2-out interface\r\n# Mic Inputs: 1 (no phantom power)\r\n# Line Inputs: 2 (RCA)\r\n# Line Outputs: 2 (RCA)\r\n# Digital I/O: none\r\n# MIDI I/O: none\r\n# Included Software: Audacity\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/8WZFd4yNs4s\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(142, 5, 'TASCAM US-200', '\r\nTASCAM US-200\r\n\r\nA lightweight desktop alternative is the US-200, featuring the same great sound quality as our other interfaces. The US-200 has two combo jack inputs and four RCA outputs, totaling 2-in and 4-out. Like all the interfaces so far, the US-200 is powered through the USB jack so you don’t need to carry along a wall wart.\r\n\r\n# 2-in / 4-out interface\r\n# Mic Inputs: 2\r\n# Line Inputs: 2 (1/4\" balanced)\r\n# Line Outputs: 4 (RCA)\r\n# Digital I/O: none\r\n# MIDI I/O: 1x1\r\n# Included Software: Cubase LE5\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/T7bfFxeTvLI\" frameborder=\"0\" allowfullscreen></iframe>\r\n', 50, 0),
(143, 5, 'TASCAM US-600', '\r\nTASCAM US-600\r\n\r\nAnother front-facing desktop design is the US-600, a six-in/four-out Audio/MIDI interface. Four of the inputs are combo XLR & 1/4” jacks, and it has S/PDIF digital and MIDI I/O as well.\r\n\r\n# 6-in / 4-out interface\r\n# Mic Inputs: 4\r\n# Line Inputs: 2 (1/4\" balanced)\r\n# Line Outputs: 2 (RCA)\r\n# Digital I/O: S/PDIF coaxial\r\n# MIDI I/O: 1x1\r\n# Included Software: Cubase LE5\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/TkhOL2EEOlo\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(148, 5, 'Nux MG-100 Multi Effects Processor', 'MG-100 Multi Effects Processor\r\n\r\n\r\nThe MG-100 has so many features, its hard to name them all. BUT, here they are!!\r\n# A total of 58 effects ; up to 8 can be used simultaneously\r\n# 13 classic amp models via Cherub\'s TS/AC technology\r\n# Vintage 3-band passive EQ modeling for every amp model\r\n# 6-band graphic EQ designed specifically for electric guitar(120Hz,250Hz,750Hz,1.6kHz,3.2kHz,6.4kHz)\r\n3 11 cabinet models\r\n# Seamless and quick preset switching\r\n# Built-in drum machine with CD quality PCM sounds\r\n# Up to 40 seconds phrase loop with sound on sound adds more playability\r\n# Tap tempo control for time based effects and drum machine\r\n# Loop sounds can be played with drum machine’s rhythm beat synchronously\r\n# The AUX IN jack makes it easy to practice along with MP3, CDs and other inputs\r\n# The expression pedal lets you adjust the volume or effect parameters in real time\r\n# Large color TFT LCD panel (160 x128), graphic interface making the overall operation easy and intuitive\r\n# A total of 72 presets, 36 factory + 36 user presets\r\n# New generation 32 – bit DSP, high performance 24Bit 44.1kHz AD/DA converter\r\n# Runs on batteries and AC adaptor (ACD-007A). Six AA/LR6 alkaline batteries all up to 8 hours of continuous use.\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/2C6rICr3v9o\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(149, 5, 'Ibanez V74ECE Electro Acoustic Guitar', 'Ibanez V72ECE Electro Acoustic Guitar Features:\r\n\r\n# Top: Spruce\r\n# Back & sides: Mahogany\r\n# Neck: Mahogany\r\n# Pickup: Ibanez Under Saddle Pickup\r\n# Preamp: Ibanez AEQ2T Preamp w/ Built-in Tuner\r\n# Tuning machine: Covered\r\n# Nut & saddles: Ibanez Ivorex II\r\n# Bridge pins: Ibanez Advantage Bridge Pins\r\n# Strap button: Ibanez Strap Button for Acoustic Guitars\r\n# Fretboard: Rosewood\r\n\r\n\r\n<iframe width=\"550\" height=\"350\" src=\"//www.youtube.com/embed/i4j89iKl2bE\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(154, 5, 'Daddario Electric Guitar Strings EXL120 Super Light 9-42', '\r\n\r\nEXL120, one of D\'Addario\'s best selling sets, delivers super flexibility and biting tone. A standard for many electric guitars.\r\n\r\nXL Nickel Wound, D\'Addario\'s most popular electric guitar strings, are precision wound with nickelplated steel onto a carefully drawn, hexagonally shaped, high carbon steel core. The result, strings with long lasting, distinctive bright tone and excellent intonation, is ideal for the widest variety of guitars and musical styles.\r\n\r\n# Super light gauges for maximum flexibility and biting tone\r\n# Round wound with nickelplated steel for distinctive bright tone\r\n# Environmentally friendly, corrosion resistant packaging for strings that are always fresh\r\n# Made in the U.S.A. for the highest quality and performance\r\n# String Gauges: Plain Steel .009, .011, .016, Nickel Wound .024, .032, .042', 50, 0),
(155, 5, 'Daddario Electric Guitar Strings EXL110 Regular Light 10-46', '\r\n\r\nEXL110, D\'Addario\'s best selling set, offers the ideal combination of tone, flexibility and long life. The standard for most electric guitars.\r\n\r\nD\'Addario XL Nickel Wound Electric Guitar strings are world-renowned as \"The Player\'s Choice\" amongst players of all genres and styles. XL\'s are precision wound with nickelplated steel on a hex-shaped core, resulting in strings with a distinctive bright tone and excellent intonation.\r\n\r\n# Round wound with nickelplated steel for distinctive bright tone\r\n# Environmentally friendly, corrosion resistant packaging for strings that are always fresh\r\n# Made in the U.S.A. for the highest quality and performance\r\n# String Gauges: Plain Steel .010, .013, .017, Nickel Wound .026, .036, .046', 50, 0),
(156, 5, 'Daddario Electric Guitar Strings EXL130 Extra Super Light 8-38', '\r\n\r\nEXL130 is D\'Addario\'s lightest gauge string set. Great for beginners or players who require strings with the lightest possible tension and greatest ease of play.\r\n\r\n \r\n\r\nXL Nickel Wound, D\'Addario\'s most popular electric guitar strings, are precision wound with nickelplated steel onto a carefully drawn, hexagonally shaped, high carbon steel core. The result, strings with long lasting, distinctive bright tone and excellent intonation, is ideal for the widest variety of guitars and musical styles.\r\n\r\n \r\n\r\n# Extra-super light for maximum flexibility and minimal hand stress\r\n\r\n# Round wound with nickelplated steel for distinctive bright tone\r\n\r\n# Environmentally friendly, corrosion resistant packaging for strings that are always fresh\r\n\r\n# Made in the U.S.A. for the highest quality and performance\r\n\r\n# String Gauges: Plain Steel .008, .010, .015, .021, .030, .038\r\n\r\n \r\n', 50, 0),
(159, 5, 'Daddario Acoustic Guitar Strings EZ900 Bronze Extra Light 10-50', 'D\'Addario EZ900 85/15 Bronze Acoustic Strings are good budget acoustic guitar strings.\r\n\r\nGreat American Bronze strings combine the brilliance of 80/20 bronze with the great sustain and long-lasting characteristics of phosphor bronze. D\'Addario EZ900 85/15 Bronze Acoustic Strings come in environmentally friendly packaging and have colour-coded ball ends for easy reference.\r\n\r\n# Gauges: .010 .014 .022 .030 .040 .050\r\n\r\n\r\n\r\n  ', 50, 0),
(160, 5, 'Daddario Acoustic Guitar Strings EZ920 Bronze Medium Light 12-54', '\r\n \r\nD\'Addario EZ920 85/15 Great American Bronze, Medium Light, 12-54\r\n\r\nEZ920 strings are a D\'Addario original hybrid gauge designed for players who want a balance of light gauge high strings for easy bending and medium low strings for heavy strumming.\r\n\r\n\r\n\r\n\r\n', 50, 0),
(161, 5, 'Daddario Acoustic Guitar Strings EZ910 American Bronze Light 11-52', '\r\n\r\nD\'Addario EZ910 Acoustic Bronze Light Guitar Strings.\r\n\r\n85/15 Great American Bronze acoustic guitar strings provide a bright tone with great sustain. Great American Bronze strings combine the brilliance of 80/20 Bronze with the lone last characteristics of Phosphor Bronze.\r\n\r\n\r\n\r\n', 50, 0),
(163, 5, 'Daddario Classical Guitar Strings EJ27N Normal Tension 28-43', '\r\n\r\nD\'Addario\'s EJ27N Classic Nylon guitar strings are great for beginners, students and professionals alike. Each set contains 3 clear nylon trebles and 3 silver-plated copper wound basses for the optimal balance of warm and projecting, long lasting tone. Each set is held to same high standards as our professional string sets and may be used for all players looking for an inexpensive, but reliable set. The normal tension set is available for full and fractional 1/2 and 3/4 size classical guitars.\r\n\r\n# D\'Addario\'s premier entry level classical string set, known for its optimal balance of warmth and projection\r\n# Hard tension, Clear Nylon, Non-Ball End\r\n# A great balance of value and reliability\r\n# Environmentally friendly, corrosion resistant packaging for strings that are always fresh\r\n# Made in the U.S.A. for the highest quality and performance\r\n', 50, 0),
(164, 5, 'Daddario Classical Guitar Strings EJ45. Normal Tension 28-43', '\r\nD\'Addario EJ45 Pro-Arte strings are D\'Addario\'s premium classical guitar strings. All Pro-Arte treble strings are sorted by a sophisticated computer-controlled laser machine which performs diameter/tension measurements and quality checks, insuring true sounding, precise trebles in every set. Pro-Arte basses are wound using silverplated copper on a multi-filament nylon core for consistent, warm-yet-projecting tone.\r\n', 50, 0),
(169, 5, '(Martin) Darco 80/20 Bronze Light Acoustic String 12-54', '(Martin) Darco 80/20 Bronze Light Acoustic String 12-54\r\n\r\n\r\n# Set: D-5100\r\n# Gauge: Light\r\n# Tension: 160.5\r\n# Package: 6 strings\r\n# .012.016.025.032.042.054', 50, 0),
(170, 5, '(Martin) Darco 80/20 Bronze Extra Light Acoustic String 10-47', '\r\n(Martin) Darco 80/20 Bronze Extra Light Acoustic String 10-47\r\n\r\n# Set: D-5000\r\n# Gauge: Extra Light\r\n# Tension: 130.2\r\n# Package: 6 strings\r\n# .010.014.023.030.039.047', 50, 0),
(171, 5, '(Martin) Darco D9300 Extra Light Electric Guitar Strings 9-42 ', '\r\n\r\n(Martin) Darco D9300 Extra Light Electric Guitar Strings 9-42 \r\n\r\n# Nickel wound\r\n# Electric guitar strings\r\n# Gauge (Extra Light): .009, .0115, .016, .024, .032, .042', 50, 0),
(173, 5, 'GHS Boomers Roundwound Extra Light Electric Guitar Strings 9-42', '\r\n\r\nGHS Boomers Roundwound Extra Light Electric Guitar Strings 9-42\r\n\r\nRoundwound Nickel-Plated Steel. Passion, Power and Performance. The Dynamite Alloy Boomers continue to be the standard to play by. The bright, long-lasting tone continues to be \"THE POWER STRING.\" \r\n\r\nGauge: .009 .011 .016 .024 .032 .042', 50, 0),
(174, 5, 'Martin Extra Light M170 80/20 Bronze Acoustic Guitar String 10-47', '\r\nMartin Extra Light M170 80/20 Bronze Acoustic Guitar String 10-47 \r\n\r\nMartin Strings are high quality strings for daily use and produce a remarkable tone, brightness and clarity. Both the core and wrap wires must meet strict requirements in order to make the grade and are wound to precise specifications. \r\n\r\nComplete set of Extra-Light gauge 80/20 Bronze Acoustic Guitar Strings .010- .047', 50, 0),
(175, 5, 'Dean Markley Signature Series Electric Guitar Strings JZ 12-54', '\r\nDean Markley Signature Series Electric Guitar Strings JZ 12-54\r\n\r\n# Set: Signature Series\r\n# Package: 6 strings\r\n# Made In USA\r\n# gauges E .012, B .015, G .026, D .034, A .044, E .054\r\n\r\n', 50, 0),
(176, 5, 'Dean Markley Signature Series Electric Guitar Strings LT 9-42', 'Dean Markley Signature Series Electric Guitar Strings LT 9-42\r\n\r\n# Set: Signature Series\r\n# Package: 6 strings\r\n# Made In USA\r\n# gauges E .009, B .011, G .016, D .024, A .032, E .042\r\n\r\n', 50, 0),
(177, 5, 'Fender Electric Guitar Strings Light Nickel Plated Steel 9-42', '\r\nFender Electric Guitar Strings Light Nickel Plated Steel 9-42\r\n\r\n# Set: Nickel Plated Steel\r\n# Package: 6 strings\r\n# Made In USA\r\n# gauges E .009, B .011, G .016, D .024, A .032, E .042\r\n\r\n', 50, 0),
(178, 5, 'Fender Acoustic Guitar Strings Custom Light 60CL Bronze Plated 11-52', 'Fender Acoustic Guitar Strings Custom Light 60CL Bronze Plated 11-52\r\n\r\n# Set: Bronze Plated\r\n# Package: 6 strings\r\n# Made In USA\r\n# gauges E .011, B .015, G .023, D .032, A .042, E .052\r\n', 50, 0),
(180, 4, 'Address :', 'Room No. 231, 2nd Floor, Multiplan Center, New Elephant Road, \r\nDhaka-1205, Bangladesh.\r\n\r\n', 100, 0),
(181, 5, 'Finley Acoustic FM 150', 'Finley Acoustic Guitar \r\nModel No: FM 150', 50, 1),
(182, 5, 'Finley Acoustic FM 120C', 'Finley Acoustic FM 120C', 50, 1),
(183, 5, 'Finley Acoustic FM 110', 'Finley Acoustic FM 110', 50, 1),
(184, 5, 'Ultimate Stand ( Keyboard )', 'Keyboard Stand ', 50, 1),
(185, 5, 'Fender Guitar Straps', 'Fender Guitar Straps', 50, 1),
(186, 5, 'Dream Maker Guitar Lili', 'Dream Maker Guitar LILY', 50, 1),
(187, 5, 'Finley Classical FC 18', 'Finley Classical FC 18', 50, 1),
(188, 5, 'XLR Jack Male ( Silver )', 'XLR Jack Male ( Silver )', 50, 1),
(189, 5, 'XLR Jack FeMale ( Silver )', 'XLR Jack female ( Silver )', 50, 1),
(190, 5, 'XLR Male LIDGE (BLK)', 'XLR Male LIDGE (BLK)', 50, 1),
(191, 5, 'Mono Jack ( Guitar )', 'Mono Jack ( Guitar )', 50, 1),
(192, 5, 'Spoken Jack', 'Spoken Jack', 50, 1),
(193, 5, 'XLR Female LIDGE (BLK)', 'XLR FeMale LIDGE (BLK)', 50, 1),
(199, 5, 'Alice Guitar Polish A039P0-S', 'Alice Guitar Polish A039P0-S', 50, 0),
(204, 5, 'DBX Driverack 260/Speaker Management', 'The DriveRack 260 continues the legacy of DriveRack series, which has been created by the company that has been redefining the standard of signal processing for more than 30 years. The DriveRack 260 was designed with the purpose and vision of providing state-of-the-art signal processing, while utilizing a simple and intuitive user interface. This goal has been achieved by offering two independent channels of processing power with a linkable 28-Band Graphic Equalizer, industry-standard dbx stereo compressor module, feedback eliminator and the 120A Subharmonic Synthesizer on the input, with a six channel output system that includes parametric EQs, PeakStopPlus® limiters (to provide protection against speaker blowouts) and alignment delay. These features combined with the Wizard setup system and complete DriveWare™ GUI control represent a methodical design that is guaranteed to deliver optimal, all-inclusive processing in a completely scalable system.\r\n\r\nFeatures\r\nFeedback Elimination\r\n2.7 Seconds of Alignment and Zone Delay\r\nRS-232 PC GUI control\r\nClassic dbx Compression and Limiting\r\nGraphic and Parametric EQ\r\nAuto-EQ Function\r\nFull Bandpass, Crossover, and Routing Configurations\r\nAuto Gain Control\r\nPink Noise Generator and fulltime RTA\r\nSetup Wizard with JBL speaker and Crown Power Amplifier Tunings\r\nSecurity Lockout\r\nWall Panel Control Inputs\r\n\r\n\r\n\r\n\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/k4vpzA89AMk\" frameborder=\"0\" allowfullscreen></iframe>', 50, 0),
(205, 5, 'Finley Acoustic FD 110C', 'Finley Acoustic FD 110C', 50, 1),
(206, 5, 'Finley Acoustic Classical FC 18', 'Finley Acoustic Classical FC 18', 50, 1),
(207, 5, 'Finley Acoustic KM 110C', 'Finley Acoustic KM 110C', 50, 1),
(208, 5, 'Finley Acoustic FM 170C', 'Finley Acoustic FM 170C', 50, 1),
(209, 5, 'Memphis Classical AC39', 'Memphis Classical AC39', 50, 1),
(210, 5, 'Vic Firth Classic ( 7A )', 'Vic Firth Classic ( 7A )', 50, 0),
(211, 5, 'Vic Firth Classic-2B ', 'Vic Firth Classic-2B', 50, 1),
(212, 5, 'Vic Firth Classic-5B', 'Vic Firth Classic-5B', 50, 1),
(213, 5, 'Test Product', 'Test', 50, 0),
(215, 5, 'B.C.Rich JRV EGDR Fr', 'JRV EDGE FR\r\nMODELS\r\n•	JRV EFRBK Gloss Black\r\n•	Construction Bolt On\r\n•	Material Basswood\r\nNECK\r\n•	Material Maple\r\n•	Finish Painted\r\n•	Fretboard Rosewood\r\n•	Fretboard Radius 12\\\"\r\n•	Fret Size Jumbo\r\n•	Inlays Pearl Diamond\r\n•	Headstock Beast\r\n•	Scale Length 25.5\\\"\r\n•	Nut Type Floyd Rose Locking\r\n•	Nut Width 1 11/16\\\"\r\nHARDWARE\r\n•	Tuning Keys B.C. Rich Diecast\r\n•	Bridge Type Floyd Rose Special\r\n•	Hardware Color Black\r\n•	Control Knobs Dome Knobs\r\nELECTRONICS\r\n•	Electronics 2 Volume, Master Tone, 3-way Toggle\r\n•	Neck Pickup B.D.S.M. Humbucker\r\n•	Bridge Pickup B.D.S.M. Humbucker\r\n', 50, 0),
(216, 5, 'B.C.Rich Kerry King Speed V', 'KERRY KING SPEED V\r\nMODELS\r\n•	KKVFG2Generation 2 Flame\r\nBODY\r\n•	Construction Bolt On\r\n•	Material Mahogany\r\nNECK\r\n•	Material Maple\r\n•	Finish Painted\r\n•	Fretboard Rosewood\r\n•	Fretboard Radius 12\\\"\r\n•	Fret Size Jumbo\r\n•	Inlays Tribal @ 12th Fret\r\n•	Headstock Beast\r\n•	Scale Length 25.5\\\"\r\n•	Nut Type Floyd Rose Locking\r\n•	Nut Width 1 11/16\\\"\r\nHARDWARE\r\n•	Tuning Keys B.C. Rich Diecast\r\n•	Bridge Type Kahler X-trem\r\n•	Hardware Color Black\r\n•	Control Knobs Dome Knobs\r\nELECTRONICS\r\n•	Electronics 2 Volume, Master Tone, 3-way Toggle\r\n•	Neck Pickup BC Rich Active Humbucker\r\nBridge Pickup BC Rich Active Humbucker\r\n', 50, 0),
(217, 5, 'B.C.Rich Kerry King V Two Tribal onyx', 'KERRY KING V TWO TRIBAL ONYX\r\nMODELS\r\n•	KKV2TOOnyx with Graphic\r\nBODY\r\n•	Construction Bolt On\r\n•	Material Basswood\r\nNECK\r\n•	Material Maple\r\n•	Finish Satin\r\n•	Fretboard Rosewood\r\n•	Fretboard Radius 12\\\"\r\n•	Fret Size Jumbo\r\n•	Inlays ABS Tribal\r\n•	Headstock Beast\r\n•	Scale Length 25.5\\\"\r\n•	Nut Type Floyd Rose Locking\r\n•	Nut Width 1 11/16\\\"\r\nHARDWARE\r\n•	Tuning Keys B.C. Rich Diecast\r\n•	Bridge Type Licensed Floyd Rose Tremolo\r\n•	Hardware Color Black\r\n•	Control Knobs Dome Knobs\r\nELECTRONICS\r\n•	Electronics Master Volume, Master Tone, 3-way Toggle\r\n•	Neck Pickup B.D.S.M. Humbucker\r\n•	Bridge Pickup B.D.S.M. Humbucker\r\n', 50, 0),
(218, 5, 'B.C.Rich Mock Contour Deluxe', 'MOCK CONTOUR DELUXE\r\nMODELS\r\n•	MCONDLXTR Trans Red\r\nBODY\r\n•	Construction Long-Set\r\n•	Material Mahogany\r\n•	Thickness 35mm @ edge / 45mm @ center arch\r\n•	Binding White Triple-Ply\r\n•	Top Quilt Maple\r\nNECK\r\n•	Material Mahogany\r\n•	Finish Gloss\r\n•	Shape Modern \\\"C\\\"\r\n•	Binding Single Ply White\r\n•	Fretboard Rosewood\r\n•	Fretboard Radius 12\\\"\r\n•	Fret Size Jumbo\r\n•	Inlays Pearl Cloud\r\n•	Headstock 3x3 Traditional\r\n•	Scale Length 24 5/8 inch\r\n•	Truss Rod Type Dual Action\r\n•	Nut Material Graphite\r\n•	Nut Width 43mm\r\nHARDWARE\r\n•	Tuning Keys Rich Die-Cast with Pearloid Buttons\r\n•	Bridge Type Tune-O-Matic\r\n•	Hardware Color Chrome\r\n•	Control Knobs Steel Barrel Knobs\r\nELECTRONICS\r\n•	Electronics Bridge Volume, 3-Way Toggle, Neck Volume, Master Tone w/ Coil Tap for each pickup\r\n•	Neck Pickup Rich Hot Hex Neck\r\n•	Bridge Pickup Rich Hot Hex ', 50, 0),
(219, 5, 'B.C.Rich Mocking Bird Fr', 'MOCKINGBIRD FR\r\nMODELS\r\n•	MGFRBK Black\r\nBODY\r\n•	Construction Bolt On\r\n•	Material Basswood\r\nNECK\r\n•	Material Maple\r\n•	Finish Painted\r\n•	Fretboard Rosewood\r\n•	Fretboard Radius 12\\\"\r\n•	Fret Size Jumbo\r\n•	Inlays Pearl Diamond\r\n•	Headstock 3-to-a-Side Traditional\r\n•	Scale Length 24 5/8\\\"\r\n•	Nut Type Floyd Rose Locking\r\n•	Nut Width 1 11/16\\\"\r\nHARDWARE\r\n•	Tuning Keys B.C. Rich Diecast\r\n•	Bridge Type Floyd Rose Special Tremolo\r\n•	Hardware Color Black\r\n•	Control Knobs Dome Knobs\r\nELECTRONICS\r\n•	Electronics Master Volume, Master Tone, 3-way Toggle\r\n•	Neck Pickup B.D.S.M. Humbucker\r\nBridge Pickup B.D.S.M. Humbucker', 50, 0),
(220, 5, 'B.C.Rich Villain One', 'VILLAIN ONE\r\nMODELS\r\n•	VL1TBKTrans Black \r\nBODY\r\n•	Construction Bolt On\r\n•	Material Basswood\r\n•	Binding Single Ply White\r\n•	Top Flame Maple\r\nNECK\r\n•	Material Maple\r\n•	Finish Satin\r\n•	Fretboard Rosewood\r\n•	Fretboard Radius 16\\\"\r\n•	Fret Size Jumbo\r\n•	Inlays Dot\r\n•	Headstock 6 Inline Pointed\r\n•	Scale Length 25.5\\\"\r\n•	Nut Type Standard\r\n•	Nut Material Synthetic Graphite\r\n•	Nut Width 1 11/16\\\"\r\nHARDWARE\r\n•	Tuning Keys B.C. Rich Diecast\r\n•	Bridge Type Vintage Tremolo\r\n•	Hardware Color Black\r\n•	Control Knobs Barrel Knobs\r\nELECTRONICS\r\n•	Electronics Master Volume, Master Tone, 5-Way Blade Switch\r\n•	Neck Pickup B.D.S.M. Single Coil (Neck & Middle)\r\nBridge Pickup B.D.S.M. Humbucker', 50, 0),
(221, 5, 'B.C.Rich Villain Escape 7', 'VILLAIN ESCAPE 7\r\nMODELS\r\n•	VLE7BK Black \r\nBODY\r\n•	Construction Bolt On\r\n•	Material Basswood\r\n•	Binding Single Ply White\r\nNECK\r\n•	Material Maple\r\n•	Finish Painted\r\n•	Fretboard Rosewood\r\n•	Fretboard Radius 16\\\"\r\n•	Fret Size Jumbo\r\n•	Inlays Pearl Bones\r\n•	Headstock 7 Inline Pointed\r\n•	Scale Length 25.5\\\"\r\n•	Nut Type Standard\r\n•	Nut Material Synthetic Graphite\r\n•	Nut Width 48mm\r\nHARDWARE\r\n•	Tuning Keys B.C. Rich Diecast\r\n•	Bridge Type Hardtail 7\r\n•	Hardware Color Black\r\n•	Control Knobs Barrel Knobs\r\nELECTRONICS\r\n•	Electronics Master Volume, Master Tone, 3-way Toggle\r\n•	Neck Pickup B.D.S.M. 7 String Humbucker\r\n•	Bridge Pickup B.D.S.M. 7 String Humbucker', 50, 0),
(222, 5, 'B.C.Rich WarBeast Tremolo', 'TRACE WARBEAST TREMOLO\r\nMODELS\r\n•	TWBSTTRO Onyx\r\nBODY\r\n•	Construction Bolt On\r\n•	Material Basswood\r\n•	Binding Trace Pinstripes\r\nNECK\r\n•	Material Maple\r\n•	Finish Satin\r\n•	Fretboard Ebony\r\n•	Fretboard Radius 12\\\"\r\n•	Fret Size Jumbo\r\n•	Inlays (2) Black Pearl Stringers\r\n•	Headstock Beast\r\n•	Scale Length 25.5\\\"\r\n•	Nut Type Floyd Rose Locking\r\n•	Nut Width 1 11/16\\\"\r\nHARDWARE\r\n•	Tuning Keys B.C. Rich Diecast\r\n•	Bridge Type Licensed Floyd Rose Tremolo\r\n•	Hardware Color Chrome\r\n•	Control Knobs Dome Knobs\r\nELECTRONICS\r\n•	Electronics Master Volume, Master Tone, 3-way Toggle\r\n•	Neck Pickup B.D.S.M. Humbucker\r\n•	Bridge Pickup B.D.S.M. Humbucker', 50, 0),
(223, 5, 'B.C.Rich Kerry King Warlock 2', 'KERRYKING WARLOCK 2\r\n\r\nMODELS\r\n•	KKW2TOOnyx with Graphic\r\nBODY\r\n•	Construction Bolt On\r\n•	Material Basswood\r\nNECK\r\n•	Material Maple\r\n•	Finish Satin\r\n•	Fretboard Rosewood\r\n•	Fretboard Radius 12\\\"\r\n•	Fret Size Jumbo\r\n•	Inlays ABS Tribal\r\n•	Headstock Beast\r\n•	Scale Length 25.5\\\"\r\n•	Nut Type Floyd Rose Locking\r\n•	Nut Width 1 11/16\\\"\r\nHARDWARE\r\n•	Tuning Keys B.C. Rich Diecast\r\n•	Bridge Type Licensed Floyd Rose Tremolo\r\n•	Hardware Color Black\r\n•	Control Knobs Barrel Knobs\r\nELECTRONICS\r\n•	Electronics Master Volume, Master Tone, 3-Way Toggle\r\n•	Neck Pickup B.D.S.M. Humbucker\r\n•	Bridge Pickup B.D.S.M. Humbucker', 50, 0);
INSERT INTO `text_data` (`id`, `page_id`, `heading`, `content`, `priority`, `hidden`) VALUES
(224, 5, 'B.C.Rich Warlock Fr', 'WARLOCK FR\r\nMODELS\r\n•	WGFR Black\r\nBODY\r\n•	Construction Bolt On\r\n•	Material Basswood\r\nNECK\r\n•	Material Maple\r\n•	Finish Painted\r\n•	Fretboard Rosewood\r\n•	Fretboard Radius 12\\\"\r\n•	Fret Size Jumbo\r\n•	Inlays Pearl Diamond\r\n•	Headstock 6 Inline Pointed\r\n•	Scale Length 24 5/8\\\"\r\n•	Nut Type Floyd Rose Locking\r\n•	Nut Width 1 11/16\\\"\r\nHARDWARE\r\n•	Tuning Keys B.C. Rich Diecast\r\n•	Bridge Type Floyd Rose Special\r\n•	Hardware Color Black\r\n•	Control Knobs Dome Knobs\r\nELECTRONICS\r\n•	Electronics Master Volume, Master Tone, 3-way Toggle\r\n•	Neck Pickup B.D.S.M. Humbucker\r\nBridge Pickup B.D.S.M. Humbucker', 50, 0),
(232, 5, 'Spector Legend 4X Classic', 'Legend 4x Classic\r\nThe Legend 4X Classic features the popular Spector X body design at a price that is well within the reach of all bassists. The extremely comfortable curved body is crafted from solid maple and sports a genuine figured maple top, a three piece maple neck, a 24 fret rosewood fingerboard, and professional quality die-cast hardware. Specially designed SSD humbuckers are complemented by Spector’s TonePump Jr. active tone controls that offer 12dB boost and cut as well as interactive treble and bass controls. Adorned with a high gloss finish that accentuates the beautifully figured maple, the Legend 4X Classic offers the looks, tone, and playability of basses twice its price.\r\nNECK\r\nWOOD: 3pc Maple\r\nFINGERBOARD: Rosewood, with dot markers\r\nNUMBER OF FRETS: 24\r\nSCALE LENGTH: 34\\\"\r\nRADIUS: 16\\\"\r\nWIDTH AT NUT: 1.57\\\"\r\nBODY\r\nOur original NS curved and carved body shape\r\nWOOD: Genuine Figured Maple over Maple\r\nCOLORS: Black Stain, Holoflash™\r\nFINISH: High Gloss\r\nHARDWARE\r\nBlack\r\nBRIDGE: Spector locking die-cast\r\nSTRING SPACING AT BRIDGE: .70\\\"\r\nSTRAP BUTTONS: Standard\r\nPICKUPS AND ELECTRONICS\r\nNECK PICKUP:  SSD INC humbucker\r\nBRIDGE PICKUP: SSD INC humbucker\r\nACTIVE TONE CONTROLS: Spector TonePump Jr™ +/-12db boost only, bass and treble\r\nCONTROLS : Bridge pickup volume, neck pickup volume, treble boost, bass boost\r\nSTRINGS\r\nKorean made, nickel 44-63-80-102', 50, 0),
(233, 5, 'Spector legend 5 Classic Alex Webster', 'Legend 5 AW\r\n\r\nThe Legend 5 Classic Alex Webster is a brutal take on the coveted Spector NS body, complete with Alex’s signature Blood Drip finish. The extremely comfortable curved body is crafted from solid maple, a three piece maple neck, a 24 fret rosewood fingerboard, and professional quality die-cast hardware. Specially designed SSD humbuckers are complemented by Spector’s TonePump Jr. active tone controls that offer 12dB boost and cut as well as interactive treble and bass controls.\r\nNECK\r\nWOOD : 3pc Maple\r\nFINGERBOARD : Rosewood, with dot markers\r\nNUMBER OF FRETS : 24\r\nSCALE LENGTH : 35\\\"\r\nRADIUS : 16\\\"\r\nWIDTH AT NUT : 1.75\\\"\r\n\r\nBODY\r\nOur original NS curved and carved body shape\r\nWOOD : Maple\r\nBlack Cherry only with Left Handed and Lined Fretless option.\r\nFINISH  : High Gloss \r\n\r\nHARDWARE\r\nBlack\r\nBRIDGE : Spector locking die-cast\r\nSTRING SPACING AT BRIDGE : .66\\\"\r\nSTRAP BUTTONS : Standard\r\n\r\nPICKUPS AND ELECTRONICS\r\nNECK PICKUP :  SSD INC humbucker\r\nBRIDGE PICKUP : SSD INC humbucker\r\nACTIVE TONE CONTROLS : Spector TonePump Jr™\r\n+/-12db boost only, bass and treble\r\nCONTROLS : bridge pickup volume, neck pickup volume,\r\ntreble boost, bass boost\r\n\r\nSTRINGS\r\nKorean made, nickel  44-63-80-98-120', 50, 0),
(234, 5, 'Spector legend 4 Standard Black', 'Legend 4 Standard\r\n\r\nThe extremely comfortable curved body is crafted from solid mahogany and sports a genuine figured maple top, a one piece maple neck, a 24 fret rosewood fingerboard, and professional quality chrome hardware. Specially designed SSD P & J style pickups are complemented by active tone controls that offer 12dB boost and cut as well as interactive treble and bass controls. Adorned with a high gloss finish, the Legend 4 Standard offers the looks, tone, and playability of basses\r\nNECK\r\nWOOD: 1pc Maple; Bolt-on\r\nFINGERBOARD: Rosewood, with dot markers\r\nNUMBER OF FRETS: 24\r\nSCALE LENGTH: 34\\\"\r\nRADIUS: 16\\\"\r\nWIDTH AT NUT: 1.57\\\"\r\n \r\nBODY\r\nOur original NS curved and carved body shape\r\nWOOD: Genuine Figured Maple over Mahogany\r\nCOLORS: Black Stain, Blue Stain\r\nFINISH: High Gloss \r\n\r\nHARDWARE\r\nChrome\r\nBRIDGE: Heavy Duty Legend Standard\r\nSTRING SPACING AT BRIDGE: .70\\\"\r\nSTRAP BUTTONS: Standard\r\n\r\nPICKUPS AND ELECTRONICS\r\nNECK PICKUP:  P split style\r\nBRIDGE PICKUP: J single coil style\r\nACTIVE TONE CONTROLS: +/-12db boost and cut, bass and treble\r\nCONTROLS: Bridge pickup volume, neck pickup volume, treble boost/cut, bass boost/cut\r\n\r\nSTRINGS\r\nKorean made, nickel 44-63-80-102', 50, 0),
(235, 5, 'Spector legend 4 Standard Blue', 'Legend 4 Standard\r\n\r\nThe extremely comfortable curved body is crafted from solid mahogany and sports a genuine figured maple top, a one piece maple neck, a 24 fret rosewood fingerboard, and professional quality chrome hardware. Specially designed SSD P & J style pickups are complemented by active tone controls that offer 12dB boost and cut as well as interactive treble and bass controls. Adorned with a high gloss finish, the Legend 4 Standard offers the looks, tone, and playability of basses\r\nNECK\r\nWOOD: 1pc Maple; Bolt-on\r\nFINGERBOARD: Rosewood, with dot markers\r\nNUMBER OF FRETS: 24\r\nSCALE LENGTH: 34\\\"\r\nRADIUS: 16\\\"\r\nWIDTH AT NUT: 1.57\\\"\r\n \r\nBODY\r\nOur original NS curved and carved body shape\r\nWOOD: Genuine Figured Maple over Mahogany\r\nCOLORS: Black Stain, Blue Stain\r\nFINISH: High Gloss \r\n\r\nHARDWARE\r\nChrome\r\nBRIDGE: Heavy Duty Legend Standard\r\nSTRING SPACING AT BRIDGE: .70\\\"\r\nSTRAP BUTTONS: Standard\r\n\r\nPICKUPS AND ELECTRONICS\r\nNECK PICKUP:  P split style\r\nBRIDGE PICKUP: J single coil style\r\nACTIVE TONE CONTROLS: +/-12db boost and cut, bass and treble\r\nCONTROLS: Bridge pickup volume, neck pickup volume, treble boost/cut, bass boost/cut\r\n\r\nSTRINGS\r\nKorean made, nickel 44-63-80-102', 50, 0),
(236, 5, 'Spector legend 4 Classic HoloFlash', 'Legend 4 Classic\r\nHoloFlash\r\nNeck\r\nWOOD : 3pc Maple; Bolt-on\r\nFINGERBOARD : Rosewood, with dot markers\r\nNUMBER OF FRETS : 24\r\nSCALE LENGTH : 34\\\"\r\nRADIUS : 16\\\"\r\nWIDTH AT NUT : 1.57\\\"\r\nBODY\r\nOur original NS curved and carved body shape\r\nWOOD : Genuine Figured Maple over Maple\r\nCOLORS : Black Cherry, Natural, Slate Grey, Trans Purple.\r\nBlack Cherry only with Left Handed option.\r\nFINISH  : High Gloss\r\nHARDWARE\r\nBlack\r\nBRIDGE : Spector locking die-cast\r\nSTRING SPACING AT BRIDGE : .70\\\"\r\nSTRAP BUTTONS : Standard\r\nPICKUPS AND ELECTRONICS\r\nNECK PICKUP :  SSD INC humbucker\r\nBRIDGE PICKUP : SSD INC humbucker\r\nACTIVE TONE CONTROLS : Spector TonePump Jr™\r\n+/-12db boost only, bass and treble\r\nCONTROLS : bridge pickup volume, neck pickup volume,\r\ntreble boost, bass boost\r\nSTRINGS\r\nKorean made, nickel 44-63-80-102', 50, 0),
(237, 5, 'Spector Legend 4 Classic Slate Gray', 'Legend 4 Classic\r\nSlate Gray\r\nNeck\r\nWOOD : 3pc Maple; Bolt-on\r\nFINGERBOARD : Rosewood, with dot markers\r\nNUMBER OF FRETS : 24\r\nSCALE LENGTH : 34\\\"\r\nRADIUS : 16\\\"\r\nWIDTH AT NUT : 1.57\\\"\r\nBODY\r\nOur original NS curved and carved body shape\r\nWOOD : Genuine Figured Maple over Maple\r\nCOLORS : Black Cherry, Natural, Slate Grey, Trans Purple.\r\nBlack Cherry only with Left Handed option.\r\nFINISH  : High Gloss\r\nHARDWARE\r\nBlack\r\nBRIDGE : Spector locking die-cast\r\nSTRING SPACING AT BRIDGE : .70\\\"\r\nSTRAP BUTTONS : Standard\r\nPICKUPS AND ELECTRONICS\r\nNECK PICKUP :  SSD INC humbucker\r\nBRIDGE PICKUP : SSD INC humbucker\r\nACTIVE TONE CONTROLS : Spector TonePump Jr™\r\n+/-12db boost only, bass and treble\r\nCONTROLS : bridge pickup volume, neck pickup volume,\r\ntreble boost, bass boost\r\nSTRINGS\r\nKorean made, nickel 44-63-80-102', 50, 0),
(238, 5, 'Spector Legend 5 Standard Black', 'Legend 5 Standard\r\nThe extremely comfortable curved body is crafted from solid mahogany and sports a genuine figured maple top, a one piece maple neck, a 24 fret rosewood fingerboard, and professional quality chrome hardware. Specially designed SSD humbuckers are complemented by active tone controls that offer 12dB boost and cut as well as interactive treble and bass controls. Adorned with a high gloss finish, the Legend 5 Standard offers the looks, tone, and playability of basses.\r\n\r\nAvailable Finishes:\r\n•	Black Stain Gloss\r\n•	Blue Stain Gloss\r\nNECK\r\nWOOD: 1pc Maple; Bolt-on\r\nFINGERBOARD: Rosewood, with dot markers\r\nNUMBER OF FRETS: 24\r\nSCALE LENGTH: 35\\\"\r\nRADIUS: 16\\\"\r\nWIDTH AT NUT: 1.75\\\"\r\n\r\nBODY\r\nOur original NS curved and carved body shape\r\nWOOD: Genuine Figured Maple over Mahogany\r\nCOLORS: Black Stain, Blue Stain\r\nFINISH: High Gloss \r\n\r\nHARDWARE\r\nChrome\r\nBRIDGE: Heavy Duty Legend Standard\r\nSTRING SPACING AT BRIDGE: .66\\\"\r\nSTRAP BUTTONS: Standard\r\n\r\nPICKUPS AND ELECTRONICS\r\nNECK PICKUP:  SSD INC humbucker\r\nBRIDGE PICKUP: SSD INC humbucker\r\nACTIVE TONE CONTROLS: +/-12db boost and cut, bass and treble\r\nCONTROLS: Bridge pickup volume, neck pickup volume,\r\ntreble boost/cut, bass boost/cut\r\n\r\nSTRINGS\r\nKorean made, nickel  44-63-80-98-120', 50, 0),
(239, 5, 'Spector Legend 5 Standard Blue', 'Legend 5 Standard\r\nThe extremely comfortable curved body is crafted from solid mahogany and sports a genuine figured maple top, a one piece maple neck, a 24 fret rosewood fingerboard, and professional quality chrome hardware. Specially designed SSD humbuckers are complemented by active tone controls that offer 12dB boost and cut as well as interactive treble and bass controls. Adorned with a high gloss finish, the Legend 5 Standard offers the looks, tone, and playability of basses.\r\n\r\nAvailable Finishes:\r\n•	Black Stain Gloss\r\n•	Blue Stain Gloss\r\nNECK\r\nWOOD: 1pc Maple; Bolt-on\r\nFINGERBOARD: Rosewood, with dot markers\r\nNUMBER OF FRETS: 24\r\nSCALE LENGTH: 35\\\"\r\nRADIUS: 16\\\"\r\nWIDTH AT NUT: 1.75\\\"\r\n\r\nBODY\r\nOur original NS curved and carved body shape\r\nWOOD: Genuine Figured Maple over Mahogany\r\nCOLORS: Black Stain, Blue Stain\r\nFINISH: High Gloss \r\n\r\nHARDWARE\r\nChrome\r\nBRIDGE: Heavy Duty Legend Standard\r\nSTRING SPACING AT BRIDGE: .66\\\"\r\nSTRAP BUTTONS: Standard\r\n\r\nPICKUPS AND ELECTRONICS\r\nNECK PICKUP:  SSD INC humbucker\r\nBRIDGE PICKUP: SSD INC humbucker\r\nACTIVE TONE CONTROLS: +/-12db boost and cut, bass and treble\r\nCONTROLS: Bridge pickup volume, neck pickup volume,\r\ntreble boost/cut, bass boost/cut\r\n\r\nSTRINGS\r\nKorean made, nickel  44-63-80-98-120', 50, 0),
(240, 5, 'Spector Legend 6 Classic ', 'Legend 6 Classic\r\nhe Legend 6 Classic offers the coveted Spector NS body design at a price that is well within the reach of all bassists. The extremely comfortable curved body is crafted from solid maple and sports a genuine figured maple top, a three piece maple neck, a 24 fret rosewood fingerboard, and professional quality die-cast hardware. Specially designed SSD humbuckers are complemented by Spector’s TonePump Jr. active tone controls that offer 12dB boost and cut as well as interactive treble and bass controls. Adorned with a high gloss finish that accentuates the beautifully figured maple, the Legend 6 Classic offers the looks, tone, and playability of basses twice its price.\r\nNECK\r\nWOOD: 3pc Maple; Bolt-on\r\nFINGERBOARD: Rosewood, with dot markers\r\nNUMBER OF FRETS: 24\r\nSCALE LENGTH: 35\\\"\r\nRADIUS: 16\\\"\r\nWIDTH AT NUT: 2.12\\\"\r\nBODY\r\nOur original NS curved and carved body shape\r\nWOOD: Genuine Figured Maple over Maple\r\nCOLOR: Natural\r\nFINISH: High Gloss\r\nHARDWARE\r\nBlack\r\nBRIDGE: Spector locking die-cast\r\nSTRING SPACING AT BRIDGE: .66\\\"\r\nSTRAP BUTTONS: Standard\r\nPICKUPS AND ELECTRONICS\r\nNECK PICKUP:  SSD INC humbucker\r\nBRIDGE PICKUP: SSD INC humbucker\r\nACTIVE TONE CONTROLS: Spector TonePump Jr™ +/-12db boost only, bass and treble\r\nCONTROLS: Bridge pickup volume, neck pickup volume,\r\ntreble boost, bass boost\r\nSTRINGS\r\nKorean made, nickel  30-44-63-80-98-120\r\nhttps://youtu.be/XH6PBniQ2QU', 50, 0),
(241, 5, 'Spector Core 4 Fretted', 'Spector Core 4 Fretted\r\n\r\nA truly unique bass - Our SpectorCore basses are studio and tour ready and feature a chambered body for increased midrange and lighter weight, a single proprietary Bartolini passive humbucker positioned right in the sweet spot, and a Fishman Bass Powerbridge piezo pickup system in the bridge with a Fishman PowerChip allows for exceptional acoustic and upright tones. Available in fretted and fretless models, SpectorCore basses deliver world-class tone and playability for players who need to cover the full spectrum of modern bass tone.\r\nNECK\r\nWOOD: 3pc Maple; Bolt-on\r\nFINGERBOARD: Rosewood, with dot markers\r\nNUMBER OF FRETS: 24 or Fretless\r\nSCALE LENGTH: 34\\\"\r\nRADIUS: 16\\\"\r\nWIDTH AT NUT: 1.57\\\"\r\nBODY\r\nOur original NS-2000 body shape\r\nWOOD: Genuine Figured Maple over Basswood Acoustically Chambered Body with F-Hole\r\nCOLOR: AmberBurst, Natural, Walnut Stain, Black\r\nFINISH: High Gloss \r\nPICKUPS AND ELECTRONICS\r\nNECK PICKUP:  M34J&#8208;B(SSD): Custom Split Coil 4 string pickup in M3 shape (1&#8208;1/2” x 3&#8208;1/2”) for 0.70” bridge string spacing.\r\nBRIDGE PICKUP: Fishman Bass Powerbridge piezo system\r\nCONTROLS: Bridge pickup volume, neck pickup volume, passive tone knob for EMG-HZ pickup, tone knob for Fishman piezo.\r\nHARDWARE\r\nBlack\r\nBRIDGE: Spector locking die-cast\r\nSTRING SPACING AT BRIDGE: .70\\\"\r\nSTRAP BUTTONS: Standard\r\nSTRINGS\r\nKorean made, nickel\r\n44-63-80-102\r\nhttps://youtu.be/dpj5zjxsW94\r\n\r\nSpecial Note: \r\nFor the proper operation of the Fishman piezo bridge pickup system the strings used must be standard metal. Coated or tape wound strings will not work.', 50, 0),
(244, 2, 'Company Owner', 'Md Mahade Alam', 100, 0),
(245, 2, 'General Manager ', 'A.K.M Fazley Rabbi', 100, 0),
(246, 2, 'Office Executive ', 'Md Mahbub Hossain ', 100, 0),
(247, 2, 'Sales &amp; Marketing Executive  ', 'Ali Rezowan', 100, 0),
(249, 2, 'Sales&amp; Marketing Executive', 'Md Mahabub Alam', 100, 0),
(250, 5, 'Music Man Bass ( 4 String )', 'Music Man starts with a solid hardwood body. Light, airy bodies full of tone are attached to a slim, easy to play full scale maple neck. A narrow 38mm nut width (Ray4) and 45mm nut width (Ray5) was created for easy playability. Medium jumbo frets allow for effortless fretting. The slim neck and narrow nut feels at home with small or large hands.', 50, 1),
(251, 5, 'Music Man Bass ( 5 String )', 'Music Man starts with a solid hardwood body. Light, airy bodies full of tone are attached to a slim, easy to play full scale maple neck. A narrow 38mm nut width (Ray4) and 45mm nut width (Ray5) was created for easy playability. Medium jumbo frets allow for effortless fretting. The slim neck and narrow nut feels at home with small or large hands.', 50, 1),
(252, 5, 'Ibanez ( GSR 205 )', 'SPECS\r\nneck type	GSR5 Maple neck\r\nbody	Basswood body\r\nfretboard	Rosewood fretboard w/White dot inlay\r\nfret	Medium frets\r\nnumber of frets	22\r\nbridge	B15 bridge (16.5mm string spacing)\r\nneck pickup	Std. neck pickup (Passive)\r\nbridge pickup	Std. bridge pickup (Passive)\r\nequaliser	Phat II eq\r\nhardware color	Chrome\r\nNECK DIMENSIONS\r\n\r\nScale	864mm/34\\\"\r\na : Width at Nut	45mm\r\nb : Width at Last Fret	67mm\r\nc : Thickness at 1st	21mm\r\nd : Thickness at 12th	22mm\r\nRadius	305mmR', 50, 0),
(253, 5, 'Wash-burn Acoustic ', 'GENERAL\r\nMODEL:	WDFLB26SCE\r\nSHAPE:	Dreadnought Cutaway\r\nTOP:	Solid Cedar\r\nBACK:	Rosewood\r\nSIDES:	Rosewood\r\nBRACING:	Quarter Sawn Scalloped Sitka Spruce bracing\r\nROSETTE:	Abalone\r\nNECK\r\nMATERIAL:	Satin Mahogany with 2 way Trussrod\r\nFRETBOARD:	Rosewood with 20 Frets\r\nINLAYS:	dots\r\nNUT:	Bone\r\nNUT WIDTH:	43mm\r\nSCALE:	25.5\r\nELECTRONICS\r\nPREAMP SYSTEM:	Fishman 301T\r\nHARDWARE\r\nBRIDGE:	Rosewood\r\nTUNERS:	Chrome Diecast\r\nOTHER\r\nSTRINGS:	D\\\'Addario EXP-16 light set phospher bronze\r\nCASE:	GCDNDLX- SOLD SEPERATELY', 50, 1),
(254, 5, 'D\'addario bass strings 4', 'd\'addario bass strings 4', 50, 0),
(255, 5, 'D\'addario bass strings 5', 'd\'addario bass strings 5', 50, 0),
(256, 5, 'Vic Firth NOVA', 'Vic Firth NOVA', 50, 0),
(257, 5, 'YAMAHA Percosin', 'YAMAHA Percosin', 50, 0),
(258, 5, 'TAMA 7A ', 'TAMA', 50, 0),
(259, 5, 'TAMA 5A ', 'TAMA', 50, 0),
(260, 5, 'Fleet Mallet', 'Fleet Mallet', 50, 0),
(261, 5, 'Pro Mark 5A ', 'ProMark', 50, 0),
(262, 5, 'YAMAHA 5A ', 'Yamaha', 50, 0),
(263, 5, 'Violin Mute', 'Violin Mute', 50, 1),
(264, 5, 'Rosin ( Wood Box )', 'Rosin For Violin', 50, 0),
(265, 5, 'Rosin ( Normal )', 'Rosin For Violin', 50, 0),
(266, 5, 'Ukulele String ( Alice )', 'String for Ukulele', 50, 0),
(267, 5, 'Violin Parts', 'Parts And Accessories for violin', 50, 0),
(268, 5, 'AROMA MECHANICAL METRONOME ', 'AROMA MECHANICAL METRONOME BLACK', 50, 0),
(269, 5, 'Alice Sound Hole Block', 'Sound Hole Block', 50, 0),
(270, 5, 'Fleet Wind Bell / Chime', 'Fleet Wind Bell / Chime', 50, 0),
(271, 5, 'Violin Pickup KQ2 ', 'Violin Pickup KQ2 ', 50, 0),
(272, 5, 'Violin Rest', 'Violin shoulder Rest 3/4 Size', 50, 0),
(273, 5, 'Fish Man Equalizer ', 'Fish man Equalizer \r\nVolume control\r\nBass, Middle and Treble control knobs\r\nBuilt-in tuner with LED display\r\nPhase switch\r\nLow battery indicator\r\nUnique pivot design for instant 9-Volt battery access\r\nPre-wired Fishman Sonicore pickup for easy, solder-free installation\r\nLow profile control knobs', 50, 0),
(274, 5, 'Dream Maker Equalizer ', 'Dream Maker Equalizer \r\nVolume control\r\nBass, Middle and Treble control knobs\r\nBuilt-in tuner with LED display\r\nPhase switch\r\nLow battery indicator\r\nUnique pivot design for instant 9-Volt battery access\r\nPre-wired Fishman Sonicore pickup for easy, solder-free installation\r\nLow profile control knobs', 50, 0),
(275, 5, 'LC 5 Band Equalizer ', 'LC 5 Band Equalizer With Display\r\nVolume control\r\nBass, Middle and Treble control knobs\r\nBuilt-in tuner with LED display\r\nPhase switch\r\nLow battery indicator\r\nUnique pivot design for instant 9-Volt battery access\r\nPre-wired Fishman Sonicore pickup for easy, solder-free installation\r\nLow profile control knobs', 50, 0),
(276, 5, 'DiGi Tech RP-355', 'Features\r\n20 Second looper\r\n126 Amps, cabinets, stompboxes and effects\r\n34 Amp/Acoustic Types\r\n18 Cabinet Types\r\nLexicon® Reverbs\r\n30 Tone and 30 Effects Libraries\r\n140 presets (70 factory, 70 user)\r\nCubase® LE4 recording software included\r\nUp to 5 seconds of delay time\r\n24-bit 44.1kHz sample rate\r\n60 High quality drum patterns\r\n2 x 2 USB audio streaming\r\nUSB editing via DigiTech X-Edit™\r\nIndependent 1/4\\\" Left and Right Outputs\r\nIndependent Balanced XLR Left and Right Outputs\r\nAmp / Mixer switch optimizes 1/4\\\" outputs for amps and mixers\r\nStereo 1/8\\\" headphone output\r\nStereo 1/8\\\" Aux Input\r\nLearn-A-Lick™ Phrase Trainer\r\nBuilt-in chromatic tuner\r\nDurable die-cast chassis\r\nBuilt-in expression pedal\r\nPower supply included', 50, 0),
(277, 5, 'Rivera Brush Stick ( Plastic )', 'Rivera Brush Stick ( Plastic )', 50, 0),
(278, 5, 'Rivera Brush Stick ( Metal )', 'Rivera Brush Stick ( Metal )', 50, 0),
(279, 5, 'Fiber Color Drum Stick', 'Fiber Color Plastic Drum Stick \r\nColor:\r\nRED\r\nYELLOW\r\nGREEN\r\nBLACK\r\n', 50, 0),
(280, 5, 'Drum Stick ( Normal )', 'Good Quality Wooden made\r\n\r\n', 50, 0),
(281, 5, 'Rock DrumStick', 'Custom Wooden Made with Plastic Hand Grip', 50, 0),
(282, 5, 'M-Audio M-Track', 'Overview\r\n\r\nM-Track opens the door to computer-based music making. The M-Track interface from M-Audio® transforms your computer into a digital recording studio with plug-and-play simplicity. A single USB cable provides both power and a data connection to and from your laptop or desktop computer. M-Track offers the right connections for any instrument, from an electric guitar to a professional condenser mic—phantom power is provided. The low-profile format delivers professional control in a portable package. M-Track includes both Ignite by AIR and Ableton™ Live Lite music software programs.\r\n\r\nAccommodating Inputs\r\n\r\nM-Track is equipped with a versatile array of inputs to provide the best results with any type of audio source. Each channel offers an XLR input and a balanced 1/4\" input. The XLR input is designed to work with microphones or other Lo-Z sources. The phantom power switch delivers 48V to the XLR inputs for use with professional condenser microphones. The 1/4\" input can be set to receive line level signal, or switched to allow an electric guitar or bass to be plugged directly into the M-Track. The gain knob ensures the proper input level.\r\n\r\nInserts\r\n\r\nEach input channel is also equipped with an insert jack, a professional addition not often found in this class of interface. The insert jack allows studio-grade effects to be used with any input source as you record.\r\n\r\nImproved Monitoring for Better Recordings\r\n\r\nM-Track offers ultra-low latency monitoring of the input signal—either through the speakers or via headphones. The monitor mix knob adjusts the balance between the direct inputs and the playback from your computer software. In addition, the input signal(s) can be monitored in stereo or mono using the convenient Stereo/Mono switch. This makes it easy to record new parts or add parts to an existing composition. The Headphone output offers its own level control.\r\n\r\nMIDI Matters\r\n\r\nIn addition to the two audio channels, M-Track also support 16 channels of MIDI data and timing information. The MIDI In and MIDI out jack are compatible with all MIDI equipment.\r\n\r\nLED Metering\r\n\r\nMulti-color LED metering provides instant visual feedback of the main output levels, as well as the status of various M-Track settings.\r\n\r\nIgnite\r\n\r\nIgnite provides a refreshingly original and musician-centric way to quickly capture, combine, and arrange your musical ideas. The intuitive graphic interface encourages you to experiment and explore new directions. Smart MIDI Chord and Phrase Players empower your ideas and bring them to life through over 275 superior instruments sounds created by AIR Music Technology. When you’re ready to collaborate with other musicians or take your ideas to the next level, you can share them through SoundCloud, or export your WAV and MIDI files and import them into Pro Tools—or any DAW software. Best of all, Ignite offers seamless integration with your M-Audio keyboard controller, with no set-up chores to perform.\r\n\r\nAbleton Live Lite\r\n\r\nAbleton Live Lite delivers much of the functionality of Ableton Live—the revolutionary, multi-award winning music production solution that allows you to spontaneously compose, record, remix, improvise and edit your musical ideas in a seamless audio/MIDI environment. Live brings your acoustic, electronic and virtual instruments—as well as your digital audio recordings and MIDI sequences—together in a single interface with unparalleled ease of use.', 50, 0),
(283, 5, 'Avid First Track Duo', 'Fast Track Duo comes equipped with a variety of inputs and outputs to plug in your gear and capture performances.\r\n\r\n2x2 channels of I/O—record two performances simultaneously (at 24-bit/48 kHz resolution)\r\nTwo combo XLR/instrument inputs (with 48V phantom power)—capture great-sounding vocal and instrument performances\r\nTwo 1/4-inch line inputs—record synths and other line-level sources\r\nTwo Gain controls—quickly attain optimal signal levels\r\nDirect monitor button—monitor and record without latency\r\n1/4-inch stereo headphone output—monitor on a personal level\r\nHeadphone level control—set the volume in your cans just right\r\nFront/Rear Input buttons—select which channel input (front or back) to use\r\nTwo 1/4-inch TRS line outputs—monitor through speakers (for all to hear)\r\nMain Output level control—set your speaker or other output volume just right\r\nBus-powered USB port—connect your Mac or PC (no external power required)\r\nTablet port—connect your iPad directly (no iPad Camera Connection Kit required)\r\nKensington lock port—attach a lock to protect your Solo from theft', 50, 0),
(284, 5, 'Nahin Test Product', 'Just Testing', 50, 1),
(285, 5, 'QSC RMX 5050 Serise Power Amp', 'SPECIFICATIONS\r\n\r\nRMX 5050 5,000 Watt Power Amp\r\n\r\nSTEREO MODE, Both Channels Driven\r\n8 ohms FTC 20 Hz-20 kHz 0.1% THD 1050 Watts\r\n4 ohms FTC 20 Hz-20 kHz 0.1% THD 1600 Watts\r\n2 ohms FTC 20 Hz-20 kHz 0.1% THD 2000 Watts\r\n8 ohms EIA 1 kHz 0.1% THD 1100 Watts\r\n4 ohms EIA 1 kHz 0.1% THD 1800 Watts\r\n2 ohms EIA 1 kHz 1% THD 2500 Watts\r\nBRIDGE-MONO MODE\r\n8 ohms FTC 20 Hz-20 kHz 0.1% THD 3200 Watts\r\n8 ohms EIA 1 kHz 0.1% THD 3600 Watts\r\n4 ohms EIA 1 kHz 1% THD 5000 Watts\r\nDistortion (SMPTE-IM) Less than 0.02%\r\nDistortion (Typical)\r\n20Hz-20kHz: 10dB below rated power\r\n1kHz and below: full rated power\r\nLess than 0.02%\r\nLess than 0.02%\r\nFrequency Response\r\n20Hz to 20kHz, 8 ohms, LF filter bypassed, +0/-1dB\r\n5 Hz to 50 kHz, 8 ohms, LF filter bypassed, +0/-3 dB\r\nDamping Factor Greater than 250 @ 8 ohm\r\nNoise (unweighted) 100 dB below rated output (20 Hz to 20 kHz, 8 ohm load)\r\nInput Sensitivity 1.42 Vrms for 1050 watts into 8 ohms', 50, 0),
(286, 5, 'ARK 816 Electrical Piano', 'Model NO.: ARK-816\r\n\r\nProduct Description\r\n\r\nKeyboard 61-key standard piano keyboard with touch response\r\nDisplay LCD backlinghting display\r\nTone 128 GM standard voices plus 9 Chinese folk music voices and 9 world national music voices\r\nRhythm 100 world well-chosen auto accompaniments\r\nDemo song 30 Chinese or English songs\r\nEffect control Vibrato, sustain, pitch bend, transpose, touch, keyboard split\r\nRecord Record, Replay\r\nStatus Memory 4 status memories to store tone, rhythm, tempo, setting for use\r\nAccompaniment control Start/Stop, sync, Fill-in, intro/ending\r\nChord control Single chord, finger chord, chord clear\r\nIntelligent guide Guide-1, Guide-2, Guide-3\r\n\r\nOther controls Power switch, master volume control, tempo, metronome\r\nExternal functions Power jack, headphone, circuitry output jack, sustain pedal, MIDI IN / MIDI OUT\r\nDiapason C2 - C7\r\nAccuracy in musical tuning &#8804; 6cent\r\nDC Input DC 12V\r\nOutput power 8W x 2\r\nSpecifications 955 x 380 x135 ( MM )\r\nWeight 6.4 KGS.\r\n\r\n', 50, 0),
(287, 5, 'Q.T.E Black', 'acoustic guitar', 50, 1),
(288, 5, 'Q.T.E Blue', 'Acoustic Guitar', 50, 1),
(289, 5, 'Yamaha-4010-Bk', 'Acoustic Guitar\r\nBlack Colo\r\nModel : 4010', 50, 1),
(290, 5, 'Yamaha-C40-BK', 'Yamaha Copy Product', 50, 1),
(291, 5, 'Yamaha-4010-NT', 'acoustic guitar ', 50, 1),
(292, 5, 'Double Padel', 'Double Paddle', 50, 1),
(293, 5, 'MK-939', 'Midi with keyboard', 50, 1),
(294, 5, 'Epiphone TnT75', 'Epiphone Bass Amplifier ', 50, 1),
(295, 5, 'Samson SM850', 'Pro-Monitor headphone', 50, 1),
(296, 5, 'Samson SM950', 'Pro-Monitor headphone', 50, 1),
(297, 5, 'Wash-burn Disney ', 'Description\r\n\r\nHannah Montana by Washburn Telecaster Electric Guitar \r\nIn great condition. 3/4 sized guitar so sized for smaller hands. \r\n*Three quarter guitar for smaller hands. \r\n*Featuring a hardwood body, maple neck and easy-to-fret rosewood fingerboard, this is a great starter guitar for your own Hanna Montana. \r\n*Single coil pick up with second lipstick pickup. \r\n*Hannah Montana themed graphics. \r\n*3-way tone switch. \r\n*Guitar is 8.2 pounds; 12.8 x 3 x 36 inches ', 50, 0),
(298, 5, 'Yamaha-MG16XU', 'Now in its third incarnation, the MG Series embodies the pursuit of design excellence, and incorporates some of the same technologies developed for use in high-end professional consoles, including studio-quality preamps, powerful digital processing, and a rugged, reliable construction. The MG16XU is the 16-channel version of the series, with eight mono XLR and 1/4\\\" hybrid inputs along with two mono/stereo [MIC/LINE] inputs and two stereo line inputs.\r\n\r\nThe MG16XU boasts an intuitive interface with capacities suitable for a diverse range of users and applications. For installed, recording, or live music settings, the solid construction and flexible design of these consoles lets you shape your sound with confidence, continually delivering peak performance and a level of sound quality and reliability that has made it a leader in its class.\r\n\r\nYamaha MG16XU 16-Channel Mixer Features:\r\n\r\nOutstanding microphone preamps\r\nSwitchable Phantom Power & PAD Switch\r\n1-knob Compressors\r\nEQ and High-pass Filters\r\nAUX / Effect Sends / Group\r\nLED level metering\r\nBuilt-in SPX Digital Effects\r\nMetal Chassis\r\nUSB\r\nYamaha MG16XU 16-Channel Mixer Specifications:\r\n\r\nOn-board processors : SPX algorithm: 24 programs, PARAMETER control:1, FOOT SW:1 (FX RTN CH on/off)\r\nPhantom power: +48 V\r\nDigital I/O: USB Audio Class 2.0 compliant, Max 192 kHz, 24-bit\r\nInput Channels: 8 Mono[MIC/LINE], 2 Mono/Stereo[MIC/LINE], stereo[LINE]: 2\r\nOutput Channels: STEREO OUT: 2\r\nMONITOR OUT: 1\r\nPHONES: 1\r\nAUX SEND: 4\r\nGROUP OUT: 4\r\nBus: Stereo: 1, GROUP, AUX: 4\r\nInput Channel Function\r\nPAD: 26 dB (Mono)\r\nHPF: 80 Hz, 12 dB/oct (Mono)\r\nCOMP: 1-knob compressor Threshold: +22 dBu to -8 dBu, Ratio: 1:1 to 4:1, Output level: 0 dB to 7 dB, Attack time: approx. 25 msec, Release\r\ntime: approx. 300 msec\r\nEQ HIGH: Gain: +15 dB/-15 dB, Frequency: 10 kHz shelving\r\nEQ MID: Gain: +15 dB/-15 dB, Frequency: 2.5kHz peaking\r\nEQ LOW: Gain: +15 dB/-15 dB, Frequency: 100 Hz shelving\r\nPEAK LED: LED turns on when post EQ signal reaches 3 dB below clipping\r\nLevel Meter: 2 x 12 -segment LED meter [PEAK, +10, +6, +3, 0, -3, -6, -10, -15, -20, -25, -30 dB]', 50, 0),
(299, 5, 'Ibanez AEL-10E', 'Ibanez AEL-10E\r\n\r\ncolor: \r\nblack\r\nred\r\nblue\r\nnature', 50, 1),
(300, 5, 'Custom 2020c', 'Custom Copy\r\nColor\r\nBlack\r\nRed\r\nBlue\r\nNature', 50, 1),
(301, 5, 'Jack Daniels 1866', 'Jack Daniels Guitar\r\nColor\r\nBlack\r\nRed\r\nBlue\r\nNature', 50, 1),
(302, 5, 'TGM 1400c', 'TGM Guitar\r\nColor\r\nBlack\r\nRed\r\nBlue\r\nNature', 50, 1),
(303, 5, 'SX Guitar', 'SX Custom Guitar\r\nColor\r\nBlack\r\nRed\r\nBlue\r\nNature', 50, 1),
(304, 5, 'X-Man Guitar', 'X-Man King of Darkness\r\nColor\r\nBlack\r\nRed\r\nBlue\r\nNature', 50, 1),
(305, 5, 'Amos/Cate/MartinLee', 'Ukulele Mix', 50, 1),
(306, 5, 'Danlop Slider', 'Danlop Slider Guitar Accessory', 50, 1),
(307, 5, 'iRig', 'iRig Guitar Link Cable', 50, 1),
(308, 5, 'Alice Pick', 'Alice Guitar Picks', 50, 1),
(309, 5, 'Stagg', 'Stagg Violin Acoustic', 50, 0),
(310, 5, 'Banjo', 'Banjo', 50, 0),
(311, 5, 'Coin Pick UP', 'Guitar Pickup', 50, 1),
(313, 5, 'Lanikai LU 21 BK', 'Lanikai Germany ukulele with Preamp', 50, 0),
(314, 5, 'Mamphise', 'Mamphise Classic Nilon string Guitar', 50, 1),
(315, 5, 'Steinburg', 'Bass Guitar', 50, 1),
(316, 5, 'Zildjian Ride', 'Zildjian', 50, 1),
(317, 5, 'yamaha Violin', 'Yamaha Acoustic violin', 50, 1),
(318, 5, 'Guitar Link Cable', 'USB Guitar Link Cable is a professional tool that enables you to turn your PC or Mac computer into fantastic working platform on which you can use the classic effects, in the studio as well as on stage. It allows you to record, play along to a playback, or play directly over the modeling amps and effects. With a NOTEBOOK, Electric Guitar /BASS and USB Guitar Link Cable, it is possible to work indoors or outdoors, be it train or hotel. This easy-to-carry and easy-to use interface will be become the best choice for guitarist, especially for those who are on the go. \r\n\r\nFeatures: \r\n\r\n*Plug in your favorite guitar and turn your PC or Mac computer into a guitar amp and recording system without the need for any other hardware \r\n*Stereo Headphone output lets you jam with your computer and can also be used for monitoring with active monitor speakers \r\n*Works directly with PC or Mac computer, Ultra-Low latency driver for PC included. \r\n*High-quality components and exceptionally rugged construction ensure long life', 50, 1),
(319, 5, 'Microphone Link Cable', 'PD310A USB Mic To 2.0 USB PC USB Microphone Link Cable\r\nAdd usb mic to your pc;\r\nSimple usb plug and play connection without additional driver;\r\n16-bit 48/44.1KHz high quality digital sound input;\r\nRed indicator light flash indicating when signal is being transmitted;\r\nEmbedded A/D convert with audio signal boost.\r\nPackage include\r\n1 x PD310A USB Mic To 2.0 USB PC USB Microphone Link Cable', 50, 1),
(320, 5, 'Red Year', 'Classic Guitar', 50, 1),
(321, 5, 'Fender Guitar Capo', 'Guitar Capo', 50, 1),
(322, 5, 'Chord', 'Chord Acoustic Guitar', 50, 1),
(323, 5, 'Alesis IO4', '4 Chennel Audio Processor ', 50, 1),
(326, 5, 'Hello Test Product', 'Testing', 50, 1),
(327, 5, 'Flute', 'Testing', 50, 1),
(328, 5, 'violin', 'violin', 50, 1),
(329, 5, 'aaa', 'drygdfhdh', 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(32) NOT NULL,
  `enuser` varchar(32) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `level` tinyint(1) NOT NULL COMMENT '0=Suspended, 1=Admin, 2=Soft-Operator, 3=Site-Operator'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user`, `enuser`, `pass`, `level`) VALUES
(1, 'nahin', '47d60f8c85fc25583958700ed9a0bca6', '72b302bf297a228a75730123efef7c41', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a`
--
ALTER TABLE `a`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_vs_text_data`
--
ALTER TABLE `category_vs_text_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dated`
--
ALTER TABLE `dated`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloadtype`
--
ALTER TABLE `downloadtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fixedtext`
--
ALTER TABLE `fixedtext`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imgtype`
--
ALTER TABLE `imgtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagetype`
--
ALTER TABLE `pagetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_email`
--
ALTER TABLE `people_email`
  ADD PRIMARY KEY (`text_data_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`text_data_id`);

--
-- Indexes for table `sells`
--
ALTER TABLE `sells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sells_details`
--
ALTER TABLE `sells_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD KEY `FK_stock_1` (`text_data_id`);

--
-- Indexes for table `stock_update`
--
ALTER TABLE `stock_update`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `text_data`
--
ALTER TABLE `text_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a`
--
ALTER TABLE `a`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `category_vs_text_data`
--
ALTER TABLE `category_vs_text_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `dated`
--
ALTER TABLE `dated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `downloadtype`
--
ALTER TABLE `downloadtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=607;

--
-- AUTO_INCREMENT for table `imgtype`
--
ALTER TABLE `imgtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sells`
--
ALTER TABLE `sells`
  MODIFY `id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sells_details`
--
ALTER TABLE `sells_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock_update`
--
ALTER TABLE `stock_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `text_data`
--
ALTER TABLE `text_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
