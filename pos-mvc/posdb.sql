-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2021 at 12:55 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discount`
--

CREATE TABLE `tbl_discount` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_discount`
--

INSERT INTO `tbl_discount` (`id`, `name`, `number`) VALUES
(1, 'Sale', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fee`
--

CREATE TABLE `tbl_fee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_fee`
--

INSERT INTO `tbl_fee` (`id`, `name`, `number`) VALUES
(1, 'VAT', 10),
(2, 'SER', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `idproduct` int(11) DEFAULT NULL,
  `idtable` int(11) DEFAULT NULL,
  `quanlity` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `idproduct`, `idtable`, `quanlity`, `created_at`) VALUES
(20, 1, 9, 5, NULL),
(21, 5, 9, 3, NULL),
(42, 3, 8, 2, NULL),
(43, 2, 8, 1, NULL),
(177, 5, 2, 2, NULL),
(178, 1, 2, 1, NULL),
(179, 4, 2, 3, NULL),
(192, 5, 4, 1, NULL),
(193, 1, 4, 1, NULL),
(194, 4, 4, 1, NULL),
(200, 4, 7, 1, NULL),
(201, 1, 7, 1, NULL),
(204, 5, 10, 2, NULL),
(205, 1, 10, 1, NULL),
(211, 5, 11, 1, NULL),
(212, 1, 11, 1, NULL),
(213, 4, 11, 1, NULL),
(217, 5, 12, 1, NULL),
(218, 1, 12, 1, NULL),
(223, 5, 3, 1, NULL),
(224, 1, 3, 1, NULL),
(225, 4, 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `quanlity` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `price`, `image`, `quanlity`, `type`, `active`, `created_at`) VALUES
(1, 'King Crab', 29, '1.jpg', NULL, 1, 1, '2021-02-12 11:29:38'),
(2, 'Hot Dot', 10, '2.jpg', NULL, 1, 1, '2021-02-27 11:30:04'),
(3, 'Chicken', 19, '3.jpg', NULL, 1, 1, '2021-02-27 16:33:04'),
(4, 'Hamburger', 5, '5.jpg', NULL, 1, 1, '2021-02-27 16:35:05'),
(5, 'Jack Daniel\'s No.7 Whiskey', 25, '4.jpg', NULL, 2, 1, '2021-02-27 16:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_table`
--

CREATE TABLE `tbl_table` (
  `id` int(11) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_table`
--

INSERT INTO `tbl_table` (`id`, `number`, `type`, `customer`, `status`, `created_at`) VALUES
(1, 1, 1, 4, 3, '2021-02-27 17:01:29'),
(2, 2, 1, 4, 1, '2021-02-27 17:01:29'),
(3, 3, 1, 4, 1, '2021-02-19 17:01:56'),
(4, 4, 1, 4, 1, '0000-00-00 00:00:00'),
(5, 5, 1, 4, 1, '0000-00-00 00:00:00'),
(6, 6, 1, 4, 1, '0000-00-00 00:00:00'),
(7, 7, 1, 4, 3, '0000-00-00 00:00:00'),
(8, 8, 1, 4, 1, '0000-00-00 00:00:00'),
(9, 9, 1, 4, 1, '0000-00-00 00:00:00'),
(10, 10, 1, 4, 1, '0000-00-00 00:00:00'),
(11, 11, 1, 4, 1, '0000-00-00 00:00:00'),
(12, 12, 2, 10, 3, '0000-00-00 00:00:00'),
(13, 13, 2, 10, 3, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_voucher`
--

CREATE TABLE `tbl_voucher` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `number` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_voucher`
--

INSERT INTO `tbl_voucher` (`id`, `code`, `number`) VALUES
(1, 'HHVTECHNOLOGY', 10),
(2, 'NEWCUSTOMER', 5),
(3, 'HHV', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fee`
--
ALTER TABLE `tbl_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_table`
--
ALTER TABLE `tbl_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_discount`
--
ALTER TABLE `tbl_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_fee`
--
ALTER TABLE `tbl_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_table`
--
ALTER TABLE `tbl_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_voucher`
--
ALTER TABLE `tbl_voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
