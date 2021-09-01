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
-- Database: `websqflt_ac`
--

-- --------------------------------------------------------

--
-- Table structure for table `ac`
--

CREATE TABLE `ac` (
  `id` int(10) UNSIGNED NOT NULL,
  `ac` varchar(50) NOT NULL,
  `t1` smallint(1) UNSIGNED NOT NULL,
  `t2` smallint(1) UNSIGNED NOT NULL,
  `s` int(1) UNSIGNED NOT NULL,
  `c_d` date NOT NULL,
  `c_u_id` int(10) UNSIGNED NOT NULL,
  `b` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac`
--

INSERT INTO `ac` (`id`, `ac`, `t1`, `t2`, `s`, `c_d`, `c_u_id`, `b`) VALUES
(1, 'Cash', 1, 1, 1, '2013-12-22', 1, 562727),
(2, 'Capital', 2, 1, 1, '2013-12-22', 1, 253030),
(3, 'Furniture', 1, 1, 1, '2013-12-22', 1, -493831),
(4, 'Office Equipment', 1, 1, 1, '2013-12-22', 1, 32835),
(5, 'Bank', 1, 1, 1, '2013-12-22', 1, -29556),
(6, 'Domain Expenses', 1, 2, 1, '2013-12-22', 1, 19217),
(7, 'Hosting Expenses', 1, 2, 1, '2013-12-22', 1, 56220),
(8, 'Salary Expenses', 1, 2, 1, '2013-12-22', 1, 109023),
(9, 'Rent Expenses', 1, 2, 1, '2013-12-22', 1, 11810),
(10, 'Transport Expenses', 1, 2, 1, '2013-12-22', 1, 4637),
(11, 'Mobile Expenses', 1, 2, 1, '2013-12-22', 1, 4000),
(12, 'Internet Expenses', 1, 2, 1, '2013-12-22', 1, 2606),
(13, 'Production and Royalty Expenses', 1, 2, 1, '2013-12-22', 1, 43095),
(14, 'Commission Expenses', 1, 2, 1, '2013-12-22', 1, 1900),
(15, 'Refund Expenses', 1, 2, 1, '2013-12-22', 1, -40892),
(16, 'Miscellaneous Expenses', 1, 2, 1, '2013-12-22', 1, 25088),
(17, 'Service Revenue', 2, 2, 1, '2013-12-22', 1, 138718),
(18, 'Sales Revenue', 2, 2, 1, '2013-12-22', 1, 3393),
(19, 'Office Supply', 1, 1, 1, '2013-12-22', 1, 2787),
(20, 'Advance Rent', 1, 1, 1, '2013-12-22', 1, -5100),
(21, 'AC receivable', 1, 1, 1, '2013-12-22', 1, 55659),
(22, 'AC payable', 2, 1, 1, '2013-12-22', 1, -25800),
(25, 'Utility Expences', 1, 2, 1, '2010-11-01', 1, 1000),
(26, 'Depreciation Expense', 1, 2, 1, '2010-11-01', 1, 6780),
(29, 'Ason', 2, 2, 1, '2020-10-21', 3, 621),
(30, 'Colt Donovan', 2, 2, 1, '2021-04-28', 1, 0),
(31, 'Turan', 2, 1, 1, '2021-04-28', 1, 2222),
(32, 'Oliver Bridges', 1, 2, 1, '2021-04-29', 3, -60),
(33, 'Kennan Mack', 1, 2, 1, '2021-05-01', 3, 0),
(34, 'Gary Stafford', 1, 1, 1, '2021-05-01', 3, 0),
(35, 'LOl', 1, 1, 1, '2021-05-01', 3, 2222);

-- --------------------------------------------------------

--
-- Table structure for table `css`
--

CREATE TABLE `css` (
  `id` int(10) UNSIGNED NOT NULL,
  `css` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `css`
--

INSERT INTO `css` (`id`, `css`) VALUES
(1, 'Blue Sky'),
(2, 'Black Steal'),
(3, 'Grey Steal'),
(4, 'White Marbel'),
(5, 'Bold Blue'),
(6, 'Orange Harves'),
(7, 'Green Moss'),
(8, 'Dark Shadow'),
(9, 'Navy Blue'),
(10, 'Royal Red'),
(11, 'Brown Earth');

-- --------------------------------------------------------

--
-- Table structure for table `tra`
--

CREATE TABLE `tra` (
  `id` int(20) UNSIGNED NOT NULL,
  `d` date NOT NULL,
  `dr_ac_id` int(10) UNSIGNED NOT NULL,
  `cr_ac_id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `e_d` date NOT NULL,
  `e_u_id` int(10) UNSIGNED NOT NULL,
  `m_d` date NOT NULL,
  `m_u_id` int(10) UNSIGNED NOT NULL,
  `r` varchar(100) NOT NULL,
  `aa` int(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tra`
--

INSERT INTO `tra` (`id`, `d`, `dr_ac_id`, `cr_ac_id`, `amount`, `e_d`, `e_u_id`, `m_d`, `m_u_id`, `r`, `aa`) VALUES
(1, '2016-09-21', 1, 2, 2000, '2016-09-21', 1, '2020-09-22', 3, 'Test', 0),
(15, '2020-09-22', 1, 2, 500, '2020-09-22', 3, '2020-09-22', 3, 'test', 0),
(16, '2020-09-22', 1, 5, 500, '2020-09-22', 3, '2020-09-22', 3, 'test', 1),
(17, '2020-09-26', 7, 1, 30000, '2020-09-26', 1, '2020-10-21', 3, '', 1),
(19, '2020-10-21', 1, 3, 500000, '2020-10-21', 3, '2020-10-21', 3, 'test2', 1),
(20, '2020-10-21', 1, 4, 20000, '2020-10-21', 3, '2020-10-21', 3, 'test1', 0),
(21, '2020-10-21', 1, 6, 500, '2020-10-21', 3, '2020-10-21', 3, '456', 0),
(22, '2020-10-21', 1, 2, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(23, '2020-10-21', 1, 4, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(24, '2020-10-21', 1, 5, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(25, '2020-10-21', 1, 6, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(26, '2020-10-21', 1, 6, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(27, '2020-10-21', 1, 7, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(28, '2020-10-21', 1, 8, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(29, '2020-10-21', 1, 9, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(30, '2020-10-21', 1, 10, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(31, '2020-10-21', 1, 11, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(32, '2020-10-21', 1, 12, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(33, '2020-10-21', 1, 13, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(34, '2020-10-21', 1, 13, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(35, '2020-10-21', 1, 13, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(36, '2020-10-21', 1, 14, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(37, '2020-10-21', 1, 15, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(38, '2020-10-21', 1, 15, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(39, '2020-10-21', 1, 16, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(40, '2020-10-21', 1, 16, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(41, '2020-10-21', 1, 17, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(42, '2020-10-21', 1, 17, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(43, '2020-10-21', 1, 18, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(44, '2020-10-21', 1, 20, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(45, '2020-10-21', 1, 21, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(46, '2020-10-21', 1, 19, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(47, '2020-10-21', 1, 21, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(48, '2020-10-21', 1, 21, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(49, '2020-10-21', 1, 22, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(50, '2020-10-21', 1, 25, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(51, '2020-10-21', 1, 26, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(52, '2020-10-21', 1, 25, 500, '2020-10-21', 3, '2020-10-21', 3, '', 0),
(53, '2020-10-21', 1, 5, 10000, '2020-10-21', 3, '2020-10-21', 3, 'tk dici', 0),
(54, '2020-10-21', 1, 5, 10000, '2020-10-21', 3, '2020-10-21', 3, 'abr dilam', 0),
(55, '2020-10-21', 1, 5, 6768, '2020-10-21', 3, '2020-10-21', 3, 'abr dilam 2', 0),
(59, '2019-11-05', 8, 9, 23, '2021-04-28', 1, '2021-04-28', 1, 'Alias maiores dolore', 1),
(60, '2011-12-22', 3, 19, 61, '2021-04-28', 1, '2021-04-28', 1, 'Molestiae saepe beat', 0),
(62, '2025-10-15', 9, 20, 4600, '2021-04-28', 1, '2021-04-28', 1, 'Aute qui laborum asp', 0),
(64, '2013-10-20', 22, 15, 40000, '2021-04-29', 3, '2021-04-29', 3, 'Rerum placeat deser', 0),
(67, '2019-06-20', 21, 6, 89, '2021-04-29', 3, '2021-04-29', 3, 'Blanditiis maiores v', 0),
(68, '2019-06-20', 21, 6, 89, '2021-04-29', 3, '2021-04-29', 3, 'Blanditiis maiores v', 0),
(69, '2019-06-20', 21, 6, 89, '2021-04-29', 3, '2021-04-29', 3, 'Blanditiis maiores v', 0),
(70, '2019-06-20', 21, 6, 89, '2021-04-29', 3, '2021-04-29', 3, 'Blanditiis maiores v', 0),
(71, '2019-06-20', 21, 6, 89, '2021-04-29', 3, '2021-04-29', 3, 'Blanditiis maiores v', 0),
(72, '2019-06-20', 21, 6, 89, '2021-04-29', 3, '2021-04-29', 3, 'Blanditiis maiores v', 0),
(73, '2021-02-13', 29, 9, 89, '2021-04-29', 3, '2021-04-29', 3, 'Atque laudantium nu', 1),
(74, '2021-02-13', 29, 9, 89, '2021-04-29', 3, '2021-04-29', 3, 'Atque laudantium nu', 1),
(75, '2021-02-13', 29, 9, 89, '2021-04-29', 3, '2021-04-29', 3, 'Atque laudantium nu', 1),
(76, '2021-04-29', 6, 5, 9000, '2021-04-29', 1, '2021-04-29', 1, 'new', 0),
(77, '2029-07-24', 3, 29, 888, '2021-04-29', 1, '2021-04-29', 3, 'Dolorem sunt nostrud', 1),
(79, '2018-12-20', 21, 1, 8, '2021-04-29', 1, '2021-04-29', 1, 'Recusandae Aliquam', 1),
(80, '2018-12-20', 21, 1, 8, '2021-04-29', 1, '2021-04-29', 1, 'Recusandae Aliquam', 1),
(81, '2028-10-07', 6, 21, 41, '2021-04-29', 1, '2021-04-29', 1, 'Corrupti eveniet s', 1),
(83, '2020-07-14', 1, 13, 52, '2021-04-29', 3, '2021-04-29', 3, 'Cumque impedit tota', 0),
(84, '2020-07-14', 1, 13, 52, '2021-04-29', 3, '2021-04-29', 3, 'Cumque impedit tota', 0),
(85, '2024-08-04', 18, 12, 57, '2021-04-29', 3, '2021-04-29', 3, 'Aliquip vel est moll', 1),
(86, '2031-09-10', 15, 32, 60, '2021-04-29', 3, '2021-04-29', 3, 'Eveniet ipsam dolor', 0),
(87, '2017-12-05', 17, 1, 57, '2021-04-29', 3, '2021-04-29', 3, 'Aut reiciendis incid', 1),
(88, '2014-10-07', 15, 19, 48, '2021-04-29', 3, '2021-04-29', 3, 'Provident anim moll', 1),
(89, '2011-11-02', 16, 5, 84, '2021-04-29', 3, '2021-04-29', 3, 'Autem est consectet', 0),
(91, '2021-03-10', 16, 19, 2000, '2021-05-01', 3, '2021-05-01', 3, 'Accusamus veritatis', 1),
(92, '2021-05-01', 35, 31, 2222, '2021-05-01', 3, '2021-05-01', 3, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `u`
--

CREATE TABLE `u` (
  `id` int(10) UNSIGNED NOT NULL,
  `u` varchar(8) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `n` varchar(50) NOT NULL,
  `m` varchar(50) NOT NULL,
  `ad` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `css_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `t` smallint(1) UNSIGNED NOT NULL,
  `s` smallint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `u`
--

INSERT INTO `u` (`id`, `u`, `pass`, `n`, `m`, `ad`, `email`, `css_id`, `t`, `s`) VALUES
(1, 'nahin', '72b302bf297a228a75730123efef7c41', 'Qazi Nahin', '01199198382', 'Mirpur', 'qazinahin@yahoo.com', 2, 1, 1),
(2, 'admin', '0192023a7bbd73250516f069df18b500', 'admin', '01935540030', 'admin', 'admin@adovasoft.com', 3, 1, 1),
(3, 'kabir', 'c1621fbecc04b7b7911b982fe585c8d8', 'kabir Ariyan', '01965572363', 'Dhaka', 'k@gmail.com', 2, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ac`
--
ALTER TABLE `ac`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ac` (`ac`),
  ADD KEY `FK_ac_1` (`c_u_id`);

--
-- Indexes for table `css`
--
ALTER TABLE `css`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tra`
--
ALTER TABLE `tra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tra_1` (`dr_ac_id`),
  ADD KEY `FK_tra_2` (`cr_ac_id`),
  ADD KEY `FK_tra_3` (`m_u_id`),
  ADD KEY `FK_tra_4` (`e_u_id`);

--
-- Indexes for table `u`
--
ALTER TABLE `u`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u` (`u`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `FK_u_1` (`css_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ac`
--
ALTER TABLE `ac`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `css`
--
ALTER TABLE `css`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tra`
--
ALTER TABLE `tra`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `u`
--
ALTER TABLE `u`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ac`
--
ALTER TABLE `ac`
  ADD CONSTRAINT `FK_ac_1` FOREIGN KEY (`c_u_id`) REFERENCES `u` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tra`
--
ALTER TABLE `tra`
  ADD CONSTRAINT `FK_tra_1` FOREIGN KEY (`dr_ac_id`) REFERENCES `ac` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tra_2` FOREIGN KEY (`cr_ac_id`) REFERENCES `ac` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tra_3` FOREIGN KEY (`m_u_id`) REFERENCES `u` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_tra_4` FOREIGN KEY (`e_u_id`) REFERENCES `u` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `u`
--
ALTER TABLE `u`
  ADD CONSTRAINT `FK_u_1` FOREIGN KEY (`css_id`) REFERENCES `css` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
