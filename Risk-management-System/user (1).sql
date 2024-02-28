-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2024 at 10:23 AM
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
-- Database: `usermanagement_tut`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `comments` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `phone`, `comments`, `status`) VALUES
(1, 'Rowen Gangulu', '234', 'Director Human Resources', '0658335278', 'The specifications must be up to date, correct and comply with current requirements.\r\nStatements regarding GMOs.\r\nStatements that the potential hazards must be controlled.\r\nKeeping appointments;\r\nSupport if requested;\r\nProvision of information;\r\n\r\nFor various reasons, the decision may be made to replace a current supplier or to look for a new supplier. Often a trial order is placed first to be able to assess the quality of the products. There is also the\r\npossibility of auditing the new supplier. However, this depends on the supplier and the products/services they will provide.', 'active'),
(2, 'Rowen Gangulu', '939', 'Director Human Resources', '0820776910', 'The first deliveries are closely monitored to assess whether the agreements made are met and/or the quality, safety and price used are in accordance with agreements. After approval (after trial deliveries) the supplier is included in the accepted list.', 'active'),
(3, 'Rowen Gangulu', '34', 'In progress', '0128110069', 'For various reasons, the decision may be made to replace a current supplier or to look for a new supplier. Often a trial order is placed first to be able to assess the quality of the products. There is also the\r\npossibility of auditing the new supplier. However, this depends on the supplier and the products/services they will provide.', 'removed'),
(4, 'Rowen Gangulu', '1264', 'On hold', '0118864227', 'For various reasons, the decision may be made to replace a current supplier or to look for a new supplier. Often a trial order is placed first to be able to assess the quality of the products. There is also the\r\npossibility of auditing the new supplier. However, this depends on the supplier and the products/services they will provide.', 'removed'),
(5, 'Johan Le Roux Ingenieurswerke', '5667', 'On hold', '0233423390', 'For various reasons, the decision may be made to replace a current supplier or to look for a new supplier. Often a trial order is placed first to be able to assess the quality of the products. There is also the\r\npossibility of auditing the new supplier. However, this depends on the supplier and the products/services they will provide.', 'removed'),
(6, 'L. J. Ross t/a Petite Cafe\'', '667', 'In progress', '0117868101', '', 'removed'),
(7, 'L.A Auto Center  CC t/a LA Body Works', '45', 'In progress', '0219488412', 'For various reasons, the decision may be made to replace a current supplier or to look for a new supplier. Often a trial order is placed first to be able to assess the quality of the products. There is also the\r\npossibility of auditing the new supplier. However, this depends on the supplier and the products/services they will provide.', 'removed'),
(8, 'LG Tow-In CC', '1351', '', '0828044026', '', 'removed'),
(9, 'LM Greyling t/aThe Electric Advertiser', '1352', 'Waiting for customer', '0119545972', '', 'removed'),
(10, 'M.H Cloete Enterprises (Pty) Ltd  t/a  Rola M', '1437', 'In progress', '0218418300', '', 'removed'),
(11, 'Phulo Human Capital (Pty) Ltd', '1980', 'On hold', '0114755934', 'In progress', 'removed'),
(12, 'Picaro 115 CC t/a H2O CT Services', '345', 'In progress', '0216745710', '', 'removed'),
(13, 'Safetygrip CC', '2279', 'Waiting for customer', '0117086660', '', 'removed'),
(14, 'Safic (Pty) Ltd', '876', 'In progress', '0114064000', 'In progress', 'removed'),
(15, 'The Financial Planning Institute Of Southern ', '2459', 'In progress', '0861000374', '', 'removed'),
(16, 'The Fitment Zone  CC', '935', 'In progress', '0118234181', '', 'removed'),
(17, 'Turnweld Engineering CC', '2693', 'In progress', '0115468790', '', 'removed'),
(18, 'Tutuka Motor Holdings Pty Ltd t/a Tutuka Moto', '6', 'On hold', '0117044324', '', 'removed'),
(19, 'WP Exhaust Brake & Clutch t/a In Focus Fleet ', '134', 'In progress', '0219055028', '', 'removed'),
(20, 'WP Sekuriteit', '134', 'In progress', '0233421732', '', 'removed'),
(21, 'Brietta Trading (Pty) Ltd', '53', 'Waiting for customer', '0115526000', 'Waiting for customer', 'removed'),
(22, 'C.N. Braam t/a CNB Electrical Services', '392', 'Waiting for customer', '0832835399', '', 'removed'),
(23, 'Promilezi Musk', '625', 'Director Human Resources', '0120040218', '', 'active'),
(24, 'Themba Zwane', '67', 'Director Human Resources', '011425 6578', '', 'active'),
(259, 'Raphael', 'Munaki', 'raphaelm3@icloud.com', '0658335278', '', 'removed'),
(260, 'Raphael', 'Munaki', 'raphael.devlp@icloud.com', '0658335278', '', 'removed'),
(261, 'Raphael', 'Munaki', 'raphaelm3@icloud.com', '0658335278', '', 'removed'),
(262, 'Raphael', 'Munaki', 'raphael.devlp@icloud.com', '0658335278', '', 'removed'),
(263, 'Ultimate brand exp', '1234', 'In progress', '0767338764', 'Brand and Sponsorship Experiential Marketing agency that offers consumers the Ultimate Brand Experience by executing successful events, activation\'s and campaigns that are highly engaging, interactive and extremely memorable.', 'removed'),
(264, 'Ultimate brand exp', '34', '', '34545', 'dfefdfff', 'removed'),
(265, 'Ultimate brand exp', '36912', 'In progress', '100 000 000', '', 'removed'),
(266, 'Ultimate brand exp', '1234', 'In progress', '081 23 33343', 'Brand and Sponsorship Experiential Marketing agency that offers consumers the Ultimate Brand Experience by executing successful events, activations and campaigns that are highly engaging, interactive and extremely memorable.', 'removed'),
(267, 'Handy Andy', '756', 'In progress ', '55600 000', 'is a Level 1 contributor to B-BBEE', 'removed'),
(268, 'Sunlight pty', '5678', 'In progress ', '011 652 8981', 'is a Level 1 contributor to B-BBEE', 'removed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
