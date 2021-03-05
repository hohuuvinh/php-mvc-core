-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2021 at 03:12 AM
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
-- Database: `authtokendb`
--
CREATE DATABASE IF NOT EXISTS `authtokendb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `authtokendb`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hohuuvinh', 'vinhhofb@gmail.com', '2020-11-18 07:54:29', '$2y$10$00YGVkehoikEuC5vqvGgw.hABAL/3XCEgo/PiEU5BVyzf22pM4DaK', NULL, '2020-11-19 07:54:29', '2020-11-20 07:54:29'),
(2, '1', '1', '2020-11-18 04:05:04', '$2y$10$00YGVkehoikEuC5vqvGgw.hABAL/3XCEgo/PiEU5BVyzf22pM4DaK', NULL, '2020-11-20 04:05:04', '2020-11-21 04:05:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `invest`
--
CREATE DATABASE IF NOT EXISTS `invest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `invest`;

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(3000) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `action`, `created_at`, `updated_at`) VALUES
(1, 1, 'User logged in to account', '2021-01-30 03:30:10', '2021-01-30 03:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `role` int(1) NOT NULL,
  `author` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `img` varchar(500) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `pwd`, `name`, `role`, `author`, `status`, `img`, `created_at`, `updated_at`) VALUES
(000001, 'admin@maxprofit.me', '$2y$10$m6UPXIc6GY.OMVlW2WCUfOgt/5Ug9gVuOwYgBKjMnQN3OU6WtN.x6', 'SuperAdmin', 3, 0, 1, NULL, '2019-10-07 22:11:17', '2020-11-23 17:52:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_log`
--

CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL,
  `admin` varchar(100) NOT NULL,
  `action` varchar(1000) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_log`
--

INSERT INTO `admin_log` (`id`, `admin`, `action`, `created_at`, `updated_at`) VALUES
(1, 'admin@maxprofit.me', 'Logged in to the system', '2021-01-30 03:29:22', '2021-01-30 03:29:22'),
(2, 'admin@maxprofit.me', 'Activate User account. User_id: 1', '2021-01-30 03:29:46', '2021-01-30 03:29:46'),
(3, 'admin@maxprofit.me', 'Approved user deposit. Deposit id: 1', '2021-01-30 03:41:19', '2021-01-30 03:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` bigint(10) NOT NULL,
  `user_id` bigint(10) NOT NULL,
  `Account_name` varchar(100) NOT NULL,
  `Account_number` varchar(200) NOT NULL,
  `Bank_Name` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coinpayment_transactions`
--

CREATE TABLE `coinpayment_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `txn_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amountf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirms_needed` int(11) DEFAULT NULL,
  `payment_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qrcode_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receivedf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recv_confirms` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeout` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `state` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `phonecode`) VALUES
(1, 'AF', 'Afghanistan', 93),
(2, 'AL', 'Albania', 355),
(3, 'DZ', 'Algeria', 213),
(4, 'AS', 'American Samoa', 1684),
(5, 'AD', 'Andorra', 376),
(6, 'AO', 'Angola', 244),
(7, 'AI', 'Anguilla', 1264),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 1268),
(10, 'AR', 'Argentina', 54),
(11, 'AM', 'Armenia', 374),
(12, 'AW', 'Aruba', 297),
(13, 'AU', 'Australia', 61),
(14, 'AT', 'Austria', 43),
(15, 'AZ', 'Azerbaijan', 994),
(16, 'BS', 'Bahamas The', 1242),
(17, 'BH', 'Bahrain', 973),
(18, 'BD', 'Bangladesh', 880),
(19, 'BB', 'Barbados', 1246),
(20, 'BY', 'Belarus', 375),
(21, 'BE', 'Belgium', 32),
(22, 'BZ', 'Belize', 501),
(23, 'BJ', 'Benin', 229),
(24, 'BM', 'Bermuda', 1441),
(25, 'BT', 'Bhutan', 975),
(26, 'BO', 'Bolivia', 591),
(27, 'BA', 'Bosnia and Herzegovina', 387),
(28, 'BW', 'Botswana', 267),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 55),
(31, 'IO', 'British Indian Ocean Territory', 246),
(32, 'BN', 'Brunei', 673),
(33, 'BG', 'Bulgaria', 359),
(34, 'BF', 'Burkina Faso', 226),
(35, 'BI', 'Burundi', 257),
(36, 'KH', 'Cambodia', 855),
(37, 'CM', 'Cameroon', 237),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 238),
(40, 'KY', 'Cayman Islands', 1345),
(41, 'CF', 'Central African Republic', 236),
(42, 'TD', 'Chad', 235),
(43, 'CL', 'Chile', 56),
(44, 'CN', 'China', 86),
(45, 'CX', 'Christmas Island', 61),
(46, 'CC', 'Cocos (Keeling) Islands', 672),
(47, 'CO', 'Colombia', 57),
(48, 'KM', 'Comoros', 269),
(49, 'CG', 'Republic Of The Congo', 242),
(50, 'CD', 'Democratic Republic Of The Congo', 242),
(51, 'CK', 'Cook Islands', 682),
(52, 'CR', 'Costa Rica', 506),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225),
(54, 'HR', 'Croatia (Hrvatska)', 385),
(55, 'CU', 'Cuba', 53),
(56, 'CY', 'Cyprus', 357),
(57, 'CZ', 'Czech Republic', 420),
(58, 'DK', 'Denmark', 45),
(59, 'DJ', 'Djibouti', 253),
(60, 'DM', 'Dominica', 1767),
(61, 'DO', 'Dominican Republic', 1809),
(62, 'TP', 'East Timor', 670),
(63, 'EC', 'Ecuador', 593),
(64, 'EG', 'Egypt', 20),
(65, 'SV', 'El Salvador', 503),
(66, 'GQ', 'Equatorial Guinea', 240),
(67, 'ER', 'Eritrea', 291),
(68, 'EE', 'Estonia', 372),
(69, 'ET', 'Ethiopia', 251),
(70, 'XA', 'External Territories of Australia', 61),
(71, 'FK', 'Falkland Islands', 500),
(72, 'FO', 'Faroe Islands', 298),
(73, 'FJ', 'Fiji Islands', 679),
(74, 'FI', 'Finland', 358),
(75, 'FR', 'France', 33),
(76, 'GF', 'French Guiana', 594),
(77, 'PF', 'French Polynesia', 689),
(78, 'TF', 'French Southern Territories', 0),
(79, 'GA', 'Gabon', 241),
(80, 'GM', 'Gambia The', 220),
(81, 'GE', 'Georgia', 995),
(82, 'DE', 'Germany', 49),
(83, 'GH', 'Ghana', 233),
(84, 'GI', 'Gibraltar', 350),
(85, 'GR', 'Greece', 30),
(86, 'GL', 'Greenland', 299),
(87, 'GD', 'Grenada', 1473),
(88, 'GP', 'Guadeloupe', 590),
(89, 'GU', 'Guam', 1671),
(90, 'GT', 'Guatemala', 502),
(91, 'XU', 'Guernsey and Alderney', 44),
(92, 'GN', 'Guinea', 224),
(93, 'GW', 'Guinea-Bissau', 245),
(94, 'GY', 'Guyana', 592),
(95, 'HT', 'Haiti', 509),
(96, 'HM', 'Heard and McDonald Islands', 0),
(97, 'HN', 'Honduras', 504),
(98, 'HK', 'Hong Kong S.A.R.', 852),
(99, 'HU', 'Hungary', 36),
(100, 'IS', 'Iceland', 354),
(101, 'IN', 'India', 91),
(102, 'ID', 'Indonesia', 62),
(103, 'IR', 'Iran', 98),
(104, 'IQ', 'Iraq', 964),
(105, 'IE', 'Ireland', 353),
(106, 'IL', 'Israel', 972),
(107, 'IT', 'Italy', 39),
(108, 'JM', 'Jamaica', 1876),
(109, 'JP', 'Japan', 81),
(110, 'XJ', 'Jersey', 44),
(111, 'JO', 'Jordan', 962),
(112, 'KZ', 'Kazakhstan', 7),
(113, 'KE', 'Kenya', 254),
(114, 'KI', 'Kiribati', 686),
(115, 'KP', 'Korea North', 850),
(116, 'KR', 'Korea South', 82),
(117, 'KW', 'Kuwait', 965),
(118, 'KG', 'Kyrgyzstan', 996),
(119, 'LA', 'Laos', 856),
(120, 'LV', 'Latvia', 371),
(121, 'LB', 'Lebanon', 961),
(122, 'LS', 'Lesotho', 266),
(123, 'LR', 'Liberia', 231),
(124, 'LY', 'Libya', 218),
(125, 'LI', 'Liechtenstein', 423),
(126, 'LT', 'Lithuania', 370),
(127, 'LU', 'Luxembourg', 352),
(128, 'MO', 'Macau S.A.R.', 853),
(129, 'MK', 'Macedonia', 389),
(130, 'MG', 'Madagascar', 261),
(131, 'MW', 'Malawi', 265),
(132, 'MY', 'Malaysia', 60),
(133, 'MV', 'Maldives', 960),
(134, 'ML', 'Mali', 223),
(135, 'MT', 'Malta', 356),
(136, 'XM', 'Man (Isle of)', 44),
(137, 'MH', 'Marshall Islands', 692),
(138, 'MQ', 'Martinique', 596),
(139, 'MR', 'Mauritania', 222),
(140, 'MU', 'Mauritius', 230),
(141, 'YT', 'Mayotte', 269),
(142, 'MX', 'Mexico', 52),
(143, 'FM', 'Micronesia', 691),
(144, 'MD', 'Moldova', 373),
(145, 'MC', 'Monaco', 377),
(146, 'MN', 'Mongolia', 976),
(147, 'MS', 'Montserrat', 1664),
(148, 'MA', 'Morocco', 212),
(149, 'MZ', 'Mozambique', 258),
(150, 'MM', 'Myanmar', 95),
(151, 'NA', 'Namibia', 264),
(152, 'NR', 'Nauru', 674),
(153, 'NP', 'Nepal', 977),
(154, 'AN', 'Netherlands Antilles', 599),
(155, 'NL', 'Netherlands The', 31),
(156, 'NC', 'New Caledonia', 687),
(157, 'NZ', 'New Zealand', 64),
(158, 'NI', 'Nicaragua', 505),
(159, 'NE', 'Niger', 227),
(160, 'NG', 'Nigeria', 234),
(161, 'NU', 'Niue', 683),
(162, 'NF', 'Norfolk Island', 672),
(163, 'MP', 'Northern Mariana Islands', 1670),
(164, 'NO', 'Norway', 47),
(165, 'OM', 'Oman', 968),
(166, 'PK', 'Pakistan', 92),
(167, 'PW', 'Palau', 680),
(168, 'PS', 'Palestinian Territory Occupied', 970),
(169, 'PA', 'Panama', 507),
(170, 'PG', 'Papua new Guinea', 675),
(171, 'PY', 'Paraguay', 595),
(172, 'PE', 'Peru', 51),
(173, 'PH', 'Philippines', 63),
(174, 'PN', 'Pitcairn Island', 0),
(175, 'PL', 'Poland', 48),
(176, 'PT', 'Portugal', 351),
(177, 'PR', 'Puerto Rico', 1787),
(178, 'QA', 'Qatar', 974),
(179, 'RE', 'Reunion', 262),
(180, 'RO', 'Romania', 40),
(181, 'RU', 'Russia', 70),
(182, 'RW', 'Rwanda', 250),
(183, 'SH', 'Saint Helena', 290),
(184, 'KN', 'Saint Kitts And Nevis', 1869),
(185, 'LC', 'Saint Lucia', 1758),
(186, 'PM', 'Saint Pierre and Miquelon', 508),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784),
(188, 'WS', 'Samoa', 684),
(189, 'SM', 'San Marino', 378),
(190, 'ST', 'Sao Tome and Principe', 239),
(191, 'SA', 'Saudi Arabia', 966),
(192, 'SN', 'Senegal', 221),
(193, 'RS', 'Serbia', 381),
(194, 'SC', 'Seychelles', 248),
(195, 'SL', 'Sierra Leone', 232),
(196, 'SG', 'Singapore', 65),
(197, 'SK', 'Slovakia', 421),
(198, 'SI', 'Slovenia', 386),
(199, 'XG', 'Smaller Territories of the UK', 44),
(200, 'SB', 'Solomon Islands', 677),
(201, 'SO', 'Somalia', 252),
(202, 'ZA', 'South Africa', 27),
(203, 'GS', 'South Georgia', 0),
(204, 'SS', 'South Sudan', 211),
(205, 'ES', 'Spain', 34),
(206, 'LK', 'Sri Lanka', 94),
(207, 'SD', 'Sudan', 249),
(208, 'SR', 'Suriname', 597),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47),
(210, 'SZ', 'Swaziland', 268),
(211, 'SE', 'Sweden', 46),
(212, 'CH', 'Switzerland', 41),
(213, 'SY', 'Syria', 963),
(214, 'TW', 'Taiwan', 886),
(215, 'TJ', 'Tajikistan', 992),
(216, 'TZ', 'Tanzania', 255),
(217, 'TH', 'Thailand', 66),
(218, 'TG', 'Togo', 228),
(219, 'TK', 'Tokelau', 690),
(220, 'TO', 'Tonga', 676),
(221, 'TT', 'Trinidad And Tobago', 1868),
(222, 'TN', 'Tunisia', 216),
(223, 'TR', 'Turkey', 90),
(224, 'TM', 'Turkmenistan', 7370),
(225, 'TC', 'Turks And Caicos Islands', 1649),
(226, 'TV', 'Tuvalu', 688),
(227, 'UG', 'Uganda', 256),
(228, 'UA', 'Ukraine', 380),
(229, 'AE', 'United Arab Emirates', 971),
(230, 'GB', 'United Kingdom', 44),
(231, 'US', 'United States', 1),
(232, 'UM', 'United States Minor Outlying Islands', 1),
(233, 'UY', 'Uruguay', 598),
(234, 'UZ', 'Uzbekistan', 998),
(235, 'VU', 'Vanuatu', 678),
(236, 'VA', 'Vatican City State (Holy See)', 39),
(237, 'VE', 'Venezuela', 58),
(238, 'VN', 'Vietnam', 84),
(239, 'VG', 'Virgin Islands (British)', 1284),
(240, 'VI', 'Virgin Islands (US)', 1340),
(241, 'WF', 'Wallis And Futuna Islands', 681),
(242, 'EH', 'Western Sahara', 212),
(243, 'YE', 'Yemen', 967),
(244, 'YU', 'Yugoslavia', 38),
(245, 'ZM', 'Zambia', 260),
(246, 'ZW', 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Table structure for table `cp_cp_log`
--

CREATE TABLE `cp_cp_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cp_cp_transactions`
--

CREATE TABLE `cp_cp_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency1` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency2` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dest_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipn_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirms_needed` tinyint(3) UNSIGNED NOT NULL,
  `timeout` int(10) UNSIGNED NOT NULL,
  `status_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `status_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_confirms` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crypto_payments`
--

CREATE TABLE `crypto_payments` (
  `paymentID` int(11) UNSIGNED NOT NULL,
  `boxID` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `boxType` enum('paymentbox','captchabox') NOT NULL,
  `orderID` varchar(50) NOT NULL DEFAULT '',
  `userID` varchar(50) NOT NULL DEFAULT '',
  `countryID` varchar(3) NOT NULL DEFAULT '',
  `coinLabel` varchar(6) NOT NULL DEFAULT '',
  `amount` double(20,8) NOT NULL DEFAULT 0.00000000,
  `amountUSD` double(20,8) NOT NULL DEFAULT 0.00000000,
  `unrecognised` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `addr` varchar(34) NOT NULL DEFAULT '',
  `txID` char(64) NOT NULL DEFAULT '',
  `txDate` datetime DEFAULT NULL,
  `txConfirmed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `txCheckDate` datetime DEFAULT NULL,
  `processed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `processedDate` datetime DEFAULT NULL,
  `recordCreated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `usn` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `currency` varchar(50) NOT NULL,
  `account_name` varchar(1000) DEFAULT '',
  `account_no` varchar(1000) DEFAULT '',
  `bank` varchar(1000) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 0,
  `on_apr` int(1) NOT NULL DEFAULT 0,
  `pop` varchar(2000) NOT NULL DEFAULT '',
  `url` varchar(1000) NOT NULL DEFAULT '',
  `ipn` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `usn`, `amount`, `currency`, `account_name`, `account_no`, `bank`, `status`, `on_apr`, `pop`, `url`, `ipn`, `created_at`, `updated_at`) VALUES
(1, 1, 'vinhhofb', 60, '$', 'vinhhofb', '1611978049', 'Payeer', 1, 1, '1611978049', '', 0, '2021-01-30 03:40:49', '2021-01-30 03:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE `forum` (
  `id` int(20) NOT NULL,
  `usn` varchar(50) NOT NULL DEFAULT '',
  `msg` varchar(5000) NOT NULL DEFAULT '',
  `p_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fund_transfer`
--

CREATE TABLE `fund_transfer` (
  `id` int(11) NOT NULL,
  `from_usr` varchar(100) NOT NULL,
  `to_usr` varchar(100) NOT NULL,
  `amt` double NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invest`
--

CREATE TABLE `invest` (
  `id` bigint(15) NOT NULL,
  `user_id` bigint(10) NOT NULL,
  `usn` varchar(50) NOT NULL DEFAULT '',
  `package` varchar(30) NOT NULL,
  `package_id` int(11) NOT NULL,
  `currency` varchar(50) NOT NULL DEFAULT '',
  `capital` varchar(15) NOT NULL,
  `i_return` varchar(15) NOT NULL,
  `date_invested` varchar(10) NOT NULL,
  `end_date` varchar(20) NOT NULL,
  `period` varchar(30) NOT NULL,
  `days_interval` varchar(15) NOT NULL DEFAULT '',
  `interest` double NOT NULL,
  `last_wd` varchar(12) NOT NULL DEFAULT '',
  `next_w_date` varchar(10) NOT NULL DEFAULT '',
  `status` varchar(15) NOT NULL DEFAULT 'pending',
  `img` varchar(500) NOT NULL DEFAULT '',
  `hash` varchar(400) NOT NULL DEFAULT '',
  `w_amt` double NOT NULL DEFAULT 0,
  `daily` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mode` varchar(300) NOT NULL DEFAULT '',
  `s_date` varchar(30) NOT NULL DEFAULT '',
  `reinv` int(11) NOT NULL DEFAULT 0,
  `state` int(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kyc`
--

CREATE TABLE `kyc` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selfie` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `front_card` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `back_card` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address_proof` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` mediumtext NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'new',
  `users` varchar(50000) DEFAULT NULL,
  `readers` longtext DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mread`
--

CREATE TABLE `mread` (
  `id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `msg_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `package_name` varchar(100) NOT NULL,
  `currency` varchar(5) NOT NULL DEFAULT '',
  `min` double NOT NULL,
  `max` double NOT NULL,
  `daily_interest` double NOT NULL,
  `period` int(11) NOT NULL,
  `days_interval` int(11) NOT NULL DEFAULT 30,
  `withdrwal_fee` double NOT NULL,
  `ref_bonus` double NOT NULL DEFAULT 0,
  `status` int(2) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `token` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ref`
--

CREATE TABLE `ref` (
  `id` bigint(10) NOT NULL,
  `user_id` bigint(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `level` int(6) NOT NULL,
  `currency` varchar(10) NOT NULL DEFAULT '',
  `amount` double NOT NULL,
  `wdr` double NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ref_set`
--

CREATE TABLE `ref_set` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val` float NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ref_set`
--

INSERT INTO `ref_set` (`id`, `name`, `val`, `created_at`, `updated_at`) VALUES
(1, '1', 0.02, '2020-11-10 15:35:13', '2020-11-10 15:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_title` varchar(100) DEFAULT '',
  `site_descr` varchar(10000) DEFAULT '',
  `site_logo` varchar(5000) NOT NULL DEFAULT '',
  `header_color` varchar(10) NOT NULL DEFAULT '',
  `footer_color` varchar(200) NOT NULL DEFAULT '',
  `deposit` int(5) NOT NULL DEFAULT 0,
  `withdrawal` int(5) NOT NULL DEFAULT 0,
  `wd_fee` double NOT NULL DEFAULT 0,
  `investment` int(5) NOT NULL DEFAULT 0,
  `user_reg` int(5) NOT NULL DEFAULT 0,
  `currency` varchar(5) NOT NULL DEFAULT 'USD',
  `currency_conversion` double NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `paypal_ID` varchar(5000) DEFAULT '',
  `paypal_secret` varchar(5000) DEFAULT '',
  `paypal_mode` varchar(20) DEFAULT '',
  `stripe_key` varchar(5000) DEFAULT '',
  `stripe_secret` varchar(5000) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_title`, `site_descr`, `site_logo`, `header_color`, `footer_color`, `deposit`, `withdrawal`, `wd_fee`, `investment`, `user_reg`, `currency`, `currency_conversion`, `created_at`, `updated_at`, `paypal_ID`, `paypal_secret`, `paypal_mode`, `stripe_key`, `stripe_secret`) VALUES
(1, 'Maxprofit', 'Best Investment Platform', 'logo.png', '#8d1dd7', '#eae8e9', 1, 1, 0, 1, 1, '$', 1, '2020-02-15 14:43:23', '2020-10-21 20:51:10', 'Aa5wr0A-kXgrDFDXuV_o3PWN20S-qI6FZ90EvgvaEGWdBvLefx6OLzqKiSPBa5HdnFiObI2t3JwoFjVZ', 'EFIIqRbXM86V8sTWdFeU1OWddf7rpdafL7Vj8CdDpQi3nplNCjGq5Tv5OvgMyVRG8jd3lrS8mHWd69sv', 'sandbox', 'pk_test_foyKTbmD5ks3dDPhW5SGo04400AHtgyq8r', 'sk_test_DHDt3hyvVShptIPilhzbtWez00tIcsUjCe');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'Andaman and Nicobar Islands', 101),
(2, 'Andhra Pradesh', 101),
(3, 'Arunachal Pradesh', 101),
(4, 'Assam', 101),
(5, 'Bihar', 101),
(6, 'Chandigarh', 101),
(7, 'Chhattisgarh', 101),
(8, 'Dadra and Nagar Haveli', 101),
(9, 'Daman and Diu', 101),
(10, 'Delhi', 101),
(11, 'Goa', 101),
(12, 'Gujarat', 101),
(13, 'Haryana', 101),
(14, 'Himachal Pradesh', 101),
(15, 'Jammu and Kashmir', 101),
(16, 'Jharkhand', 101),
(17, 'Karnataka', 101),
(18, 'Kenmore', 101),
(19, 'Kerala', 101),
(20, 'Lakshadweep', 101),
(21, 'Madhya Pradesh', 101),
(22, 'Maharashtra', 101),
(23, 'Manipur', 101),
(24, 'Meghalaya', 101),
(25, 'Mizoram', 101),
(26, 'Nagaland', 101),
(27, 'Narora', 101),
(28, 'Natwar', 101),
(29, 'Odisha', 101),
(30, 'Paschim Medinipur', 101),
(31, 'Pondicherry', 101),
(32, 'Punjab', 101),
(33, 'Rajasthan', 101),
(34, 'Sikkim', 101),
(35, 'Tamil Nadu', 101),
(36, 'Telangana', 101),
(37, 'Tripura', 101),
(38, 'Uttar Pradesh', 101),
(39, 'Uttarakhand', 101),
(40, 'Vaishali', 101),
(41, 'West Bengal', 101),
(42, 'Badakhshan', 1),
(43, 'Badgis', 1),
(44, 'Baglan', 1),
(45, 'Balkh', 1),
(46, 'Bamiyan', 1),
(47, 'Farah', 1),
(48, 'Faryab', 1),
(49, 'Gawr', 1),
(50, 'Gazni', 1),
(51, 'Herat', 1),
(52, 'Hilmand', 1),
(53, 'Jawzjan', 1),
(54, 'Kabul', 1),
(55, 'Kapisa', 1),
(56, 'Khawst', 1),
(57, 'Kunar', 1),
(58, 'Lagman', 1),
(59, 'Lawghar', 1),
(60, 'Nangarhar', 1),
(61, 'Nimruz', 1),
(62, 'Nuristan', 1),
(63, 'Paktika', 1),
(64, 'Paktiya', 1),
(65, 'Parwan', 1),
(66, 'Qandahar', 1),
(67, 'Qunduz', 1),
(68, 'Samangan', 1),
(69, 'Sar-e Pul', 1),
(70, 'Takhar', 1),
(71, 'Uruzgan', 1),
(72, 'Wardag', 1),
(73, 'Zabul', 1),
(74, 'Berat', 2),
(75, 'Bulqize', 2),
(76, 'Delvine', 2),
(77, 'Devoll', 2),
(78, 'Dibre', 2),
(79, 'Durres', 2),
(80, 'Elbasan', 2),
(81, 'Fier', 2),
(82, 'Gjirokaster', 2),
(83, 'Gramsh', 2),
(84, 'Has', 2),
(85, 'Kavaje', 2),
(86, 'Kolonje', 2),
(87, 'Korce', 2),
(88, 'Kruje', 2),
(89, 'Kucove', 2),
(90, 'Kukes', 2),
(91, 'Kurbin', 2),
(92, 'Lezhe', 2),
(93, 'Librazhd', 2),
(94, 'Lushnje', 2),
(95, 'Mallakaster', 2),
(96, 'Malsi e Madhe', 2),
(97, 'Mat', 2),
(98, 'Mirdite', 2),
(99, 'Peqin', 2),
(100, 'Permet', 2),
(101, 'Pogradec', 2),
(102, 'Puke', 2),
(103, 'Sarande', 2),
(104, 'Shkoder', 2),
(105, 'Skrapar', 2),
(106, 'Tepelene', 2),
(107, 'Tirane', 2),
(108, 'Tropoje', 2),
(109, 'Vlore', 2),
(110, '\'Ayn Daflah', 3),
(111, '\'Ayn Tamushanat', 3),
(112, 'Adrar', 3),
(113, 'Algiers', 3),
(114, 'Annabah', 3),
(115, 'Bashshar', 3),
(116, 'Batnah', 3),
(117, 'Bijayah', 3),
(118, 'Biskrah', 3),
(119, 'Blidah', 3),
(120, 'Buirah', 3),
(121, 'Bumardas', 3),
(122, 'Burj Bu Arririj', 3),
(123, 'Ghalizan', 3),
(124, 'Ghardayah', 3),
(125, 'Ilizi', 3),
(126, 'Jijili', 3),
(127, 'Jilfah', 3),
(128, 'Khanshalah', 3),
(129, 'Masilah', 3),
(130, 'Midyah', 3),
(131, 'Milah', 3),
(132, 'Muaskar', 3),
(133, 'Mustaghanam', 3),
(134, 'Naama', 3),
(135, 'Oran', 3),
(136, 'Ouargla', 3),
(137, 'Qalmah', 3),
(138, 'Qustantinah', 3),
(139, 'Sakikdah', 3),
(140, 'Satif', 3),
(141, 'Sayda\'', 3),
(142, 'Sidi ban-al-\'Abbas', 3),
(143, 'Suq Ahras', 3),
(144, 'Tamanghasat', 3),
(145, 'Tibazah', 3),
(146, 'Tibissah', 3),
(147, 'Tilimsan', 3),
(148, 'Tinduf', 3),
(149, 'Tisamsilt', 3),
(150, 'Tiyarat', 3),
(151, 'Tizi Wazu', 3),
(152, 'Umm-al-Bawaghi', 3),
(153, 'Wahran', 3),
(154, 'Warqla', 3),
(155, 'Wilaya d Alger', 3),
(156, 'Wilaya de Bejaia', 3),
(157, 'Wilaya de Constantine', 3),
(158, 'al-Aghwat', 3),
(159, 'al-Bayadh', 3),
(160, 'al-Jaza\'ir', 3),
(161, 'al-Wad', 3),
(162, 'ash-Shalif', 3),
(163, 'at-Tarif', 3),
(164, 'Eastern', 4),
(165, 'Manu\'a', 4),
(166, 'Swains Island', 4),
(167, 'Western', 4),
(168, 'Andorra la Vella', 5),
(169, 'Canillo', 5),
(170, 'Encamp', 5),
(171, 'La Massana', 5),
(172, 'Les Escaldes', 5),
(173, 'Ordino', 5),
(174, 'Sant Julia de Loria', 5),
(175, 'Bengo', 6),
(176, 'Benguela', 6),
(177, 'Bie', 6),
(178, 'Cabinda', 6),
(179, 'Cunene', 6),
(180, 'Huambo', 6),
(181, 'Huila', 6),
(182, 'Kuando-Kubango', 6),
(183, 'Kwanza Norte', 6),
(184, 'Kwanza Sul', 6),
(185, 'Luanda', 6),
(186, 'Lunda Norte', 6),
(187, 'Lunda Sul', 6),
(188, 'Malanje', 6),
(189, 'Moxico', 6),
(190, 'Namibe', 6),
(191, 'Uige', 6),
(192, 'Zaire', 6),
(193, 'Other Provinces', 7),
(194, 'Sector claimed by Argentina/Ch', 8),
(195, 'Sector claimed by Argentina/UK', 8),
(196, 'Sector claimed by Australia', 8),
(197, 'Sector claimed by France', 8),
(198, 'Sector claimed by New Zealand', 8),
(199, 'Sector claimed by Norway', 8),
(200, 'Unclaimed Sector', 8),
(201, 'Barbuda', 9),
(202, 'Saint George', 9),
(203, 'Saint John', 9),
(204, 'Saint Mary', 9),
(205, 'Saint Paul', 9),
(206, 'Saint Peter', 9),
(207, 'Saint Philip', 9),
(208, 'Buenos Aires', 10),
(209, 'Catamarca', 10),
(210, 'Chaco', 10),
(211, 'Chubut', 10),
(212, 'Cordoba', 10),
(213, 'Corrientes', 10),
(214, 'Distrito Federal', 10),
(215, 'Entre Rios', 10),
(216, 'Formosa', 10),
(217, 'Jujuy', 10),
(218, 'La Pampa', 10),
(219, 'La Rioja', 10),
(220, 'Mendoza', 10),
(221, 'Misiones', 10),
(222, 'Neuquen', 10),
(223, 'Rio Negro', 10),
(224, 'Salta', 10),
(225, 'San Juan', 10),
(226, 'San Luis', 10),
(227, 'Santa Cruz', 10),
(228, 'Santa Fe', 10),
(229, 'Santiago del Estero', 10),
(230, 'Tierra del Fuego', 10),
(231, 'Tucuman', 10),
(232, 'Aragatsotn', 11),
(233, 'Ararat', 11),
(234, 'Armavir', 11),
(235, 'Gegharkunik', 11),
(236, 'Kotaik', 11),
(237, 'Lori', 11),
(238, 'Shirak', 11),
(239, 'Stepanakert', 11),
(240, 'Syunik', 11),
(241, 'Tavush', 11),
(242, 'Vayots Dzor', 11),
(243, 'Yerevan', 11),
(244, 'Aruba', 12),
(245, 'Auckland', 13),
(246, 'Australian Capital Territory', 13),
(247, 'Balgowlah', 13),
(248, 'Balmain', 13),
(249, 'Bankstown', 13),
(250, 'Baulkham Hills', 13),
(251, 'Bonnet Bay', 13),
(252, 'Camberwell', 13),
(253, 'Carole Park', 13),
(254, 'Castle Hill', 13),
(255, 'Caulfield', 13),
(256, 'Chatswood', 13),
(257, 'Cheltenham', 13),
(258, 'Cherrybrook', 13),
(259, 'Clayton', 13),
(260, 'Collingwood', 13),
(261, 'Frenchs Forest', 13),
(262, 'Hawthorn', 13),
(263, 'Jannnali', 13),
(264, 'Knoxfield', 13),
(265, 'Melbourne', 13),
(266, 'New South Wales', 13),
(267, 'Northern Territory', 13),
(268, 'Perth', 13),
(269, 'Queensland', 13),
(270, 'South Australia', 13),
(271, 'Tasmania', 13),
(272, 'Templestowe', 13),
(273, 'Victoria', 13),
(274, 'Werribee south', 13),
(275, 'Western Australia', 13),
(276, 'Wheeler', 13),
(277, 'Bundesland Salzburg', 14),
(278, 'Bundesland Steiermark', 14),
(279, 'Bundesland Tirol', 14),
(280, 'Burgenland', 14),
(281, 'Carinthia', 14),
(282, 'Karnten', 14),
(283, 'Liezen', 14),
(284, 'Lower Austria', 14),
(285, 'Niederosterreich', 14),
(286, 'Oberosterreich', 14),
(287, 'Salzburg', 14),
(288, 'Schleswig-Holstein', 14),
(289, 'Steiermark', 14),
(290, 'Styria', 14),
(291, 'Tirol', 14),
(292, 'Upper Austria', 14),
(293, 'Vorarlberg', 14),
(294, 'Wien', 14),
(295, 'Abseron', 15),
(296, 'Baki Sahari', 15),
(297, 'Ganca', 15),
(298, 'Ganja', 15),
(299, 'Kalbacar', 15),
(300, 'Lankaran', 15),
(301, 'Mil-Qarabax', 15),
(302, 'Mugan-Salyan', 15),
(303, 'Nagorni-Qarabax', 15),
(304, 'Naxcivan', 15),
(305, 'Priaraks', 15),
(306, 'Qazax', 15),
(307, 'Saki', 15),
(308, 'Sirvan', 15),
(309, 'Xacmaz', 15),
(310, 'Abaco', 16),
(311, 'Acklins Island', 16),
(312, 'Andros', 16),
(313, 'Berry Islands', 16),
(314, 'Biminis', 16),
(315, 'Cat Island', 16),
(316, 'Crooked Island', 16),
(317, 'Eleuthera', 16),
(318, 'Exuma and Cays', 16),
(319, 'Grand Bahama', 16),
(320, 'Inagua Islands', 16),
(321, 'Long Island', 16),
(322, 'Mayaguana', 16),
(323, 'New Providence', 16),
(324, 'Ragged Island', 16),
(325, 'Rum Cay', 16),
(326, 'San Salvador', 16),
(327, '\'Isa', 17),
(328, 'Badiyah', 17),
(329, 'Hidd', 17),
(330, 'Jidd Hafs', 17),
(331, 'Mahama', 17),
(332, 'Manama', 17),
(333, 'Sitrah', 17),
(334, 'al-Manamah', 17),
(335, 'al-Muharraq', 17),
(336, 'ar-Rifa\'a', 17),
(337, 'Bagar Hat', 18),
(338, 'Bandarban', 18),
(339, 'Barguna', 18),
(340, 'Barisal', 18),
(341, 'Bhola', 18),
(342, 'Bogora', 18),
(343, 'Brahman Bariya', 18),
(344, 'Chandpur', 18),
(345, 'Chattagam', 18),
(346, 'Chittagong Division', 18),
(347, 'Chuadanga', 18),
(348, 'Dhaka', 18),
(349, 'Dinajpur', 18),
(350, 'Faridpur', 18),
(351, 'Feni', 18),
(352, 'Gaybanda', 18),
(353, 'Gazipur', 18),
(354, 'Gopalganj', 18),
(355, 'Habiganj', 18),
(356, 'Jaipur Hat', 18),
(357, 'Jamalpur', 18),
(358, 'Jessor', 18),
(359, 'Jhalakati', 18),
(360, 'Jhanaydah', 18),
(361, 'Khagrachhari', 18),
(362, 'Khulna', 18),
(363, 'Kishorganj', 18),
(364, 'Koks Bazar', 18),
(365, 'Komilla', 18),
(366, 'Kurigram', 18),
(367, 'Kushtiya', 18),
(368, 'Lakshmipur', 18),
(369, 'Lalmanir Hat', 18),
(370, 'Madaripur', 18),
(371, 'Magura', 18),
(372, 'Maimansingh', 18),
(373, 'Manikganj', 18),
(374, 'Maulvi Bazar', 18),
(375, 'Meherpur', 18),
(376, 'Munshiganj', 18),
(377, 'Naral', 18),
(378, 'Narayanganj', 18),
(379, 'Narsingdi', 18),
(380, 'Nator', 18),
(381, 'Naugaon', 18),
(382, 'Nawabganj', 18),
(383, 'Netrakona', 18),
(384, 'Nilphamari', 18),
(385, 'Noakhali', 18),
(386, 'Pabna', 18),
(387, 'Panchagarh', 18),
(388, 'Patuakhali', 18),
(389, 'Pirojpur', 18),
(390, 'Rajbari', 18),
(391, 'Rajshahi', 18),
(392, 'Rangamati', 18),
(393, 'Rangpur', 18),
(394, 'Satkhira', 18),
(395, 'Shariatpur', 18),
(396, 'Sherpur', 18),
(397, 'Silhat', 18),
(398, 'Sirajganj', 18),
(399, 'Sunamganj', 18),
(400, 'Tangayal', 18),
(401, 'Thakurgaon', 18),
(402, 'Christ Church', 19),
(403, 'Saint Andrew', 19),
(404, 'Saint George', 19),
(405, 'Saint James', 19),
(406, 'Saint John', 19),
(407, 'Saint Joseph', 19),
(408, 'Saint Lucy', 19),
(409, 'Saint Michael', 19),
(410, 'Saint Peter', 19),
(411, 'Saint Philip', 19),
(412, 'Saint Thomas', 19),
(413, 'Brest', 20),
(414, 'Homjel\'', 20),
(415, 'Hrodna', 20),
(416, 'Mahiljow', 20),
(417, 'Mahilyowskaya Voblasts', 20),
(418, 'Minsk', 20),
(419, 'Minskaja Voblasts\'', 20),
(420, 'Petrik', 20),
(421, 'Vicebsk', 20),
(422, 'Antwerpen', 21),
(423, 'Berchem', 21),
(424, 'Brabant', 21),
(425, 'Brabant Wallon', 21),
(426, 'Brussel', 21),
(427, 'East Flanders', 21),
(428, 'Hainaut', 21),
(429, 'Liege', 21),
(430, 'Limburg', 21),
(431, 'Luxembourg', 21),
(432, 'Namur', 21),
(433, 'Ontario', 21),
(434, 'Oost-Vlaanderen', 21),
(435, 'Provincie Brabant', 21),
(436, 'Vlaams-Brabant', 21),
(437, 'Wallonne', 21),
(438, 'West-Vlaanderen', 21),
(439, 'Belize', 22),
(440, 'Cayo', 22),
(441, 'Corozal', 22),
(442, 'Orange Walk', 22),
(443, 'Stann Creek', 22),
(444, 'Toledo', 22),
(445, 'Alibori', 23),
(446, 'Atacora', 23),
(447, 'Atlantique', 23),
(448, 'Borgou', 23),
(449, 'Collines', 23),
(450, 'Couffo', 23),
(451, 'Donga', 23),
(452, 'Littoral', 23),
(453, 'Mono', 23),
(454, 'Oueme', 23),
(455, 'Plateau', 23),
(456, 'Zou', 23),
(457, 'Hamilton', 24),
(458, 'Saint George', 24),
(459, 'Bumthang', 25),
(460, 'Chhukha', 25),
(461, 'Chirang', 25),
(462, 'Daga', 25),
(463, 'Geylegphug', 25),
(464, 'Ha', 25),
(465, 'Lhuntshi', 25),
(466, 'Mongar', 25),
(467, 'Pemagatsel', 25),
(468, 'Punakha', 25),
(469, 'Rinpung', 25),
(470, 'Samchi', 25),
(471, 'Samdrup Jongkhar', 25),
(472, 'Shemgang', 25),
(473, 'Tashigang', 25),
(474, 'Timphu', 25),
(475, 'Tongsa', 25),
(476, 'Wangdiphodrang', 25),
(477, 'Beni', 26),
(478, 'Chuquisaca', 26),
(479, 'Cochabamba', 26),
(480, 'La Paz', 26),
(481, 'Oruro', 26),
(482, 'Pando', 26),
(483, 'Potosi', 26),
(484, 'Santa Cruz', 26),
(485, 'Tarija', 26),
(486, 'Federacija Bosna i Hercegovina', 27),
(487, 'Republika Srpska', 27),
(488, 'Central Bobonong', 28),
(489, 'Central Boteti', 28),
(490, 'Central Mahalapye', 28),
(491, 'Central Serowe-Palapye', 28),
(492, 'Central Tutume', 28),
(493, 'Chobe', 28),
(494, 'Francistown', 28),
(495, 'Gaborone', 28),
(496, 'Ghanzi', 28),
(497, 'Jwaneng', 28),
(498, 'Kgalagadi North', 28),
(499, 'Kgalagadi South', 28),
(500, 'Kgatleng', 28),
(501, 'Kweneng', 28),
(502, 'Lobatse', 28),
(503, 'Ngamiland', 28),
(504, 'Ngwaketse', 28),
(505, 'North East', 28),
(506, 'Okavango', 28),
(507, 'Orapa', 28),
(508, 'Selibe Phikwe', 28),
(509, 'South East', 28),
(510, 'Sowa', 28),
(511, 'Bouvet Island', 29),
(512, 'Acre', 30),
(513, 'Alagoas', 30),
(514, 'Amapa', 30),
(515, 'Amazonas', 30),
(516, 'Bahia', 30),
(517, 'Ceara', 30),
(518, 'Distrito Federal', 30),
(519, 'Espirito Santo', 30),
(520, 'Estado de Sao Paulo', 30),
(521, 'Goias', 30),
(522, 'Maranhao', 30),
(523, 'Mato Grosso', 30),
(524, 'Mato Grosso do Sul', 30),
(525, 'Minas Gerais', 30),
(526, 'Para', 30),
(527, 'Paraiba', 30),
(528, 'Parana', 30),
(529, 'Pernambuco', 30),
(530, 'Piaui', 30),
(531, 'Rio Grande do Norte', 30),
(532, 'Rio Grande do Sul', 30),
(533, 'Rio de Janeiro', 30),
(534, 'Rondonia', 30),
(535, 'Roraima', 30),
(536, 'Santa Catarina', 30),
(537, 'Sao Paulo', 30),
(538, 'Sergipe', 30),
(539, 'Tocantins', 30),
(540, 'British Indian Ocean Territory', 31),
(541, 'Belait', 32),
(542, 'Brunei-Muara', 32),
(543, 'Temburong', 32),
(544, 'Tutong', 32),
(545, 'Blagoevgrad', 33),
(546, 'Burgas', 33),
(547, 'Dobrich', 33),
(548, 'Gabrovo', 33),
(549, 'Haskovo', 33),
(550, 'Jambol', 33),
(551, 'Kardzhali', 33),
(552, 'Kjustendil', 33),
(553, 'Lovech', 33),
(554, 'Montana', 33),
(555, 'Oblast Sofiya-Grad', 33),
(556, 'Pazardzhik', 33),
(557, 'Pernik', 33),
(558, 'Pleven', 33),
(559, 'Plovdiv', 33),
(560, 'Razgrad', 33),
(561, 'Ruse', 33),
(562, 'Shumen', 33),
(563, 'Silistra', 33),
(564, 'Sliven', 33),
(565, 'Smoljan', 33),
(566, 'Sofija grad', 33),
(567, 'Sofijska oblast', 33),
(568, 'Stara Zagora', 33),
(569, 'Targovishte', 33),
(570, 'Varna', 33),
(571, 'Veliko Tarnovo', 33),
(572, 'Vidin', 33),
(573, 'Vraca', 33),
(574, 'Yablaniza', 33),
(575, 'Bale', 34),
(576, 'Bam', 34),
(577, 'Bazega', 34),
(578, 'Bougouriba', 34),
(579, 'Boulgou', 34),
(580, 'Boulkiemde', 34),
(581, 'Comoe', 34),
(582, 'Ganzourgou', 34),
(583, 'Gnagna', 34),
(584, 'Gourma', 34),
(585, 'Houet', 34),
(586, 'Ioba', 34),
(587, 'Kadiogo', 34),
(588, 'Kenedougou', 34),
(589, 'Komandjari', 34),
(590, 'Kompienga', 34),
(591, 'Kossi', 34),
(592, 'Kouritenga', 34),
(593, 'Kourweogo', 34),
(594, 'Leraba', 34),
(595, 'Mouhoun', 34),
(596, 'Nahouri', 34),
(597, 'Namentenga', 34),
(598, 'Noumbiel', 34),
(599, 'Oubritenga', 34),
(600, 'Oudalan', 34),
(601, 'Passore', 34),
(602, 'Poni', 34),
(603, 'Sanguie', 34),
(604, 'Sanmatenga', 34),
(605, 'Seno', 34),
(606, 'Sissili', 34),
(607, 'Soum', 34),
(608, 'Sourou', 34),
(609, 'Tapoa', 34),
(610, 'Tuy', 34),
(611, 'Yatenga', 34),
(612, 'Zondoma', 34),
(613, 'Zoundweogo', 34),
(614, 'Bubanza', 35),
(615, 'Bujumbura', 35),
(616, 'Bururi', 35),
(617, 'Cankuzo', 35),
(618, 'Cibitoke', 35),
(619, 'Gitega', 35),
(620, 'Karuzi', 35),
(621, 'Kayanza', 35),
(622, 'Kirundo', 35),
(623, 'Makamba', 35),
(624, 'Muramvya', 35),
(625, 'Muyinga', 35),
(626, 'Ngozi', 35),
(627, 'Rutana', 35),
(628, 'Ruyigi', 35),
(629, 'Banteay Mean Chey', 36),
(630, 'Bat Dambang', 36),
(631, 'Kampong Cham', 36),
(632, 'Kampong Chhnang', 36),
(633, 'Kampong Spoeu', 36),
(634, 'Kampong Thum', 36),
(635, 'Kampot', 36),
(636, 'Kandal', 36),
(637, 'Kaoh Kong', 36),
(638, 'Kracheh', 36),
(639, 'Krong Kaeb', 36),
(640, 'Krong Pailin', 36),
(641, 'Krong Preah Sihanouk', 36),
(642, 'Mondol Kiri', 36),
(643, 'Otdar Mean Chey', 36),
(644, 'Phnum Penh', 36),
(645, 'Pousat', 36),
(646, 'Preah Vihear', 36),
(647, 'Prey Veaeng', 36),
(648, 'Rotanak Kiri', 36),
(649, 'Siem Reab', 36),
(650, 'Stueng Traeng', 36),
(651, 'Svay Rieng', 36),
(652, 'Takaev', 36),
(653, 'Adamaoua', 37),
(654, 'Centre', 37),
(655, 'Est', 37),
(656, 'Littoral', 37),
(657, 'Nord', 37),
(658, 'Nord Extreme', 37),
(659, 'Nordouest', 37),
(660, 'Ouest', 37),
(661, 'Sud', 37),
(662, 'Sudouest', 37),
(663, 'Alberta', 38),
(664, 'British Columbia', 38),
(665, 'Manitoba', 38),
(666, 'New Brunswick', 38),
(667, 'Newfoundland and Labrador', 38),
(668, 'Northwest Territories', 38),
(669, 'Nova Scotia', 38),
(670, 'Nunavut', 38),
(671, 'Ontario', 38),
(672, 'Prince Edward Island', 38),
(673, 'Quebec', 38),
(674, 'Saskatchewan', 38),
(675, 'Yukon', 38),
(676, 'Boavista', 39),
(677, 'Brava', 39),
(678, 'Fogo', 39),
(679, 'Maio', 39),
(680, 'Sal', 39),
(681, 'Santo Antao', 39),
(682, 'Sao Nicolau', 39),
(683, 'Sao Tiago', 39),
(684, 'Sao Vicente', 39),
(685, 'Grand Cayman', 40),
(686, 'Bamingui-Bangoran', 41),
(687, 'Bangui', 41),
(688, 'Basse-Kotto', 41),
(689, 'Haut-Mbomou', 41),
(690, 'Haute-Kotto', 41),
(691, 'Kemo', 41),
(692, 'Lobaye', 41),
(693, 'Mambere-Kadei', 41),
(694, 'Mbomou', 41),
(695, 'Nana-Gribizi', 41),
(696, 'Nana-Mambere', 41),
(697, 'Ombella Mpoko', 41),
(698, 'Ouaka', 41),
(699, 'Ouham', 41),
(700, 'Ouham-Pende', 41),
(701, 'Sangha-Mbaere', 41),
(702, 'Vakaga', 41),
(703, 'Batha', 42),
(704, 'Biltine', 42),
(705, 'Bourkou-Ennedi-Tibesti', 42),
(706, 'Chari-Baguirmi', 42),
(707, 'Guera', 42),
(708, 'Kanem', 42),
(709, 'Lac', 42),
(710, 'Logone Occidental', 42),
(711, 'Logone Oriental', 42),
(712, 'Mayo-Kebbi', 42),
(713, 'Moyen-Chari', 42),
(714, 'Ouaddai', 42),
(715, 'Salamat', 42),
(716, 'Tandjile', 42),
(717, 'Aisen', 43),
(718, 'Antofagasta', 43),
(719, 'Araucania', 43),
(720, 'Atacama', 43),
(721, 'Bio Bio', 43),
(722, 'Coquimbo', 43),
(723, 'Libertador General Bernardo O\'', 43),
(724, 'Los Lagos', 43),
(725, 'Magellanes', 43),
(726, 'Maule', 43),
(727, 'Metropolitana', 43),
(728, 'Metropolitana de Santiago', 43),
(729, 'Tarapaca', 43),
(730, 'Valparaiso', 43),
(731, 'Anhui', 44),
(734, 'Aomen', 44),
(735, 'Beijing', 44),
(736, 'Beijing Shi', 44),
(737, 'Chongqing', 44),
(738, 'Fujian', 44),
(740, 'Gansu', 44),
(741, 'Guangdong', 44),
(743, 'Guangxi', 44),
(744, 'Guizhou', 44),
(745, 'Hainan', 44),
(746, 'Hebei', 44),
(747, 'Heilongjiang', 44),
(748, 'Henan', 44),
(749, 'Hubei', 44),
(750, 'Hunan', 44),
(751, 'Jiangsu', 44),
(753, 'Jiangxi', 44),
(754, 'Jilin', 44),
(755, 'Liaoning', 44),
(757, 'Nei Monggol', 44),
(758, 'Ningxia Hui', 44),
(759, 'Qinghai', 44),
(760, 'Shaanxi', 44),
(761, 'Shandong', 44),
(763, 'Shanghai', 44),
(764, 'Shanxi', 44),
(765, 'Sichuan', 44),
(766, 'Tianjin', 44),
(767, 'Xianggang', 44),
(768, 'Xinjiang', 44),
(769, 'Xizang', 44),
(770, 'Yunnan', 44),
(771, 'Zhejiang', 44),
(773, 'Christmas Island', 45),
(774, 'Cocos (Keeling) Islands', 46),
(775, 'Amazonas', 47),
(776, 'Antioquia', 47),
(777, 'Arauca', 47),
(778, 'Atlantico', 47),
(779, 'Bogota', 47),
(780, 'Bolivar', 47),
(781, 'Boyaca', 47),
(782, 'Caldas', 47),
(783, 'Caqueta', 47),
(784, 'Casanare', 47),
(785, 'Cauca', 47),
(786, 'Cesar', 47),
(787, 'Choco', 47),
(788, 'Cordoba', 47),
(789, 'Cundinamarca', 47),
(790, 'Guainia', 47),
(791, 'Guaviare', 47),
(792, 'Huila', 47),
(793, 'La Guajira', 47),
(794, 'Magdalena', 47),
(795, 'Meta', 47),
(796, 'Narino', 47),
(797, 'Norte de Santander', 47),
(798, 'Putumayo', 47),
(799, 'Quindio', 47),
(800, 'Risaralda', 47),
(801, 'San Andres y Providencia', 47),
(802, 'Santander', 47),
(803, 'Sucre', 47),
(804, 'Tolima', 47),
(805, 'Valle del Cauca', 47),
(806, 'Vaupes', 47),
(807, 'Vichada', 47),
(808, 'Mwali', 48),
(809, 'Njazidja', 48),
(810, 'Nzwani', 48),
(811, 'Bouenza', 49),
(812, 'Brazzaville', 49),
(813, 'Cuvette', 49),
(814, 'Kouilou', 49),
(815, 'Lekoumou', 49),
(816, 'Likouala', 49),
(817, 'Niari', 49),
(818, 'Plateaux', 49),
(819, 'Pool', 49),
(820, 'Sangha', 49),
(821, 'Bandundu', 50),
(822, 'Bas-Congo', 50),
(823, 'Equateur', 50),
(824, 'Haut-Congo', 50),
(825, 'Kasai-Occidental', 50),
(826, 'Kasai-Oriental', 50),
(827, 'Katanga', 50),
(828, 'Kinshasa', 50),
(829, 'Maniema', 50),
(830, 'Nord-Kivu', 50),
(831, 'Sud-Kivu', 50),
(832, 'Aitutaki', 51),
(833, 'Atiu', 51),
(834, 'Mangaia', 51),
(835, 'Manihiki', 51),
(836, 'Mauke', 51),
(837, 'Mitiaro', 51),
(838, 'Nassau', 51),
(839, 'Pukapuka', 51),
(840, 'Rakahanga', 51),
(841, 'Rarotonga', 51),
(842, 'Tongareva', 51),
(843, 'Alajuela', 52),
(844, 'Cartago', 52),
(845, 'Guanacaste', 52),
(846, 'Heredia', 52),
(847, 'Limon', 52),
(848, 'Puntarenas', 52),
(849, 'San Jose', 52),
(850, 'Abidjan', 53),
(851, 'Agneby', 53),
(852, 'Bafing', 53),
(853, 'Denguele', 53),
(854, 'Dix-huit Montagnes', 53),
(855, 'Fromager', 53),
(856, 'Haut-Sassandra', 53),
(857, 'Lacs', 53),
(858, 'Lagunes', 53),
(859, 'Marahoue', 53),
(860, 'Moyen-Cavally', 53),
(861, 'Moyen-Comoe', 53),
(862, 'N\'zi-Comoe', 53),
(863, 'Sassandra', 53),
(864, 'Savanes', 53),
(865, 'Sud-Bandama', 53),
(866, 'Sud-Comoe', 53),
(867, 'Vallee du Bandama', 53),
(868, 'Worodougou', 53),
(869, 'Zanzan', 53),
(870, 'Bjelovar-Bilogora', 54),
(871, 'Dubrovnik-Neretva', 54),
(872, 'Grad Zagreb', 54),
(873, 'Istra', 54),
(874, 'Karlovac', 54),
(875, 'Koprivnica-Krizhevci', 54),
(876, 'Krapina-Zagorje', 54),
(877, 'Lika-Senj', 54),
(878, 'Medhimurje', 54),
(879, 'Medimurska Zupanija', 54),
(880, 'Osijek-Baranja', 54),
(881, 'Osjecko-Baranjska Zupanija', 54),
(882, 'Pozhega-Slavonija', 54),
(883, 'Primorje-Gorski Kotar', 54),
(884, 'Shibenik-Knin', 54),
(885, 'Sisak-Moslavina', 54),
(886, 'Slavonski Brod-Posavina', 54),
(887, 'Split-Dalmacija', 54),
(888, 'Varazhdin', 54),
(889, 'Virovitica-Podravina', 54),
(890, 'Vukovar-Srijem', 54),
(891, 'Zadar', 54),
(892, 'Zagreb', 54),
(893, 'Camaguey', 55),
(894, 'Ciego de Avila', 55),
(895, 'Cienfuegos', 55),
(896, 'Ciudad de la Habana', 55),
(897, 'Granma', 55),
(898, 'Guantanamo', 55),
(899, 'Habana', 55),
(900, 'Holguin', 55),
(901, 'Isla de la Juventud', 55),
(902, 'La Habana', 55),
(903, 'Las Tunas', 55),
(904, 'Matanzas', 55),
(905, 'Pinar del Rio', 55),
(906, 'Sancti Spiritus', 55),
(907, 'Santiago de Cuba', 55),
(908, 'Villa Clara', 55),
(909, 'Government controlled area', 56),
(910, 'Limassol', 56),
(911, 'Nicosia District', 56),
(912, 'Paphos', 56),
(913, 'Turkish controlled area', 56),
(914, 'Central Bohemian', 57),
(915, 'Frycovice', 57),
(916, 'Jihocesky Kraj', 57),
(917, 'Jihochesky', 57),
(918, 'Jihomoravsky', 57),
(919, 'Karlovarsky', 57),
(920, 'Klecany', 57),
(921, 'Kralovehradecky', 57),
(922, 'Liberecky', 57),
(923, 'Lipov', 57),
(924, 'Moravskoslezsky', 57),
(925, 'Olomoucky', 57),
(926, 'Olomoucky Kraj', 57),
(927, 'Pardubicky', 57),
(928, 'Plzensky', 57),
(929, 'Praha', 57),
(930, 'Rajhrad', 57),
(931, 'Smirice', 57),
(932, 'South Moravian', 57),
(933, 'Straz nad Nisou', 57),
(934, 'Stredochesky', 57),
(935, 'Unicov', 57),
(936, 'Ustecky', 57),
(937, 'Valletta', 57),
(938, 'Velesin', 57),
(939, 'Vysochina', 57),
(940, 'Zlinsky', 57),
(941, 'Arhus', 58),
(942, 'Bornholm', 58),
(943, 'Frederiksborg', 58),
(944, 'Fyn', 58),
(945, 'Hovedstaden', 58),
(946, 'Kobenhavn', 58),
(947, 'Kobenhavns Amt', 58),
(948, 'Kobenhavns Kommune', 58),
(949, 'Nordjylland', 58),
(950, 'Ribe', 58),
(951, 'Ringkobing', 58),
(952, 'Roervig', 58),
(953, 'Roskilde', 58),
(954, 'Roslev', 58),
(955, 'Sjaelland', 58),
(956, 'Soeborg', 58),
(957, 'Sonderjylland', 58),
(958, 'Storstrom', 58),
(959, 'Syddanmark', 58),
(960, 'Toelloese', 58),
(961, 'Vejle', 58),
(962, 'Vestsjalland', 58),
(963, 'Viborg', 58),
(964, '\'Ali Sabih', 59),
(965, 'Dikhil', 59),
(966, 'Jibuti', 59),
(967, 'Tajurah', 59),
(968, 'Ubuk', 59),
(969, 'Saint Andrew', 60),
(970, 'Saint David', 60),
(971, 'Saint George', 60),
(972, 'Saint John', 60),
(973, 'Saint Joseph', 60),
(974, 'Saint Luke', 60),
(975, 'Saint Mark', 60),
(976, 'Saint Patrick', 60),
(977, 'Saint Paul', 60),
(978, 'Saint Peter', 60),
(979, 'Azua', 61),
(980, 'Bahoruco', 61),
(981, 'Barahona', 61),
(982, 'Dajabon', 61),
(983, 'Distrito Nacional', 61),
(984, 'Duarte', 61),
(985, 'El Seybo', 61),
(986, 'Elias Pina', 61),
(987, 'Espaillat', 61),
(988, 'Hato Mayor', 61),
(989, 'Independencia', 61),
(990, 'La Altagracia', 61),
(991, 'La Romana', 61),
(992, 'La Vega', 61),
(993, 'Maria Trinidad Sanchez', 61),
(994, 'Monsenor Nouel', 61),
(995, 'Monte Cristi', 61),
(996, 'Monte Plata', 61),
(997, 'Pedernales', 61),
(998, 'Peravia', 61),
(999, 'Puerto Plata', 61),
(1000, 'Salcedo', 61),
(1001, 'Samana', 61),
(1002, 'San Cristobal', 61),
(1003, 'San Juan', 61),
(1004, 'San Pedro de Macoris', 61),
(1005, 'Sanchez Ramirez', 61),
(1006, 'Santiago', 61),
(1007, 'Santiago Rodriguez', 61),
(1008, 'Valverde', 61),
(1009, 'Aileu', 62),
(1010, 'Ainaro', 62),
(1011, 'Ambeno', 62),
(1012, 'Baucau', 62),
(1013, 'Bobonaro', 62),
(1014, 'Cova Lima', 62),
(1015, 'Dili', 62),
(1016, 'Ermera', 62),
(1017, 'Lautem', 62),
(1018, 'Liquica', 62),
(1019, 'Manatuto', 62),
(1020, 'Manufahi', 62),
(1021, 'Viqueque', 62),
(1022, 'Azuay', 63),
(1023, 'Bolivar', 63),
(1024, 'Canar', 63),
(1025, 'Carchi', 63),
(1026, 'Chimborazo', 63),
(1027, 'Cotopaxi', 63),
(1028, 'El Oro', 63),
(1029, 'Esmeraldas', 63),
(1030, 'Galapagos', 63),
(1031, 'Guayas', 63),
(1032, 'Imbabura', 63),
(1033, 'Loja', 63),
(1034, 'Los Rios', 63),
(1035, 'Manabi', 63),
(1036, 'Morona Santiago', 63),
(1037, 'Napo', 63),
(1038, 'Orellana', 63),
(1039, 'Pastaza', 63),
(1040, 'Pichincha', 63),
(1041, 'Sucumbios', 63),
(1042, 'Tungurahua', 63),
(1043, 'Zamora Chinchipe', 63),
(1044, 'Aswan', 64),
(1045, 'Asyut', 64),
(1046, 'Bani Suwayf', 64),
(1047, 'Bur Sa\'id', 64),
(1048, 'Cairo', 64),
(1049, 'Dumyat', 64),
(1050, 'Kafr-ash-Shaykh', 64),
(1051, 'Matruh', 64),
(1052, 'Muhafazat ad Daqahliyah', 64),
(1053, 'Muhafazat al Fayyum', 64),
(1054, 'Muhafazat al Gharbiyah', 64),
(1055, 'Muhafazat al Iskandariyah', 64),
(1056, 'Muhafazat al Qahirah', 64),
(1057, 'Qina', 64),
(1058, 'Sawhaj', 64),
(1059, 'Sina al-Janubiyah', 64),
(1060, 'Sina ash-Shamaliyah', 64),
(1061, 'ad-Daqahliyah', 64),
(1062, 'al-Bahr-al-Ahmar', 64),
(1063, 'al-Buhayrah', 64),
(1064, 'al-Fayyum', 64),
(1065, 'al-Gharbiyah', 64),
(1066, 'al-Iskandariyah', 64),
(1067, 'al-Ismailiyah', 64),
(1068, 'al-Jizah', 64),
(1069, 'al-Minufiyah', 64),
(1070, 'al-Minya', 64),
(1071, 'al-Qahira', 64),
(1072, 'al-Qalyubiyah', 64),
(1073, 'al-Uqsur', 64),
(1074, 'al-Wadi al-Jadid', 64),
(1075, 'as-Suways', 64),
(1076, 'ash-Sharqiyah', 64),
(1077, 'Ahuachapan', 65),
(1078, 'Cabanas', 65),
(1079, 'Chalatenango', 65),
(1080, 'Cuscatlan', 65),
(1081, 'La Libertad', 65),
(1082, 'La Paz', 65),
(1083, 'La Union', 65),
(1084, 'Morazan', 65),
(1085, 'San Miguel', 65),
(1086, 'San Salvador', 65),
(1087, 'San Vicente', 65),
(1088, 'Santa Ana', 65),
(1089, 'Sonsonate', 65),
(1090, 'Usulutan', 65),
(1091, 'Annobon', 66),
(1092, 'Bioko Norte', 66),
(1093, 'Bioko Sur', 66),
(1094, 'Centro Sur', 66),
(1095, 'Kie-Ntem', 66),
(1096, 'Litoral', 66),
(1097, 'Wele-Nzas', 66),
(1098, 'Anseba', 67),
(1099, 'Debub', 67),
(1100, 'Debub-Keih-Bahri', 67),
(1101, 'Gash-Barka', 67),
(1102, 'Maekel', 67),
(1103, 'Semien-Keih-Bahri', 67),
(1104, 'Harju', 68),
(1105, 'Hiiu', 68),
(1106, 'Ida-Viru', 68),
(1107, 'Jarva', 68),
(1108, 'Jogeva', 68),
(1109, 'Laane', 68),
(1110, 'Laane-Viru', 68),
(1111, 'Parnu', 68),
(1112, 'Polva', 68),
(1113, 'Rapla', 68),
(1114, 'Saare', 68),
(1115, 'Tartu', 68),
(1116, 'Valga', 68),
(1117, 'Viljandi', 68),
(1118, 'Voru', 68),
(1119, 'Addis Abeba', 69),
(1120, 'Afar', 69),
(1121, 'Amhara', 69),
(1122, 'Benishangul', 69),
(1123, 'Diredawa', 69),
(1124, 'Gambella', 69),
(1125, 'Harar', 69),
(1126, 'Jigjiga', 69),
(1127, 'Mekele', 69),
(1128, 'Oromia', 69),
(1129, 'Somali', 69),
(1130, 'Southern', 69),
(1131, 'Tigray', 69),
(1132, 'Christmas Island', 70),
(1133, 'Cocos Islands', 70),
(1134, 'Coral Sea Islands', 70),
(1135, 'Falkland Islands', 71),
(1136, 'South Georgia', 71),
(1137, 'Klaksvik', 72),
(1138, 'Nor ara Eysturoy', 72),
(1139, 'Nor oy', 72),
(1140, 'Sandoy', 72),
(1141, 'Streymoy', 72),
(1142, 'Su uroy', 72),
(1143, 'Sy ra Eysturoy', 72),
(1144, 'Torshavn', 72),
(1145, 'Vaga', 72),
(1146, 'Central', 73),
(1147, 'Eastern', 73),
(1148, 'Northern', 73),
(1149, 'South Pacific', 73),
(1150, 'Western', 73),
(1151, 'Ahvenanmaa', 74),
(1152, 'Etela-Karjala', 74),
(1153, 'Etela-Pohjanmaa', 74),
(1154, 'Etela-Savo', 74),
(1155, 'Etela-Suomen Laani', 74),
(1156, 'Ita-Suomen Laani', 74),
(1157, 'Ita-Uusimaa', 74),
(1158, 'Kainuu', 74),
(1159, 'Kanta-Hame', 74),
(1160, 'Keski-Pohjanmaa', 74),
(1161, 'Keski-Suomi', 74),
(1162, 'Kymenlaakso', 74),
(1163, 'Lansi-Suomen Laani', 74),
(1164, 'Lappi', 74),
(1165, 'Northern Savonia', 74),
(1166, 'Ostrobothnia', 74),
(1167, 'Oulun Laani', 74),
(1168, 'Paijat-Hame', 74),
(1169, 'Pirkanmaa', 74),
(1170, 'Pohjanmaa', 74),
(1171, 'Pohjois-Karjala', 74),
(1172, 'Pohjois-Pohjanmaa', 74),
(1173, 'Pohjois-Savo', 74),
(1174, 'Saarijarvi', 74),
(1175, 'Satakunta', 74),
(1176, 'Southern Savonia', 74),
(1177, 'Tavastia Proper', 74),
(1178, 'Uleaborgs Lan', 74),
(1179, 'Uusimaa', 74),
(1180, 'Varsinais-Suomi', 74),
(1181, 'Ain', 75),
(1182, 'Aisne', 75),
(1183, 'Albi Le Sequestre', 75),
(1184, 'Allier', 75),
(1185, 'Alpes-Cote dAzur', 75),
(1186, 'Alpes-Maritimes', 75),
(1187, 'Alpes-de-Haute-Provence', 75),
(1188, 'Alsace', 75),
(1189, 'Aquitaine', 75),
(1190, 'Ardeche', 75),
(1191, 'Ardennes', 75),
(1192, 'Ariege', 75),
(1193, 'Aube', 75),
(1194, 'Aude', 75),
(1195, 'Auvergne', 75),
(1196, 'Aveyron', 75),
(1197, 'Bas-Rhin', 75),
(1198, 'Basse-Normandie', 75),
(1199, 'Bouches-du-Rhone', 75),
(1200, 'Bourgogne', 75),
(1201, 'Bretagne', 75),
(1202, 'Brittany', 75),
(1203, 'Burgundy', 75),
(1204, 'Calvados', 75),
(1205, 'Cantal', 75),
(1206, 'Cedex', 75),
(1207, 'Centre', 75),
(1208, 'Charente', 75),
(1209, 'Charente-Maritime', 75),
(1210, 'Cher', 75),
(1211, 'Correze', 75),
(1212, 'Corse-du-Sud', 75),
(1213, 'Cote-d\'Or', 75),
(1214, 'Cotes-d\'Armor', 75),
(1215, 'Creuse', 75),
(1216, 'Crolles', 75),
(1217, 'Deux-Sevres', 75),
(1218, 'Dordogne', 75),
(1219, 'Doubs', 75),
(1220, 'Drome', 75),
(1221, 'Essonne', 75),
(1222, 'Eure', 75),
(1223, 'Eure-et-Loir', 75),
(1224, 'Feucherolles', 75),
(1225, 'Finistere', 75),
(1226, 'Franche-Comte', 75),
(1227, 'Gard', 75),
(1228, 'Gers', 75),
(1229, 'Gironde', 75),
(1230, 'Haut-Rhin', 75),
(1231, 'Haute-Corse', 75),
(1232, 'Haute-Garonne', 75),
(1233, 'Haute-Loire', 75),
(1234, 'Haute-Marne', 75),
(1235, 'Haute-Saone', 75),
(1236, 'Haute-Savoie', 75),
(1237, 'Haute-Vienne', 75),
(1238, 'Hautes-Alpes', 75),
(1239, 'Hautes-Pyrenees', 75),
(1240, 'Hauts-de-Seine', 75),
(1241, 'Herault', 75),
(1242, 'Ile-de-France', 75),
(1243, 'Ille-et-Vilaine', 75),
(1244, 'Indre', 75),
(1245, 'Indre-et-Loire', 75),
(1246, 'Isere', 75),
(1247, 'Jura', 75),
(1248, 'Klagenfurt', 75),
(1249, 'Landes', 75),
(1250, 'Languedoc-Roussillon', 75),
(1251, 'Larcay', 75),
(1252, 'Le Castellet', 75),
(1253, 'Le Creusot', 75),
(1254, 'Limousin', 75),
(1255, 'Loir-et-Cher', 75),
(1256, 'Loire', 75),
(1257, 'Loire-Atlantique', 75),
(1258, 'Loiret', 75),
(1259, 'Lorraine', 75),
(1260, 'Lot', 75),
(1261, 'Lot-et-Garonne', 75),
(1262, 'Lower Normandy', 75),
(1263, 'Lozere', 75),
(1264, 'Maine-et-Loire', 75),
(1265, 'Manche', 75),
(1266, 'Marne', 75),
(1267, 'Mayenne', 75),
(1268, 'Meurthe-et-Moselle', 75),
(1269, 'Meuse', 75),
(1270, 'Midi-Pyrenees', 75),
(1271, 'Morbihan', 75),
(1272, 'Moselle', 75),
(1273, 'Nievre', 75),
(1274, 'Nord', 75),
(1275, 'Nord-Pas-de-Calais', 75),
(1276, 'Oise', 75),
(1277, 'Orne', 75),
(1278, 'Paris', 75),
(1279, 'Pas-de-Calais', 75),
(1280, 'Pays de la Loire', 75),
(1281, 'Pays-de-la-Loire', 75),
(1282, 'Picardy', 75),
(1283, 'Puy-de-Dome', 75),
(1284, 'Pyrenees-Atlantiques', 75),
(1285, 'Pyrenees-Orientales', 75),
(1286, 'Quelmes', 75),
(1287, 'Rhone', 75),
(1288, 'Rhone-Alpes', 75),
(1289, 'Saint Ouen', 75),
(1290, 'Saint Viatre', 75),
(1291, 'Saone-et-Loire', 75),
(1292, 'Sarthe', 75),
(1293, 'Savoie', 75),
(1294, 'Seine-Maritime', 75),
(1295, 'Seine-Saint-Denis', 75),
(1296, 'Seine-et-Marne', 75),
(1297, 'Somme', 75),
(1298, 'Sophia Antipolis', 75),
(1299, 'Souvans', 75),
(1300, 'Tarn', 75),
(1301, 'Tarn-et-Garonne', 75),
(1302, 'Territoire de Belfort', 75),
(1303, 'Treignac', 75),
(1304, 'Upper Normandy', 75),
(1305, 'Val-d\'Oise', 75),
(1306, 'Val-de-Marne', 75),
(1307, 'Var', 75),
(1308, 'Vaucluse', 75),
(1309, 'Vellise', 75),
(1310, 'Vendee', 75),
(1311, 'Vienne', 75),
(1312, 'Vosges', 75),
(1313, 'Yonne', 75),
(1314, 'Yvelines', 75),
(1315, 'Cayenne', 76),
(1316, 'Saint-Laurent-du-Maroni', 76),
(1317, 'Iles du Vent', 77),
(1318, 'Iles sous le Vent', 77),
(1319, 'Marquesas', 77),
(1320, 'Tuamotu', 77),
(1321, 'Tubuai', 77),
(1322, 'Amsterdam', 78),
(1323, 'Crozet Islands', 78),
(1324, 'Kerguelen', 78),
(1325, 'Estuaire', 79),
(1326, 'Haut-Ogooue', 79),
(1327, 'Moyen-Ogooue', 79),
(1328, 'Ngounie', 79),
(1329, 'Nyanga', 79),
(1330, 'Ogooue-Ivindo', 79),
(1331, 'Ogooue-Lolo', 79),
(1332, 'Ogooue-Maritime', 79),
(1333, 'Woleu-Ntem', 79),
(1334, 'Banjul', 80),
(1335, 'Basse', 80),
(1336, 'Brikama', 80),
(1337, 'Janjanbureh', 80),
(1338, 'Kanifing', 80),
(1339, 'Kerewan', 80),
(1340, 'Kuntaur', 80),
(1341, 'Mansakonko', 80),
(1342, 'Abhasia', 81),
(1343, 'Ajaria', 81),
(1344, 'Guria', 81),
(1345, 'Imereti', 81),
(1346, 'Kaheti', 81),
(1347, 'Kvemo Kartli', 81),
(1348, 'Mcheta-Mtianeti', 81),
(1349, 'Racha', 81),
(1350, 'Samagrelo-Zemo Svaneti', 81),
(1351, 'Samche-Zhavaheti', 81),
(1352, 'Shida Kartli', 81),
(1353, 'Tbilisi', 81),
(1354, 'Auvergne', 82),
(1355, 'Baden-Wurttemberg', 82),
(1356, 'Bavaria', 82),
(1357, 'Bayern', 82),
(1358, 'Beilstein Wurtt', 82),
(1359, 'Berlin', 82),
(1360, 'Brandenburg', 82),
(1361, 'Bremen', 82),
(1362, 'Dreisbach', 82),
(1363, 'Freistaat Bayern', 82),
(1364, 'Hamburg', 82),
(1365, 'Hannover', 82),
(1366, 'Heroldstatt', 82),
(1367, 'Hessen', 82),
(1368, 'Kortenberg', 82),
(1369, 'Laasdorf', 82),
(1370, 'Land Baden-Wurttemberg', 82),
(1371, 'Land Bayern', 82),
(1372, 'Land Brandenburg', 82),
(1373, 'Land Hessen', 82),
(1374, 'Land Mecklenburg-Vorpommern', 82),
(1375, 'Land Nordrhein-Westfalen', 82),
(1376, 'Land Rheinland-Pfalz', 82),
(1377, 'Land Sachsen', 82),
(1378, 'Land Sachsen-Anhalt', 82),
(1379, 'Land Thuringen', 82),
(1380, 'Lower Saxony', 82),
(1381, 'Mecklenburg-Vorpommern', 82),
(1382, 'Mulfingen', 82),
(1383, 'Munich', 82),
(1384, 'Neubeuern', 82),
(1385, 'Niedersachsen', 82),
(1386, 'Noord-Holland', 82),
(1387, 'Nordrhein-Westfalen', 82),
(1388, 'North Rhine-Westphalia', 82),
(1389, 'Osterode', 82),
(1390, 'Rheinland-Pfalz', 82),
(1391, 'Rhineland-Palatinate', 82),
(1392, 'Saarland', 82),
(1393, 'Sachsen', 82),
(1394, 'Sachsen-Anhalt', 82),
(1395, 'Saxony', 82),
(1396, 'Schleswig-Holstein', 82),
(1397, 'Thuringia', 82),
(1398, 'Webling', 82),
(1399, 'Weinstrabe', 82),
(1400, 'schlobborn', 82),
(1401, 'Ashanti', 83),
(1402, 'Brong-Ahafo', 83),
(1403, 'Central', 83),
(1404, 'Eastern', 83),
(1405, 'Greater Accra', 83),
(1406, 'Northern', 83),
(1407, 'Upper East', 83),
(1408, 'Upper West', 83),
(1409, 'Volta', 83),
(1410, 'Western', 83),
(1411, 'Gibraltar', 84),
(1412, 'Acharnes', 85),
(1413, 'Ahaia', 85),
(1414, 'Aitolia kai Akarnania', 85),
(1415, 'Argolis', 85),
(1416, 'Arkadia', 85),
(1417, 'Arta', 85),
(1418, 'Attica', 85),
(1419, 'Attiki', 85),
(1420, 'Ayion Oros', 85),
(1421, 'Crete', 85),
(1422, 'Dodekanisos', 85),
(1423, 'Drama', 85),
(1424, 'Evia', 85),
(1425, 'Evritania', 85),
(1426, 'Evros', 85),
(1427, 'Evvoia', 85),
(1428, 'Florina', 85),
(1429, 'Fokis', 85),
(1430, 'Fthiotis', 85),
(1431, 'Grevena', 85),
(1432, 'Halandri', 85),
(1433, 'Halkidiki', 85),
(1434, 'Hania', 85),
(1435, 'Heraklion', 85),
(1436, 'Hios', 85),
(1437, 'Ilia', 85),
(1438, 'Imathia', 85),
(1439, 'Ioannina', 85),
(1440, 'Iraklion', 85),
(1441, 'Karditsa', 85),
(1442, 'Kastoria', 85),
(1443, 'Kavala', 85),
(1444, 'Kefallinia', 85),
(1445, 'Kerkira', 85),
(1446, 'Kiklades', 85),
(1447, 'Kilkis', 85),
(1448, 'Korinthia', 85),
(1449, 'Kozani', 85),
(1450, 'Lakonia', 85),
(1451, 'Larisa', 85),
(1452, 'Lasithi', 85),
(1453, 'Lesvos', 85),
(1454, 'Levkas', 85),
(1455, 'Magnisia', 85),
(1456, 'Messinia', 85),
(1457, 'Nomos Attikis', 85),
(1458, 'Nomos Zakynthou', 85),
(1459, 'Pella', 85),
(1460, 'Pieria', 85),
(1461, 'Piraios', 85),
(1462, 'Preveza', 85),
(1463, 'Rethimni', 85),
(1464, 'Rodopi', 85),
(1465, 'Samos', 85),
(1466, 'Serrai', 85),
(1467, 'Thesprotia', 85),
(1468, 'Thessaloniki', 85),
(1469, 'Trikala', 85),
(1470, 'Voiotia', 85),
(1471, 'West Greece', 85),
(1472, 'Xanthi', 85),
(1473, 'Zakinthos', 85),
(1474, 'Aasiaat', 86),
(1475, 'Ammassalik', 86),
(1476, 'Illoqqortoormiut', 86),
(1477, 'Ilulissat', 86),
(1478, 'Ivittuut', 86),
(1479, 'Kangaatsiaq', 86),
(1480, 'Maniitsoq', 86),
(1481, 'Nanortalik', 86),
(1482, 'Narsaq', 86),
(1483, 'Nuuk', 86),
(1484, 'Paamiut', 86),
(1485, 'Qaanaaq', 86),
(1486, 'Qaqortoq', 86),
(1487, 'Qasigiannguit', 86),
(1488, 'Qeqertarsuaq', 86),
(1489, 'Sisimiut', 86),
(1490, 'Udenfor kommunal inddeling', 86),
(1491, 'Upernavik', 86),
(1492, 'Uummannaq', 86),
(1493, 'Carriacou-Petite Martinique', 87),
(1494, 'Saint Andrew', 87),
(1495, 'Saint Davids', 87),
(1496, 'Saint George\'s', 87),
(1497, 'Saint John', 87),
(1498, 'Saint Mark', 87),
(1499, 'Saint Patrick', 87),
(1500, 'Basse-Terre', 88),
(1501, 'Grande-Terre', 88),
(1502, 'Iles des Saintes', 88),
(1503, 'La Desirade', 88),
(1504, 'Marie-Galante', 88),
(1505, 'Saint Barthelemy', 88),
(1506, 'Saint Martin', 88),
(1507, 'Agana Heights', 89),
(1508, 'Agat', 89),
(1509, 'Barrigada', 89),
(1510, 'Chalan-Pago-Ordot', 89),
(1511, 'Dededo', 89),
(1512, 'Hagatna', 89),
(1513, 'Inarajan', 89),
(1514, 'Mangilao', 89),
(1515, 'Merizo', 89),
(1516, 'Mongmong-Toto-Maite', 89),
(1517, 'Santa Rita', 89),
(1518, 'Sinajana', 89),
(1519, 'Talofofo', 89),
(1520, 'Tamuning', 89),
(1521, 'Yigo', 89),
(1522, 'Yona', 89),
(1523, 'Alta Verapaz', 90),
(1524, 'Baja Verapaz', 90),
(1525, 'Chimaltenango', 90),
(1526, 'Chiquimula', 90),
(1527, 'El Progreso', 90),
(1528, 'Escuintla', 90),
(1529, 'Guatemala', 90),
(1530, 'Huehuetenango', 90),
(1531, 'Izabal', 90),
(1532, 'Jalapa', 90),
(1533, 'Jutiapa', 90),
(1534, 'Peten', 90),
(1535, 'Quezaltenango', 90),
(1536, 'Quiche', 90),
(1537, 'Retalhuleu', 90),
(1538, 'Sacatepequez', 90),
(1539, 'San Marcos', 90),
(1540, 'Santa Rosa', 90),
(1541, 'Solola', 90),
(1542, 'Suchitepequez', 90),
(1543, 'Totonicapan', 90),
(1544, 'Zacapa', 90),
(1545, 'Alderney', 91),
(1546, 'Castel', 91),
(1547, 'Forest', 91),
(1548, 'Saint Andrew', 91),
(1549, 'Saint Martin', 91),
(1550, 'Saint Peter Port', 91),
(1551, 'Saint Pierre du Bois', 91),
(1552, 'Saint Sampson', 91),
(1553, 'Saint Saviour', 91),
(1554, 'Sark', 91),
(1555, 'Torteval', 91),
(1556, 'Vale', 91),
(1557, 'Beyla', 92),
(1558, 'Boffa', 92),
(1559, 'Boke', 92),
(1560, 'Conakry', 92),
(1561, 'Coyah', 92),
(1562, 'Dabola', 92),
(1563, 'Dalaba', 92),
(1564, 'Dinguiraye', 92),
(1565, 'Faranah', 92),
(1566, 'Forecariah', 92),
(1567, 'Fria', 92),
(1568, 'Gaoual', 92),
(1569, 'Gueckedou', 92),
(1570, 'Kankan', 92),
(1571, 'Kerouane', 92),
(1572, 'Kindia', 92),
(1573, 'Kissidougou', 92),
(1574, 'Koubia', 92),
(1575, 'Koundara', 92),
(1576, 'Kouroussa', 92),
(1577, 'Labe', 92),
(1578, 'Lola', 92),
(1579, 'Macenta', 92),
(1580, 'Mali', 92),
(1581, 'Mamou', 92),
(1582, 'Mandiana', 92),
(1583, 'Nzerekore', 92),
(1584, 'Pita', 92),
(1585, 'Siguiri', 92),
(1586, 'Telimele', 92),
(1587, 'Tougue', 92),
(1588, 'Yomou', 92),
(1589, 'Bafata', 93),
(1590, 'Bissau', 93),
(1591, 'Bolama', 93),
(1592, 'Cacheu', 93),
(1593, 'Gabu', 93),
(1594, 'Oio', 93),
(1595, 'Quinara', 93),
(1596, 'Tombali', 93),
(1597, 'Barima-Waini', 94),
(1598, 'Cuyuni-Mazaruni', 94),
(1599, 'Demerara-Mahaica', 94),
(1600, 'East Berbice-Corentyne', 94),
(1601, 'Essequibo Islands-West Demerar', 94),
(1602, 'Mahaica-Berbice', 94),
(1603, 'Pomeroon-Supenaam', 94),
(1604, 'Potaro-Siparuni', 94),
(1605, 'Upper Demerara-Berbice', 94),
(1606, 'Upper Takutu-Upper Essequibo', 94),
(1607, 'Artibonite', 95),
(1608, 'Centre', 95),
(1609, 'Grand\'Anse', 95),
(1610, 'Nord', 95),
(1611, 'Nord-Est', 95),
(1612, 'Nord-Ouest', 95),
(1613, 'Ouest', 95),
(1614, 'Sud', 95),
(1615, 'Sud-Est', 95),
(1616, 'Heard and McDonald Islands', 96),
(1617, 'Atlantida', 97),
(1618, 'Choluteca', 97),
(1619, 'Colon', 97),
(1620, 'Comayagua', 97),
(1621, 'Copan', 97),
(1622, 'Cortes', 97),
(1623, 'Distrito Central', 97),
(1624, 'El Paraiso', 97),
(1625, 'Francisco Morazan', 97),
(1626, 'Gracias a Dios', 97),
(1627, 'Intibuca', 97),
(1628, 'Islas de la Bahia', 97),
(1629, 'La Paz', 97),
(1630, 'Lempira', 97),
(1631, 'Ocotepeque', 97),
(1632, 'Olancho', 97),
(1633, 'Santa Barbara', 97),
(1634, 'Valle', 97),
(1635, 'Yoro', 97),
(1636, 'Hong Kong', 98),
(1637, 'Bacs-Kiskun', 99),
(1638, 'Baranya', 99),
(1639, 'Bekes', 99),
(1640, 'Borsod-Abauj-Zemplen', 99),
(1641, 'Budapest', 99),
(1642, 'Csongrad', 99),
(1643, 'Fejer', 99),
(1644, 'Gyor-Moson-Sopron', 99),
(1645, 'Hajdu-Bihar', 99),
(1646, 'Heves', 99),
(1647, 'Jasz-Nagykun-Szolnok', 99),
(1648, 'Komarom-Esztergom', 99),
(1649, 'Nograd', 99),
(1650, 'Pest', 99),
(1651, 'Somogy', 99),
(1652, 'Szabolcs-Szatmar-Bereg', 99),
(1653, 'Tolna', 99),
(1654, 'Vas', 99),
(1655, 'Veszprem', 99),
(1656, 'Zala', 99),
(1657, 'Austurland', 100),
(1658, 'Gullbringusysla', 100),
(1659, 'Hofu borgarsva i', 100),
(1660, 'Nor urland eystra', 100),
(1661, 'Nor urland vestra', 100),
(1662, 'Su urland', 100),
(1663, 'Su urnes', 100),
(1664, 'Vestfir ir', 100),
(1665, 'Vesturland', 100),
(1666, 'Aceh', 102),
(1667, 'Bali', 102),
(1668, 'Bangka-Belitung', 102),
(1669, 'Banten', 102),
(1670, 'Bengkulu', 102),
(1671, 'Gandaria', 102),
(1672, 'Gorontalo', 102),
(1673, 'Jakarta', 102),
(1674, 'Jambi', 102),
(1675, 'Jawa Barat', 102),
(1676, 'Jawa Tengah', 102),
(1677, 'Jawa Timur', 102),
(1678, 'Kalimantan Barat', 102),
(1679, 'Kalimantan Selatan', 102),
(1680, 'Kalimantan Tengah', 102),
(1681, 'Kalimantan Timur', 102),
(1682, 'Kendal', 102),
(1683, 'Lampung', 102),
(1684, 'Maluku', 102),
(1685, 'Maluku Utara', 102),
(1686, 'Nusa Tenggara Barat', 102),
(1687, 'Nusa Tenggara Timur', 102),
(1688, 'Papua', 102),
(1689, 'Riau', 102),
(1690, 'Riau Kepulauan', 102),
(1691, 'Solo', 102),
(1692, 'Sulawesi Selatan', 102),
(1693, 'Sulawesi Tengah', 102),
(1694, 'Sulawesi Tenggara', 102),
(1695, 'Sulawesi Utara', 102),
(1696, 'Sumatera Barat', 102),
(1697, 'Sumatera Selatan', 102),
(1698, 'Sumatera Utara', 102),
(1699, 'Yogyakarta', 102),
(1700, 'Ardabil', 103),
(1701, 'Azarbayjan-e Bakhtari', 103),
(1702, 'Azarbayjan-e Khavari', 103),
(1703, 'Bushehr', 103),
(1704, 'Chahar Mahal-e Bakhtiari', 103),
(1705, 'Esfahan', 103),
(1706, 'Fars', 103),
(1707, 'Gilan', 103),
(1708, 'Golestan', 103),
(1709, 'Hamadan', 103),
(1710, 'Hormozgan', 103),
(1711, 'Ilam', 103),
(1712, 'Kerman', 103),
(1713, 'Kermanshah', 103),
(1714, 'Khorasan', 103),
(1715, 'Khuzestan', 103),
(1716, 'Kohgiluyeh-e Boyerahmad', 103),
(1717, 'Kordestan', 103),
(1718, 'Lorestan', 103),
(1719, 'Markazi', 103),
(1720, 'Mazandaran', 103),
(1721, 'Ostan-e Esfahan', 103),
(1722, 'Qazvin', 103),
(1723, 'Qom', 103),
(1724, 'Semnan', 103),
(1725, 'Sistan-e Baluchestan', 103),
(1726, 'Tehran', 103),
(1727, 'Yazd', 103),
(1728, 'Zanjan', 103),
(1729, 'Babil', 104),
(1730, 'Baghdad', 104),
(1731, 'Dahuk', 104),
(1732, 'Dhi Qar', 104),
(1733, 'Diyala', 104),
(1734, 'Erbil', 104),
(1735, 'Irbil', 104),
(1736, 'Karbala', 104),
(1737, 'Kurdistan', 104),
(1738, 'Maysan', 104),
(1739, 'Ninawa', 104),
(1740, 'Salah-ad-Din', 104),
(1741, 'Wasit', 104),
(1742, 'al-Anbar', 104),
(1743, 'al-Basrah', 104),
(1744, 'al-Muthanna', 104),
(1745, 'al-Qadisiyah', 104),
(1746, 'an-Najaf', 104),
(1747, 'as-Sulaymaniyah', 104),
(1748, 'at-Ta\'mim', 104),
(1749, 'Armagh', 105),
(1750, 'Carlow', 105),
(1751, 'Cavan', 105),
(1752, 'Clare', 105),
(1753, 'Cork', 105),
(1754, 'Donegal', 105),
(1755, 'Dublin', 105),
(1756, 'Galway', 105),
(1757, 'Kerry', 105),
(1758, 'Kildare', 105),
(1759, 'Kilkenny', 105),
(1760, 'Laois', 105),
(1761, 'Leinster', 105),
(1762, 'Leitrim', 105),
(1763, 'Limerick', 105),
(1764, 'Loch Garman', 105),
(1765, 'Longford', 105),
(1766, 'Louth', 105),
(1767, 'Mayo', 105),
(1768, 'Meath', 105),
(1769, 'Monaghan', 105),
(1770, 'Offaly', 105),
(1771, 'Roscommon', 105),
(1772, 'Sligo', 105),
(1773, 'Tipperary North Riding', 105),
(1774, 'Tipperary South Riding', 105),
(1775, 'Ulster', 105),
(1776, 'Waterford', 105),
(1777, 'Westmeath', 105),
(1778, 'Wexford', 105),
(1779, 'Wicklow', 105),
(1780, 'Beit Hanania', 106),
(1781, 'Ben Gurion Airport', 106),
(1782, 'Bethlehem', 106),
(1783, 'Caesarea', 106),
(1784, 'Centre', 106),
(1785, 'Gaza', 106),
(1786, 'Hadaron', 106),
(1787, 'Haifa District', 106),
(1788, 'Hamerkaz', 106),
(1789, 'Hazafon', 106),
(1790, 'Hebron', 106),
(1791, 'Jaffa', 106),
(1792, 'Jerusalem', 106),
(1793, 'Khefa', 106),
(1794, 'Kiryat Yam', 106),
(1795, 'Lower Galilee', 106),
(1796, 'Qalqilya', 106),
(1797, 'Talme Elazar', 106),
(1798, 'Tel Aviv', 106),
(1799, 'Tsafon', 106),
(1800, 'Umm El Fahem', 106),
(1801, 'Yerushalayim', 106),
(1802, 'Abruzzi', 107),
(1803, 'Abruzzo', 107),
(1804, 'Agrigento', 107),
(1805, 'Alessandria', 107),
(1806, 'Ancona', 107),
(1807, 'Arezzo', 107),
(1808, 'Ascoli Piceno', 107),
(1809, 'Asti', 107),
(1810, 'Avellino', 107),
(1811, 'Bari', 107),
(1812, 'Basilicata', 107),
(1813, 'Belluno', 107),
(1814, 'Benevento', 107),
(1815, 'Bergamo', 107),
(1816, 'Biella', 107),
(1817, 'Bologna', 107),
(1818, 'Bolzano', 107),
(1819, 'Brescia', 107),
(1820, 'Brindisi', 107),
(1821, 'Calabria', 107),
(1822, 'Campania', 107),
(1823, 'Cartoceto', 107),
(1824, 'Caserta', 107),
(1825, 'Catania', 107),
(1826, 'Chieti', 107),
(1827, 'Como', 107),
(1828, 'Cosenza', 107),
(1829, 'Cremona', 107),
(1830, 'Cuneo', 107),
(1831, 'Emilia-Romagna', 107),
(1832, 'Ferrara', 107),
(1833, 'Firenze', 107),
(1834, 'Florence', 107),
(1835, 'Forli-Cesena ', 107),
(1836, 'Friuli-Venezia Giulia', 107),
(1837, 'Frosinone', 107),
(1838, 'Genoa', 107),
(1839, 'Gorizia', 107),
(1840, 'L\'Aquila', 107),
(1841, 'Lazio', 107),
(1842, 'Lecce', 107),
(1843, 'Lecco', 107),
(1845, 'Liguria', 107),
(1846, 'Lodi', 107),
(1847, 'Lombardia', 107),
(1848, 'Lombardy', 107),
(1849, 'Macerata', 107),
(1850, 'Mantova', 107),
(1851, 'Marche', 107),
(1852, 'Messina', 107),
(1853, 'Milan', 107),
(1854, 'Modena', 107),
(1855, 'Molise', 107),
(1856, 'Molteno', 107),
(1857, 'Montenegro', 107),
(1858, 'Monza and Brianza', 107),
(1859, 'Naples', 107),
(1860, 'Novara', 107),
(1861, 'Padova', 107),
(1862, 'Parma', 107),
(1863, 'Pavia', 107),
(1864, 'Perugia', 107),
(1865, 'Pesaro-Urbino', 107),
(1866, 'Piacenza', 107),
(1867, 'Piedmont', 107),
(1868, 'Piemonte', 107),
(1869, 'Pisa', 107),
(1870, 'Pordenone', 107),
(1871, 'Potenza', 107),
(1872, 'Puglia', 107),
(1873, 'Reggio Emilia', 107),
(1874, 'Rimini', 107),
(1875, 'Roma', 107),
(1876, 'Salerno', 107),
(1877, 'Sardegna', 107),
(1878, 'Sassari', 107),
(1879, 'Savona', 107),
(1880, 'Sicilia', 107),
(1881, 'Siena', 107),
(1882, 'Sondrio', 107),
(1883, 'South Tyrol', 107),
(1884, 'Taranto', 107),
(1885, 'Teramo', 107),
(1886, 'Torino', 107),
(1887, 'Toscana', 107),
(1888, 'Trapani', 107),
(1889, 'Trentino-Alto Adige', 107),
(1890, 'Trento', 107),
(1891, 'Treviso', 107),
(1892, 'Udine', 107),
(1893, 'Umbria', 107),
(1894, 'Valle d\'Aosta', 107),
(1895, 'Varese', 107),
(1896, 'Veneto', 107),
(1897, 'Venezia', 107),
(1898, 'Verbano-Cusio-Ossola', 107),
(1899, 'Vercelli', 107),
(1900, 'Verona', 107),
(1901, 'Vicenza', 107),
(1902, 'Viterbo', 107),
(1903, 'Buxoro Viloyati', 108),
(1904, 'Clarendon', 108),
(1905, 'Hanover', 108),
(1906, 'Kingston', 108),
(1907, 'Manchester', 108),
(1908, 'Portland', 108),
(1909, 'Saint Andrews', 108),
(1910, 'Saint Ann', 108),
(1911, 'Saint Catherine', 108),
(1912, 'Saint Elizabeth', 108),
(1913, 'Saint James', 108),
(1914, 'Saint Mary', 108),
(1915, 'Saint Thomas', 108),
(1916, 'Trelawney', 108),
(1917, 'Westmoreland', 108),
(1918, 'Aichi', 109),
(1919, 'Akita', 109),
(1920, 'Aomori', 109),
(1921, 'Chiba', 109),
(1922, 'Ehime', 109),
(1923, 'Fukui', 109),
(1924, 'Fukuoka', 109),
(1925, 'Fukushima', 109),
(1926, 'Gifu', 109),
(1927, 'Gumma', 109),
(1928, 'Hiroshima', 109),
(1929, 'Hokkaido', 109),
(1930, 'Hyogo', 109),
(1931, 'Ibaraki', 109),
(1932, 'Ishikawa', 109),
(1933, 'Iwate', 109),
(1934, 'Kagawa', 109),
(1935, 'Kagoshima', 109),
(1936, 'Kanagawa', 109),
(1937, 'Kanto', 109),
(1938, 'Kochi', 109),
(1939, 'Kumamoto', 109),
(1940, 'Kyoto', 109),
(1941, 'Mie', 109),
(1942, 'Miyagi', 109),
(1943, 'Miyazaki', 109),
(1944, 'Nagano', 109),
(1945, 'Nagasaki', 109),
(1946, 'Nara', 109),
(1947, 'Niigata', 109),
(1948, 'Oita', 109),
(1949, 'Okayama', 109),
(1950, 'Okinawa', 109),
(1951, 'Osaka', 109),
(1952, 'Saga', 109),
(1953, 'Saitama', 109),
(1954, 'Shiga', 109),
(1955, 'Shimane', 109),
(1956, 'Shizuoka', 109),
(1957, 'Tochigi', 109),
(1958, 'Tokushima', 109),
(1959, 'Tokyo', 109),
(1960, 'Tottori', 109),
(1961, 'Toyama', 109),
(1962, 'Wakayama', 109),
(1963, 'Yamagata', 109),
(1964, 'Yamaguchi', 109),
(1965, 'Yamanashi', 109),
(1966, 'Grouville', 110),
(1967, 'Saint Brelade', 110),
(1968, 'Saint Clement', 110),
(1969, 'Saint Helier', 110),
(1970, 'Saint John', 110),
(1971, 'Saint Lawrence', 110),
(1972, 'Saint Martin', 110),
(1973, 'Saint Mary', 110),
(1974, 'Saint Peter', 110),
(1975, 'Saint Saviour', 110),
(1976, 'Trinity', 110),
(1977, '\'Ajlun', 111),
(1978, 'Amman', 111),
(1979, 'Irbid', 111),
(1980, 'Jarash', 111),
(1981, 'Ma\'an', 111),
(1982, 'Madaba', 111),
(1983, 'al-\'Aqabah', 111),
(1984, 'al-Balqa\'', 111),
(1985, 'al-Karak', 111),
(1986, 'al-Mafraq', 111),
(1987, 'at-Tafilah', 111),
(1988, 'az-Zarqa\'', 111),
(1989, 'Akmecet', 112),
(1990, 'Akmola', 112),
(1991, 'Aktobe', 112),
(1992, 'Almati', 112),
(1993, 'Atirau', 112),
(1994, 'Batis Kazakstan', 112),
(1995, 'Burlinsky Region', 112),
(1996, 'Karagandi', 112),
(1997, 'Kostanay', 112),
(1998, 'Mankistau', 112),
(1999, 'Ontustik Kazakstan', 112),
(2000, 'Pavlodar', 112),
(2001, 'Sigis Kazakstan', 112),
(2002, 'Soltustik Kazakstan', 112),
(2003, 'Taraz', 112),
(2004, 'Central', 113),
(2005, 'Coast', 113),
(2006, 'Eastern', 113),
(2007, 'Nairobi', 113),
(2008, 'North Eastern', 113),
(2009, 'Nyanza', 113),
(2010, 'Rift Valley', 113),
(2011, 'Western', 113),
(2012, 'Abaiang', 114),
(2013, 'Abemana', 114),
(2014, 'Aranuka', 114),
(2015, 'Arorae', 114),
(2016, 'Banaba', 114),
(2017, 'Beru', 114),
(2018, 'Butaritari', 114),
(2019, 'Kiritimati', 114),
(2020, 'Kuria', 114),
(2021, 'Maiana', 114),
(2022, 'Makin', 114),
(2023, 'Marakei', 114),
(2024, 'Nikunau', 114),
(2025, 'Nonouti', 114),
(2026, 'Onotoa', 114),
(2027, 'Phoenix Islands', 114),
(2028, 'Tabiteuea North', 114),
(2029, 'Tabiteuea South', 114),
(2030, 'Tabuaeran', 114),
(2031, 'Tamana', 114),
(2032, 'Tarawa North', 114),
(2033, 'Tarawa South', 114),
(2034, 'Teraina', 114),
(2035, 'Chagangdo', 115),
(2036, 'Hamgyeongbukto', 115),
(2037, 'Hamgyeongnamdo', 115),
(2038, 'Hwanghaebukto', 115),
(2039, 'Hwanghaenamdo', 115),
(2040, 'Kaeseong', 115),
(2041, 'Kangweon', 115),
(2042, 'Nampo', 115),
(2043, 'Pyeonganbukto', 115),
(2044, 'Pyeongannamdo', 115),
(2045, 'Pyeongyang', 115),
(2046, 'Yanggang', 115),
(2047, 'Busan', 116),
(2048, 'Cheju', 116),
(2049, 'Chollabuk', 116),
(2050, 'Chollanam', 116),
(2051, 'Chungbuk', 116),
(2052, 'Chungcheongbuk', 116),
(2053, 'Chungcheongnam', 116),
(2054, 'Chungnam', 116),
(2055, 'Daegu', 116),
(2056, 'Gangwon-do', 116),
(2057, 'Goyang-si', 116),
(2058, 'Gyeonggi-do', 116),
(2059, 'Gyeongsang ', 116),
(2060, 'Gyeongsangnam-do', 116),
(2061, 'Incheon', 116),
(2062, 'Jeju-Si', 116),
(2063, 'Jeonbuk', 116),
(2064, 'Kangweon', 116),
(2065, 'Kwangju', 116),
(2066, 'Kyeonggi', 116),
(2067, 'Kyeongsangbuk', 116),
(2068, 'Kyeongsangnam', 116),
(2069, 'Kyonggi-do', 116),
(2070, 'Kyungbuk-Do', 116),
(2071, 'Kyunggi-Do', 116),
(2072, 'Kyunggi-do', 116),
(2073, 'Pusan', 116),
(2074, 'Seoul', 116),
(2075, 'Sudogwon', 116),
(2076, 'Taegu', 116),
(2077, 'Taejeon', 116),
(2078, 'Taejon-gwangyoksi', 116),
(2079, 'Ulsan', 116),
(2080, 'Wonju', 116),
(2081, 'gwangyoksi', 116),
(2082, 'Al Asimah', 117),
(2083, 'Hawalli', 117),
(2084, 'Mishref', 117),
(2085, 'Qadesiya', 117),
(2086, 'Safat', 117),
(2087, 'Salmiya', 117),
(2088, 'al-Ahmadi', 117),
(2089, 'al-Farwaniyah', 117),
(2090, 'al-Jahra', 117),
(2091, 'al-Kuwayt', 117),
(2092, 'Batken', 118),
(2093, 'Bishkek', 118),
(2094, 'Chui', 118),
(2095, 'Issyk-Kul', 118),
(2096, 'Jalal-Abad', 118),
(2097, 'Naryn', 118),
(2098, 'Osh', 118),
(2099, 'Talas', 118),
(2100, 'Attopu', 119),
(2101, 'Bokeo', 119),
(2102, 'Bolikhamsay', 119),
(2103, 'Champasak', 119),
(2104, 'Houaphanh', 119),
(2105, 'Khammouane', 119),
(2106, 'Luang Nam Tha', 119),
(2107, 'Luang Prabang', 119),
(2108, 'Oudomxay', 119),
(2109, 'Phongsaly', 119),
(2110, 'Saravan', 119),
(2111, 'Savannakhet', 119),
(2112, 'Sekong', 119),
(2113, 'Viangchan Prefecture', 119),
(2114, 'Viangchan Province', 119),
(2115, 'Xaignabury', 119),
(2116, 'Xiang Khuang', 119),
(2117, 'Aizkraukles', 120),
(2118, 'Aluksnes', 120),
(2119, 'Balvu', 120),
(2120, 'Bauskas', 120),
(2121, 'Cesu', 120),
(2122, 'Daugavpils', 120),
(2123, 'Daugavpils City', 120),
(2124, 'Dobeles', 120),
(2125, 'Gulbenes', 120),
(2126, 'Jekabspils', 120),
(2127, 'Jelgava', 120),
(2128, 'Jelgavas', 120),
(2129, 'Jurmala City', 120),
(2130, 'Kraslavas', 120),
(2131, 'Kuldigas', 120),
(2132, 'Liepaja', 120),
(2133, 'Liepajas', 120),
(2134, 'Limbazhu', 120),
(2135, 'Ludzas', 120),
(2136, 'Madonas', 120),
(2137, 'Ogres', 120),
(2138, 'Preilu', 120),
(2139, 'Rezekne', 120),
(2140, 'Rezeknes', 120),
(2141, 'Riga', 120),
(2142, 'Rigas', 120),
(2143, 'Saldus', 120),
(2144, 'Talsu', 120),
(2145, 'Tukuma', 120),
(2146, 'Valkas', 120),
(2147, 'Valmieras', 120),
(2148, 'Ventspils', 120),
(2149, 'Ventspils City', 120),
(2150, 'Beirut', 121),
(2151, 'Jabal Lubnan', 121),
(2152, 'Mohafazat Liban-Nord', 121),
(2153, 'Mohafazat Mont-Liban', 121),
(2154, 'Sidon', 121),
(2155, 'al-Biqa', 121),
(2156, 'al-Janub', 121),
(2157, 'an-Nabatiyah', 121),
(2158, 'ash-Shamal', 121),
(2159, 'Berea', 122),
(2160, 'Butha-Buthe', 122),
(2161, 'Leribe', 122),
(2162, 'Mafeteng', 122),
(2163, 'Maseru', 122),
(2164, 'Mohale\'s Hoek', 122),
(2165, 'Mokhotlong', 122),
(2166, 'Qacha\'s Nek', 122),
(2167, 'Quthing', 122),
(2168, 'Thaba-Tseka', 122),
(2169, 'Bomi', 123),
(2170, 'Bong', 123),
(2171, 'Grand Bassa', 123),
(2172, 'Grand Cape Mount', 123),
(2173, 'Grand Gedeh', 123),
(2174, 'Loffa', 123),
(2175, 'Margibi', 123),
(2176, 'Maryland and Grand Kru', 123),
(2177, 'Montserrado', 123),
(2178, 'Nimba', 123),
(2179, 'Rivercess', 123),
(2180, 'Sinoe', 123),
(2181, 'Ajdabiya', 124),
(2182, 'Fezzan', 124),
(2183, 'Banghazi', 124),
(2184, 'Darnah', 124),
(2185, 'Ghadamis', 124),
(2186, 'Gharyan', 124),
(2187, 'Misratah', 124),
(2188, 'Murzuq', 124),
(2189, 'Sabha', 124),
(2190, 'Sawfajjin', 124),
(2191, 'Surt', 124),
(2192, 'Tarabulus', 124);
INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(2193, 'Tarhunah', 124),
(2194, 'Tripolitania', 124),
(2195, 'Tubruq', 124),
(2196, 'Yafran', 124),
(2197, 'Zlitan', 124),
(2198, 'al-\'Aziziyah', 124),
(2199, 'al-Fatih', 124),
(2200, 'al-Jabal al Akhdar', 124),
(2201, 'al-Jufrah', 124),
(2202, 'al-Khums', 124),
(2203, 'al-Kufrah', 124),
(2204, 'an-Nuqat al-Khams', 124),
(2205, 'ash-Shati\'', 124),
(2206, 'az-Zawiyah', 124),
(2207, 'Balzers', 125),
(2208, 'Eschen', 125),
(2209, 'Gamprin', 125),
(2210, 'Mauren', 125),
(2211, 'Planken', 125),
(2212, 'Ruggell', 125),
(2213, 'Schaan', 125),
(2214, 'Schellenberg', 125),
(2215, 'Triesen', 125),
(2216, 'Triesenberg', 125),
(2217, 'Vaduz', 125),
(2218, 'Alytaus', 126),
(2219, 'Anyksciai', 126),
(2220, 'Kauno', 126),
(2221, 'Klaipedos', 126),
(2222, 'Marijampoles', 126),
(2223, 'Panevezhio', 126),
(2224, 'Panevezys', 126),
(2225, 'Shiauliu', 126),
(2226, 'Taurages', 126),
(2227, 'Telshiu', 126),
(2228, 'Telsiai', 126),
(2229, 'Utenos', 126),
(2230, 'Vilniaus', 126),
(2231, 'Capellen', 127),
(2232, 'Clervaux', 127),
(2233, 'Diekirch', 127),
(2234, 'Echternach', 127),
(2235, 'Esch-sur-Alzette', 127),
(2236, 'Grevenmacher', 127),
(2237, 'Luxembourg', 127),
(2238, 'Mersch', 127),
(2239, 'Redange', 127),
(2240, 'Remich', 127),
(2241, 'Vianden', 127),
(2242, 'Wiltz', 127),
(2243, 'Macau', 128),
(2244, 'Berovo', 129),
(2245, 'Bitola', 129),
(2246, 'Brod', 129),
(2247, 'Debar', 129),
(2248, 'Delchevo', 129),
(2249, 'Demir Hisar', 129),
(2250, 'Gevgelija', 129),
(2251, 'Gostivar', 129),
(2252, 'Kavadarci', 129),
(2253, 'Kichevo', 129),
(2254, 'Kochani', 129),
(2255, 'Kratovo', 129),
(2256, 'Kriva Palanka', 129),
(2257, 'Krushevo', 129),
(2258, 'Kumanovo', 129),
(2259, 'Negotino', 129),
(2260, 'Ohrid', 129),
(2261, 'Prilep', 129),
(2262, 'Probishtip', 129),
(2263, 'Radovish', 129),
(2264, 'Resen', 129),
(2265, 'Shtip', 129),
(2266, 'Skopje', 129),
(2267, 'Struga', 129),
(2268, 'Strumica', 129),
(2269, 'Sveti Nikole', 129),
(2270, 'Tetovo', 129),
(2271, 'Valandovo', 129),
(2272, 'Veles', 129),
(2273, 'Vinica', 129),
(2274, 'Antananarivo', 130),
(2275, 'Antsiranana', 130),
(2276, 'Fianarantsoa', 130),
(2277, 'Mahajanga', 130),
(2278, 'Toamasina', 130),
(2279, 'Toliary', 130),
(2280, 'Balaka', 131),
(2281, 'Blantyre City', 131),
(2282, 'Chikwawa', 131),
(2283, 'Chiradzulu', 131),
(2284, 'Chitipa', 131),
(2285, 'Dedza', 131),
(2286, 'Dowa', 131),
(2287, 'Karonga', 131),
(2288, 'Kasungu', 131),
(2289, 'Lilongwe City', 131),
(2290, 'Machinga', 131),
(2291, 'Mangochi', 131),
(2292, 'Mchinji', 131),
(2293, 'Mulanje', 131),
(2294, 'Mwanza', 131),
(2295, 'Mzimba', 131),
(2296, 'Mzuzu City', 131),
(2297, 'Nkhata Bay', 131),
(2298, 'Nkhotakota', 131),
(2299, 'Nsanje', 131),
(2300, 'Ntcheu', 131),
(2301, 'Ntchisi', 131),
(2302, 'Phalombe', 131),
(2303, 'Rumphi', 131),
(2304, 'Salima', 131),
(2305, 'Thyolo', 131),
(2306, 'Zomba Municipality', 131),
(2307, 'Johor', 132),
(2308, 'Kedah', 132),
(2309, 'Kelantan', 132),
(2310, 'Kuala Lumpur', 132),
(2311, 'Labuan', 132),
(2312, 'Melaka', 132),
(2313, 'Negeri Johor', 132),
(2314, 'Negeri Sembilan', 132),
(2315, 'Pahang', 132),
(2316, 'Penang', 132),
(2317, 'Perak', 132),
(2318, 'Perlis', 132),
(2319, 'Pulau Pinang', 132),
(2320, 'Sabah', 132),
(2321, 'Sarawak', 132),
(2322, 'Selangor', 132),
(2323, 'Sembilan', 132),
(2324, 'Terengganu', 132),
(2325, 'Alif Alif', 133),
(2326, 'Alif Dhaal', 133),
(2327, 'Baa', 133),
(2328, 'Dhaal', 133),
(2329, 'Faaf', 133),
(2330, 'Gaaf Alif', 133),
(2331, 'Gaaf Dhaal', 133),
(2332, 'Ghaviyani', 133),
(2333, 'Haa Alif', 133),
(2334, 'Haa Dhaal', 133),
(2335, 'Kaaf', 133),
(2336, 'Laam', 133),
(2337, 'Lhaviyani', 133),
(2338, 'Male', 133),
(2339, 'Miim', 133),
(2340, 'Nuun', 133),
(2341, 'Raa', 133),
(2342, 'Shaviyani', 133),
(2343, 'Siin', 133),
(2344, 'Thaa', 133),
(2345, 'Vaav', 133),
(2346, 'Bamako', 134),
(2347, 'Gao', 134),
(2348, 'Kayes', 134),
(2349, 'Kidal', 134),
(2350, 'Koulikoro', 134),
(2351, 'Mopti', 134),
(2352, 'Segou', 134),
(2353, 'Sikasso', 134),
(2354, 'Tombouctou', 134),
(2355, 'Gozo and Comino', 135),
(2356, 'Inner Harbour', 135),
(2357, 'Northern', 135),
(2358, 'Outer Harbour', 135),
(2359, 'South Eastern', 135),
(2360, 'Valletta', 135),
(2361, 'Western', 135),
(2362, 'Castletown', 136),
(2363, 'Douglas', 136),
(2364, 'Laxey', 136),
(2365, 'Onchan', 136),
(2366, 'Peel', 136),
(2367, 'Port Erin', 136),
(2368, 'Port Saint Mary', 136),
(2369, 'Ramsey', 136),
(2370, 'Ailinlaplap', 137),
(2371, 'Ailuk', 137),
(2372, 'Arno', 137),
(2373, 'Aur', 137),
(2374, 'Bikini', 137),
(2375, 'Ebon', 137),
(2376, 'Enewetak', 137),
(2377, 'Jabat', 137),
(2378, 'Jaluit', 137),
(2379, 'Kili', 137),
(2380, 'Kwajalein', 137),
(2381, 'Lae', 137),
(2382, 'Lib', 137),
(2383, 'Likiep', 137),
(2384, 'Majuro', 137),
(2385, 'Maloelap', 137),
(2386, 'Mejit', 137),
(2387, 'Mili', 137),
(2388, 'Namorik', 137),
(2389, 'Namu', 137),
(2390, 'Rongelap', 137),
(2391, 'Ujae', 137),
(2392, 'Utrik', 137),
(2393, 'Wotho', 137),
(2394, 'Wotje', 137),
(2395, 'Fort-de-France', 138),
(2396, 'La Trinite', 138),
(2397, 'Le Marin', 138),
(2398, 'Saint-Pierre', 138),
(2399, 'Adrar', 139),
(2400, 'Assaba', 139),
(2401, 'Brakna', 139),
(2402, 'Dhakhlat Nawadibu', 139),
(2403, 'Hudh-al-Gharbi', 139),
(2404, 'Hudh-ash-Sharqi', 139),
(2405, 'Inshiri', 139),
(2406, 'Nawakshut', 139),
(2407, 'Qidimagha', 139),
(2408, 'Qurqul', 139),
(2409, 'Taqant', 139),
(2410, 'Tiris Zammur', 139),
(2411, 'Trarza', 139),
(2412, 'Black River', 140),
(2413, 'Eau Coulee', 140),
(2414, 'Flacq', 140),
(2415, 'Floreal', 140),
(2416, 'Grand Port', 140),
(2417, 'Moka', 140),
(2418, 'Pamplempousses', 140),
(2419, 'Plaines Wilhelm', 140),
(2420, 'Port Louis', 140),
(2421, 'Riviere du Rempart', 140),
(2422, 'Rodrigues', 140),
(2423, 'Rose Hill', 140),
(2424, 'Savanne', 140),
(2425, 'Mayotte', 141),
(2426, 'Pamanzi', 141),
(2427, 'Aguascalientes', 142),
(2428, 'Baja California', 142),
(2429, 'Baja California Sur', 142),
(2430, 'Campeche', 142),
(2431, 'Chiapas', 142),
(2432, 'Chihuahua', 142),
(2433, 'Coahuila', 142),
(2434, 'Colima', 142),
(2435, 'Distrito Federal', 142),
(2436, 'Durango', 142),
(2437, 'Estado de Mexico', 142),
(2438, 'Guanajuato', 142),
(2439, 'Guerrero', 142),
(2440, 'Hidalgo', 142),
(2441, 'Jalisco', 142),
(2442, 'Mexico', 142),
(2443, 'Michoacan', 142),
(2444, 'Morelos', 142),
(2445, 'Nayarit', 142),
(2446, 'Nuevo Leon', 142),
(2447, 'Oaxaca', 142),
(2448, 'Puebla', 142),
(2449, 'Queretaro', 142),
(2450, 'Quintana Roo', 142),
(2451, 'San Luis Potosi', 142),
(2452, 'Sinaloa', 142),
(2453, 'Sonora', 142),
(2454, 'Tabasco', 142),
(2455, 'Tamaulipas', 142),
(2456, 'Tlaxcala', 142),
(2457, 'Veracruz', 142),
(2458, 'Yucatan', 142),
(2459, 'Zacatecas', 142),
(2460, 'Chuuk', 143),
(2461, 'Kusaie', 143),
(2462, 'Pohnpei', 143),
(2463, 'Yap', 143),
(2464, 'Balti', 144),
(2465, 'Cahul', 144),
(2466, 'Chisinau', 144),
(2467, 'Chisinau Oras', 144),
(2468, 'Edinet', 144),
(2469, 'Gagauzia', 144),
(2470, 'Lapusna', 144),
(2471, 'Orhei', 144),
(2472, 'Soroca', 144),
(2473, 'Taraclia', 144),
(2474, 'Tighina', 144),
(2475, 'Transnistria', 144),
(2476, 'Ungheni', 144),
(2477, 'Fontvieille', 145),
(2478, 'La Condamine', 145),
(2479, 'Monaco-Ville', 145),
(2480, 'Monte Carlo', 145),
(2481, 'Arhangaj', 146),
(2482, 'Bajan-Olgij', 146),
(2483, 'Bajanhongor', 146),
(2484, 'Bulgan', 146),
(2485, 'Darhan-Uul', 146),
(2486, 'Dornod', 146),
(2487, 'Dornogovi', 146),
(2488, 'Dundgovi', 146),
(2489, 'Govi-Altaj', 146),
(2490, 'Govisumber', 146),
(2491, 'Hentij', 146),
(2492, 'Hovd', 146),
(2493, 'Hovsgol', 146),
(2494, 'Omnogovi', 146),
(2495, 'Orhon', 146),
(2496, 'Ovorhangaj', 146),
(2497, 'Selenge', 146),
(2498, 'Suhbaatar', 146),
(2499, 'Tov', 146),
(2500, 'Ulaanbaatar', 146),
(2501, 'Uvs', 146),
(2502, 'Zavhan', 146),
(2503, 'Montserrat', 147),
(2504, 'Agadir', 148),
(2505, 'Casablanca', 148),
(2506, 'Chaouia-Ouardigha', 148),
(2507, 'Doukkala-Abda', 148),
(2508, 'Fes-Boulemane', 148),
(2509, 'Gharb-Chrarda-Beni Hssen', 148),
(2510, 'Guelmim', 148),
(2511, 'Kenitra', 148),
(2512, 'Marrakech-Tensift-Al Haouz', 148),
(2513, 'Meknes-Tafilalet', 148),
(2514, 'Oriental', 148),
(2515, 'Oujda', 148),
(2516, 'Province de Tanger', 148),
(2517, 'Rabat-Sale-Zammour-Zaer', 148),
(2518, 'Sala Al Jadida', 148),
(2519, 'Settat', 148),
(2520, 'Souss Massa-Draa', 148),
(2521, 'Tadla-Azilal', 148),
(2522, 'Tangier-Tetouan', 148),
(2523, 'Taza-Al Hoceima-Taounate', 148),
(2524, 'Wilaya de Casablanca', 148),
(2525, 'Wilaya de Rabat-Sale', 148),
(2526, 'Cabo Delgado', 149),
(2527, 'Gaza', 149),
(2528, 'Inhambane', 149),
(2529, 'Manica', 149),
(2530, 'Maputo', 149),
(2531, 'Maputo Provincia', 149),
(2532, 'Nampula', 149),
(2533, 'Niassa', 149),
(2534, 'Sofala', 149),
(2535, 'Tete', 149),
(2536, 'Zambezia', 149),
(2537, 'Ayeyarwady', 150),
(2538, 'Bago', 150),
(2539, 'Chin', 150),
(2540, 'Kachin', 150),
(2541, 'Kayah', 150),
(2542, 'Kayin', 150),
(2543, 'Magway', 150),
(2544, 'Mandalay', 150),
(2545, 'Mon', 150),
(2546, 'Nay Pyi Taw', 150),
(2547, 'Rakhine', 150),
(2548, 'Sagaing', 150),
(2549, 'Shan', 150),
(2550, 'Tanintharyi', 150),
(2551, 'Yangon', 150),
(2552, 'Caprivi', 151),
(2553, 'Erongo', 151),
(2554, 'Hardap', 151),
(2555, 'Karas', 151),
(2556, 'Kavango', 151),
(2557, 'Khomas', 151),
(2558, 'Kunene', 151),
(2559, 'Ohangwena', 151),
(2560, 'Omaheke', 151),
(2561, 'Omusati', 151),
(2562, 'Oshana', 151),
(2563, 'Oshikoto', 151),
(2564, 'Otjozondjupa', 151),
(2565, 'Yaren', 152),
(2566, 'Bagmati', 153),
(2567, 'Bheri', 153),
(2568, 'Dhawalagiri', 153),
(2569, 'Gandaki', 153),
(2570, 'Janakpur', 153),
(2571, 'Karnali', 153),
(2572, 'Koshi', 153),
(2573, 'Lumbini', 153),
(2574, 'Mahakali', 153),
(2575, 'Mechi', 153),
(2576, 'Narayani', 153),
(2577, 'Rapti', 153),
(2578, 'Sagarmatha', 153),
(2579, 'Seti', 153),
(2580, 'Bonaire', 154),
(2581, 'Curacao', 154),
(2582, 'Saba', 154),
(2583, 'Sint Eustatius', 154),
(2584, 'Sint Maarten', 154),
(2585, 'Amsterdam', 155),
(2586, 'Benelux', 155),
(2587, 'Drenthe', 155),
(2588, 'Flevoland', 155),
(2589, 'Friesland', 155),
(2590, 'Gelderland', 155),
(2591, 'Groningen', 155),
(2592, 'Limburg', 155),
(2593, 'Noord-Brabant', 155),
(2594, 'Noord-Holland', 155),
(2595, 'Overijssel', 155),
(2596, 'South Holland', 155),
(2597, 'Utrecht', 155),
(2598, 'Zeeland', 155),
(2599, 'Zuid-Holland', 155),
(2600, 'Iles', 156),
(2601, 'Nord', 156),
(2602, 'Sud', 156),
(2603, 'Area Outside Region', 157),
(2604, 'Auckland', 157),
(2605, 'Bay of Plenty', 157),
(2606, 'Canterbury', 157),
(2607, 'Christchurch', 157),
(2608, 'Gisborne', 157),
(2609, 'Hawke\'s Bay', 157),
(2610, 'Manawatu-Wanganui', 157),
(2611, 'Marlborough', 157),
(2612, 'Nelson', 157),
(2613, 'Northland', 157),
(2614, 'Otago', 157),
(2615, 'Rodney', 157),
(2616, 'Southland', 157),
(2617, 'Taranaki', 157),
(2618, 'Tasman', 157),
(2619, 'Waikato', 157),
(2620, 'Wellington', 157),
(2621, 'West Coast', 157),
(2622, 'Atlantico Norte', 158),
(2623, 'Atlantico Sur', 158),
(2624, 'Boaco', 158),
(2625, 'Carazo', 158),
(2626, 'Chinandega', 158),
(2627, 'Chontales', 158),
(2628, 'Esteli', 158),
(2629, 'Granada', 158),
(2630, 'Jinotega', 158),
(2631, 'Leon', 158),
(2632, 'Madriz', 158),
(2633, 'Managua', 158),
(2634, 'Masaya', 158),
(2635, 'Matagalpa', 158),
(2636, 'Nueva Segovia', 158),
(2637, 'Rio San Juan', 158),
(2638, 'Rivas', 158),
(2639, 'Agadez', 159),
(2640, 'Diffa', 159),
(2641, 'Dosso', 159),
(2642, 'Maradi', 159),
(2643, 'Niamey', 159),
(2644, 'Tahoua', 159),
(2645, 'Tillabery', 159),
(2646, 'Zinder', 159),
(2647, 'Abia', 160),
(2648, 'Abuja Federal Capital Territor', 160),
(2649, 'Adamawa', 160),
(2650, 'Akwa Ibom', 160),
(2651, 'Anambra', 160),
(2652, 'Bauchi', 160),
(2653, 'Bayelsa', 160),
(2654, 'Benue', 160),
(2655, 'Borno', 160),
(2656, 'Cross River', 160),
(2657, 'Delta', 160),
(2658, 'Ebonyi', 160),
(2659, 'Edo', 160),
(2660, 'Ekiti', 160),
(2661, 'Enugu', 160),
(2662, 'Gombe', 160),
(2663, 'Imo', 160),
(2664, 'Jigawa', 160),
(2665, 'Kaduna', 160),
(2666, 'Kano', 160),
(2667, 'Katsina', 160),
(2668, 'Kebbi', 160),
(2669, 'Kogi', 160),
(2670, 'Kwara', 160),
(2671, 'Lagos', 160),
(2672, 'Nassarawa', 160),
(2673, 'Niger', 160),
(2674, 'Ogun', 160),
(2675, 'Ondo', 160),
(2676, 'Osun', 160),
(2677, 'Oyo', 160),
(2678, 'Plateau', 160),
(2679, 'Rivers', 160),
(2680, 'Sokoto', 160),
(2681, 'Taraba', 160),
(2682, 'Yobe', 160),
(2683, 'Zamfara', 160),
(2684, 'Niue', 161),
(2685, 'Norfolk Island', 162),
(2686, 'Northern Islands', 163),
(2687, 'Rota', 163),
(2688, 'Saipan', 163),
(2689, 'Tinian', 163),
(2690, 'Akershus', 164),
(2691, 'Aust Agder', 164),
(2692, 'Bergen', 164),
(2693, 'Buskerud', 164),
(2694, 'Finnmark', 164),
(2695, 'Hedmark', 164),
(2696, 'Hordaland', 164),
(2697, 'Moere og Romsdal', 164),
(2698, 'Nord Trondelag', 164),
(2699, 'Nordland', 164),
(2700, 'Oestfold', 164),
(2701, 'Oppland', 164),
(2702, 'Oslo', 164),
(2703, 'Rogaland', 164),
(2704, 'Soer Troendelag', 164),
(2705, 'Sogn og Fjordane', 164),
(2706, 'Stavern', 164),
(2707, 'Sykkylven', 164),
(2708, 'Telemark', 164),
(2709, 'Troms', 164),
(2710, 'Vest Agder', 164),
(2711, 'Vestfold', 164),
(2712, 'ÃƒÂ˜stfold', 164),
(2713, 'Al Buraimi', 165),
(2714, 'Dhufar', 165),
(2715, 'Masqat', 165),
(2716, 'Musandam', 165),
(2717, 'Rusayl', 165),
(2718, 'Wadi Kabir', 165),
(2719, 'ad-Dakhiliyah', 165),
(2720, 'adh-Dhahirah', 165),
(2721, 'al-Batinah', 165),
(2722, 'ash-Sharqiyah', 165),
(2723, 'Baluchistan', 166),
(2724, 'Federal Capital Area', 166),
(2725, 'Federally administered Tribal ', 166),
(2726, 'North-West Frontier', 166),
(2727, 'Northern Areas', 166),
(2728, 'Punjab', 166),
(2729, 'Sind', 166),
(2730, 'Aimeliik', 167),
(2731, 'Airai', 167),
(2732, 'Angaur', 167),
(2733, 'Hatobohei', 167),
(2734, 'Kayangel', 167),
(2735, 'Koror', 167),
(2736, 'Melekeok', 167),
(2737, 'Ngaraard', 167),
(2738, 'Ngardmau', 167),
(2739, 'Ngaremlengui', 167),
(2740, 'Ngatpang', 167),
(2741, 'Ngchesar', 167),
(2742, 'Ngerchelong', 167),
(2743, 'Ngiwal', 167),
(2744, 'Peleliu', 167),
(2745, 'Sonsorol', 167),
(2746, 'Ariha', 168),
(2747, 'Bayt Lahm', 168),
(2748, 'Bethlehem', 168),
(2749, 'Dayr-al-Balah', 168),
(2750, 'Ghazzah', 168),
(2751, 'Ghazzah ash-Shamaliyah', 168),
(2752, 'Janin', 168),
(2753, 'Khan Yunis', 168),
(2754, 'Nabulus', 168),
(2755, 'Qalqilyah', 168),
(2756, 'Rafah', 168),
(2757, 'Ram Allah wal-Birah', 168),
(2758, 'Salfit', 168),
(2759, 'Tubas', 168),
(2760, 'Tulkarm', 168),
(2761, 'al-Khalil', 168),
(2762, 'al-Quds', 168),
(2763, 'Bocas del Toro', 169),
(2764, 'Chiriqui', 169),
(2765, 'Cocle', 169),
(2766, 'Colon', 169),
(2767, 'Darien', 169),
(2768, 'Embera', 169),
(2769, 'Herrera', 169),
(2770, 'Kuna Yala', 169),
(2771, 'Los Santos', 169),
(2772, 'Ngobe Bugle', 169),
(2773, 'Panama', 169),
(2774, 'Veraguas', 169),
(2775, 'East New Britain', 170),
(2776, 'East Sepik', 170),
(2777, 'Eastern Highlands', 170),
(2778, 'Enga', 170),
(2779, 'Fly River', 170),
(2780, 'Gulf', 170),
(2781, 'Madang', 170),
(2782, 'Manus', 170),
(2783, 'Milne Bay', 170),
(2784, 'Morobe', 170),
(2785, 'National Capital District', 170),
(2786, 'New Ireland', 170),
(2787, 'North Solomons', 170),
(2788, 'Oro', 170),
(2789, 'Sandaun', 170),
(2790, 'Simbu', 170),
(2791, 'Southern Highlands', 170),
(2792, 'West New Britain', 170),
(2793, 'Western Highlands', 170),
(2794, 'Alto Paraguay', 171),
(2795, 'Alto Parana', 171),
(2796, 'Amambay', 171),
(2797, 'Asuncion', 171),
(2798, 'Boqueron', 171),
(2799, 'Caaguazu', 171),
(2800, 'Caazapa', 171),
(2801, 'Canendiyu', 171),
(2802, 'Central', 171),
(2803, 'Concepcion', 171),
(2804, 'Cordillera', 171),
(2805, 'Guaira', 171),
(2806, 'Itapua', 171),
(2807, 'Misiones', 171),
(2808, 'Neembucu', 171),
(2809, 'Paraguari', 171),
(2810, 'Presidente Hayes', 171),
(2811, 'San Pedro', 171),
(2812, 'Amazonas', 172),
(2813, 'Ancash', 172),
(2814, 'Apurimac', 172),
(2815, 'Arequipa', 172),
(2816, 'Ayacucho', 172),
(2817, 'Cajamarca', 172),
(2818, 'Cusco', 172),
(2819, 'Huancavelica', 172),
(2820, 'Huanuco', 172),
(2821, 'Ica', 172),
(2822, 'Junin', 172),
(2823, 'La Libertad', 172),
(2824, 'Lambayeque', 172),
(2825, 'Lima y Callao', 172),
(2826, 'Loreto', 172),
(2827, 'Madre de Dios', 172),
(2828, 'Moquegua', 172),
(2829, 'Pasco', 172),
(2830, 'Piura', 172),
(2831, 'Puno', 172),
(2832, 'San Martin', 172),
(2833, 'Tacna', 172),
(2834, 'Tumbes', 172),
(2835, 'Ucayali', 172),
(2836, 'Batangas', 173),
(2837, 'Bicol', 173),
(2838, 'Bulacan', 173),
(2839, 'Cagayan', 173),
(2840, 'Caraga', 173),
(2841, 'Central Luzon', 173),
(2842, 'Central Mindanao', 173),
(2843, 'Central Visayas', 173),
(2844, 'Cordillera', 173),
(2845, 'Davao', 173),
(2846, 'Eastern Visayas', 173),
(2847, 'Greater Metropolitan Area', 173),
(2848, 'Ilocos', 173),
(2849, 'Laguna', 173),
(2850, 'Luzon', 173),
(2851, 'Mactan', 173),
(2852, 'Metropolitan Manila Area', 173),
(2853, 'Muslim Mindanao', 173),
(2854, 'Northern Mindanao', 173),
(2855, 'Southern Mindanao', 173),
(2856, 'Southern Tagalog', 173),
(2857, 'Western Mindanao', 173),
(2858, 'Western Visayas', 173),
(2859, 'Pitcairn Island', 174),
(2860, 'Biale Blota', 175),
(2861, 'Dobroszyce', 175),
(2862, 'Dolnoslaskie', 175),
(2863, 'Dziekanow Lesny', 175),
(2864, 'Hopowo', 175),
(2865, 'Kartuzy', 175),
(2866, 'Koscian', 175),
(2867, 'Krakow', 175),
(2868, 'Kujawsko-Pomorskie', 175),
(2869, 'Lodzkie', 175),
(2870, 'Lubelskie', 175),
(2871, 'Lubuskie', 175),
(2872, 'Malomice', 175),
(2873, 'Malopolskie', 175),
(2874, 'Mazowieckie', 175),
(2875, 'Mirkow', 175),
(2876, 'Opolskie', 175),
(2877, 'Ostrowiec', 175),
(2878, 'Podkarpackie', 175),
(2879, 'Podlaskie', 175),
(2880, 'Polska', 175),
(2881, 'Pomorskie', 175),
(2882, 'Poznan', 175),
(2883, 'Pruszkow', 175),
(2884, 'Rymanowska', 175),
(2885, 'Rzeszow', 175),
(2886, 'Slaskie', 175),
(2887, 'Stare Pole', 175),
(2888, 'Swietokrzyskie', 175),
(2889, 'Warminsko-Mazurskie', 175),
(2890, 'Warsaw', 175),
(2891, 'Wejherowo', 175),
(2892, 'Wielkopolskie', 175),
(2893, 'Wroclaw', 175),
(2894, 'Zachodnio-Pomorskie', 175),
(2895, 'Zukowo', 175),
(2896, 'Abrantes', 176),
(2897, 'Acores', 176),
(2898, 'Alentejo', 176),
(2899, 'Algarve', 176),
(2900, 'Braga', 176),
(2901, 'Centro', 176),
(2902, 'Distrito de Leiria', 176),
(2903, 'Distrito de Viana do Castelo', 176),
(2904, 'Distrito de Vila Real', 176),
(2905, 'Distrito do Porto', 176),
(2906, 'Lisboa e Vale do Tejo', 176),
(2907, 'Madeira', 176),
(2908, 'Norte', 176),
(2909, 'Paivas', 176),
(2910, 'Arecibo', 177),
(2911, 'Bayamon', 177),
(2912, 'Carolina', 177),
(2913, 'Florida', 177),
(2914, 'Guayama', 177),
(2915, 'Humacao', 177),
(2916, 'Mayaguez-Aguadilla', 177),
(2917, 'Ponce', 177),
(2918, 'Salinas', 177),
(2919, 'San Juan', 177),
(2920, 'Doha', 178),
(2921, 'Jarian-al-Batnah', 178),
(2922, 'Umm Salal', 178),
(2923, 'ad-Dawhah', 178),
(2924, 'al-Ghuwayriyah', 178),
(2925, 'al-Jumayliyah', 178),
(2926, 'al-Khawr', 178),
(2927, 'al-Wakrah', 178),
(2928, 'ar-Rayyan', 178),
(2929, 'ash-Shamal', 178),
(2930, 'Saint-Benoit', 179),
(2931, 'Saint-Denis', 179),
(2932, 'Saint-Paul', 179),
(2933, 'Saint-Pierre', 179),
(2934, 'Alba', 180),
(2935, 'Arad', 180),
(2936, 'Arges', 180),
(2937, 'Bacau', 180),
(2938, 'Bihor', 180),
(2939, 'Bistrita-Nasaud', 180),
(2940, 'Botosani', 180),
(2941, 'Braila', 180),
(2942, 'Brasov', 180),
(2943, 'Bucuresti', 180),
(2944, 'Buzau', 180),
(2945, 'Calarasi', 180),
(2946, 'Caras-Severin', 180),
(2947, 'Cluj', 180),
(2948, 'Constanta', 180),
(2949, 'Covasna', 180),
(2950, 'Dambovita', 180),
(2951, 'Dolj', 180),
(2952, 'Galati', 180),
(2953, 'Giurgiu', 180),
(2954, 'Gorj', 180),
(2955, 'Harghita', 180),
(2956, 'Hunedoara', 180),
(2957, 'Ialomita', 180),
(2958, 'Iasi', 180),
(2959, 'Ilfov', 180),
(2960, 'Maramures', 180),
(2961, 'Mehedinti', 180),
(2962, 'Mures', 180),
(2963, 'Neamt', 180),
(2964, 'Olt', 180),
(2965, 'Prahova', 180),
(2966, 'Salaj', 180),
(2967, 'Satu Mare', 180),
(2968, 'Sibiu', 180),
(2969, 'Sondelor', 180),
(2970, 'Suceava', 180),
(2971, 'Teleorman', 180),
(2972, 'Timis', 180),
(2973, 'Tulcea', 180),
(2974, 'Valcea', 180),
(2975, 'Vaslui', 180),
(2976, 'Vrancea', 180),
(2977, 'Adygeja', 181),
(2978, 'Aga', 181),
(2979, 'Alanija', 181),
(2980, 'Altaj', 181),
(2981, 'Amur', 181),
(2982, 'Arhangelsk', 181),
(2983, 'Astrahan', 181),
(2984, 'Bashkortostan', 181),
(2985, 'Belgorod', 181),
(2986, 'Brjansk', 181),
(2987, 'Burjatija', 181),
(2988, 'Chechenija', 181),
(2989, 'Cheljabinsk', 181),
(2990, 'Chita', 181),
(2991, 'Chukotka', 181),
(2992, 'Chuvashija', 181),
(2993, 'Dagestan', 181),
(2994, 'Evenkija', 181),
(2995, 'Gorno-Altaj', 181),
(2996, 'Habarovsk', 181),
(2997, 'Hakasija', 181),
(2998, 'Hanty-Mansija', 181),
(2999, 'Ingusetija', 181),
(3000, 'Irkutsk', 181),
(3001, 'Ivanovo', 181),
(3002, 'Jamalo-Nenets', 181),
(3003, 'Jaroslavl', 181),
(3004, 'Jevrej', 181),
(3005, 'Kabardino-Balkarija', 181),
(3006, 'Kaliningrad', 181),
(3007, 'Kalmykija', 181),
(3008, 'Kaluga', 181),
(3009, 'Kamchatka', 181),
(3010, 'Karachaj-Cherkessija', 181),
(3011, 'Karelija', 181),
(3012, 'Kemerovo', 181),
(3013, 'Khabarovskiy Kray', 181),
(3014, 'Kirov', 181),
(3015, 'Komi', 181),
(3016, 'Komi-Permjakija', 181),
(3017, 'Korjakija', 181),
(3018, 'Kostroma', 181),
(3019, 'Krasnodar', 181),
(3020, 'Krasnojarsk', 181),
(3021, 'Krasnoyarskiy Kray', 181),
(3022, 'Kurgan', 181),
(3023, 'Kursk', 181),
(3024, 'Leningrad', 181),
(3025, 'Lipeck', 181),
(3026, 'Magadan', 181),
(3027, 'Marij El', 181),
(3028, 'Mordovija', 181),
(3029, 'Moscow', 181),
(3030, 'Moskovskaja Oblast', 181),
(3031, 'Moskovskaya Oblast', 181),
(3032, 'Moskva', 181),
(3033, 'Murmansk', 181),
(3034, 'Nenets', 181),
(3035, 'Nizhnij Novgorod', 181),
(3036, 'Novgorod', 181),
(3037, 'Novokusnezk', 181),
(3038, 'Novosibirsk', 181),
(3039, 'Omsk', 181),
(3040, 'Orenburg', 181),
(3041, 'Orjol', 181),
(3042, 'Penza', 181),
(3043, 'Perm', 181),
(3044, 'Primorje', 181),
(3045, 'Pskov', 181),
(3046, 'Pskovskaya Oblast', 181),
(3047, 'Rjazan', 181),
(3048, 'Rostov', 181),
(3049, 'Saha', 181),
(3050, 'Sahalin', 181),
(3051, 'Samara', 181),
(3052, 'Samarskaya', 181),
(3053, 'Sankt-Peterburg', 181),
(3054, 'Saratov', 181),
(3055, 'Smolensk', 181),
(3056, 'Stavropol', 181),
(3057, 'Sverdlovsk', 181),
(3058, 'Tajmyrija', 181),
(3059, 'Tambov', 181),
(3060, 'Tatarstan', 181),
(3061, 'Tjumen', 181),
(3062, 'Tomsk', 181),
(3063, 'Tula', 181),
(3064, 'Tver', 181),
(3065, 'Tyva', 181),
(3066, 'Udmurtija', 181),
(3067, 'Uljanovsk', 181),
(3068, 'Ulyanovskaya Oblast', 181),
(3069, 'Ust-Orda', 181),
(3070, 'Vladimir', 181),
(3071, 'Volgograd', 181),
(3072, 'Vologda', 181),
(3073, 'Voronezh', 181),
(3074, 'Butare', 182),
(3075, 'Byumba', 182),
(3076, 'Cyangugu', 182),
(3077, 'Gikongoro', 182),
(3078, 'Gisenyi', 182),
(3079, 'Gitarama', 182),
(3080, 'Kibungo', 182),
(3081, 'Kibuye', 182),
(3082, 'Kigali-ngali', 182),
(3083, 'Ruhengeri', 182),
(3084, 'Ascension', 183),
(3085, 'Gough Island', 183),
(3086, 'Saint Helena', 183),
(3087, 'Tristan da Cunha', 183),
(3088, 'Christ Church Nichola Town', 184),
(3089, 'Saint Anne Sandy Point', 184),
(3090, 'Saint George Basseterre', 184),
(3091, 'Saint George Gingerland', 184),
(3092, 'Saint James Windward', 184),
(3093, 'Saint John Capesterre', 184),
(3094, 'Saint John Figtree', 184),
(3095, 'Saint Mary Cayon', 184),
(3096, 'Saint Paul Capesterre', 184),
(3097, 'Saint Paul Charlestown', 184),
(3098, 'Saint Peter Basseterre', 184),
(3099, 'Saint Thomas Lowland', 184),
(3100, 'Saint Thomas Middle Island', 184),
(3101, 'Trinity Palmetto Point', 184),
(3102, 'Anse-la-Raye', 185),
(3103, 'Canaries', 185),
(3104, 'Castries', 185),
(3105, 'Choiseul', 185),
(3106, 'Dennery', 185),
(3107, 'Gros Inlet', 185),
(3108, 'Laborie', 185),
(3109, 'Micoud', 185),
(3110, 'Soufriere', 185),
(3111, 'Vieux Fort', 185),
(3112, 'Miquelon-Langlade', 186),
(3113, 'Saint-Pierre', 186),
(3114, 'Charlotte', 187),
(3115, 'Grenadines', 187),
(3116, 'Saint Andrew', 187),
(3117, 'Saint David', 187),
(3118, 'Saint George', 187),
(3119, 'Saint Patrick', 187),
(3120, 'A\'ana', 188),
(3121, 'Aiga-i-le-Tai', 188),
(3122, 'Atua', 188),
(3123, 'Fa\'asaleleaga', 188),
(3124, 'Gaga\'emauga', 188),
(3125, 'Gagaifomauga', 188),
(3126, 'Palauli', 188),
(3127, 'Satupa\'itea', 188),
(3128, 'Tuamasaga', 188),
(3129, 'Va\'a-o-Fonoti', 188),
(3130, 'Vaisigano', 188),
(3131, 'Acquaviva', 189),
(3132, 'Borgo Maggiore', 189),
(3133, 'Chiesanuova', 189),
(3134, 'Domagnano', 189),
(3135, 'Faetano', 189),
(3136, 'Fiorentino', 189),
(3137, 'Montegiardino', 189),
(3138, 'San Marino', 189),
(3139, 'Serravalle', 189),
(3140, 'Agua Grande', 190),
(3141, 'Cantagalo', 190),
(3142, 'Lemba', 190),
(3143, 'Lobata', 190),
(3144, 'Me-Zochi', 190),
(3145, 'Pague', 190),
(3146, 'Al Khobar', 191),
(3147, 'Aseer', 191),
(3148, 'Ash Sharqiyah', 191),
(3149, 'Asir', 191),
(3150, 'Central Province', 191),
(3151, 'Eastern Province', 191),
(3152, 'Ha\'il', 191),
(3153, 'Jawf', 191),
(3154, 'Jizan', 191),
(3155, 'Makkah', 191),
(3156, 'Najran', 191),
(3157, 'Qasim', 191),
(3158, 'Tabuk', 191),
(3159, 'Western Province', 191),
(3160, 'al-Bahah', 191),
(3161, 'al-Hudud-ash-Shamaliyah', 191),
(3162, 'al-Madinah', 191),
(3163, 'ar-Riyad', 191),
(3164, 'Dakar', 192),
(3165, 'Diourbel', 192),
(3166, 'Fatick', 192),
(3167, 'Kaolack', 192),
(3168, 'Kolda', 192),
(3169, 'Louga', 192),
(3170, 'Saint-Louis', 192),
(3171, 'Tambacounda', 192),
(3172, 'Thies', 192),
(3173, 'Ziguinchor', 192),
(3174, 'Central Serbia', 193),
(3175, 'Kosovo and Metohija', 193),
(3176, 'Vojvodina', 193),
(3177, 'Anse Boileau', 194),
(3178, 'Anse Royale', 194),
(3179, 'Cascade', 194),
(3180, 'Takamaka', 194),
(3181, 'Victoria', 194),
(3182, 'Eastern', 195),
(3183, 'Northern', 195),
(3184, 'Southern', 195),
(3185, 'Western', 195),
(3186, 'Singapore', 196),
(3187, 'Banskobystricky', 197),
(3188, 'Bratislavsky', 197),
(3189, 'Kosicky', 197),
(3190, 'Nitriansky', 197),
(3191, 'Presovsky', 197),
(3192, 'Trenciansky', 197),
(3193, 'Trnavsky', 197),
(3194, 'Zilinsky', 197),
(3195, 'Benedikt', 198),
(3196, 'Gorenjska', 198),
(3197, 'Gorishka', 198),
(3198, 'Jugovzhodna Slovenija', 198),
(3199, 'Koroshka', 198),
(3200, 'Notranjsko-krashka', 198),
(3201, 'Obalno-krashka', 198),
(3202, 'Obcina Domzale', 198),
(3203, 'Obcina Vitanje', 198),
(3204, 'Osrednjeslovenska', 198),
(3205, 'Podravska', 198),
(3206, 'Pomurska', 198),
(3207, 'Savinjska', 198),
(3208, 'Slovenian Littoral', 198),
(3209, 'Spodnjeposavska', 198),
(3210, 'Zasavska', 198),
(3211, 'Pitcairn', 199),
(3212, 'Central', 200),
(3213, 'Choiseul', 200),
(3214, 'Guadalcanal', 200),
(3215, 'Isabel', 200),
(3216, 'Makira and Ulawa', 200),
(3217, 'Malaita', 200),
(3218, 'Rennell and Bellona', 200),
(3219, 'Temotu', 200),
(3220, 'Western', 200),
(3221, 'Awdal', 201),
(3222, 'Bakol', 201),
(3223, 'Banadir', 201),
(3224, 'Bari', 201),
(3225, 'Bay', 201),
(3226, 'Galgudug', 201),
(3227, 'Gedo', 201),
(3228, 'Hiran', 201),
(3229, 'Jubbada Hose', 201),
(3230, 'Jubbadha Dexe', 201),
(3231, 'Mudug', 201),
(3232, 'Nugal', 201),
(3233, 'Sanag', 201),
(3234, 'Shabellaha Dhexe', 201),
(3235, 'Shabellaha Hose', 201),
(3236, 'Togdher', 201),
(3237, 'Woqoyi Galbed', 201),
(3238, 'Eastern Cape', 202),
(3239, 'Free State', 202),
(3240, 'Gauteng', 202),
(3241, 'Kempton Park', 202),
(3242, 'Kramerville', 202),
(3243, 'KwaZulu Natal', 202),
(3244, 'Limpopo', 202),
(3245, 'Mpumalanga', 202),
(3246, 'North West', 202),
(3247, 'Northern Cape', 202),
(3248, 'Parow', 202),
(3249, 'Table View', 202),
(3250, 'Umtentweni', 202),
(3251, 'Western Cape', 202),
(3252, 'South Georgia', 203),
(3253, 'Central Equatoria', 204),
(3254, 'A Coruna', 205),
(3255, 'Alacant', 205),
(3256, 'Alava', 205),
(3257, 'Albacete', 205),
(3258, 'Almeria', 205),
(3260, 'Asturias', 205),
(3261, 'Avila', 205),
(3262, 'Badajoz', 205),
(3263, 'Balears', 205),
(3264, 'Barcelona', 205),
(3267, 'Burgos', 205),
(3268, 'Caceres', 205),
(3269, 'Cadiz', 205),
(3270, 'Cantabria', 205),
(3271, 'Castello', 205),
(3273, 'Ceuta', 205),
(3274, 'Ciudad Real', 205),
(3281, 'Cordoba', 205),
(3282, 'Cuenca', 205),
(3284, 'Girona', 205),
(3285, 'Granada', 205),
(3286, 'Guadalajara', 205),
(3287, 'Guipuzcoa', 205),
(3288, 'Huelva', 205),
(3289, 'Huesca', 205),
(3290, 'Jaen', 205),
(3291, 'La Rioja', 205),
(3292, 'Las Palmas', 205),
(3293, 'Leon', 205),
(3295, 'Lleida', 205),
(3296, 'Lugo', 205),
(3297, 'Madrid', 205),
(3298, 'Malaga', 205),
(3299, 'Melilla', 205),
(3300, 'Murcia', 205),
(3301, 'Navarra', 205),
(3302, 'Ourense', 205),
(3303, 'Pais Vasco', 205),
(3304, 'Palencia', 205),
(3305, 'Pontevedra', 205),
(3306, 'Salamanca', 205),
(3308, 'Segovia', 205),
(3309, 'Sevilla', 205),
(3310, 'Soria', 205),
(3311, 'Tarragona', 205),
(3312, 'Santa Cruz de Tenerife', 205),
(3313, 'Teruel', 205),
(3314, 'Toledo', 205),
(3315, 'Valencia', 205),
(3316, 'Valladolid', 205),
(3317, 'Vizcaya', 205),
(3318, 'Zamora', 205),
(3319, 'Zaragoza', 205),
(3320, 'Amparai', 206),
(3321, 'Anuradhapuraya', 206),
(3322, 'Badulla', 206),
(3323, 'Boralesgamuwa', 206),
(3324, 'Colombo', 206),
(3325, 'Galla', 206),
(3326, 'Gampaha', 206),
(3327, 'Hambantota', 206),
(3328, 'Kalatura', 206),
(3329, 'Kegalla', 206),
(3330, 'Kilinochchi', 206),
(3331, 'Kurunegala', 206),
(3332, 'Madakalpuwa', 206),
(3333, 'Maha Nuwara', 206),
(3334, 'Malwana', 206),
(3335, 'Mannarama', 206),
(3336, 'Matale', 206),
(3337, 'Matara', 206),
(3338, 'Monaragala', 206),
(3339, 'Mullaitivu', 206),
(3340, 'North Eastern Province', 206),
(3341, 'North Western Province', 206),
(3342, 'Nuwara Eliya', 206),
(3343, 'Polonnaruwa', 206),
(3344, 'Puttalama', 206),
(3345, 'Ratnapuraya', 206),
(3346, 'Southern Province', 206),
(3347, 'Tirikunamalaya', 206),
(3348, 'Tuscany', 206),
(3349, 'Vavuniyawa', 206),
(3350, 'Western Province', 206),
(3351, 'Yapanaya', 206),
(3352, 'kadawatha', 206),
(3353, 'A\'ali-an-Nil', 207),
(3354, 'Bahr-al-Jabal', 207),
(3355, 'Central Equatoria', 207),
(3356, 'Gharb Bahr-al-Ghazal', 207),
(3357, 'Gharb Darfur', 207),
(3358, 'Gharb Kurdufan', 207),
(3359, 'Gharb-al-Istiwa\'iyah', 207),
(3360, 'Janub Darfur', 207),
(3361, 'Janub Kurdufan', 207),
(3362, 'Junqali', 207),
(3363, 'Kassala', 207),
(3364, 'Nahr-an-Nil', 207),
(3365, 'Shamal Bahr-al-Ghazal', 207),
(3366, 'Shamal Darfur', 207),
(3367, 'Shamal Kurdufan', 207),
(3368, 'Sharq-al-Istiwa\'iyah', 207),
(3369, 'Sinnar', 207),
(3370, 'Warab', 207),
(3371, 'Wilayat al Khartum', 207),
(3372, 'al-Bahr-al-Ahmar', 207),
(3373, 'al-Buhayrat', 207),
(3374, 'al-Jazirah', 207),
(3375, 'al-Khartum', 207),
(3376, 'al-Qadarif', 207),
(3377, 'al-Wahdah', 207),
(3378, 'an-Nil-al-Abyad', 207),
(3379, 'an-Nil-al-Azraq', 207),
(3380, 'ash-Shamaliyah', 207),
(3381, 'Brokopondo', 208),
(3382, 'Commewijne', 208),
(3383, 'Coronie', 208),
(3384, 'Marowijne', 208),
(3385, 'Nickerie', 208),
(3386, 'Para', 208),
(3387, 'Paramaribo', 208),
(3388, 'Saramacca', 208),
(3389, 'Wanica', 208),
(3390, 'Svalbard', 209),
(3391, 'Hhohho', 210),
(3392, 'Lubombo', 210),
(3393, 'Manzini', 210),
(3394, 'Shiselweni', 210),
(3395, 'Alvsborgs Lan', 211),
(3396, 'Angermanland', 211),
(3397, 'Blekinge', 211),
(3398, 'Bohuslan', 211),
(3399, 'Dalarna', 211),
(3400, 'Gavleborg', 211),
(3401, 'Gaza', 211),
(3402, 'Gotland', 211),
(3403, 'Halland', 211),
(3404, 'Jamtland', 211),
(3405, 'Jonkoping', 211),
(3406, 'Kalmar', 211),
(3407, 'Kristianstads', 211),
(3408, 'Kronoberg', 211),
(3409, 'Norrbotten', 211),
(3410, 'Orebro', 211),
(3411, 'Ostergotland', 211),
(3412, 'Saltsjo-Boo', 211),
(3413, 'Skane', 211),
(3414, 'Smaland', 211),
(3415, 'Sodermanland', 211),
(3416, 'Stockholm', 211),
(3417, 'Uppsala', 211),
(3418, 'Varmland', 211),
(3419, 'Vasterbotten', 211),
(3420, 'Vastergotland', 211),
(3421, 'Vasternorrland', 211),
(3422, 'Vastmanland', 211),
(3423, 'Vastra Gotaland', 211),
(3424, 'Aargau', 212),
(3425, 'Appenzell Inner-Rhoden', 212),
(3426, 'Appenzell-Ausser Rhoden', 212),
(3427, 'Basel-Landschaft', 212),
(3428, 'Basel-Stadt', 212),
(3429, 'Bern', 212),
(3430, 'Canton Ticino', 212),
(3431, 'Fribourg', 212),
(3432, 'Geneve', 212),
(3433, 'Glarus', 212),
(3434, 'Graubunden', 212),
(3435, 'Heerbrugg', 212),
(3436, 'Jura', 212),
(3437, 'Kanton Aargau', 212),
(3438, 'Luzern', 212),
(3439, 'Morbio Inferiore', 212),
(3440, 'Muhen', 212),
(3441, 'Neuchatel', 212),
(3442, 'Nidwalden', 212),
(3443, 'Obwalden', 212),
(3444, 'Sankt Gallen', 212),
(3445, 'Schaffhausen', 212),
(3446, 'Schwyz', 212),
(3447, 'Solothurn', 212),
(3448, 'Thurgau', 212),
(3449, 'Ticino', 212),
(3450, 'Uri', 212),
(3451, 'Valais', 212),
(3452, 'Vaud', 212),
(3453, 'Vauffelin', 212),
(3454, 'Zug', 212),
(3455, 'Zurich', 212),
(3456, 'Aleppo', 213),
(3457, 'Dar\'a', 213),
(3458, 'Dayr-az-Zawr', 213),
(3459, 'Dimashq', 213),
(3460, 'Halab', 213),
(3461, 'Hamah', 213),
(3462, 'Hims', 213),
(3463, 'Idlib', 213),
(3464, 'Madinat Dimashq', 213),
(3465, 'Tartus', 213),
(3466, 'al-Hasakah', 213),
(3467, 'al-Ladhiqiyah', 213),
(3468, 'al-Qunaytirah', 213),
(3469, 'ar-Raqqah', 213),
(3470, 'as-Suwayda', 213),
(3471, 'Changhua County', 214),
(3472, 'Chiayi County', 214),
(3473, 'Chiayi City', 214),
(3474, 'Taipei City', 214),
(3475, 'Hsinchu County', 214),
(3476, 'Hsinchu City', 214),
(3477, 'Hualien County', 214),
(3480, 'Kaohsiung City', 214),
(3481, 'Keelung City', 214),
(3482, 'Kinmen County', 214),
(3483, 'Miaoli County', 214),
(3484, 'Nantou County', 214),
(3486, 'Penghu County', 214),
(3487, 'Pingtung County', 214),
(3488, 'Taichung City', 214),
(3492, 'Tainan City', 214),
(3493, 'New Taipei City', 214),
(3495, 'Taitung County', 214),
(3496, 'Taoyuan City', 214),
(3497, 'Yilan County', 214),
(3498, 'YunLin County', 214),
(4121, 'Lienchiang County', 214),
(3500, 'Dushanbe', 215),
(3501, 'Gorno-Badakhshan', 215),
(3502, 'Karotegin', 215),
(3503, 'Khatlon', 215),
(3504, 'Sughd', 215),
(3505, 'Arusha', 216),
(3506, 'Dar es Salaam', 216),
(3507, 'Dodoma', 216),
(3508, 'Iringa', 216),
(3509, 'Kagera', 216),
(3510, 'Kigoma', 216),
(3511, 'Kilimanjaro', 216),
(3512, 'Lindi', 216),
(3513, 'Mara', 216),
(3514, 'Mbeya', 216),
(3515, 'Morogoro', 216),
(3516, 'Mtwara', 216),
(3517, 'Mwanza', 216),
(3518, 'Pwani', 216),
(3519, 'Rukwa', 216),
(3520, 'Ruvuma', 216),
(3521, 'Shinyanga', 216),
(3522, 'Singida', 216),
(3523, 'Tabora', 216),
(3524, 'Tanga', 216),
(3525, 'Zanzibar and Pemba', 216),
(3526, 'Amnat Charoen', 217),
(3527, 'Ang Thong', 217),
(3528, 'Bangkok', 217),
(3529, 'Buri Ram', 217),
(3530, 'Chachoengsao', 217),
(3531, 'Chai Nat', 217),
(3532, 'Chaiyaphum', 217),
(3533, 'Changwat Chaiyaphum', 217),
(3534, 'Chanthaburi', 217),
(3535, 'Chiang Mai', 217),
(3536, 'Chiang Rai', 217),
(3537, 'Chon Buri', 217),
(3538, 'Chumphon', 217),
(3539, 'Kalasin', 217),
(3540, 'Kamphaeng Phet', 217),
(3541, 'Kanchanaburi', 217),
(3542, 'Khon Kaen', 217),
(3543, 'Krabi', 217),
(3544, 'Krung Thep', 217),
(3545, 'Lampang', 217),
(3546, 'Lamphun', 217),
(3547, 'Loei', 217),
(3548, 'Lop Buri', 217),
(3549, 'Mae Hong Son', 217),
(3550, 'Maha Sarakham', 217),
(3551, 'Mukdahan', 217),
(3552, 'Nakhon Nayok', 217),
(3553, 'Nakhon Pathom', 217),
(3554, 'Nakhon Phanom', 217),
(3555, 'Nakhon Ratchasima', 217),
(3556, 'Nakhon Sawan', 217),
(3557, 'Nakhon Si Thammarat', 217),
(3558, 'Nan', 217),
(3559, 'Narathiwat', 217),
(3560, 'Nong Bua Lam Phu', 217),
(3561, 'Nong Khai', 217),
(3562, 'Nonthaburi', 217),
(3563, 'Pathum Thani', 217),
(3564, 'Pattani', 217),
(3565, 'Phangnga', 217),
(3566, 'Phatthalung', 217),
(3567, 'Phayao', 217),
(3568, 'Phetchabun', 217),
(3569, 'Phetchaburi', 217),
(3570, 'Phichit', 217),
(3571, 'Phitsanulok', 217),
(3572, 'Phra Nakhon Si Ayutthaya', 217),
(3573, 'Phrae', 217),
(3574, 'Phuket', 217),
(3575, 'Prachin Buri', 217),
(3576, 'Prachuap Khiri Khan', 217),
(3577, 'Ranong', 217),
(3578, 'Ratchaburi', 217),
(3579, 'Rayong', 217),
(3580, 'Roi Et', 217),
(3581, 'Sa Kaeo', 217),
(3582, 'Sakon Nakhon', 217),
(3583, 'Samut Prakan', 217),
(3584, 'Samut Sakhon', 217),
(3585, 'Samut Songkhran', 217),
(3586, 'Saraburi', 217),
(3587, 'Satun', 217),
(3588, 'Si Sa Ket', 217),
(3589, 'Sing Buri', 217),
(3590, 'Songkhla', 217),
(3591, 'Sukhothai', 217),
(3592, 'Suphan Buri', 217),
(3593, 'Surat Thani', 217),
(3594, 'Surin', 217),
(3595, 'Tak', 217),
(3596, 'Trang', 217),
(3597, 'Trat', 217),
(3598, 'Ubon Ratchathani', 217),
(3599, 'Udon Thani', 217),
(3600, 'Uthai Thani', 217),
(3601, 'Uttaradit', 217),
(3602, 'Yala', 217),
(3603, 'Yasothon', 217),
(3604, 'Centre', 218),
(3605, 'Kara', 218),
(3606, 'Maritime', 218),
(3607, 'Plateaux', 218),
(3608, 'Savanes', 218),
(3609, 'Atafu', 219),
(3610, 'Fakaofo', 219),
(3611, 'Nukunonu', 219),
(3612, 'Eua', 220),
(3613, 'Ha\'apai', 220),
(3614, 'Niuas', 220),
(3615, 'Tongatapu', 220),
(3616, 'Vava\'u', 220),
(3617, 'Arima-Tunapuna-Piarco', 221),
(3618, 'Caroni', 221),
(3619, 'Chaguanas', 221),
(3620, 'Couva-Tabaquite-Talparo', 221),
(3621, 'Diego Martin', 221),
(3622, 'Glencoe', 221),
(3623, 'Penal Debe', 221),
(3624, 'Point Fortin', 221),
(3625, 'Port of Spain', 221),
(3626, 'Princes Town', 221),
(3627, 'Saint George', 221),
(3628, 'San Fernando', 221),
(3629, 'San Juan', 221),
(3630, 'Sangre Grande', 221),
(3631, 'Siparia', 221),
(3632, 'Tobago', 221),
(3633, 'Aryanah', 222),
(3634, 'Bajah', 222),
(3635, 'Bin \'Arus', 222),
(3636, 'Binzart', 222),
(3637, 'Gouvernorat de Ariana', 222),
(3638, 'Gouvernorat de Nabeul', 222),
(3639, 'Gouvernorat de Sousse', 222),
(3640, 'Hammamet Yasmine', 222),
(3641, 'Jundubah', 222),
(3642, 'Madaniyin', 222),
(3643, 'Manubah', 222),
(3644, 'Monastir', 222),
(3645, 'Nabul', 222),
(3646, 'Qabis', 222),
(3647, 'Qafsah', 222),
(3648, 'Qibili', 222),
(3649, 'Safaqis', 222),
(3650, 'Sfax', 222),
(3651, 'Sidi Bu Zayd', 222),
(3652, 'Silyanah', 222),
(3653, 'Susah', 222),
(3654, 'Tatawin', 222),
(3655, 'Tawzar', 222),
(3656, 'Tunis', 222),
(3657, 'Zaghwan', 222),
(3658, 'al-Kaf', 222),
(3659, 'al-Mahdiyah', 222),
(3660, 'al-Munastir', 222),
(3661, 'al-Qasrayn', 222),
(3662, 'al-Qayrawan', 222),
(3663, 'Adana', 223),
(3664, 'Adiyaman', 223),
(3665, 'Afyon', 223),
(3666, 'Agri', 223),
(3667, 'Aksaray', 223),
(3668, 'Amasya', 223),
(3669, 'Ankara', 223),
(3670, 'Antalya', 223),
(3671, 'Ardahan', 223),
(3672, 'Artvin', 223),
(3673, 'Aydin', 223),
(3674, 'Balikesir', 223),
(3675, 'Bartin', 223),
(3676, 'Batman', 223),
(3677, 'Bayburt', 223),
(3678, 'Bilecik', 223),
(3679, 'Bingol', 223),
(3680, 'Bitlis', 223),
(3681, 'Bolu', 223),
(3682, 'Burdur', 223),
(3683, 'Bursa', 223),
(3684, 'Canakkale', 223),
(3685, 'Cankiri', 223),
(3686, 'Corum', 223),
(3687, 'Denizli', 223),
(3688, 'Diyarbakir', 223),
(3689, 'Duzce', 223),
(3690, 'Edirne', 223),
(3691, 'Elazig', 223),
(3692, 'Erzincan', 223),
(3693, 'Erzurum', 223),
(3694, 'Eskisehir', 223),
(3695, 'Gaziantep', 223),
(3696, 'Giresun', 223),
(3697, 'Gumushane', 223),
(3698, 'Hakkari', 223),
(3699, 'Hatay', 223),
(3700, 'Icel', 223),
(3701, 'Igdir', 223),
(3702, 'Isparta', 223),
(3703, 'Istanbul', 223),
(3704, 'Izmir', 223),
(3705, 'Kahramanmaras', 223),
(3706, 'Karabuk', 223),
(3707, 'Karaman', 223),
(3708, 'Kars', 223),
(3709, 'Karsiyaka', 223),
(3710, 'Kastamonu', 223),
(3711, 'Kayseri', 223),
(3712, 'Kilis', 223),
(3713, 'Kirikkale', 223),
(3714, 'Kirklareli', 223),
(3715, 'Kirsehir', 223),
(3716, 'Kocaeli', 223),
(3717, 'Konya', 223),
(3718, 'Kutahya', 223),
(3719, 'Lefkosa', 223),
(3720, 'Malatya', 223),
(3721, 'Manisa', 223),
(3722, 'Mardin', 223),
(3723, 'Mugla', 223),
(3724, 'Mus', 223),
(3725, 'Nevsehir', 223),
(3726, 'Nigde', 223),
(3727, 'Ordu', 223),
(3728, 'Osmaniye', 223),
(3729, 'Rize', 223),
(3730, 'Sakarya', 223),
(3731, 'Samsun', 223),
(3732, 'Sanliurfa', 223),
(3733, 'Siirt', 223),
(3734, 'Sinop', 223),
(3735, 'Sirnak', 223),
(3736, 'Sivas', 223),
(3737, 'Tekirdag', 223),
(3738, 'Tokat', 223),
(3739, 'Trabzon', 223),
(3740, 'Tunceli', 223),
(3741, 'Usak', 223),
(3742, 'Van', 223),
(3743, 'Yalova', 223),
(3744, 'Yozgat', 223),
(3745, 'Zonguldak', 223),
(3746, 'Ahal', 224),
(3747, 'Asgabat', 224),
(3748, 'Balkan', 224),
(3749, 'Dasoguz', 224),
(3750, 'Lebap', 224),
(3751, 'Mari', 224),
(3752, 'Grand Turk', 225),
(3753, 'South Caicos and East Caicos', 225),
(3754, 'Funafuti', 226),
(3755, 'Nanumanga', 226),
(3756, 'Nanumea', 226),
(3757, 'Niutao', 226),
(3758, 'Nui', 226),
(3759, 'Nukufetau', 226),
(3760, 'Nukulaelae', 226),
(3761, 'Vaitupu', 226),
(3762, 'Central', 227),
(3763, 'Eastern', 227),
(3764, 'Northern', 227),
(3765, 'Western', 227),
(3766, 'Cherkas\'ka', 228),
(3767, 'Chernihivs\'ka', 228),
(3768, 'Chernivets\'ka', 228),
(3769, 'Crimea', 228),
(3770, 'Dnipropetrovska', 228),
(3771, 'Donets\'ka', 228),
(3772, 'Ivano-Frankivs\'ka', 228),
(3773, 'Kharkiv', 228),
(3774, 'Kharkov', 228),
(3775, 'Khersonska', 228),
(3776, 'Khmel\'nyts\'ka', 228),
(3777, 'Kirovohrad', 228),
(3778, 'Krym', 228),
(3779, 'Kyyiv', 228),
(3780, 'Kyyivs\'ka', 228),
(3781, 'L\'vivs\'ka', 228),
(3782, 'Luhans\'ka', 228),
(3783, 'Mykolayivs\'ka', 228),
(3784, 'Odes\'ka', 228),
(3785, 'Odessa', 228),
(3786, 'Poltavs\'ka', 228),
(3787, 'Rivnens\'ka', 228),
(3788, 'Sevastopol\'', 228),
(3789, 'Sums\'ka', 228),
(3790, 'Ternopil\'s\'ka', 228),
(3791, 'Volyns\'ka', 228),
(3792, 'Vynnyts\'ka', 228),
(3793, 'Zakarpats\'ka', 228),
(3794, 'Zaporizhia', 228),
(3795, 'Zhytomyrs\'ka', 228),
(3796, 'Abu Zabi', 229),
(3797, 'Ajman', 229),
(3798, 'Dubai', 229),
(3799, 'Ras al-Khaymah', 229),
(3800, 'Sharjah', 229),
(3801, 'Sharjha', 229),
(3802, 'Umm al Qaywayn', 229),
(3803, 'al-Fujayrah', 229),
(3804, 'ash-Shariqah', 229),
(3805, 'Aberdeen', 230),
(3806, 'Aberdeenshire', 230),
(3807, 'Argyll', 230),
(3808, 'Armagh', 230),
(3809, 'Bedfordshire', 230),
(3810, 'Belfast', 230),
(3811, 'Berkshire', 230),
(3812, 'Birmingham', 230),
(3813, 'Brechin', 230),
(3814, 'Bridgnorth', 230),
(3815, 'Bristol', 230),
(3816, 'Buckinghamshire', 230),
(3817, 'Cambridge', 230),
(3818, 'Cambridgeshire', 230),
(3819, 'Channel Islands', 230),
(3820, 'Cheshire', 230),
(3821, 'Cleveland', 230),
(3822, 'Co Fermanagh', 230),
(3823, 'Conwy', 230),
(3824, 'Cornwall', 230),
(3825, 'Coventry', 230),
(3826, 'Craven Arms', 230),
(3827, 'Cumbria', 230),
(3828, 'Denbighshire', 230),
(3829, 'Derby', 230),
(3830, 'Derbyshire', 230),
(3831, 'Devon', 230),
(3832, 'Dial Code Dungannon', 230),
(3833, 'Didcot', 230),
(3834, 'Dorset', 230),
(3835, 'Dunbartonshire', 230),
(3836, 'Durham', 230),
(3837, 'East Dunbartonshire', 230),
(3838, 'East Lothian', 230),
(3839, 'East Midlands', 230),
(3840, 'East Sussex', 230),
(3841, 'East Yorkshire', 230),
(3842, 'England', 230),
(3843, 'Essex', 230),
(3844, 'Fermanagh', 230),
(3845, 'Fife', 230),
(3846, 'Flintshire', 230),
(3847, 'Fulham', 230),
(3848, 'Gainsborough', 230),
(3849, 'Glocestershire', 230),
(3850, 'Gwent', 230),
(3851, 'Hampshire', 230),
(3852, 'Hants', 230),
(3853, 'Herefordshire', 230),
(3854, 'Hertfordshire', 230),
(3855, 'Ireland', 230),
(3856, 'Isle Of Man', 230),
(3857, 'Isle of Wight', 230),
(3858, 'Kenford', 230),
(3859, 'Kent', 230),
(3860, 'Kilmarnock', 230),
(3861, 'Lanarkshire', 230),
(3862, 'Lancashire', 230),
(3863, 'Leicestershire', 230),
(3864, 'Lincolnshire', 230),
(3865, 'Llanymynech', 230),
(3866, 'London', 230),
(3867, 'Ludlow', 230),
(3868, 'Manchester', 230),
(3869, 'Mayfair', 230),
(3870, 'Merseyside', 230),
(3871, 'Mid Glamorgan', 230),
(3872, 'Middlesex', 230),
(3873, 'Mildenhall', 230),
(3874, 'Monmouthshire', 230),
(3875, 'Newton Stewart', 230),
(3876, 'Norfolk', 230),
(3877, 'North Humberside', 230),
(3878, 'North Yorkshire', 230),
(3879, 'Northamptonshire', 230),
(3880, 'Northants', 230),
(3881, 'Northern Ireland', 230),
(3882, 'Northumberland', 230),
(3883, 'Nottinghamshire', 230),
(3884, 'Oxford', 230),
(3885, 'Powys', 230),
(3886, 'Roos-shire', 230),
(3887, 'SUSSEX', 230),
(3888, 'Sark', 230),
(3889, 'Scotland', 230),
(3890, 'Scottish Borders', 230),
(3891, 'Shropshire', 230),
(3892, 'Somerset', 230),
(3893, 'South Glamorgan', 230),
(3894, 'South Wales', 230),
(3895, 'South Yorkshire', 230),
(3896, 'Southwell', 230),
(3897, 'Staffordshire', 230),
(3898, 'Strabane', 230),
(3899, 'Suffolk', 230),
(3900, 'Surrey', 230),
(3901, 'Sussex', 230),
(3902, 'Twickenham', 230),
(3903, 'Tyne and Wear', 230),
(3904, 'Tyrone', 230),
(3905, 'Utah', 230),
(3906, 'Wales', 230),
(3907, 'Warwickshire', 230),
(3908, 'West Lothian', 230),
(3909, 'West Midlands', 230),
(3910, 'West Sussex', 230),
(3911, 'West Yorkshire', 230),
(3912, 'Whissendine', 230),
(3913, 'Wiltshire', 230),
(3914, 'Wokingham', 230),
(3915, 'Worcestershire', 230),
(3916, 'Wrexham', 230),
(3917, 'Wurttemberg', 230),
(3918, 'Yorkshire', 230),
(3919, 'Alabama', 231),
(3920, 'Alaska', 231),
(3921, 'Arizona', 231),
(3922, 'Arkansas', 231),
(3923, 'Byram', 231),
(3924, 'California', 231),
(3925, 'Cokato', 231),
(3926, 'Colorado', 231),
(3927, 'Connecticut', 231),
(3928, 'Delaware', 231),
(3929, 'District of Columbia', 231),
(3930, 'Florida', 231),
(3931, 'Georgia', 231),
(3932, 'Hawaii', 231),
(3933, 'Idaho', 231),
(3934, 'Illinois', 231),
(3935, 'Indiana', 231),
(3936, 'Iowa', 231),
(3937, 'Kansas', 231),
(3938, 'Kentucky', 231),
(3939, 'Louisiana', 231),
(3940, 'Lowa', 231),
(3941, 'Maine', 231),
(3942, 'Maryland', 231),
(3943, 'Massachusetts', 231),
(3944, 'Medfield', 231),
(3945, 'Michigan', 231),
(3946, 'Minnesota', 231),
(3947, 'Mississippi', 231),
(3948, 'Missouri', 231),
(3949, 'Montana', 231),
(3950, 'Nebraska', 231),
(3951, 'Nevada', 231),
(3952, 'New Hampshire', 231),
(3953, 'New Jersey', 231),
(3954, 'New Jersy', 231),
(3955, 'New Mexico', 231),
(3956, 'New York', 231),
(3957, 'North Carolina', 231),
(3958, 'North Dakota', 231),
(3959, 'Ohio', 231),
(3960, 'Oklahoma', 231),
(3961, 'Ontario', 231),
(3962, 'Oregon', 231),
(3963, 'Pennsylvania', 231),
(3964, 'Ramey', 231),
(3965, 'Rhode Island', 231),
(3966, 'South Carolina', 231),
(3967, 'South Dakota', 231),
(3968, 'Sublimity', 231),
(3969, 'Tennessee', 231),
(3970, 'Texas', 231),
(3971, 'Trimble', 231),
(3972, 'Utah', 231),
(3973, 'Vermont', 231),
(3974, 'Virginia', 231),
(3975, 'Washington', 231),
(3976, 'West Virginia', 231),
(3977, 'Wisconsin', 231),
(3978, 'Wyoming', 231),
(3979, 'United States Minor Outlying I', 232),
(3980, 'Artigas', 233),
(3981, 'Canelones', 233),
(3982, 'Cerro Largo', 233),
(3983, 'Colonia', 233),
(3984, 'Durazno', 233),
(3985, 'FLorida', 233),
(3986, 'Flores', 233),
(3987, 'Lavalleja', 233),
(3988, 'Maldonado', 233),
(3989, 'Montevideo', 233),
(3990, 'Paysandu', 233),
(3991, 'Rio Negro', 233),
(3992, 'Rivera', 233),
(3993, 'Rocha', 233),
(3994, 'Salto', 233),
(3995, 'San Jose', 233),
(3996, 'Soriano', 233),
(3997, 'Tacuarembo', 233),
(3998, 'Treinta y Tres', 233),
(3999, 'Andijon', 234),
(4000, 'Buhoro', 234),
(4001, 'Buxoro Viloyati', 234),
(4002, 'Cizah', 234),
(4003, 'Fargona', 234),
(4004, 'Horazm', 234),
(4005, 'Kaskadar', 234),
(4006, 'Korakalpogiston', 234),
(4007, 'Namangan', 234),
(4008, 'Navoi', 234),
(4009, 'Samarkand', 234),
(4010, 'Sirdare', 234),
(4011, 'Surhondar', 234),
(4012, 'Toskent', 234),
(4013, 'Malampa', 235),
(4014, 'Penama', 235),
(4015, 'Sanma', 235),
(4016, 'Shefa', 235),
(4017, 'Tafea', 235),
(4018, 'Torba', 235),
(4019, 'Vatican City State (Holy See)', 236),
(4020, 'Amazonas', 237),
(4021, 'Anzoategui', 237),
(4022, 'Apure', 237),
(4023, 'Aragua', 237),
(4024, 'Barinas', 237),
(4025, 'Bolivar', 237),
(4026, 'Carabobo', 237),
(4027, 'Cojedes', 237),
(4028, 'Delta Amacuro', 237),
(4029, 'Distrito Federal', 237),
(4030, 'Falcon', 237),
(4031, 'Guarico', 237),
(4032, 'Lara', 237),
(4033, 'Merida', 237),
(4034, 'Miranda', 237),
(4035, 'Monagas', 237),
(4036, 'Nueva Esparta', 237),
(4037, 'Portuguesa', 237),
(4038, 'Sucre', 237),
(4039, 'Tachira', 237),
(4040, 'Trujillo', 237),
(4041, 'Vargas', 237),
(4042, 'Yaracuy', 237),
(4043, 'Zulia', 237),
(4044, 'Bac Giang', 238),
(4045, 'Binh Dinh', 238),
(4046, 'Binh Duong', 238),
(4047, 'Da Nang', 238),
(4048, 'Dong Bang Song Cuu Long', 238),
(4049, 'Dong Bang Song Hong', 238),
(4050, 'Dong Nai', 238),
(4051, 'Dong Nam Bo', 238),
(4052, 'Duyen Hai Mien Trung', 238),
(4053, 'Hanoi', 238),
(4054, 'Hung Yen', 238),
(4055, 'Khu Bon Cu', 238),
(4056, 'Long An', 238),
(4057, 'Mien Nui Va Trung Du', 238),
(4058, 'Thai Nguyen', 238),
(4059, 'Thanh Pho Ho Chi Minh', 238),
(4060, 'Thu Do Ha Noi', 238),
(4061, 'Tinh Can Tho', 238),
(4062, 'Tinh Da Nang', 238),
(4063, 'Tinh Gia Lai', 238),
(4064, 'Anegada', 239),
(4065, 'Jost van Dyke', 239),
(4066, 'Tortola', 239),
(4067, 'Saint Croix', 240),
(4068, 'Saint John', 240),
(4069, 'Saint Thomas', 240),
(4070, 'Alo', 241),
(4071, 'Singave', 241),
(4072, 'Wallis', 241),
(4073, 'Bu Jaydur', 242),
(4074, 'Wad-adh-Dhahab', 242),
(4075, 'al-\'Ayun', 242),
(4076, 'as-Samarah', 242),
(4077, '\'Adan', 243),
(4078, 'Abyan', 243),
(4079, 'Dhamar', 243),
(4080, 'Hadramaut', 243),
(4081, 'Hajjah', 243),
(4082, 'Hudaydah', 243),
(4083, 'Ibb', 243),
(4084, 'Lahij', 243),
(4085, 'Ma\'rib', 243),
(4086, 'Madinat San\'a', 243),
(4087, 'Sa\'dah', 243),
(4088, 'Sana', 243),
(4089, 'Shabwah', 243),
(4090, 'Ta\'izz', 243),
(4091, 'al-Bayda', 243),
(4092, 'al-Hudaydah', 243),
(4093, 'al-Jawf', 243),
(4094, 'al-Mahrah', 243),
(4095, 'al-Mahwit', 243),
(4096, 'Central Serbia', 244),
(4097, 'Kosovo and Metohija', 244),
(4098, 'Montenegro', 244),
(4099, 'Republic of Serbia', 244),
(4100, 'Serbia', 244),
(4101, 'Vojvodina', 244),
(4102, 'Central', 245),
(4103, 'Copperbelt', 245),
(4104, 'Eastern', 245),
(4105, 'Luapala', 245),
(4106, 'Lusaka', 245),
(4107, 'North-Western', 245),
(4108, 'Northern', 245),
(4109, 'Southern', 245),
(4110, 'Western', 245),
(4111, 'Bulawayo', 246),
(4112, 'Harare', 246),
(4113, 'Manicaland', 246),
(4114, 'Mashonaland Central', 246),
(4115, 'Mashonaland East', 246),
(4116, 'Mashonaland West', 246),
(4117, 'Masvingo', 246),
(4118, 'Matabeleland North', 246),
(4119, 'Matabeleland South', 246),
(4120, 'Midlands', 246);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `msg` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `ticket_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(10) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pwd` varchar(500) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `remember_token` varchar(500) NOT NULL DEFAULT '',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `img` varchar(100) NOT NULL DEFAULT '',
  `status` varchar(10) NOT NULL DEFAULT '0',
  `r_state` varchar(15) NOT NULL DEFAULT '',
  `country` varchar(50) NOT NULL DEFAULT '',
  `state` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `currency` varchar(10) NOT NULL DEFAULT '',
  `wallet` double NOT NULL DEFAULT 0,
  `ref_bal` double NOT NULL DEFAULT 0,
  `referal` varchar(200) NOT NULL DEFAULT '',
  `btc_wallet` varchar(200) NOT NULL DEFAULT '',
  `act_code` varchar(50) NOT NULL DEFAULT '',
  `sec_2fa` varchar(100) DEFAULT '',
  `sec_2fa_status` int(1) NOT NULL DEFAULT 0,
  `reg_date` varchar(50) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `pwd`, `phone`, `remember_token`, `email_verified_at`, `img`, `status`, `r_state`, `country`, `state`, `address`, `currency`, `wallet`, `ref_bal`, `referal`, `btc_wallet`, `act_code`, `sec_2fa`, `sec_2fa_status`, `reg_date`, `created_at`, `updated_at`) VALUES
(1, 'vinh', 'ho', 'vinhhofb', 'vinhhofb@gmail.com', '$2y$10$972vozlMkPA3U.6.rEhQnemVSLeuOgSr0YicYAwoAYPcDpFY6HCBq', NULL, '', NULL, '', '1', '', '', '', '', '$', 60, 0, '', '', '13831611977311', '', 0, '30-01-2021', '2021-01-30 03:28:32', '2021-01-30 03:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(10) NOT NULL,
  `user_id` bigint(10) NOT NULL,
  `usn` varchar(100) NOT NULL,
  `package` varchar(20) NOT NULL,
  `invest_id` varchar(50) NOT NULL,
  `account` varchar(200) NOT NULL,
  `amount` varchar(12) NOT NULL,
  `currency` varchar(50) NOT NULL DEFAULT '',
  `charges` double NOT NULL DEFAULT 0,
  `recieving` double NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending',
  `w_date` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `admin_log`
--
ALTER TABLE `admin_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Account_number` (`Account_number`);

--
-- Indexes for table `coinpayment_transactions`
--
ALTER TABLE `coinpayment_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coinpayment_transactions_txn_id_unique` (`txn_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_cp_log`
--
ALTER TABLE `cp_cp_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_cp_transactions`
--
ALTER TABLE `cp_cp_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cp_transactions_txn_id_unique` (`txn_id`);

--
-- Indexes for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  ADD PRIMARY KEY (`paymentID`),
  ADD UNIQUE KEY `key3` (`boxID`,`orderID`,`userID`,`txID`,`amount`,`addr`),
  ADD KEY `boxID` (`boxID`),
  ADD KEY `boxType` (`boxType`),
  ADD KEY `userID` (`userID`),
  ADD KEY `countryID` (`countryID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `amount` (`amount`),
  ADD KEY `amountUSD` (`amountUSD`),
  ADD KEY `coinLabel` (`coinLabel`),
  ADD KEY `unrecognised` (`unrecognised`),
  ADD KEY `addr` (`addr`),
  ADD KEY `txID` (`txID`),
  ADD KEY `txDate` (`txDate`),
  ADD KEY `txConfirmed` (`txConfirmed`),
  ADD KEY `txCheckDate` (`txCheckDate`),
  ADD KEY `processed` (`processed`),
  ADD KEY `processedDate` (`processedDate`),
  ADD KEY `recordCreated` (`recordCreated`),
  ADD KEY `key1` (`boxID`,`orderID`),
  ADD KEY `key2` (`boxID`,`orderID`,`userID`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fund_transfer`
--
ALTER TABLE `fund_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invest`
--
ALTER TABLE `invest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc`
--
ALTER TABLE `kyc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mread`
--
ALTER TABLE `mread`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `package_name` (`package_name`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref`
--
ALTER TABLE `ref`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_set`
--
ALTER TABLE `ref_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_log`
--
ALTER TABLE `admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coinpayment_transactions`
--
ALTER TABLE `coinpayment_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `cp_cp_log`
--
ALTER TABLE `cp_cp_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cp_cp_transactions`
--
ALTER TABLE `cp_cp_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  MODIFY `paymentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fund_transfer`
--
ALTER TABLE `fund_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invest`
--
ALTER TABLE `invest`
  MODIFY `id` bigint(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc`
--
ALTER TABLE `kyc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mread`
--
ALTER TABLE `mread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ref`
--
ALTER TABLE `ref`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ref_set`
--
ALTER TABLE `ref_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4122;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- Database: `laravelchat`
--
CREATE DATABASE IF NOT EXISTS `laravelchat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laravelchat`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `author`, `content`, `created_at`, `updated_at`) VALUES
(14, 'vh', 'vh', '2021-01-31 22:28:43', '2021-01-31 22:28:43'),
(15, 'cgd', 'gc', '2021-01-31 22:29:45', '2021-01-31 22:29:45'),
(16, 'cgd', 'gc', '2021-01-31 22:31:00', '2021-01-31 22:31:00'),
(17, 'gf', 'fg', '2021-01-31 22:31:05', '2021-01-31 22:31:05'),
(18, 'fddf', 'df', '2021-01-31 22:31:15', '2021-01-31 22:31:15'),
(19, 'dffd', 'df', '2021-01-31 22:37:54', '2021-01-31 22:37:54'),
(20, 'm,', 'm,', '2021-01-31 22:42:31', '2021-01-31 22:42:31');

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
(4, '2021_02_01_035613_create_messages_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `nowrentdb`
--
CREATE DATABASE IF NOT EXISTS `nowrentdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nowrentdb`;

-- --------------------------------------------------------

--
-- Table structure for table `tbladdresslv1`
--

CREATE TABLE `tbladdresslv1` (
  `id` int(11) NOT NULL,
  `name1` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladdresslv1`
--

INSERT INTO `tbladdresslv1` (`id`, `name1`) VALUES
(1, 'An Giang'),
(2, 'Bà Rịa – Vũng Tàu'),
(3, 'Bắc Giang'),
(4, 'Bắc Kạn'),
(5, 'Bạc Liêu'),
(6, 'Bắc Ninh'),
(7, 'Bến Tre'),
(8, 'Bình Định'),
(9, 'Bình Dương'),
(10, 'Bình Phước'),
(11, 'Bình Thuận'),
(12, 'Cà Mau'),
(13, 'Cần Thơ'),
(14, 'Cao Bằng'),
(15, 'Đà Nẵng'),
(16, 'Đắk Lắk'),
(17, 'Đắk Nông'),
(18, 'Điện Biên'),
(19, 'Đồng Nai'),
(20, 'Đồng Tháp'),
(21, 'Gia Lai'),
(22, 'Hà Giang'),
(23, 'Hà Nam'),
(24, 'Hà Nội'),
(25, 'Hà Tĩnh'),
(26, 'Hải Dương'),
(27, 'Hải Phòng'),
(28, 'Hậu Giang'),
(29, 'Hòa Bình'),
(30, 'Hưng Yên'),
(31, 'Khánh Hòa'),
(32, 'Kiên Giang'),
(33, 'Kon Tum'),
(34, 'Lai Châu'),
(35, 'Lâm Đồng'),
(36, 'Lạng Sơn'),
(37, 'Lào Cai'),
(38, 'Long An'),
(39, 'Nam Định'),
(40, 'Nghệ An'),
(41, 'Ninh Bình'),
(42, 'Ninh Thuận'),
(43, 'Phú Thọ'),
(44, 'Phú Yên'),
(45, 'Quảng Bình'),
(46, 'Quảng Nam'),
(47, 'Quảng Ngãi'),
(48, 'Quảng Ninh'),
(49, 'Quảng Trị'),
(50, 'Sóc Trăng'),
(51, 'Sơn La'),
(52, 'Tây Ninh'),
(53, 'Thái Bình'),
(54, 'Thái Nguyên'),
(55, 'Thanh Hóa'),
(56, 'Thừa Thiên Huế'),
(57, 'Tiền Giang'),
(58, 'Hồ Chí Minh'),
(59, 'Trà Vinh'),
(60, 'Tuyên Quang'),
(61, 'Vĩnh Long'),
(62, 'Vĩnh Phúc'),
(63, 'Yên Bái');

-- --------------------------------------------------------

--
-- Table structure for table `tbladdresslv2`
--

CREATE TABLE `tbladdresslv2` (
  `id` int(11) NOT NULL,
  `name2` varchar(50) NOT NULL,
  `idaddresslv1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladdresslv2`
--

INSERT INTO `tbladdresslv2` (`id`, `name2`, `idaddresslv1`) VALUES
(1, 'Thành phố Long Xuyên', 1),
(2, 'Thành phố Châu Đốc', 1),
(3, 'Huyện An Phú', 1),
(4, 'Thị xã Tân Châu', 1),
(5, 'Huyện Phú Tân', 1),
(6, 'Huyện Châu Phú', 1),
(7, 'Huyện Tịnh Biên', 1),
(8, 'Huyện Tri Tôn', 1),
(9, 'Huyện Châu Thành', 1),
(10, 'Huyện Chợ Mới', 1),
(11, 'Huyện Thoại Sơn', 1),
(12, 'Thành phố Vũng Tàu', 2),
(13, 'Thành phố Bà Rịa', 2),
(14, 'Huyện Châu Đức', 2),
(15, 'Huyện Xuyên Mộc', 2),
(16, 'Huyện Long Điền', 2),
(17, 'Huyện Đất Đỏ', 2),
(18, 'Huyện Tân Thành', 2),
(19, 'Thành phố Bắc Giang', 3),
(20, 'Huyện Yên Thế', 3),
(21, 'Huyện Tân Yên', 3),
(22, 'Huyện Lạng Giang', 3),
(23, 'Huyện Lục Nam', 3),
(24, 'Huyện Lục Ngạn', 3),
(25, 'Huyện Sơn Động', 3),
(26, 'Huyện Yên Dũng', 3),
(27, 'Huyện Việt Yên', 3),
(28, 'Huyện Hiệp Hòa', 3),
(29, 'Thành Phố Bắc Kạn', 4),
(30, 'Huyện Pác Nặm', 4),
(31, 'Huyện Ba Bể', 4),
(32, 'Huyện Ngân Sơn', 4),
(33, 'Huyện Bạch Thông', 4),
(34, 'Huyện Chợ Đồn', 4),
(35, 'Huyện Chợ Mới', 4),
(36, 'Huyện Na Rì', 4),
(37, 'Thành phố Bạc Liêu', 5),
(38, 'Huyện Hồng Dân', 5),
(39, 'Huyện Phước Long', 5),
(40, 'Huyện Vĩnh Lợi', 5),
(41, 'Thị xã Giá Rai', 5),
(42, 'Huyện Đông Hải', 5),
(43, 'Huyện Hoà Bình', 5),
(44, 'Thành phố Bắc Ninh', 6),
(45, 'Huyện Yên Phong', 6),
(46, 'Huyện Quế Võ', 6),
(47, 'Huyện Tiên Du', 6),
(48, 'Thị xã Từ Sơn', 6),
(49, 'Huyện Thuận Thành', 6),
(50, 'Huyện Gia Bình', 6),
(51, 'Huyện Lương Tài', 6),
(52, 'Thành phố Bến Tre', 7),
(53, 'Huyện Châu Thành', 7),
(54, 'Huyện Chợ Lách', 7),
(55, 'Huyện Mỏ Cày Nam', 7),
(56, 'Huyện Giồng Trôm', 7),
(57, 'Huyện Bình Đại', 7),
(58, 'Huyện Ba Tri', 7),
(59, 'Huyện Thạnh Phú', 7),
(60, 'Huyện Mỏ Cày Bắc', 7),
(61, 'Thành phố Qui Nhơn', 8),
(62, 'Huyện An Lão', 8),
(63, 'Huyện Hoài Nhơn', 8),
(64, 'Huyện Hoài Ân', 8),
(65, 'Huyện Phù Mỹ', 8),
(66, 'Huyện Vĩnh Thạnh', 8),
(67, 'Huyện Tây Sơn', 8),
(68, 'Huyện Phù Cát', 8),
(69, 'Thị xã An Nhơn', 8),
(70, 'Huyện Tuy Phước', 8),
(71, 'Huyện Vân Canh', 8),
(72, 'Thành phố Thủ Dầu Một', 9),
(73, 'Huyện Bàu Bàng', 9),
(74, 'Huyện Dầu Tiếng', 9),
(75, 'Thị xã Bến Cát', 9),
(76, 'Huyện Phú Giáo', 9),
(77, 'Thị xã Tân Uyên', 9),
(78, 'Thị xã Dĩ An', 9),
(79, 'Thị xã Thuận An', 9),
(80, 'Huyện Bắc Tân Uyên', 9),
(81, 'Thị xã Phước Long', 10),
(82, 'Thị xã Đồng Xoài', 10),
(83, 'Thị xã Bình Long', 10),
(84, 'Huyện Bù Gia Mập', 10),
(85, 'Huyện Lộc Ninh', 10),
(86, 'Huyện Bù Đốp', 10),
(87, 'Huyện Hớn Quản', 10),
(88, 'Huyện Đồng Phú', 10),
(89, 'Huyện Bù Đăng', 10),
(90, 'Huyện Chơn Thành', 10),
(91, 'Huyện Phú Riềng', 10),
(92, 'Thành phố Phan Thiết', 11),
(93, 'Thị xã La Gi', 11),
(94, 'Huyện Tuy Phong', 11),
(95, 'Huyện Bắc Bình', 11),
(96, 'Huyện Hàm Thuận Bắc', 11),
(97, 'Huyện Hàm Thuận Nam', 11),
(98, 'Huyện Tánh Linh', 11),
(99, 'Huyện Đức Linh', 11),
(100, 'Huyện Hàm Tân', 11),
(101, 'Huyện Phú Quí', 11),
(102, 'Thành phố Cà Mau', 12),
(103, 'Huyện U Minh', 12),
(104, 'Huyện Thới Bình', 12),
(105, 'Huyện Trần Văn Thời', 12),
(106, 'Huyện Cái Nước', 12),
(107, 'Huyện Đầm Dơi', 12),
(108, 'Huyện Năm Căn', 12),
(109, 'Huyện Phú Tân', 12),
(110, 'Huyện Ngọc Hiển', 12),
(111, 'Quận Ninh Kiều', 13),
(112, 'Quận Ô Môn', 13),
(113, 'Quận Bình Thuỷ', 13),
(114, 'Quận Cái Răng', 13),
(115, 'Quận Thốt Nốt', 13),
(116, 'Huyện Vĩnh Thạnh', 13),
(117, 'Huyện Cờ Đỏ', 13),
(118, 'Huyện Phong Điền', 13),
(119, 'Huyện Thới Lai', 13),
(120, 'Thành phố Cao Bằng', 14),
(121, 'Huyện Bảo Lâm', 14),
(122, 'Huyện Bảo Lạc', 14),
(123, 'Huyện Thông Nông', 14),
(124, 'Huyện Hà Quảng', 14),
(125, 'Huyện Trà Lĩnh', 14),
(126, 'Huyện Trùng Khánh', 14),
(127, 'Huyện Hạ Lang', 14),
(128, 'Huyện Quảng Uyên', 14),
(129, 'Huyện Phục Hoà', 14),
(130, 'Huyện Hoà An', 14),
(131, 'Huyện Nguyên Bình', 14),
(132, 'Huyện Thạch An', 14),
(133, 'Quận Liên Chiểu', 15),
(134, 'Quận Thanh Khê', 15),
(135, 'Quận Hải Châu', 15),
(136, 'Quận Sơn Trà', 15),
(137, 'Quận Ngũ Hành Sơn', 15),
(138, 'Quận Cẩm Lệ', 15),
(139, 'Huyện Hòa Vang', 15),
(140, 'Thành phố Buôn Ma Thuột', 16),
(141, 'Thị Xã Buôn Hồ', 16),
(142, 'Huyện Ea H\'leo', 16),
(143, 'Huyện Ea Súp', 16),
(144, 'Huyện Buôn Đôn', 16),
(145, 'Huyện Cư M\'gar', 16),
(146, 'Huyện Krông Búk', 16),
(147, 'Huyện Krông Năng', 16),
(148, 'Huyện Ea Kar', 16),
(149, 'Huyện M\'Đrắk', 16),
(150, 'Huyện Krông Bông', 16),
(151, 'Huyện Krông Pắc', 16),
(152, 'Huyện Krông A Na', 16),
(153, 'Huyện Lắk', 16),
(154, 'Huyện Cư Kuin', 16),
(155, 'Thị xã Gia Nghĩa', 17),
(156, 'Huyện Đăk Glong', 17),
(157, 'Huyện Cư Jút', 17),
(158, 'Huyện Đắk Mil', 17),
(159, 'Huyện Krông Nô', 17),
(160, 'Huyện Đắk Song', 17),
(161, 'Huyện Đắk R\'Lấp', 17),
(162, 'Huyện Tuy Đức', 17),
(163, 'Thành phố Điện Biên Phủ', 18),
(164, 'Thị Xã Mường Lay', 18),
(165, 'Huyện Mường Nhé', 18),
(166, 'Huyện Mường Chà', 18),
(167, 'Huyện Tủa Chùa', 18),
(168, 'Huyện Tuần Giáo', 18),
(169, 'Huyện Điện Biên', 18),
(170, 'Huyện Điện Biên Đông', 18),
(171, 'Huyện Mường Ảng', 18),
(172, 'Huyện Nậm Pồ', 18),
(173, 'Thành phố Biên Hòa', 19),
(174, 'Thị xã Long Khánh', 19),
(175, 'Huyện Tân Phú', 19),
(176, 'Huyện Vĩnh Cửu', 19),
(177, 'Huyện Định Quán', 19),
(178, 'Huyện Trảng Bom', 19),
(179, 'Huyện Thống Nhất', 19),
(180, 'Huyện Cẩm Mỹ', 19),
(181, 'Huyện Long Thành', 19),
(182, 'Huyện Xuân Lộc', 19),
(183, 'Huyện Nhơn Trạch', 19),
(184, 'Thành phố Cao Lãnh', 20),
(185, 'Thành phố Sa Đéc', 20),
(186, 'Thị xã Hồng Ngự', 20),
(187, 'Huyện Tân Hồng', 20),
(188, 'Huyện Hồng Ngự', 20),
(189, 'Huyện Tam Nông', 20),
(190, 'Huyện Tháp Mười', 20),
(191, 'Huyện Cao Lãnh', 20),
(192, 'Huyện Thanh Bình', 20),
(193, 'Huyện Lấp Vò', 20),
(194, 'Huyện Lai Vung', 20),
(195, 'Huyện Châu Thành', 20),
(197, 'Thành phố Pleiku', 21),
(198, 'Thị xã An Khê', 21),
(199, 'Thị xã Ayun Pa', 21),
(200, 'Huyện KBang', 21),
(201, 'Huyện Đăk Đoa', 21),
(202, 'Huyện Chư Păh', 21),
(203, 'Huyện Ia Grai', 21),
(204, 'Huyện Mang Yang', 21),
(205, 'Huyện Kông Chro', 21),
(206, 'Huyện Đức Cơ', 21),
(207, 'Huyện Chư Prông', 21),
(208, 'Huyện Chư Sê', 21),
(209, 'Huyện Đăk Pơ', 21),
(210, 'Huyện Ia Pa', 21),
(211, 'Huyện Krông Pa', 21),
(212, 'Huyện Phú Thiện', 21),
(213, 'Huyện Chư Pưh', 21),
(214, 'Thành phố Hà Giang', 22),
(215, 'Huyện Đồng Văn', 22),
(216, 'Huyện Mèo Vạc', 22),
(217, 'Huyện Yên Minh', 22),
(218, 'Huyện Quản Bạ', 22),
(219, 'Huyện Vị Xuyên', 22),
(220, 'Huyện Bắc Mê', 22),
(221, 'Huyện Hoàng Su Phì', 22),
(222, 'Huyện Xín Mần', 22),
(223, 'Huyện Bắc Quang', 22),
(224, 'Huyện Quang Bình', 22),
(225, 'Thành phố Phủ Lý', 23),
(226, 'Huyện Duy Tiên', 23),
(227, 'Huyện Kim Bảng', 23),
(228, 'Huyện Thanh Liêm', 23),
(229, 'Huyện Bình Lục', 23),
(230, 'Huyện Lý Nhân', 23),
(231, 'Quận Ba Đình', 24),
(232, 'Quận Hoàn Kiếm', 24),
(233, 'Quận Tây Hồ', 24),
(234, 'Quận Long Biên', 24),
(235, 'Quận Cầu Giấy', 24),
(236, 'Quận Đống Đa', 24),
(237, 'Quận Hai Bà Trưng', 24),
(238, 'Quận Hoàng Mai', 24),
(239, 'Quận Thanh Xuân', 24),
(240, 'Huyện Sóc Sơn', 24),
(241, 'Huyện Đông Anh', 24),
(242, 'Huyện Gia Lâm', 24),
(243, 'Quận Nam Từ Liêm', 24),
(244, 'Huyện Thanh Trì', 24),
(245, 'Quận Bắc Từ Liêm', 24),
(246, 'Huyện Mê Linh', 24),
(247, 'Quận Hà Đông', 24),
(248, 'Thị xã Sơn Tây', 24),
(249, 'Huyện Ba Vì', 24),
(250, 'Huyện Phúc Thọ', 24),
(251, 'Huyện Đan Phượng', 24),
(252, 'Huyện Hoài Đức', 24),
(253, 'Huyện Quốc Oai', 24),
(254, 'Huyện Thạch Thất', 24),
(255, 'Huyện Chương Mỹ', 24),
(256, 'Huyện Thanh Oai', 24),
(257, 'Huyện Thường Tín', 24),
(258, 'Huyện Phú Xuyên', 24),
(259, 'Huyện Ứng Hòa', 24),
(260, 'Huyện Mỹ Đức', 24),
(261, 'Thành phố Hà Tĩnh', 25),
(262, 'Thị xã Hồng Lĩnh', 25),
(263, 'Huyện Hương Sơn', 25),
(264, 'Huyện Đức Thọ', 25),
(265, 'Huyện Vũ Quang', 25),
(266, 'Huyện Nghi Xuân', 25),
(267, 'Huyện Can Lộc', 25),
(268, 'Huyện Hương Khê', 25),
(269, 'Huyện Thạch Hà', 25),
(270, 'Huyện Cẩm Xuyên', 25),
(271, 'Huyện Kỳ Anh', 25),
(272, 'Huyện Lộc Hà', 25),
(273, 'Thị xã Kỳ Anh', 25),
(274, 'Thành phố Hải Dương', 26),
(275, 'Thị xã Chí Linh', 26),
(276, 'Huyện Nam Sách', 26),
(277, 'Huyện Kinh Môn', 26),
(278, 'Huyện Kim Thành', 26),
(279, 'Huyện Thanh Hà', 26),
(280, 'Huyện Cẩm Giàng', 26),
(281, 'Huyện Bình Giang', 26),
(282, 'Huyện Gia Lộc', 26),
(283, 'Huyện Tứ Kỳ', 26),
(284, 'Huyện Ninh Giang', 26),
(285, 'Huyện Thanh Miện', 26),
(286, 'Thành phố Vị Thanh', 28),
(287, 'Thị xã Ngã Bảy', 28),
(288, 'Huyện Châu Thành A', 28),
(289, 'Huyện Châu Thành', 28),
(290, 'Huyện Phụng Hiệp', 28),
(291, 'Huyện Vị Thuỷ', 28),
(292, 'Huyện Long Mỹ', 28),
(293, 'Thị xã Long Mỹ', 28),
(294, 'Thành phố Hòa Bình', 29),
(295, 'Huyện Đà Bắc', 29),
(296, 'Huyện Kỳ Sơn', 29),
(297, 'Huyện Lương Sơn', 29),
(298, 'Huyện Kim Bôi', 29),
(299, 'Huyện Cao Phong', 29),
(300, 'Huyện Tân Lạc', 29),
(301, 'Huyện Mai Châu', 29),
(302, 'Huyện Lạc Sơn', 29),
(303, 'Huyện Yên Thủy', 29),
(304, 'Huyện Lạc Thủy', 29),
(305, 'Thành phố Hưng Yên', 30),
(306, 'Huyện Văn Lâm', 30),
(307, 'Huyện Văn Giang', 30),
(308, 'Huyện Yên Mỹ', 30),
(309, 'Huyện Mỹ Hào', 30),
(310, 'Huyện Ân Thi', 30),
(311, 'Huyện Khoái Châu', 30),
(312, 'Huyện Kim Động', 30),
(313, 'Huyện Tiên Lữ', 30),
(314, 'Huyện Phù Cừ', 30),
(315, 'Thành phố Nha Trang', 31),
(316, 'Thành phố Cam Ranh', 31),
(317, 'Huyện Cam Lâm', 31),
(318, 'Huyện Vạn Ninh', 31),
(319, 'Thị xã Ninh Hòa', 31),
(320, 'Huyện Khánh Vĩnh', 31),
(321, 'Huyện Diên Khánh', 31),
(322, 'Huyện Khánh Sơn', 31),
(323, 'Huyện Trường Sa', 31),
(324, 'Thành phố Rạch Giá', 32),
(325, 'Thị xã Hà Tiên', 32),
(326, 'Huyện Kiên Lương', 32),
(327, 'Huyện Hòn Đất', 32),
(328, 'Huyện Tân Hiệp', 32),
(329, 'Huyện Châu Thành', 32),
(330, 'Huyện Giồng Riềng', 32),
(331, 'Huyện Gò Quao', 32),
(332, 'Huyện An Biên', 32),
(333, 'Huyện An Minh', 32),
(334, 'Huyện Vĩnh Thuận', 32),
(335, 'Huyện Phú Quốc', 32),
(336, 'Huyện Kiên Hải', 32),
(337, 'Huyện U Minh Thượng', 32),
(338, 'Huyện Giang Thành', 32),
(339, 'Thành phố Kon Tum', 33),
(340, 'Huyện Đắk Glei', 33),
(341, 'Huyện Ngọc Hồi', 33),
(342, 'Huyện Đắk Tô', 33),
(343, 'Huyện Kon Plông', 33),
(344, 'Huyện Kon Rẫy', 33),
(345, 'Huyện Đắk Hà', 33),
(346, 'Huyện Sa Thầy', 33),
(347, 'Huyện Tu Mơ Rông', 33),
(348, 'Huyện Ia H\' Drai', 33),
(349, 'Thành phố Lai Châu', 34),
(350, 'Huyện Tam Đường', 34),
(351, 'Huyện Mường Tè', 34),
(352, 'Huyện Sìn Hồ', 34),
(353, 'Huyện Phong Thổ', 34),
(354, 'Huyện Than Uyên', 34),
(355, 'Huyện Tân Uyên', 34),
(356, 'Huyện Nậm Nhùn', 34),
(357, 'Thành phố Đà Lạt', 35),
(358, 'Thành phố Bảo Lộc', 35),
(359, 'Huyện Đam Rông', 35),
(360, 'Huyện Lạc Dương', 35),
(361, 'Huyện Lâm Hà', 35),
(362, 'Huyện Đơn Dương', 35),
(363, 'Huyện Đức Trọng', 35),
(364, 'Huyện Di Linh', 35),
(365, 'Huyện Bảo Lâm', 35),
(366, 'Huyện Đạ Huoai', 35),
(367, 'Huyện Đạ Tẻh', 35),
(368, 'Huyện Cát Tiên', 35),
(369, 'Thành phố Lạng Sơn', 36),
(370, 'Huyện Tràng Định', 36),
(371, 'Huyện Bình Gia', 36),
(372, 'Huyện Văn Lãng', 36),
(373, 'Huyện Cao Lộc', 36),
(374, 'Huyện Văn Quan', 36),
(375, 'Huyện Bắc Sơn', 36),
(376, 'Huyện Hữu Lũng', 36),
(377, 'Huyện Chi Lăng', 36),
(378, 'Huyện Lộc Bình', 36),
(379, 'Huyện Đình Lập', 36),
(380, 'Thành phố Lào Cai', 37),
(381, 'Huyện Bát Xát', 37),
(382, 'Huyện Mường Khương', 37),
(383, 'Huyện Si Ma Cai', 37),
(384, 'Huyện Bắc Hà', 37),
(385, 'Huyện Bảo Thắng', 37),
(386, 'Huyện Bảo Yên', 37),
(387, 'Huyện Sa Pa', 37),
(388, 'Huyện Văn Bàn', 37),
(389, 'Thành phố Tân An', 38),
(390, 'Thị xã Kiến Tường', 38),
(391, 'Huyện Tân Hưng', 38),
(392, 'Huyện Vĩnh Hưng', 38),
(393, 'Huyện Mộc Hóa', 38),
(394, 'Huyện Tân Thạnh', 38),
(395, 'Huyện Thạnh Hóa', 38),
(396, 'Huyện Đức Huệ', 38),
(397, 'Huyện Đức Hòa', 38),
(398, 'Huyện Bến Lức', 38),
(399, 'Huyện Thủ Thừa', 38),
(400, 'Huyện Tân Trụ', 38),
(401, 'Huyện Cần Đước', 38),
(402, 'Huyện Cần Giuộc', 38),
(403, 'Huyện Châu Thành', 38),
(404, 'Thành phố Nam Định', 39),
(405, 'Huyện Mỹ Lộc', 39),
(406, 'Huyện Vụ Bản', 39),
(407, 'Huyện Ý Yên', 39),
(408, 'Huyện Nghĩa Hưng', 39),
(409, 'Huyện Nam Trực', 39),
(410, 'Huyện Trực Ninh', 39),
(411, 'Huyện Xuân Trường', 39),
(412, 'Huyện Giao Thủy', 39),
(413, 'Huyện Hải Hậu', 39),
(414, 'Thành phố Vinh', 40),
(415, 'Thị xã Cửa Lò', 40),
(416, 'Thị xã Thái Hoà', 40),
(417, 'Huyện Quế Phong', 40),
(418, 'Huyện Quỳ Châu', 40),
(419, 'Huyện Kỳ Sơn', 40),
(420, 'Huyện Tương Dương', 40),
(421, 'Huyện Nghĩa Đàn', 40),
(422, 'Huyện Quỳ Hợp', 40),
(423, 'Huyện Quỳnh Lưu', 40),
(424, 'Huyện Con Cuông', 40),
(425, 'Huyện Tân Kỳ', 40),
(426, 'Huyện Anh Sơn', 40),
(427, 'Huyện Diễn Châu', 40),
(428, 'Huyện Yên Thành', 40),
(429, 'Huyện Đô Lương', 40),
(430, 'Huyện Thanh Chương', 40),
(431, 'Huyện Nghi Lộc', 40),
(432, 'Huyện Nam Đàn', 40),
(433, 'Huyện Hưng Nguyên', 40),
(434, 'Thị xã Hoàng Mai', 40),
(435, 'Thành phố Ninh Bình', 41),
(436, 'Thành phố Tam Điệp', 41),
(437, 'Huyện Nho Quan', 41),
(438, 'Huyện Gia Viễn', 41),
(439, 'Huyện Hoa Lư', 41),
(440, 'Huyện Yên Khánh', 41),
(441, 'Huyện Kim Sơn', 41),
(442, 'Huyện Yên Mô', 41),
(443, 'Thành phố Phan Rang-Tháp Chàm', 42),
(444, 'Huyện Bác Ái', 42),
(445, 'Huyện Ninh Sơn', 42),
(446, 'Huyện Ninh Hải', 42),
(447, 'Huyện Ninh Phước', 42),
(448, 'Huyện Thuận Bắc', 42),
(449, 'Huyện Thuận Nam', 42),
(450, 'Thành phố Việt Trì', 43),
(451, 'Thị xã Phú Thọ', 43),
(452, 'Huyện Đoan Hùng', 43),
(453, 'Huyện Hạ Hoà', 43),
(454, 'Huyện Thanh Ba', 43),
(455, 'Huyện Phù Ninh', 43),
(456, 'Huyện Yên Lập', 43),
(457, 'Huyện Cẩm Khê', 43),
(458, 'Huyện Tam Nông', 43),
(459, 'Huyện Lâm Thao', 43),
(460, 'Huyện Thanh Sơn', 43),
(461, 'Huyện Thanh Thuỷ', 43),
(462, 'Huyện Tân Sơn', 43),
(463, 'Thành phố Tuy Hoà', 44),
(464, 'Thị xã Sông Cầu', 44),
(465, 'Huyện Đồng Xuân', 44),
(466, 'Huyện Tuy An', 44),
(467, 'Huyện Sơn Hòa', 44),
(468, 'Huyện Sông Hinh', 44),
(469, 'Huyện Tây Hoà', 44),
(470, 'Huyện Phú Hoà', 44),
(471, 'Huyện Đông Hòa', 44),
(472, 'Thành Phố Đồng Hới', 45),
(473, 'Huyện Minh Hóa', 45),
(474, 'Huyện Tuyên Hóa', 45),
(475, 'Huyện Quảng Trạch', 45),
(476, 'Huyện Bố Trạch', 45),
(477, 'Huyện Quảng Ninh', 45),
(478, 'Huyện Lệ Thủy', 45),
(479, 'Thị xã Ba Đồn', 45),
(480, 'Thành phố Tam Kỳ', 46),
(481, 'Thành phố Hội An', 46),
(482, 'Huyện Tây Giang', 46),
(483, 'Huyện Đông Giang', 46),
(484, 'Huyện Đại Lộc', 46),
(485, 'Thị xã Điện Bàn', 46),
(486, 'Huyện Duy Xuyên', 46),
(487, 'Huyện Quế Sơn', 46),
(488, 'Huyện Nam Giang', 46),
(489, 'Huyện Phước Sơn', 46),
(490, 'Huyện Hiệp Đức', 46),
(491, 'Huyện Thăng Bình', 46),
(492, 'Huyện Tiên Phước', 46),
(493, 'Huyện Bắc Trà My', 46),
(494, 'Huyện Nam Trà My', 46),
(495, 'Huyện Núi Thành', 46),
(496, 'Huyện Phú Ninh', 46),
(497, 'Huyện Nông Sơn', 46),
(498, 'Thành phố Quảng Ngãi', 47),
(499, 'Huyện Bình Sơn', 47),
(500, 'Huyện Trà Bồng', 47),
(501, 'Huyện Tây Trà', 47),
(502, 'Huyện Sơn Tịnh', 47),
(503, 'Huyện Tư Nghĩa', 47),
(504, 'Huyện Sơn Hà', 47),
(505, 'Huyện Sơn Tây', 47),
(506, 'Huyện Minh Long', 47),
(507, 'Huyện Nghĩa Hành', 47),
(508, 'Huyện Mộ Đức', 47),
(509, 'Huyện Đức Phổ', 47),
(510, 'Huyện Ba Tơ', 47),
(511, 'Huyện Lý Sơn', 47),
(512, 'Thành phố Hạ Long', 48),
(513, 'Thành phố Móng Cái', 48),
(514, 'Thành phố Cẩm Phả', 48),
(515, 'Thành phố Uông Bí', 48),
(516, 'Huyện Bình Liêu', 48),
(517, 'Huyện Tiên Yên', 48),
(518, 'Huyện Đầm Hà', 48),
(519, 'Huyện Hải Hà', 48),
(520, 'Huyện Ba Chẽ', 48),
(521, 'Huyện Vân Đồn', 48),
(522, 'Huyện Hoành Bồ', 48),
(523, 'Thị xã Đông Triều', 48),
(524, 'Thị xã Quảng Yên', 48),
(525, 'Huyện Cô Tô', 48),
(526, 'Thành phố Đông Hà', 49),
(527, 'Thị xã Quảng Trị', 49),
(528, 'Huyện Vĩnh Linh', 49),
(529, 'Huyện Hướng Hóa', 49),
(530, 'Huyện Gio Linh', 49),
(531, 'Huyện Đa Krông', 49),
(532, 'Huyện Cam Lộ', 49),
(533, 'Huyện Triệu Phong', 49),
(534, 'Huyện Hải Lăng', 49),
(535, 'Thành phố Sóc Trăng', 50),
(536, 'Huyện Châu Thành', 50),
(537, 'Huyện Kế Sách', 50),
(538, 'Huyện Mỹ Tú', 50),
(539, 'Huyện Cù Lao Dung', 50),
(540, 'Huyện Long Phú', 50),
(541, 'Huyện Mỹ Xuyên', 50),
(542, 'Thị xã Ngã Năm', 50),
(543, 'Huyện Thạnh Trị', 50),
(544, 'Thị xã Vĩnh Châu', 50),
(545, 'Huyện Trần Đề', 50),
(546, 'Thành phố Sơn La', 51),
(547, 'Huyện Quỳnh Nhai', 51),
(548, 'Huyện Thuận Châu', 51),
(549, 'Huyện Mường La', 51),
(550, 'Huyện Bắc Yên', 51),
(551, 'Huyện Phù Yên', 51),
(552, 'Huyện Mộc Châu', 51),
(553, 'Huyện Yên Châu', 51),
(554, 'Huyện Mai Sơn', 51),
(555, 'Huyện Sông Mã', 51),
(556, 'Huyện Sốp Cộp', 51),
(557, 'Huyện Vân Hồ', 51),
(558, 'Thành phố Tây Ninh', 52),
(559, 'Huyện Tân Biên', 52),
(560, 'Huyện Tân Châu', 52),
(561, 'Huyện Dương Minh Châu', 52),
(562, 'Huyện Châu Thành', 52),
(563, 'Huyện Hòa Thành', 52),
(564, 'Huyện Gò Dầu', 52),
(565, 'Huyện Bến Cầu', 52),
(566, 'Huyện Trảng Bàng', 52),
(567, 'Thành phố Thái Bình', 53),
(568, 'Huyện Quỳnh Phụ', 53),
(569, 'Huyện Hưng Hà', 53),
(570, 'Huyện Đông Hưng', 53),
(571, 'Huyện Thái Thụy', 53),
(572, 'Huyện Tiền Hải', 53),
(573, 'Huyện Kiến Xương', 53),
(574, 'Huyện Vũ Thư', 53),
(575, 'Thành phố Thái Nguyên', 54),
(576, 'Thành phố Sông Công', 54),
(577, 'Huyện Định Hóa', 54),
(578, 'Huyện Phú Lương', 54),
(579, 'Huyện Đồng Hỷ', 54),
(580, 'Huyện Võ Nhai', 54),
(581, 'Huyện Đại Từ', 54),
(582, 'Thị xã Phổ Yên', 54),
(583, 'Huyện Phú Bình', 54),
(584, 'Thành phố Thanh Hóa', 55),
(585, 'Thị xã Bỉm Sơn', 55),
(586, 'Thị xã Sầm Sơn', 55),
(587, 'Huyện Mường Lát', 55),
(588, 'Huyện Quan Hóa', 55),
(589, 'Huyện Bá Thước', 55),
(590, 'Huyện Quan Sơn', 55),
(591, 'Huyện Lang Chánh', 55),
(592, 'Huyện Ngọc Lặc', 55),
(593, 'Huyện Cẩm Thủy', 55),
(594, 'Huyện Thạch Thành', 55),
(595, 'Huyện Hà Trung', 55),
(596, 'Huyện Vĩnh Lộc', 55),
(597, 'Huyện Yên Định', 55),
(598, 'Huyện Thọ Xuân', 55),
(599, 'Huyện Thường Xuân', 55),
(600, 'Huyện Triệu Sơn', 55),
(601, 'Huyện Thiệu Hóa', 55),
(602, 'Huyện Hoằng Hóa', 55),
(603, 'Huyện Hậu Lộc', 55),
(604, 'Huyện Nga Sơn', 55),
(605, 'Huyện Như Xuân', 55),
(606, 'Huyện Như Thanh', 55),
(607, 'Huyện Nông Cống', 55),
(608, 'Huyện Đông Sơn', 55),
(609, 'Huyện Quảng Xương', 55),
(610, 'Huyện Tĩnh Gia', 55),
(611, 'Thành phố Huế', 56),
(612, 'Huyện Phong Điền', 56),
(613, 'Huyện Quảng Điền', 56),
(614, 'Huyện Phú Vang', 56),
(615, 'Thị xã Hương Thủy', 56),
(616, 'Thị xã Hương Trà', 56),
(617, 'Huyện A Lưới', 56),
(618, 'Huyện Phú Lộc', 56),
(619, 'Huyện Nam Đông', 56),
(620, 'Thành phố Mỹ Tho', 57),
(621, 'Thị xã Gò Công', 57),
(622, 'Thị xã Cai Lậy', 57),
(623, 'Huyện Tân Phước', 57),
(624, 'Huyện Cái Bè', 57),
(625, 'Huyện Cai Lậy', 57),
(626, 'Huyện Châu Thành', 57),
(627, 'Huyện Chợ Gạo', 57),
(628, 'Huyện Gò Công Tây', 57),
(629, 'Huyện Gò Công Đông', 57),
(630, 'Huyện Tân Phú Đông', 57),
(632, 'Quận 1', 58),
(633, 'Quận 12', 58),
(634, 'Quận Thủ Đức', 58),
(635, 'Quận 9', 58),
(636, 'Quận Gò Vấp', 58),
(637, 'Quận Bình Thạnh', 58),
(638, 'Quận Tân Bình', 58),
(639, 'Quận Tân Phú', 58),
(640, 'Quận Phú Nhuận', 58),
(641, 'Quận 2', 58),
(642, 'Quận 3', 58),
(643, 'Quận 10', 58),
(644, 'Quận 11', 58),
(645, 'Quận 4', 58),
(646, 'Quận 5', 58),
(647, 'Quận 6', 58),
(648, 'Quận 8', 58),
(649, 'Quận Bình Tân', 58),
(650, 'Quận 7', 58),
(651, 'Huyện Củ Chi', 58),
(652, 'Huyện Hóc Môn', 58),
(653, 'Huyện Bình Chánh', 58),
(654, 'Huyện Nhà Bè', 58),
(655, 'Huyện Cần Giờ', 58),
(656, 'Thành phố Trà Vinh', 59),
(657, 'Huyện Càng Long', 59),
(658, 'Huyện Cầu Kè', 59),
(659, 'Huyện Tiểu Cần', 59),
(660, 'Huyện Châu Thành', 59),
(661, 'Huyện Cầu Ngang', 59),
(662, 'Huyện Trà Cú', 59),
(663, 'Huyện Duyên Hải', 59),
(664, 'Thị xã Duyên Hải', 59),
(665, 'Thành phố Tuyên Quang', 60),
(666, 'Huyện Lâm Bình', 60),
(667, 'Huyện Nà Hang', 60),
(668, 'Huyện Chiêm Hóa', 60),
(669, 'Huyện Hàm Yên', 60),
(670, 'Huyện Yên Sơn', 60),
(671, 'Huyện Sơn Dương', 60),
(672, 'Thành phố Vĩnh Long', 61),
(673, 'Huyện Long Hồ', 61),
(674, 'Huyện Mang Thít', 61),
(675, 'Huyện Vũng Liêm', 61),
(676, 'Huyện Tam Bình', 61),
(677, 'Thị xã Bình Minh', 61),
(678, 'Huyện Trà Ôn', 61),
(679, 'Huyện Bình Tân', 61),
(680, 'Thành phố Vĩnh Yên', 62),
(681, 'Thị xã Phúc Yên', 62),
(682, 'Huyện Lập Thạch', 62),
(683, 'Huyện Tam Dương', 62),
(684, 'Huyện Tam Đảo', 62),
(685, 'Huyện Bình Xuyên', 62),
(686, 'Huyện Yên Lạc', 62),
(687, 'Huyện Vĩnh Tường', 62),
(688, 'Huyện Sông Lô', 62),
(689, 'Thành phố Yên Bái', 63),
(690, 'Thị xã Nghĩa Lộ', 63),
(691, 'Huyện Lục Yên', 63),
(692, 'Huyện Văn Yên', 63),
(693, 'Huyện Mù Căng Chải', 63),
(694, 'Huyện Trấn Yên', 63),
(695, 'Huyện Trạm Tấu', 63),
(696, 'Huyện Văn Chấn', 63),
(697, 'Huyện Yên Bình', 63);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategorylv1`
--

CREATE TABLE `tblcategorylv1` (
  `id` int(11) NOT NULL,
  `name3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcategorylv1`
--

INSERT INTO `tblcategorylv1` (`id`, `name3`) VALUES
(1, 'Nơi ở (mặt bằng, nhà ở,...)'),
(2, 'Xe cộ (Xe máy, ô tô, công trường,...)'),
(3, 'Đồ điện tử (Điện thoại, Laptop,...)'),
(4, 'Việc làm'),
(5, 'Thú cưng (Chó, mèo,...)'),
(6, 'Đồ gia dụng (nội thất, cây cảnh,...)'),
(7, 'Thời trang (Quần, áo, giày,...)'),
(8, 'Thể thao (Dụng cụ tập)'),
(9, 'Học tập (Sách, báo, dụng cụ)');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategorylv2`
--

CREATE TABLE `tblcategorylv2` (
  `id` int(11) NOT NULL,
  `name4` varchar(255) NOT NULL,
  `idcategorylv1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcategorylv2`
--

INSERT INTO `tblcategorylv2` (`id`, `name4`, `idcategorylv1`) VALUES
(1, 'Nhà ở', 1),
(2, 'Đất', 1),
(3, 'Văn phòng', 1),
(4, 'Mặt bằng', 1),
(5, 'Phòng trọ', 1),
(6, 'Ô tô', 2),
(7, 'Xe máy', 2),
(8, 'Xe tải', 2),
(9, 'Xe điện', 2),
(10, 'Xe đạp', 2),
(11, 'Phương tiện khác', 2),
(12, 'Điện thoại', 3),
(13, 'Máy tính bảng', 3),
(14, 'Laptop', 3),
(15, 'Máy ảnh, máy quay', 3),
(16, 'Tivi, âm thanh', 3),
(17, 'Thiết bị đeo thông minh', 3),
(18, 'Khác', 3),
(19, 'Thời vụ', 4),
(20, 'Lâu dài', 4),
(21, 'Gà', 5),
(22, 'Chó', 5),
(23, 'Chim', 5),
(24, 'Mèo', 5),
(25, 'Thú cưng khác', 5),
(33, 'Nội thất (Bàn ghế, tủ kệ,...)', 6),
(34, 'Dụng cụ nhà bếp (Bếp, lò, máy xay,...)', 6),
(35, 'Quạt, đèn', 6),
(36, 'Cây cành, đồ trang trí', 6),
(37, 'Khác', 6),
(38, 'Quần áo', 7),
(39, 'Đồng hồ', 7),
(40, 'Giày dép', 7),
(41, 'Túi xách', 7),
(42, 'Nước hoa', 7),
(43, 'Khác', 7),
(44, 'Dụng cụ tập', 8),
(45, 'Dã ngoại', 8),
(46, 'Trò chơi điện tử', 8),
(47, 'Khác', 8),
(48, 'Sách', 9),
(49, 'Nhạc cụ', 9),
(50, 'Dụng cụ học tập', 9),
(51, 'Sưu tầm', 9),
(52, 'Băng đĩa', 9),
(53, 'Khác', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tblchat`
--

CREATE TABLE `tblchat` (
  `id` int(11) NOT NULL,
  `fromuser` int(11) DEFAULT NULL,
  `touser` int(11) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `mediafile` varchar(255) DEFAULT NULL,
  `seen` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `idroom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblchat`
--

INSERT INTO `tblchat` (`id`, `fromuser`, `touser`, `text`, `mediafile`, `seen`, `created_at`, `updated_at`, `idroom`) VALUES
(1, 14, 11, 'liên khúc này bao nhiêu lần không thể đếm đc Đừng ai hỏi', NULL, 0, NULL, NULL, 3),
(2, 10, 14, 'fđffd', NULL, 0, NULL, NULL, 5),
(3, 15, 14, 'nbnnbn', NULL, 0, '2020-09-17 19:24:32', '2020-09-17 19:24:32', 5),
(4, 14, 15, 'dzâe', NULL, 0, '2020-09-18 19:24:32', '2020-09-18 19:24:32', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblevent`
--

CREATE TABLE `tblevent` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblevent`
--

INSERT INTO `tblevent` (`id`, `title`, `content`, `start`, `end`, `status`, `iduser`) VALUES
(1, 'Nhận ngay 100.000đ khi đăng ký và sử dụng dịch vụ của Nowrent', 'cxxxdxd', '2020-09-11 13:27:30', '2020-09-26 13:27:30', 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbleventuser`
--

CREATE TABLE `tbleventuser` (
  `id` int(11) NOT NULL,
  `idevent` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbleventuser`
--

INSERT INTO `tbleventuser` (`id`, `idevent`, `iduser`, `created_at`, `updated_at`) VALUES
(2, 1, 14, '2020-09-10 14:07:14', '2020-09-10 14:07:14'),
(3, 1, 28, '2020-10-25 13:56:23', '2020-10-25 13:56:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotification`
--

CREATE TABLE `tblnotification` (
  `id` int(11) NOT NULL,
  `touser` int(11) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `seen` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnotification`
--

INSERT INTO `tblnotification` (`id`, `touser`, `title`, `content`, `seen`, `created_at`, `updated_at`, `iduser`) VALUES
(1, 10, 'Xin chào mừng bạn đến với nowrent, chúc bạn có một trải nghiệm tuyệt vời', 'Xin chào mừng bạn đến với nowrent, chúc bạn có một trải nghiệm tuyệt vời', 0, '2020-09-15 13:48:33', '2020-09-16 13:48:33', 14),
(2, 10, 'Nhận ngay 100.000đ khi tham gia chương trình trải nghiệm cùng nowrent', 'Nhận ngay 100.000đ khi tham gia chương trình trải nghiệm cùng nowrent', 0, '2020-09-15 13:50:01', '2020-09-15 13:50:01', 14),
(4, 10, 'Chúc mừng bạn đã đăng thành công, bài đăng của bạn đang chờ duyệt', 'Chúc mừng bạn đã đăng thành công, bài đăng của bạn đang chờ duyệt', 0, '2020-09-16 10:11:25', '2020-09-16 10:11:25', 14),
(5, 27, 'Xin chào mừng bạn đến với nowrent, chúc bạn có một trải nghiệm tuyệt vời', 'Xin chào mừng bạn đến với nowrent, chúc bạn có một trải nghiệm tuyệt vời', 1, '2020-09-16 10:16:12', '2020-09-16 10:16:12', 14),
(6, 28, 'Xin chào mừng bạn đến với nowrent, chúc bạn có một trải nghiệm tuyệt vời', 'Xin chào mừng bạn đến với nowrent, chúc bạn có một trải nghiệm tuyệt vời', 1, '2020-09-22 22:49:40', '2020-09-22 22:49:40', 14),
(7, 29, 'Xin chào mừng bạn đến với nowrent, chúc bạn có một trải nghiệm tuyệt vời', 'Xin chào mừng bạn đến với nowrent, chúc bạn có một trải nghiệm tuyệt vời', 1, '2020-10-22 13:54:13', '2020-10-22 13:54:13', 14),
(8, 28, 'Chúc mừng bạn đã đăng thành công, bài đăng của bạn đang chờ duyệt', 'Chúc mừng bạn đã đăng thành công, bài đăng của bạn đang chờ duyệt', 1, '2020-10-25 13:38:21', '2020-10-25 13:38:21', 14),
(9, 28, 'Chúc mừng bạn đã đăng thành công, bài đăng của bạn đang chờ duyệt', 'Chúc mừng bạn đã đăng thành công, bài đăng của bạn đang chờ duyệt', 1, '2020-10-25 13:43:18', '2020-10-25 13:43:18', 14),
(10, 28, 'Chúc mừng bạn đã đăng thành công, bài đăng của bạn đang chờ duyệt', 'Chúc mừng bạn đã đăng thành công, bài đăng của bạn đang chờ duyệt', 0, '2020-10-25 13:45:32', '2020-10-25 13:45:32', 14),
(11, 28, 'Chúc mừng bạn đã đăng thành công, bài đăng của bạn đang chờ duyệt', 'Chúc mừng bạn đã đăng thành công, bài đăng của bạn đang chờ duyệt', 0, '2020-10-25 13:49:16', '2020-10-25 13:49:16', 14),
(12, 28, 'Chúc mừng bạn đã đăng thành công, bài đăng của bạn đang chờ duyệt', 'Chúc mừng bạn đã đăng thành công, bài đăng của bạn đang chờ duyệt', 0, '2020-10-25 13:52:11', '2020-10-25 13:52:11', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `id` int(11) NOT NULL,
  `money` float DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `idpost` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpayment`
--

INSERT INTO `tblpayment` (`id`, `money`, `title`, `note`, `type`, `status`, `created_at`, `updated_at`, `idpost`, `iduser`) VALUES
(4, 10000, 'Bán cho thuê nhà 51m2 Man Thiện gần Khu CNC Q9 sổ hồng', 'Đẩy tin', 0, 0, '2020-09-10 12:43:19', '2020-09-10 12:43:19', 75, 14),
(5, 10000, 'Chính chủ cần bán nhà TT Thủ Dầu Một để xoay vốn', 'Đẩy tin', 0, 0, '2020-09-10 12:44:07', '2020-09-10 12:44:07', 74, 14),
(6, 10000, 'Cần cho thuê xe airblade 150 giá rẻ chạy tốt', 'Đẩy tin', 0, 0, '2020-09-10 12:54:14', '2020-09-10 12:54:14', 78, 14),
(7, 10000, 'Bán cho thuê nhà 51m2 Man Thiện gần Khu CNC Q9 sổ hồng', 'Đẩy tin', 0, 0, '2020-09-10 13:11:06', '2020-09-10 13:11:06', 90, 14),
(8, 10000, 'Cần cho thuê nhà đẹp giá rẻ không cần cọc', 'Đẩy tin', 0, 0, '2020-09-10 13:12:16', '2020-09-10 13:12:16', 77, 14),
(9, 10000, 'Nhận ngay 100.000đ khi đăng ký và sử dụng dịch vụ của Nowrent', 'Nhận thưởng', 1, 0, '2020-09-10 13:48:12', '2020-09-10 13:48:12', NULL, 14),
(10, 100000, 'Nhận ngay 100.000đ khi đăng ký và sử dụng dịch vụ của Nowrent', 'Nhận thưởng', 1, 0, '2020-09-10 13:56:13', '2020-09-10 13:56:13', NULL, 14),
(11, 100000, 'Nhận ngay 100.000đ khi đăng ký và sử dụng dịch vụ của Nowrent', 'Nhận thưởng', 1, 0, '2020-09-10 14:07:14', '2020-09-10 14:07:14', NULL, 14),
(12, 10000, 'Bán mặt tiền Hùng Vương đường 60m giá 2.25 tỷ', 'Đẩy tin', 0, 0, '2020-09-10 14:08:03', '2020-09-10 14:08:03', 80, 14),
(13, 10000, 'Nhà 1 trệt 1 lầu 4 phòng ngủ phú hoà.sân ôtô 7 chỗ', 'Đẩy tin', 0, 0, '2020-10-14 17:07:15', '2020-10-14 17:07:15', 76, 14),
(14, 100000, 'Nhận ngay 100.000đ khi đăng ký và sử dụng dịch vụ của Nowrent', 'Nhận thưởng', 1, 0, '2020-10-25 13:56:23', '2020-10-25 13:56:23', NULL, 28);

-- --------------------------------------------------------

--
-- Table structure for table `tblpost`
--

CREATE TABLE `tblpost` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `categorylv1` int(11) DEFAULT NULL,
  `categorylv2` int(11) DEFAULT NULL,
  `categorylv3` int(11) DEFAULT NULL,
  `categorylv4` int(11) DEFAULT NULL,
  `addresslv1` int(11) DEFAULT NULL,
  `addresslv2` int(11) DEFAULT NULL,
  `addresslv3` varchar(255) DEFAULT NULL,
  `moneylv1` float DEFAULT NULL,
  `moneylv2` float DEFAULT NULL,
  `active` int(11) DEFAULT 0,
  `type` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT 0,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpost`
--

INSERT INTO `tblpost` (`id`, `title`, `content`, `image`, `categorylv1`, `categorylv2`, `categorylv3`, `categorylv4`, `addresslv1`, `addresslv2`, `addresslv3`, `moneylv1`, `moneylv2`, `active`, `type`, `rank`, `updated_at`, `created_at`, `iduser`) VALUES
(21, 'HP 8470 cấu hình cao Gl máy bàn hoặc bán', 'Màn Hình Hugon 24 inch Led Cong Full Viền\r\nBảo hành 6th , 1 đổi 1 lỗi sx trong tháng đầu )\r\nĐộ phân giải Full HD (1920x1080)\r\nTỉ lệ 16:9\r\nĐộ sáng 250cd/m2\r\nĐộ tương phản 2000000:1\r\nTần số quét 75Hz\r\nCổng kết nối HDMI + VGA\r\nThời gian đáp ứng 2ms\r\nGóc nhìn 178°/178°\r\nĐiện năng tiêu thụ 35W\r\nHàng có sẵn mẫu khách ghé showroom xem hàng nhé', '1979125434.jpg,1995177521.jpg,1282323007.jpg,bannerads.jpg', 3, 12, NULL, NULL, 3, 26, 'Số 20 Lục ngạn 2', 3300000, 3300000, 1, 0, 0, '2020-08-28 13:51:00', '2020-08-13 15:33:18', 14),
(36, 'Phòng mặt tiền 60 Lâm Văn Bền, tiện ở và KD online', 'Cho thuê phòng mặt tiền 60 Nguyễn lương bằng\r\nDiện tích: 30m2 có gác rộng\r\nMáy lạnh inverter\r\nTiện ở và kinh doanh online\r\nSát bên chung cư Mỹ Phú, ngay trường học Nguyễn Hữu Thọ\r\nGiá thuê: 3 triệu có TL\r\nLiên hệ chính chủ, miễn trung gian', '1344338379.jpg,661345631.jpg,376173673.jpg,bannerads.jpg', 1, 3, NULL, NULL, 15, 133, 'Số 20 Nguyễn lương bằng', 3000000, 3000000, 0, 0, 0, '2020-08-28 13:37:12', '2020-08-19 15:46:27', 22),
(45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 0, NULL, NULL, 11),
(46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 0, '2020-08-31 12:57:56', '2020-08-31 12:57:56', 26),
(62, '[GẤP] SANG LẠI QUÁN BÚN ĐẬU-MỸ PHƯỚC, BẾN CÁT, BD', 'Do có việc gấp ở quê nên cần sang lại quán Bún Đậu Mắm Tôm.\r\n- Diện tích: 60m2 (4x15)\r\n- Mặt bằng có: gác lửng ở được 4-5 người (Gia đình ở thoải mái), nhà vệ sinh riêng, bếp, khu rửa ráy, khu buôn bán, hiên để xe (>20 chiếc), mặt tiền đường rộng 30m.\r\n- Vị trí: Ngay khu dân cư, khu công nghiệp, bệnh viện, trường học, công viên, chợ, siêu thị...\r\n- Nội thất: Bảng hiệu, đèn led, bàn ghế, quầy bán, quạt, bàn nấu nướng, ly, chén, bếp ga, bếp lò, tủ đông, máy xay thịt... (tặng các loại siro, nước sấu, nước mơ cho các anh chị muốn kinh doanh).\r\n- Giá: 38 triệu - Giá trên có thể thương lượng lại.\r\n- NHẬN MẶT BẰNG LÀ KINH DOANH ĐƯỢC NGAY.\r\nCảm ơn các anh chị đã quan tâm!\r\nLiên hệ: Thắng', '803833296.jpg,1404983295.jpg,1633256673.jpg,1838867474.jpg,671960355.jpg,429254526.jpg,bannerads.jpg', 1, 4, NULL, NULL, 2, 16, 'Số 20 Phú Tân 2', 38000000, 38000000, 0, 0, 1, '2020-10-22 06:07:28', '2020-08-12 10:09:32', 14),
(66, 'Bán đất tại Đường Số 7 nối dài Trần Văn Giàu SHR', 'Cần bán đất nền Bình Tân trục chính mặt tiền Đường Số 7 nối dài Trần Văn Giàu - Tỉnh Lộ 10, Phường Tân Tạo, Quận Bình Tân.\r\nDT: 5m x 12m = 60m2 (sổ hồng riêng).\r\nPháp lý: Chính chủ thổ cư 100%.\r\nXây dựng tự do.\r\nLộ giới 16m, cách mặt tiền Trần Văn Giàu chỉ 50m.\r\nHai bên đã xây kín nhà.\r\nVị trí thuận tiện, đường Trần Văn Giàu sắp mở rộng 60m.\r\nKẹt tiền nên bán gấp trong tháng này.\r\nGiá chốt 1 tỷ 800 triệu (không thương lượng vì đã bán thấp hơn thị trường).\r\nLH Phong.\r\nThông tin pháp lý: Sổ hồng riêng.', '1300917515.jpg,1069643413.jpg,356214211.jpg,bannerads.jpg', 1, 2, NULL, NULL, 15, 133, 'Số 20 Lục ngạn 2', 5000000, 5000000, 0, 0, 0, '2020-09-03 14:13:35', '2020-09-03 14:13:35', 10),
(69, '2 Thợ Hồ Tìm Việc Làm Công Hoặc Nhận Sữa Chữa', 'nghĩ dịch lâu quá sợ lụt nghề ae ai cần thợ hồ thì ib mình. cảm ơn now rent duyệt tin.', '277948273.jpg,bannerads.jpg', 4, 19, NULL, NULL, 15, 137, 'Số 20 Phú Tân 2', 350000, 350000, 0, 0, 0, '2020-09-04 13:59:11', '2020-09-04 13:59:11', 10),
(79, 'Apple iPad 2 Wifi 16 GB |Trả Góp Lãi suất Thấp', 'SHOP CÓ BÁN TRẢ GÓP\r\n🌎 Tablet : iPad 2 Wifi 16Gb\r\n💰 16Gb :1.690.000 đ (97%) _______1.890.000 (99%)\r\n☎️Liên lạc với chúng tôi\r\n👉🏾 Địa chỉ :\r\n🏠CN1: Số 97 Lê Đức Thọ - Phường 7 - Gò Vấp - TP.HCM\r\n🏠CN2: Số 55 Nguyễn Thiện Thuật - P2 -Q3 - TP.HCM\r\n\r\n🔥Vio Store cam kết chỉ bán hàng nguyên bản :\r\n👉🏾 Main Zin , Màn zin ,chưa sửa chữa\r\n👉🏾 Không bán hàng sửa main thay màn kém chất lượng\r\n\r\n⛔️Chính sách Bảo Hành :\r\n👉🏾 Bao đổi 1 đổi 1 trong 15 ngày sử dụng\r\n👉🏾 Bảo hành 6 tháng PHẦN CỨNG ( Nhiều nơi đăng bảo hành 12 tháng nhưng chỉ BH phần mềm thôi )\r\n👉🏾 Hỗ trợ phần mềm trọn đời máy', '1723990225.png,1883858857.png,1895787665.png,bannerads.jpg', 3, 16, NULL, NULL, 3, 25, 'Số 20 Lục ngạn 2', 33300, 100000, 0, 0, 0, '2020-09-10 05:29:21', '2020-08-15 18:44:56', 14),
(81, 'Xpander MT 2020 Trả Trước 180tr - Tặng Bảo Hiểm VC', 'Khách nhanh tay liên hệ đặt hàng để trở thành những người đầu tiên sỡ hữu XPANDER MT 2020 tại Việt Nam và nhiều khuyến mãi cực hấp dẫn...\r\n+: Phiên Bản Nâng cấp mới nhưng giá cũ.\r\n-: Mâm xe 16 inch được thiết kế mới.\r\n-: Mặt ga lăng mới.\r\n-: Tay nắm cửa được mạ Crom nổi bật bắt mắt.\r\n-: Nội thất màu tối sang trọng.\r\n-: Ghế nỉ đen cao cấp dễ dàng vệ sinh.\r\nHỗ trợ trả góp 80% giá trị xe, lãi suất ưu đãi, thủ tục nhanh gọn\r\nHộ trợ lái thử xe tận nhà khách hàng (tại khu vực Tp. HCM)\r\nQuà tặng đặc biệt cho khách hàng: Bảo hiểm, dán phim, lót sàn, áo trùm xe, thùng đá, bao da, bình chữa cháy.', '157769363.jpg,302736195.jpg,761250332.jpg,bannerads.jpg', 2, 6, NULL, NULL, 3, 26, 'Số 20 Phú Tân 2', 550000000, 550000000, 0, 0, 0, '2020-09-10 05:35:19', '2020-08-13 06:17:53', 17),
(82, 'Oppo A92 xanh dương fullbox giá rẻ', 'Oppo A92 likenew Fullbox\r\nBao test 1 tháng ➖ bảo hành 6 tháng\r\nGiá 4.900.000', '510100778.jpg,877820651.jpg,1857326033.jpg,288097545.jpg,bannerads.jpg', 3, 12, NULL, NULL, 3, 24, 'Số 20 Lục ngạn 2', 3300000, 3300000, 0, 0, 0, '2020-09-10 05:36:28', '2020-08-13 06:10:33', 17),
(83, 'Nhượng lại ốp chính hãng Iphone 11 Pro Max giá cực rẻ', 'Do mình order cho em yêu (11 pro max) nhưng lên không đẹp nên để lại cho bạn nào cần.\r\n2 ốp đều like new, chính hãng 100%: chiếc Elent Rally Black mua hnay, chiếc UAG Plyo mua đc 4 hôm.\r\nGiá 500k/ốp, có fix cho ae lấy cả 2.', '776039968.jpg,bannerads.jpg', 1, 1, NULL, NULL, 1, 1, 'Số 20 Phú Tân 2', 3300000, 3300000, 0, 0, 0, '2020-09-10 05:36:42', '2020-08-13 06:35:31', 17),
(84, 'Mặt bằng quận sơn trà đẹp cho thuê giá rẻ', 'Chính chủ cho thuê mặt bằng kinh doanh hoặc làm kho chứa hàng ngay gần góc đường 3/2 với minh phụng. Nhà diện tích góc chéo thông 2 cửa mặt tiền và hẻm lớn. Cửa nhà cách mặt tiền 3/2 có 20 bước chân, ngang 5.5m x 20m. Để xe thuận tiện, có tolet cầu thang bếp, mới sạch đẹp, điện nước chính đồng hồ riêng, có sẵn wifi miễn phí 100mb cho sử dụng.', '316407312.jpg,1850970058.jpg,1363873697.jpg,bannerads.jpg', 1, 4, NULL, NULL, 15, 136, 'Số 20 Sơn trà 2', 6000000, 2000000, 0, 0, 0, '2020-09-10 05:38:13', '2020-08-19 15:43:33', 22),
(85, 'Cần cho thuê nhà nguyên căn 3 tầng đẹp giá rẻ', 'Cần cho thuê nhà ở nguyên căn\r\n- Nhà 3 tầng\r\n- Diện tích 300 m2\r\n- Đầy đủ tiện nghi\r\n- Giá 3 triệu 1 tháng. Cọc 3 tháng', '268654858.jpeg,1051403550.jpg,1795832501.jpg,bannerads.jpg', 1, 1, NULL, NULL, 4, 34, 'Tổ x phường y quận z', 3000000, 3000000, 0, 0, 0, '2020-09-10 05:38:55', '2020-08-15 15:29:24', 21),
(86, 'Vila mini giá rẻ phường hòa khánh bắc, sân đậu 2 ô tô', 'căn biệt thự mini giữa trung tâm\r\nDiện tích 6x 20\r\nVị trí 1/ hẻm 288 huỳnh văn luỹ, phú lợi thủ dầu một\r\nThiết kế hiện đại, xây mới 100%\r\n1 trệt, 1 lầu, 3 phòng ngủ, 3 tolet\r\nSân có thể đậu dc 2 ô tô\r\nGiá cam kết rẻ khu vực, đánh bật mọi đối thủ trong tầm giá 3-4\r\nHỗ trợ ngân hàng tối đa', '467788439.jpg,1130476536.jpg,735524622.jpg,2019722749.jpg,bannerads.jpg', 1, 1, NULL, NULL, 15, 133, 'Số 20 Hòa khánh bắc 2', 10000000, 10000000, 0, 0, 0, '2020-09-10 05:39:38', '2020-08-19 15:10:38', 22),
(89, 'Chính chủ cho thuê nhà Hùng Vương trệt 3L 8x25', 'Chính chủ cho thuê nhà nguyên căn Đường Hùng Vương \r\nKết cấu: trệt 3 lầu\r\nDiện tích: 8x25\r\ngiá cho thuê: 160tr/th\r\nPhù hợp kinh doanh đa ngành nghề\r\nLiên hệ Quỳnh Chi để xem nhà\r\nNhà thật - thông tin chính xác 100%', '351342441.jpg,1966023658.jpg,bannerads.jpg', 1, 3, NULL, NULL, 15, 134, 'Số 20 Hùng vương 2', 5000000, 5000000, 0, 0, 0, '2020-09-10 05:41:59', '2020-08-19 15:50:39', 22),
(91, 'Chính chủ cần bán nhà TT Thủ Dầu Một để xoay vốn', 'Chính chủ cần bán nhà thô hồi vốn\r\n- Diện tích đất: 70m2, thổ cư 100%\r\n- Xây dựng hết đất\r\n- Nhà 1 trệt 2 lầu gồm 4 phòng ngủ, 4 toilet, 1 phòng khách, bếp, phòng thờ và ban công\r\n- Sổ riêng\r\n- Nhà mới xây, ngay trung tâm Thủ Dầu, dân cư đông, kinh doanh ổn\r\n- Đường oto vào tận nhà\r\n- Bán nhanh không kì kèo tặng thêm cho khách một số nội thất', '499316730.jpg,600848662.jpg,223108313.jpg,1174689392.jpg,bannerads.jpg', 1, 1, NULL, NULL, 15, 138, 'Số 20 Châu Đức 2', 3300000, 3300000, 0, 0, 0, '2020-10-22 06:07:26', '2020-09-03 14:11:47', 14),
(92, 'Cần cho thuê xe airblade 150 giá rẻ chạy tốt', 'Cần cho thuê xe máy hiệu airblade 150', '1799749070.jpg,1750328625.jpg,1094997436.jpg,bannerads.jpg', 2, 7, NULL, NULL, 15, 134, 'Số 5 Trần cao vân', 1000000, 100000, 0, 0, 0, '2020-10-22 06:07:24', '2020-08-16 14:57:19', 14),
(93, 'Bán cho thuê nhà 51m2 Man Thiện gần Khu CNC Q9 sổ hồng', 'Bán gấp nhà rộng 51m2 đường Man Thiện. Tăng nhớn Phú A Quận 9\r\nNhà gần Khu CNC tiện đi lại, ra trung tâm Thủ Đức Q9 rất gần. Phù hợp để ở hoặc cho thuê đều được\r\nNhà thiết kế 1 trệt 1 lầu gồm 2 pn 2toilet\r\nNhà nằm trong KDC an ninh, đông đúc....\r\nSổ hồng chính chủ\r\nLiên hệ để xem nhà trực tiếp', '1631442428.jpg,1657465224.jpg,1327984466.jpg,bannerads.jpg', 1, 1, NULL, NULL, 15, 135, 'Số 20 Hải châu 2', 5000000, 2500000, 0, 0, 0, '2020-09-10 06:11:06', '2020-08-19 14:55:32', 14),
(94, 'Cần cho thuê nhà đẹp giá rẻ không cần cọc', 'Do mình order cho em yêu (11 pro max) nhưng lên không đẹp nên để lại cho bạn nào cần.\r\n2 ốp đều like new, chính hãng 100%: chiếc Elent Rally Black mua hnay, chiếc UAG Plyo mua đc 4 hôm.\r\nGiá 500k/ốp, có fix cho ae lấy cả 2.', '1270374460.jpeg,2082158225.jpg,966292742.jpg,bannerads.jpg', 1, 1, NULL, NULL, 2, 13, 'Số 5 abc', 3000000, 3000000, 0, 0, 1, '2020-10-22 06:07:23', '2020-08-12 10:19:55', 14),
(95, 'Bán mặt tiền Hùng Vương đường 60m giá 2.25 tỷ', 'Cần bán nền mặt tiền đường Hùng Vương 60 m2 thuộc dự án Làng Sen Viêt Nam, diện tích 85 m2 ( vuông vứt ngày 5 dài 17), giá: 2.25 tỷ, hạ tầng đường đã cán nhựa có thể về xây nhà ở liền. LH: để hỗ trợ thông tin chi tiết', '67043574.jpg,1373279075.jpg,441635420.jpg,bannerads.jpg', 1, 2, NULL, NULL, 1, 8, 'Số 20 Tri Tôn 2', 225000000, 225000000, 0, 0, 1, '2020-10-22 06:07:21', '2020-08-12 09:21:04', 14),
(97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 0, '2020-09-16 10:16:12', '2020-09-16 10:16:12', 27),
(98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 0, '2020-09-22 22:49:40', '2020-09-22 22:49:40', 28),
(99, 'Nhà 1 trệt 1 lầu 4 phòng ngủ phú hoà.sân ôtô 7 chỗ', 'a trai về quê bán lại căn nhà mới xây. 1 trệt 1 lầu kiên cố. nhà xây ở nên tường đôi chắc chắn\r\ndt 5x19. Tho cu 60m.\r\nthiết kế. 1 trệt 1 lầu. 4 phòng ngủ. 3wc. phòng khách lớn. và phòng bếp lớn. sân ôtô 7 chỗ\r\nvitri Trung Tâm. bán kính 1km gồm trường tiểu học Phú hoà 1.2.3.chợ phú hoà chợ hàng bông. uỷ ban phường phú hoà...\r\nĐi đến trung tâm thương mại becamex. siêu thị bic C. Trung tâm chợ bình dương chỉ 4 phút thôi ak\r\nnhà Fullhouse nội thất Cho a Chi có nhu cầu vào ở luôn AK\r\nlh cường để xem Nhà.nhà tuyệt đẹp', '539815695.jpg,935760473.jpg,994502874.jpg,1264869219.jpg,101385644.jpg,bannerads.jpg', 1, 1, NULL, NULL, 15, 133, 'Số 20 Liên chiểu 2', 15000000, 5000000, 0, 0, 0, '2020-10-14 10:07:15', '2020-08-19 14:53:37', 14),
(101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 0, '2020-10-22 13:54:13', '2020-10-22 13:54:13', 29),
(102, 'Cho thue nha 2 tầng mặt tiền Mai Am full nội thất', '❤️❤️Cần cho thuê nhà mặt tiền Mai Am - nhà đẹp phong cách hiện đại nhìn hình là thích ngay - đoạn gần đường 3 tháng 2 gần chợ Đống Đa\r\n❤️❤️Diện tích sử dụng : 300m (ngang 10m)\r\n❤️❤️Nhà đẹp gồm : 3pn rộng - 2wc - phòng khách - bếp - sân phơi - phòng thờ - sân để xe...full nội thất cao cấp chỉ việc xách valy vào ở\r\n☄️☄️Giá thuê : 15tr/tháng\r\n☎️☎️Alo : ko bảy ko năm - một bốn ba - bảy tám chín', '1447063177.jpg,1416939597.jpg,1322920162.jpg,1215474373.jpg,1454452685.jpg,719946489.jpg,bannerads.jpg', 1, 1, NULL, NULL, 15, 135, 'Đường Mai Am', 30000000, 15000000, 0, 0, 0, '2020-10-25 13:38:21', '2020-10-25 13:38:21', 28),
(103, 'Cho thuê biệt thự + xưởng giá rẻ cho thue gấp', '-Cho thuê nhà biệt thự và kho\r\n-diên tích 600m2 (hình ảnh thât)\r\n-gồm 1 trệt 3 lầu 8 phòng + kho 200m2+ 6 sảnh\r\n- nhà biệt thự rất đẹp . Có phòng hộp . Thiết kế rất đẹp .đầy đủ nội thất vừa làm văn phòng vừa ở vừa làm xưởng\r\n_ tiện làm văn phòng .và kho chứa hàng , có thể làm trường mầm non quốc tế. Để lại toàn bộ nội thất cao cấp bàn , giường tủ , nệm\r\n-vị trí bình tân . Gần trạm thu phí , xe công , xe tải ra vào thoải mái\r\n-giá cho thuê 55 tr /1 th', '1768077562.jpg,1128314591.jpg,1311198201.jpg,1968416732.jpg,2138646160.jpg,bannerads.jpg', 1, 1, NULL, NULL, 15, 133, '123 Nguyễn Lương Bằng', 20000000, 10000000, 0, 0, 0, '2020-10-25 13:43:18', '2020-10-25 13:43:18', 28),
(104, 'Cho thue nhà 3 tấm 5x15 chiến lược giá 8tr/ tháng', 'Cần cho thuê nhà 68/15/21 chiến lược\r\nDT 5x15 ket cấu 2 lầu 3pn,3 wc\r\ngiá 8tr/thang', '135567148.jpg,541294215.jpg,60382978.jpg,1726105575.jpg,bannerads.jpg', 1, 1, NULL, NULL, 7, 58, '20 Bến tre 3', 8000000, 8000000, 0, 0, 0, '2020-10-25 13:45:32', '2020-10-25 13:45:32', 28),
(105, 'Cho thuê Xe đầu kéo Shacman X3000 (460HP) theo tháng', '* X3000 được đánh giá vượt bật với động cơ Weichai + Hộp Số Fast + Cầu Man\r\n* Kích thước tổng thể: 6960 x 2500 x 4000 (mm)\r\n* Tải trọng: 38,070 kg\r\n* Tự trọng: 10,800 kg\r\n* Động cơ: WP12.460E50 (460HP) EuroV.\r\n* Hộp số: FAST-12JSD, 12 số 2 tầng có đồng tốc, có trợ lực hơi\r\n* Trục (Dí +Cầu): Trước: MAN( 9.5T) – Sau: MAN (32T)\r\n* Cầu Visai, tỷ số cầu 4.3, Balance cánh bướm khối liền\r\n* Khung gầm (chassi): (850) x 300 (8+5) mm\r\n* Hệ thống lái: ZF - BOSCH\r\n* Hệ thống nhíp: Trước 10 lá – Sau 12 lá- 4\r\n* Đĩa rút dưới thẳng đứng chịu tải cao không bị nhận\r\n* Thùng dầu/ Bầu hơi thắng: Nhôm hợp kim 600Lít/ Inox\r\n* Hệ thống điện: BOSCH, hoạt đổng 2 chế độ 12/24V\r\n* Cabin: X3000 full Option, 2 giường\r\n* Cửa sổ trời, đa năng chức năng\r\n* Màn hình hiển thị đa phương tiện, tầm nhìn lái bao quát\r\n* Dễ quan sát hạn chế tối đa điểm mù\r\n* Vỏ xe: 12.00R20/ 11 lốp\r\n* Bộ e gió: Khô\r\n* Tốc độ tối đa (km/h): 116\r\n* Mức tiêu hao dầu theo TCNSX: 20.7 lít/ 100 km', '200041458.jpg,665212363.jpg,2049424782.jpg,261926926.jpg,2140683246.jpg,bannerads.jpg', 2, 8, NULL, NULL, 15, 137, '16 Ngũ Hành Sơn', 20000000, 20000000, 0, 0, 0, '2020-10-25 13:49:16', '2020-10-25 13:49:16', 28),
(106, 'Thaco Foton 3,5tấn đời 2008 thùng Lửng xe dài5,2m cần cho thuê', 'Thacô Foton 3,5tấn đời 2008 xe thùng lững , xe còn zin ,,,6vỏ mới , thùng dài 5,3m ,, máy ngon , đăng kiểm va bảo hiểm còn dài', '1313730022.jpg,1174508430.jpg,1683041389.jpg,953144975.jpg,574601672.jpg,958162475.jpg,bannerads.jpg', 2, 8, NULL, NULL, 24, 231, '16 Ba Đình', 5000000, 5000000, 0, 0, 0, '2020-10-25 13:52:11', '2020-10-25 13:52:11', 28);

-- --------------------------------------------------------

--
-- Table structure for table `tblroom`
--

CREATE TABLE `tblroom` (
  `id` int(11) NOT NULL,
  `fromuser` int(11) NOT NULL,
  `touser` int(11) NOT NULL,
  `textfirst` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblroom`
--

INSERT INTO `tblroom` (`id`, `fromuser`, `touser`, `textfirst`, `created_at`, `updated_at`) VALUES
(1, 14, 12, 'hello', NULL, NULL),
(3, 10, 14, 'Đừng ai hỏi tui nghe liên khúc này bao nhiêu lần không thể đếm đc Đừng ai hỏi', NULL, NULL),
(4, 20, 12, 'Đừng ai hỏi tui nghe ', NULL, NULL),
(5, 15, 14, 'liên khúc này bao nhiêu lần không thể đếm đc Đừng ai hỏi', '2020-09-18 18:10:55', '2020-09-18 18:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblsavepost`
--

CREATE TABLE `tblsavepost` (
  `id` int(11) NOT NULL,
  `iduser` int(11) DEFAULT NULL,
  `idpost` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsavepost`
--

INSERT INTO `tblsavepost` (`id`, `iduser`, `idpost`, `updated_at`, `created_at`) VALUES
(196, 10, 94, '2020-09-16 09:57:52', '2020-09-16 09:57:52'),
(200, 27, 94, '2020-09-16 10:17:12', '2020-09-16 10:17:12'),
(211, 14, 91, '2020-10-14 17:06:53', '2020-10-14 17:06:53'),
(212, 14, 84, '2020-10-22 12:49:16', '2020-10-22 12:49:16'),
(213, 14, 93, '2020-10-22 13:53:18', '2020-10-22 13:53:18'),
(214, 14, 86, '2020-10-22 13:53:22', '2020-10-22 13:53:22'),
(215, 14, 66, '2020-10-22 13:53:24', '2020-10-22 13:53:24'),
(216, 29, 95, '2020-10-22 13:54:24', '2020-10-22 13:54:24'),
(217, 29, 92, '2020-10-22 13:54:30', '2020-10-22 13:54:30'),
(218, 28, 102, '2020-10-25 13:46:07', '2020-10-25 13:46:07'),
(219, 28, 103, '2020-10-25 13:46:11', '2020-10-25 13:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblsearchkey`
--

CREATE TABLE `tblsearchkey` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `idcategorylv2` int(11) NOT NULL DEFAULT 12
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsearchkey`
--

INSERT INTO `tblsearchkey` (`id`, `content`, `idcategorylv2`) VALUES
(1, 'iphone', 12),
(6, 'apple', 12),
(8, 'iphone 3', 12),
(9, 'iphone 3g', 12),
(10, 'iphone 4', 12),
(11, 'iphone 4s', 12),
(12, 'iphone 5', 12),
(13, 'iphone 5s', 12),
(14, 'iphone 6', 12),
(15, 'iphone 6 plus', 12),
(16, 'iphone 6s', 12),
(17, 'iphone 6s plus', 12),
(18, 'iphone 7', 12),
(19, 'iphone 7 plus', 12),
(20, 'iphone 8', 12),
(21, 'iphone 8 plus', 12),
(22, 'iphone x', 12),
(23, 'iphone xs', 12),
(24, 'iphone xs max', 12),
(25, 'iphone xr', 12),
(26, 'iphone se', 12),
(27, 'iphone se 2020', 12),
(28, 'iphone xs max', 12),
(29, 'iphone 11', 12),
(30, 'iphone 11 pro max', 12),
(31, 'oppo', 12),
(32, 'OPPO Find X2 Pro', 12),
(33, 'OPPO Find X2', 12),
(34, 'OPPO Reno4 Pro', 12),
(35, 'OPPO Reno4', 12),
(36, 'OPPO Reno3 Pro', 12),
(37, 'OPPO Reno3', 12),
(38, 'OPPO Reno2', 12),
(39, 'OPPO Reno2 F', 12),
(40, 'OPPO A53', 12),
(41, 'OPPO A92', 12),
(42, 'OPPO A52', 12),
(43, 'OPPO A12', 12),
(44, 'OPPO A91', 12),
(45, 'OPPO A9', 12),
(46, 'OPPO A5', 12),
(47, 'OPPO A5S', 12),
(48, 'OPPO A3S', 12),
(49, 'OPPO A31', 12),
(50, 'OPPO A1K', 12),
(51, 'OPPO A12e', 12),
(52, 'Samsung', 12),
(53, 'Samsung Galaxy Note 20 5G', 12),
(54, 'Samsung Galaxy Note 20 Ultra', 12),
(55, 'Samsung Galaxy Note 20 Ultra 5G', 12),
(56, 'Samsung Galaxy Z Fold 2', 12),
(57, 'Samsung Galaxy Flip 5G', 12),
(58, 'Samsung Galaxy Tab S7', 12),
(59, 'Samsung Galaxy Tab S7+', 12),
(60, 'Samsung Galaxy S20', 12),
(61, 'Samsung Galaxy S20 5G', 12),
(62, 'Samsung Galaxy S20+', 12),
(63, 'Samsung Galaxy S20+ 5G', 12),
(64, 'Samsung Galaxy S20 Ultra', 12),
(65, 'Samsung Galaxy S20 Ultra 5G', 12),
(66, 'Samsung Galaxy Z Flip', 12),
(67, 'Samsung Galaxy Note 10 Lite', 12),
(68, 'Samsung Galaxy S10 Lite', 12),
(69, 'Samsung Galaxy Tab S6 5G', 12),
(70, 'Samsung Samsung Galaxy Note 10+', 12),
(71, 'Samsung Galaxy Note 10+ 5G', 12),
(72, 'Samsung Galaxy Note 10', 12),
(73, 'Samsung Galaxy Note 10 5G', 12),
(74, 'Samsung Galaxy Fold', 12),
(75, 'Samsung Galaxy Fold 5G', 12),
(76, 'Samsung Galaxy S10 5G', 12),
(77, 'Samsung Galaxy S10+', 12),
(78, 'Samsung Galaxy S10', 12),
(79, 'Samsung Galaxy S10e', 12),
(80, 'Samsung Galaxy A71 5G', 12),
(81, 'Samsung Galaxy A71', 12),
(82, 'Samsung Galaxy A51 5G', 12),
(83, 'Samsung Galaxy A51', 12),
(84, 'Samsung Galaxy A90 5G', 12),
(85, 'Samsung Galaxy Note 20', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `fullname` varchar(255) DEFAULT 'Người dùng',
  `birthday` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 0,
  `avatar` varchar(255) NOT NULL DEFAULT 'avt_default.svg',
  `address` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `passport` varchar(255) NOT NULL DEFAULT 'passport.jpg',
  `memberimage` varchar(255) NOT NULL DEFAULT 'memberimage.jpg',
  `balance` float DEFAULT 0,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `phone`, `fullname`, `birthday`, `email`, `password`, `level`, `active`, `avatar`, `address`, `category`, `passport`, `memberimage`, `balance`, `updated_at`, `created_at`) VALUES
(10, '0120883729', 'Người dùng', NULL, 'suunhisuunhisuunhisuunhi@gmail.com', '$2y$10$K0HIL2jBCVNCYFuN7fsbauR2guPe5.AzgNKYpltSuCnGp929qNxzO', 0, 0, 'avt_default.svg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 0, '2020-08-10 14:30:23', '2020-08-10 14:30:23'),
(11, '0120883728', 'Người dùng', NULL, 'suunhisuunhisuunhisuunhi@gmail.com', '$2y$10$SB2qDETrgV1u2VQ93PmTZud.P5OHZBZ0a.ltwhRFgD5/vjSkg.kEG', 0, 0, 'avt_default.svg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 100000, '2020-08-12 05:07:00', '2020-08-12 05:07:00'),
(12, '0799438990', 'Người dùng', NULL, NULL, '$2y$10$d6H9HyJ9WhPM36q1K/rMj.8j9BIoIrtB65LESjDWnKbt0Ka1aKCXm', 0, 0, 'avt_default.svg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 0, '2020-08-12 05:13:52', '2020-08-12 05:13:52'),
(13, '0120883725', 'Người dùng', NULL, NULL, '$2y$10$eBMQq/a0ZOUx//Nga.CKkOsH6mUYTEyKE8qzc1DHnIWR.hjLW7AEO', 0, 0, 'avt_default.svg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 0, '2020-08-12 05:16:54', '2020-08-12 05:16:54'),
(14, '0905663828', 'Admin', NULL, 'fhhh@gmail.com', '$2y$10$00YGVkehoikEuC5vqvGgw.hABAL/3XCEgo/PiEU5BVyzf22pM4DaK', 5, 0, '1814392699.jpg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 90000, '2020-10-14 10:07:15', '2020-08-12 05:19:41'),
(15, '0905663826', 'Người dùng', NULL, NULL, '$2y$10$vjNVpqT0Aj6txnoTde69U.J7TeUntTHB3P4NPyRISueWZ0D3HzdvG', 0, 0, 'avt_default.svg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 0, '2020-08-12 05:20:45', '2020-08-12 05:20:45'),
(16, '0905663822', 'Người dùng', NULL, NULL, '$2y$10$mK44g84rR7j6KhAW/6Ghi./DVmI2wDlIttPJks/NshAoB30cNz4VK', 0, 0, 'avt_default.svg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 0, '2020-08-12 05:24:19', '2020-08-12 05:24:19'),
(17, '0122250136', 'Người dùng', NULL, NULL, '$2y$10$cUyodx6DrA5t5tFnjgwHiOO8UOZR3rfM.gFwDco542UP/kBnMCYta', 0, 0, 'avt_default.svg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 22000, '2020-08-12 09:57:13', '2020-08-12 09:57:13'),
(18, '0123456789', 'Người dùng', NULL, NULL, '$2y$10$4E2dIfh8iF.HB8ML1LSCi.zwJzmMWcjecu99yAwmbspcyfUHF/fF.', 0, 0, 'avt_default.svg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 0, '2020-08-12 10:13:56', '2020-08-12 10:13:56'),
(19, '0905663827', 'Người dùng', NULL, NULL, '$2y$10$p8EuWV1RtR7KoHfwH3K6Geu2on1uNn8eHz8PYRZEX6wEFiQBQ6Dji', 0, 0, '1557001935.jpg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 0, '2020-08-14 13:41:08', '2020-08-14 12:38:35'),
(20, '0799438995', 'Người dùng', NULL, NULL, '$2y$10$gl6.jvK5o4OCQpAZ3.jJneXo7gfjx2.D/sX5TPY9.P5ZNKaLbdsq.', 0, 0, 'avt_default.svg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 0, '2020-08-14 14:50:51', '2020-08-14 14:50:51'),
(21, '0123456781', 'Người dùng', NULL, NULL, '$2y$10$r42wWQ2cq58WF/f/ycAhD.ja4AE./bhe0ro8TEpz5QBBqmfzZzjEK', 0, 0, 'avt_default.svg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 0, '2020-08-15 08:24:58', '2020-08-15 08:24:58'),
(22, '0120883721', 'Người dùng', NULL, NULL, '$2y$10$YzI8gDZfH8QpEndffVvVBeYB3KOmKM66pRXnuLQOzTUleQftsGsJm', 0, 0, 'avt_default.svg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 0, '2020-08-19 08:09:20', '2020-08-19 08:09:20'),
(26, '9999999998', 'Người dùng', NULL, NULL, '$2y$10$8qBDX4DOt8BECNwLwGfjh.wcTkNP/rP2MEI/S0dzbcmMziSIx15X.', 0, 0, 'avt_default.svg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 0, '2020-08-31 05:57:56', '2020-08-31 05:57:56'),
(27, '0123456780', 'Người dùng', NULL, NULL, '$2y$10$nkgfZC9.s434a4MJ0BokouqDDDSn6lXmGsP4.Ox5kM9nPUwesBOvy', 0, 0, 'avt_default.svg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 0, '2020-09-16 03:16:12', '2020-09-16 03:16:12'),
(28, '0122318820', 'Người dùng', NULL, NULL, '$2y$10$60mMAjvwtdTbKmhdKnA1Ge415iwJiFoIoroJkZKsuNt1Bd5pD.n32', 0, 0, 'avt_default.svg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 100000, '2020-10-25 06:56:23', '2020-09-22 15:49:39'),
(29, '0122318821', 'Người dùng', NULL, NULL, '$2y$10$rBV49Ouzq9B6WSiZGLjpNOVJq2Y/kSn7R0nHpV32ygIRtpnava6u2', 0, 0, '1303823593.jpeg', NULL, NULL, 'passport.jpg', 'memberimage.jpg', 0, '2020-10-22 06:55:25', '2020-10-22 06:54:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladdresslv1`
--
ALTER TABLE `tbladdresslv1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladdresslv2`
--
ALTER TABLE `tbladdresslv2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategorylv1`
--
ALTER TABLE `tblcategorylv1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategorylv2`
--
ALTER TABLE `tblcategorylv2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblchat`
--
ALTER TABLE `tblchat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblevent`
--
ALTER TABLE `tblevent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbleventuser`
--
ALTER TABLE `tbleventuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotification`
--
ALTER TABLE `tblnotification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpost`
--
ALTER TABLE `tblpost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblroom`
--
ALTER TABLE `tblroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsavepost`
--
ALTER TABLE `tblsavepost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsearchkey`
--
ALTER TABLE `tblsearchkey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladdresslv1`
--
ALTER TABLE `tbladdresslv1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbladdresslv2`
--
ALTER TABLE `tbladdresslv2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=698;

--
-- AUTO_INCREMENT for table `tblcategorylv1`
--
ALTER TABLE `tblcategorylv1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcategorylv2`
--
ALTER TABLE `tblcategorylv2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tblchat`
--
ALTER TABLE `tblchat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblevent`
--
ALTER TABLE `tblevent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbleventuser`
--
ALTER TABLE `tbleventuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblnotification`
--
ALTER TABLE `tblnotification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblpost`
--
ALTER TABLE `tblpost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tblroom`
--
ALTER TABLE `tblroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblsavepost`
--
ALTER TABLE `tblsavepost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `tblsearchkey`
--
ALTER TABLE `tblsearchkey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"posdb\",\"table\":\"tbl_account\"},{\"db\":\"posdb\",\"table\":\"tbl_table\"},{\"db\":\"posdb\",\"table\":\"tbl_payment\"},{\"db\":\"posdb\",\"table\":\"tbl_order\"},{\"db\":\"posdb\",\"table\":\"tbl_product\"},{\"db\":\"posdb\",\"table\":\"tbl_voucher\"},{\"db\":\"posdb\",\"table\":\"tbl_discount\"},{\"db\":\"posdb\",\"table\":\"tbl_fee\"},{\"db\":\"storydb\",\"table\":\"tbl_rental\"},{\"db\":\"storydb\",\"table\":\"tbl_book\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'shopping', 'posts', '{\"sorted_col\":\"`posts`.`calories` ASC\"}', '2020-12-12 14:23:38');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-03-05 02:12:35', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `posdb`
--
CREATE DATABASE IF NOT EXISTS `posdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `posdb`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account`
--

CREATE TABLE `tbl_account` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `namedisplay` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_account`
--

INSERT INTO `tbl_account` (`id`, `username`, `namedisplay`, `password`) VALUES
(1, 'hohuuvinh', 'Ho Huu Vinh', '202cb962ac59075b964b07152d234b70');

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
(309, 3, 9, 1, NULL),
(310, 4, 9, 1, NULL),
(311, 2, 9, 1, NULL),
(323, 12, 7, 1, NULL),
(324, 5, 7, 1, NULL),
(325, 2, 7, 1, NULL),
(326, 1, 7, 2, NULL),
(333, 12, 6, 1, NULL),
(334, 1, 6, 1, NULL),
(335, 5, 6, 1, NULL),
(336, 2, 6, 1, NULL),
(337, 12, 1, 1, NULL),
(338, 5, 1, 1, NULL),
(339, 2, 1, 2, NULL),
(340, 12, 2, 1, NULL),
(341, 5, 2, 2, NULL),
(347, 2, 13, 1, NULL),
(348, 1, 13, 1, NULL),
(349, 12, 3, 1, NULL),
(350, 5, 3, 1, NULL),
(351, 2, 3, 2, NULL),
(352, 12, 12, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `idadmin` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `content`, `idadmin`, `created_at`) VALUES
(51, '\n					<thead>\n						<tr>\n							<th scope=\"col\">#</th>\n							<th scope=\"col\">Name</th>\n							<th scope=\"col\">Qty</th>\n							<th scope=\"col\">Price</th>\n						</tr>\n					</thead>\n					<tbody>\n						\n\n					</tbody>\n					<thead>\n						<tr>\n							<th scope=\"col\">Fee</th>\n							<th scope=\"col\">Sale</th>\n							<th scope=\"col\">Voucher</th>\n							<th scope=\"col\">Total</th>\n						</tr>\n					</thead>\n					<tbody>					\n						<tr>\n							<td id=\"fee\">20%</td>\n							<td id=\"sale\">20%</td>\n							<td id=\"voucher\">0</td>\n							<td id=\"total\">488$</td>\n						</tr>\n					</tbody>\n				', 1, '2021-03-04 14:12:14');

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
  `type` int(11) DEFAULT 1,
  `active` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `price`, `image`, `quanlity`, `type`, `active`, `created_at`) VALUES
(1, 'King Crab', 29, '1.jpg', NULL, 1, 1, '2021-02-12 11:29:38'),
(2, 'Hot Dot', 10, '2.jpg', NULL, 1, 1, '2021-02-27 11:30:04'),
(5, 'Jack Daniel\'s No.7 Whiskey', 25, '4.jpg', NULL, 2, 1, '2021-02-27 16:36:14'),
(12, 'khghggh', 444, '035116am8e7f97e28c7a8e92e52f42a3e77b885a.jpg', NULL, 1, 1, '2021-03-03 09:51:16');

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
(1, 1, 1, 4, 1, '2021-02-27 17:01:29'),
(2, 2, 1, 4, 3, '2021-02-27 17:01:29'),
(3, 3, 1, 4, 3, '2021-02-19 17:01:56'),
(4, 4, 1, 4, 1, '0000-00-00 00:00:00'),
(5, 5, 1, 4, 1, '0000-00-00 00:00:00'),
(6, 6, 1, 4, 1, '0000-00-00 00:00:00'),
(7, 7, 1, 4, 1, '0000-00-00 00:00:00'),
(8, 8, 1, 4, 1, '0000-00-00 00:00:00'),
(9, 9, 1, 4, 3, '0000-00-00 00:00:00'),
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
-- Indexes for table `tbl_account`
--
ALTER TABLE `tbl_account`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
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
-- AUTO_INCREMENT for table `tbl_account`
--
ALTER TABLE `tbl_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
--
-- Database: `shoppet`
--
CREATE DATABASE IF NOT EXISTS `shoppet` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shoppet`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fee`
--

CREATE TABLE `tbl_fee` (
  `id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_fee`
--

INSERT INTO `tbl_fee` (`id`, `name`, `price`) VALUES
(1, 'fee', 5),
(2, 'delivery', 1),
(3, 'discount', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `method` int(11) DEFAULT NULL,
  `infocart` text DEFAULT NULL,
  `total` float DEFAULT NULL,
  `active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `name`, `phone`, `address`, `note`, `method`, `infocart`, `total`, `active`) VALUES
(4, '0', 799438999, '0', '32332', 2, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/3.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">150$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">300$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/1.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">200$</div>			</div>			</div>', 500, 1),
(5, 'fd df', 799438999, 'gffg', '3443', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/071808am828486009d170c09872292876d26901d.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">1$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/3.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">150$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">300$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/1.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">200$</div>			</div>			</div>', 20, 1),
(6, 'fd df', 799438999, 'gffg', 'yt', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/1.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">200$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">300$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/3.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">150$</div>			</div>			</div>', 618.5, 1),
(7, 'fd df', 799438999, 'gffg', 'ok', 1, '<div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/1.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">200$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/090941am2cd43b_393a4609550a4aa8a3dc4c01e44d8948_mv2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">3434$</div>			</div>			</div><div class=\"mb-2\" style=\"width: 100%;height: 80px;display: flex;\">			<div style=\"width: 80px;height: 80px;\">			<img src=\"../public/images/product/091058am2cd43b_816aedd775f249dd9b406405978343b2_mv2.png\" width=\"100%\" height=\"100%\" style=\"object-fit: contain\">			</div>			<div class=\"pl-1\" style=\"width: calc(100% - 80px);height: 80px;\">			<p class=\"font-weight-bold mb-0\">Germanian Little Pug</p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">Little Dogs - </p>			<p class=\"mb-0 float-left\" style=\"font-size: 80%;margin-top: -2px\">&nbspQuanliti: 4</p>					<div class=\"float-right font-weight-bold mb-0 mt-4\" style=\"font-size: 125%\">240$</div>			</div>			</div>', 3681.3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `origin` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `background` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `title`, `type`, `content`, `name`, `age`, `origin`, `weight`, `price`, `image`, `background`, `active`) VALUES
(1, 'Germanian Little Pug', 1, 'French Bulldogs are one of the more popular dog breeds in the United States. Despite their name, they come from England, not France, and have been bred to be companion animals for several hundred years. Frenchies have the characteristic short muzzles of bulldogs, but are smaller than their traditional Bulldog counterparts. They are very playful and affectionate in nature, and love to be near their people. French Bulldogs, which tend to be no larger than 28 lbs. in adulthood, are adaptable to both small and large spaces, and are devoted pets to individuals and families.', 'Germanian Baby', 5, 1, 10, 200, '1.png,2.png,3.png,4.png,5.png,6.png,', 1, 1),
(2, 'Stanley', 2, 'Meet Stanley! This handsome, baby-doll faced prince can\'t wait to venture off to his new home. His coat is absolutely beautiful and perfect to pet all day! He hopes you like getting puppy kisses because he\'s not shy about giving them out! Stanley will arrive healthy with his vaccinations up to date. He is so excited to meet you. He can\'t wait to jump into your arms and shower you with puppy kisses! Don’t miss out!', 'Stanley Baby', 2, 1, 12, 300, '2.png,1.png,3.png,', 2, 1),
(3, 'French Bulldogs', 1, 'Stop right there and look no further! Marly is the one you have been looking for. She will win your heart with her first puppy kiss. Marly is the perfect cuddle buddy. She is always ready to curl up with you and snuggle up right next to you. Marly will be sure to come home to you happy, healthy, and full of kisses just for you. She will be up to date on her vaccinations and pre-spoiled. What more could you ask for? Make this cutie your cuddle buddy, and she will be sure to be that perfect addition that you have searched for.', 'Marly', 1, 1, 5, 150, '3.png,2.png', 3, 1),
(10, 'Germanian Little Pug 2', 1, 'French Bulldogs are one of the more popular dog breeds in the United States. Despite their name, they come from England, not France, and have been bred to be companion animals for several hundred years. Frenchies have the characteristic short muzzles of bulldogs, but are smaller than their traditional Bulldog counterparts. They are very playful and affectionate in nature, and love to be near their people. French Bulldogs, which tend to be no larger than 28 lbs. in adulthood, are adaptable to both small and large spaces, and are devoted pets to individuals and families.', 'Germanian Baby', 4, 1, 5, 3434, '090941am2cd43b_393a4609550a4aa8a3dc4c01e44d8948_mv2.png,090941am2cd43b_816aedd775f249dd9b406405978343b2_mv2.png,090941am2cd43b_681753fc0b7448f0830b9947823e39ea_mv2.png,', 1, 1),
(11, 'Germanian Little Pug 3', 2, 'French Bulldogs are one of the more popular dog breeds in the United States. Despite their name, they come from England, not France, and have been bred to be companion animals for several hundred years. Frenchies have the characteristic short muzzles of bulldogs, but are smaller than their traditional Bulldog counterparts. They are very playful and affectionate in nature, and love to be near their people. French Bulldogs, which tend to be no larger than 28 lbs. in adulthood, are adaptable to both small and large spaces, and are devoted pets to individuals and families.', 'Germanian Little', 3, 3, 6, 240, '091031am2cd43b_d0f2670282bb4c6585a269ef1949140b_mv2.png,091031am2cd43b_fadfa56613b14525b8b0ac16ad415908_mv2.png,091031am3.png,', 2, 1),
(14, 'Germanian Little Pug 6', 2, 'French Bulldogs are one of the more popular dog breeds in the United States. Despite their name, they come from England, not France, and have been bred to be companion animals for several hundred years. Frenchies have the characteristic short muzzles of bulldogs, but are smaller than their traditional Bulldog counterparts. They are very playful and affectionate in nature, and love to be near their people. French Bulldogs, which tend to be no larger than 28 lbs. in adulthood, are adaptable to both small and large spaces, and are devoted pets to individuals and families.', 'Germanian Little', 3, 3, 6, 240, '091218am2cd43b_ad23f564a47043fbb05fd123ecf4eb8f_mv2.png,091218am2cd43b_d0f2670282bb4c6585a269ef1949140b_mv2.png,091218am2cd43b_fadfa56613b14525b8b0ac16ad415908_mv2.png,', 1, 1),
(15, 'Germanian Little Pug 7', 2, 'French Bulldogs are one of the more popular dog breeds in the United States. Despite their name, they come from England, not France, and have been bred to be companion animals for several hundred years. Frenchies have the characteristic short muzzles of bulldogs, but are smaller than their traditional Bulldog counterparts. They are very playful and affectionate in nature, and love to be near their people. French Bulldogs, which tend to be no larger than 28 lbs. in adulthood, are adaptable to both small and large spaces, and are devoted pets to individuals and families.', 'Germanian Little', 3, 3, 6, 320, '091309am2cd43b_3b16ed87723a416ab8c4a46952b97c94_mv2.png,091309am2cd43b_6fe1cf226e2841c2866298b5bcfc4a82_mv2.png,091309am2cd43b_681753fc0b7448f0830b9947823e39ea_mv2.png,', 2, 1),
(16, 'Germanian Little Pug 8', 2, 'French Bulldogs are one of the more popular dog breeds in the United States. Despite their name, they come from England, not France, and have been bred to be companion animals for several hundred years. Frenchies have the characteristic short muzzles of bulldogs, but are smaller than their traditional Bulldog counterparts. They are very playful and affectionate in nature, and love to be near their people. French Bulldogs, which tend to be no larger than 28 lbs. in adulthood, are adaptable to both small and large spaces, and are devoted pets to individuals and families.', 'Germanian Little', 3, 3, 6, 120, '091326am2cd43b_6fe1cf226e2841c2866298b5bcfc4a82_mv2.png,091326am2cd43b_98e05cf6193b4147a66d46a9e2c4d849_mv2.png,091326am2cd43b_393a4609550a4aa8a3dc4c01e44d8948_mv2.png,', 3, 1),
(17, 'dddsdsd', 1, 'fdfdfdfdffđf', 'test', 3, 1, 3, 33, '015816pm2cd43b_ad23f564a47043fbb05fd123ecf4eb8f_mv2.png,015816pm2cd43b_afa39a2ccac54a9b8122257b451a461f_mv2_d_1300_1639_s_2.png,015816pm2cd43b_bf71a46b475f44808cd00dfdcab3ae6c_mv2.png,', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_fee`
--
ALTER TABLE `tbl_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_fee`
--
ALTER TABLE `tbl_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Database: `storydb`
--
CREATE DATABASE IF NOT EXISTS `storydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `storydb`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `email`, `password`, `role`, `active`, `image`, `created_at`, `updated_at`) VALUES
(1, 'hohuuvinh', 'vinhhofb@gmail.com', '$2b$10$Qp5/0ahsy3JGC3n152MJNOMuobpixAzD.tQDlh8gUi5m58xs0Ch2a', 1, 1, '1.jpg', '2021-02-04 10:40:09', '2021-02-04 10:40:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_analytic`
--

CREATE TABLE `tbl_analytic` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_analytic`
--

INSERT INTO `tbl_analytic` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'total_rental', 24, '2021-02-18 11:39:04', '2021-02-07 03:43:07'),
(2, 'total_return', 6, '2021-02-04 11:39:21', '2021-02-04 11:39:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_book`
--

CREATE TABLE `tbl_book` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `price` float DEFAULT NULL,
  `type` int(11) DEFAULT 1,
  `category` int(11) DEFAULT NULL,
  `quanlity` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `total_rental` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_book`
--

INSERT INTO `tbl_book` (`id`, `name`, `note`, `price`, `type`, `category`, `quanlity`, `active`, `image`, `total_rental`, `created_at`, `updated_at`) VALUES
(1, 'Changing Life With Arithmetic Multiplication', 'The book Changing Life with Anthropology is a work developed by Mrs. Le Do Quynh Huong from the original work \"The Complete Book of Numerology\" by Dr. David A. Phillips, making the subject of Anthropology originate at home. Pythagoras\' mathematics became closer and easier to understand with Vietnamese readers.\r\n\r\nIn early 2020, a series of programs \"Change your life with the Arithmetic\" of the familiar editor and host in Vietnam Le Do Quynh Huong was born on Youtube, with the aim of sharing knowledge, helping everyone. people who learn and develop, perfect themselves, and social relationships through the Department of Arithmetic. The show has received positive love and feedback from many viewers and readers after each broadcast episode.\r\n\r\nArithmetic is a study of the relationship between birthdays numbers, names and lives, destiny, life paths and personalities. This subject was initiated 2,600 years ago by mathematician Pythagoras and has been continuously inherited and developed by many generations of students.', 170000, 1, 1, 5, 1, '1.jpg', 9, '2021-02-04 10:34:06', '2021-02-04 10:34:06'),
(2, 'Kimetsu No Yaiba - Episode 21: Farewell Memory - [Limited Edition] - With a Poster', 'The toughest war with the Most Venerable is finally coming to an end !! After a strenuous victory, the cost was too great… On the other hand, deep inside the Infinite city, the ancestor of the demon -Kibutsuji Muzan - had begun to act…! What will Tanjiro do… !?\r\nHello everyone, this is Gotouge! The year 2020 begins with a lot of bad news and a long blockade, how did people get over it? Ever since the series was published, no day has been without trouble for me. Although my heart was broken, I reinforced it with tape and continued on this journey. I think your everyday life is the same. Although there is no specific enemy, every day everyone tries and tells themselves that not to lose and overcome their own difficulties, that is enough to become a hero. Please motivate and reward yourself with worthy gifts!', 220000, 1, 2, 4, 1, '2.jpg', 6, '2021-02-04 10:36:55', '2021-02-06 14:11:19'),
(3, 'Blue Bird Flying Back - Special Edition Printed Only Once - Hardcover - Included 6 Postcards', 'Unlike previous works set in the Central countryside full of pure and simple childhood memories with characters at puberty, in this new book, writer Nguyen Nhat Anh is set. The main scene is Saigon - Ho Chi Minh City where the author lives (as a tribute to the land in the South). The main characters in the story are also \"bigger\", with arduous and challenging career stories of ambitious young students. Of course, it is indispensable to love touching, dramatic and unexpected love stories that make readers bewildered, laughed out loud. And as in all Nguyen Nhat Anh works, kindness and inclination are still important points in this new book.', 250000, 1, 1, 6, 1, '3.jpg', 0, '2021-02-03 08:55:44', '2021-02-04 08:55:44'),
(4, 'Many Times, Many Lives - Small Size', 'Professor John Vu - Nguyen Phong and unprecedented stories about his past lives, discovering the Law of Cause and Effect, Reincarnation.\r\n\r\n\"Lifetime of life\" is a work written by Professor John Vu - Nguyen Phong in 2017 and completed in early 2020, recording strange past life stories and experiences from many lives of a longtime confidant. Mr. Thomas - a famous financial businessman in New York. These unrevealed stories will help people all over the world to contemplate and explore the laws of the Law of Cause and Effect and Reincarnation of the universe in the midst of daily disasters, upheavals and crises. .\r\n\r\n\"Lifetime of life\" is a big picture with countless pieces of life, is a huge, vivid film about mysterious lives, stretching from the mighty Atlantis civilization to the ancient kingdom of Egypt. of the mighty Pharaohs, to the United States of America today.\r\n\r\n\"All lifetimes of life\" offers readers new, endless knowledge of humanity revealed for the first time, along with scholarly analysis, unexpected predictions about the present and future world of sages. wise philosophy. Human life seemed very long but passed very quickly, prosperity and death, fragile like water waves. The law of cause and effect is extremely precise, detailed and complex, collected over many generations, many lives, and interrelated relationships, no one can calculate this virtue, can you subtract the other karma? , no one can know when the cause will bear fruit. But, once cause has been caused, it will surely reap the results - the Law of Cause and Effect of the universe has never been wrong.\r\n\r\nThe Law of Reincarnation and Cause and Effect create conditions for one person to meet another. Meeting sometimes is predestined, sometimes it\'s debt; Meeting sometimes to pay debts, sometimes to reconnect old conditions. There are so many things going on in life, seemingly coincidental but actually arranged in advance. Reincarnation is a large school where all humans, all creatures have to learn their own lessons until they are perfect. If you do not learn or have not learned completely, you must repeat it, exactly according to the law of Cause and Effect.\r\n\r\nThomas shared why he told these mysterious private stories with Professor John Vu to make his work \"Lives of Life\":\r\n\r\n “Right now the world is going through a period of turmoil and turmoil, in fact, every country is suffering from the karma they caused in the past. Each nation, as well as every individual, has its own karmic effects caused by the causes that they have caused. Personally, there is ‘individual career’, but country there ‘karma’ that all people living in it have to pay.\r\n\r\nUsually people, when they act, few people think about the consequences, but once the consequences happen, what do they think, do? Do they resent, blame heaven, blame the earth, and blame those around them for causing those consequences? How many people can contemplate, blame themselves and change?\r\n\r\nI hope we - tiny, fluttering butterflies can also create powerful hurricanes to wake people up.\r\n\r\nThe future of each human being, every organization, each country and the whole planet will be like in the coming period depending on the behavior, recognition and awakening of each individual, each organization, each of which makes up. If you want to change, you need to start with the awareness, transformation of mind, spreading love and sharing knowledge from each of us first.\r\n\r\nCausality do not wait to see to believe.\r\n\r\nCause and effect is the signpost, helping people find the truth \"\r\n\r\nThe book is published in Vietnamese before transferring the copyright to other countries around the world.\r\n\r\nAbout the author\r\n\r\nThe author Nguyen Phong (Vu Van Du) studied abroad in the US since 1968, graduated with a master\'s degree in Biology and Computing. He used to be Chief Engineer, CIO of Boeing Corporation of America, Director of the Institute of Biotechnology, Carnegie Mellon University. He is known as Professor John Vu - a prestigious information technology scientist. , CMMI and has taught in many universities around the world.\r\n\r\n Nguyen Phong is the pseudonym of the cultural and spiritual books translated and adapted from the experience, subconscious mind and the process of researching and discovering Eastern spiritual values. He wrote an adaptation of the immortal work Journey to the East at the age of 24 (1974). Other works of Nguyen Phong have been loved by readers for generations: Bright Jade in the Lotus, By Snow Mountain, Lotus in the Snow, Flowers on the Water Wave, Magic and the Tibetan Taoists, Back from Land of snow, Back from the light realm, Wisdom in life, Road of clouds through snow, Footprints on sand, Road of clouds in the land of dreams, Road of clouds on land ... and a set of books for students and teachers: Khoi Practice, Connect, Step out to the world, Create a preeminent Vietnamese generation, Prof. John Vu and advice for teachers, Professor John Vu and advice for parents.', 230000, 1, 1, 4, 1, '4.jpg', 0, '2021-02-17 08:58:18', '2021-02-07 03:43:31'),
(5, '10 Reveals About Love', 'We all crave love and emotional relationships more than anything and constantly look for that special relationship. So why do so many people live in solitude, searching, hoping, but rarely finding? If everyone yearns for love so much, why has the divorce rate and family breakdown reached record numbers? Why do many single mothers and fathers struggle to build their own homes? Why are so many people feeling lonely and lost in a densely populated city? Are we looking for love in the wrong place?\r\n\r\nContrary to popular belief, love is not the result of fate or luck, much less something we enter or step out of. Love is something we create ... and everyone has the ability to create love. We can all love and be loved and build relationships. Whatever our current circumstances - living in solitude or in an unhappy relationship - life can change and we have the capacity to change our life completely.\r\n\r\nUnlike most of the other parables, many of the characters in book 10 \"Revelations\" About Love are based on real people, even though of course their names have been changed. The book contains timeless secrets of wisdom and love.\r\n\r\nThe book contains a simple yet powerful message: we all have the power to not only love, but to have full love!\r\n\r\n10 \"Disclosures\" About Love tells the story of a lonely young man who, after accidentally meeting a mysterious Chinese old man, begins his journey to find love.\r\n\r\n10 “Revealing” about Love is in the best-selling book worldwide, including: 10 “Revealing” about Health, 10 “Revealing” About Love, 10 “Revealing” About Happiness and 10 “Revealing” The Eyelid ”About Wealthy.\r\n\r\n10 Love\'s “Reals” has been translated into more than 30 languages ​​and has changed the lives of countless readers around the world.', 150000, 1, 1, 1, 1, '5.jpg', 0, '2021-02-05 09:03:20', '2021-02-06 14:10:25'),
(6, 'Teen Secrets to Success', 'If you are in an immature age, or have gone through this age, you will surely agree that this is a period where we have a lot of problems with family, school and life: what are the problems With friends, extracurricular activities take up too much time, homework is piled up, extra lessons like running \"number\", even problems with siblings in the house, disagreeing with parents ...\r\n\r\nThere is good news for you: If you apply the right methods, you will quickly overcome current challenges, turning your challenging teenage days into a stage of great success. in study, family and life. Do you want yourself to: Balance learning, play and family effectively? Be in the top of the best students in school? Know how to turn parents into allies? Motivate yourself whenever you feel lazy? Make easy and well-known friends at school? Confidently face any challenge in your family. Life? Make wise decisions? These desires may sound \"difficult\" but are actually extremely simple when you have in hand the book Secrets of Teen Success by two famous authors. Adam Khoo and Gary Lee. Continuing the proven learning methods in I Am Gifted, So Are You! - a record book published with more than 200,000 copies sold and considered an educational phenomenon in Vietnam in 2009-2011, The Secret of Teen Success focuses on other important aspects of young people like: how to get along with parents, make friends with good friends, love yourself, ... help you to create a solid foundation in all fields. The Teen Congregation will not only make your life easier, but also enable you to reap outstanding results on whatever path you choose. My teenage years are not only the best years but also the successful years, guys!\r\n\r\nAre you ready to make Miracles for your teen?', 52000, 1, 1, 1, 1, '6.jpg', 0, '2021-02-05 09:04:47', '2021-02-05 09:04:47'),
(7, '10 Revelations About Wealth', 'It has been 17 years since the 10 Rich-Sang Revelations were first published in the UK. Since then, the book has been translated and published in more than 30 languages ​​with more than 90 reprints in several languages ​​and has changed the lives of countless readers around the world.\r\n\r\nNothing is more valuable than the pursuit of wealth, for the pursuit of wealth is the pursuit of strength. It is about adding value to other people\'s lives and through which we also add value to our own. Wealthy 10 “Revelation” gives you the tools you need to create a rich life. The stories in this book are based on real people.\r\n\r\n10 “Revelations” About Wealthy contains timeless secrets of wisdom and wealth. The book contains a simple yet powerful message: we all have the power to become not only rich, but full of riches!\r\n\r\n10 Rich Sang\'s \"Disclosures\" tells the story of a young man who is in debt and is in bad luck and has begun his journey to find wealth. Accidentally met a mysterious Chinese old man, the young man was \"given the way\" to 10 special people, each holding a secret in his hand.\r\n\r\n10 \"Revelations\" About Wealthy in the global bestseller series include: 10 \"Reveals\" about Health, 10 \"Riddles\" About Love, 10 \"Reveals\" About Happiness and 10 \"Reveals\" The Eyelid ”About Wealthy.', 43000, 1, 1, 1, 1, '7.jpg', 0, '2021-02-05 09:05:40', '2021-02-05 09:05:40'),
(8, '10 Health Disclosures', 'All of us want to be healthy, but why are so few truly healthy? Why in spite of the advances of modern medicine, the developments in the pharmaceutical business and a variety of dietary supplements, diseases such as cancer, heart disease, obesity, asthma and anxiety disorders Europe has been raging over the decades? Are we looking for ways to live well in the wrong place?\r\n\r\nMedicine is not something that can guarantee your long-term health. Nor can we rely on juices or machines to stay healthy. Each of us is responsible for our own health and that of our children, and we are not only healthy, but also healthy. Perfect Health is not just a state of not being sick - many people who have no illness in their body but feel tired, lethargic and exhausted - but a state of happiness, full of energy. Quality and vitality allow us to live our full lives.\r\n\r\n10 Health “Reveals” contains the timeless secrets of Full Health. The story is about a young man suffering from a terminal illness who begins his journey to find his health again.\r\n\r\nAccidentally met a mysterious Chinese old man, the young man was \"guided the way\" to 10 special people, each holding a secret. These secrets are the 10 Laws of the Universe that govern everything in Nature and Life. Hidden in these Rules are the secrets of Perfect Health.\r\n\r\nHealth\'s 10 “Revelation” is a unique and inspiring book that has changed the lives of countless readers around the world.\r\n\r\n10 Health “Disclosures” has been translated into more than 30 languages. This book is part of a global bestseller series that includes: 10 \"Reveals\" about Health, 10 \"Reveals\" About Love, 10 \"Reveals\" About Happiness and 10 \"Reveals\" About Wealth.', 50000, 1, 1, 1, 1, '8.jpg', 0, '2021-02-05 09:08:15', '2021-02-05 09:08:15'),
(9, '10 Paradoxes of Life (2019 Edition)', '\"Our lives always have paradoxes - brave and noble people always accept and overcome them.\"\r\n\r\nFamous work Anyway - 10 paradoxes of life by Dr. Kent Keith has become a classic book and loved by readers around the world about the unique and frank about life experiences. The book has been continuously voted one of the best-selling works for many years and has been translated into many languages.\r\n\r\nThe most special feature of Anyway is the profound and practical meaning of the work that has influenced many different audiences, bringing the necessary tranquility to think about a noble way to live fully. Author Kent Keith is a concrete and authentic proof of this way of life. He wrote and devoted his life to supporting those truths.', 150000, 1, 1, 1, 1, '9.jpg', 0, '2021-02-05 09:09:46', '2021-02-05 09:09:46'),
(10, '100 Touching Stories About Friendship', 'For children, time will bring maturity. In the process of growing up there are many joys as well as sadness. That is a life. But every little girl in too mature has things to touch others. In childhood, if the children do not have things to touch people\'s hearts, it will be like a dish lacking in spices.\r\n\r\nReading the book 100 Touching Stories of Friendship, we not only feel many fascinating details, but also feel the emotions from the characters. Each story has different characters, different lives. When we read the story, it feels like we enter the world of that story. When we read magic stories, we feel more attractive and interesting.\r\n\r\nThis is a book for elementary school students. The stories all delight the children. Hope these stories will bring you more fun! The book content will also guide you on your way to adulthood! It will bring a lot of noble love to you !.', 120000, 1, 1, 1, 1, '10.jpg', 0, '2021-02-05 09:16:08', '2021-02-05 09:16:08'),
(13, 'Detective Conan - Episode 98', 'Sera Masumi continues to probe Haibara Ai and is in a position to confront Okiya Subaru!\r\n\r\nMeanwhile, Conan has come close to the idea of the \"little sister in the territory\" - Mary ... !?\r\n\r\nHaneda Shukichi unexpectedly met his murder at a shogi group lesson!\r\n\r\nThe case happened suddenly with many turning points, and finally, Akai Shuichi appeared… !? Not stopping there, episode 98 also brings to the case of a maid\'s decryption case, where the crime race between Conan and Heiji has begun with Ooka Momiji\'s scheme !!', 53000, 1, 2, 1, 1, '1480282991.PNG', 1, '2021-02-05 17:23:15', '2021-02-07 03:18:51'),
(14, 'Wonderful World Of Animals - Starfish And Crab (Level 2)', 'Wonderful World Of Animals - Starfish And Crab (Level 2)\r\n\r\nThe wonderful world of animals is a collection of fantasy stories based on real animals. The series uses stories as a bridge to help children learn about animals and gain information about them. With simple language presentations, eye-catching images, the book combines reading, learning and imagination of students. Each book is the perfect method for your child to read and shine!\r\n\r\nRead And Shine\r\n\r\nRead and shine is an effective reading program categorized by age. This program offers stories with a variety of themes including condensed classics such as: Fairy, mythology as well as animal stories. The books include activities before reading, after reading.', 25000, 1, 25, 1, 1, '982143597.PNG', 2, '2021-02-05 17:25:28', '2021-02-07 03:43:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Life skills', 1, '2021-02-04 10:39:16', '2021-02-04 10:39:16'),
(2, 'Comic', 1, '2021-02-04 10:39:37', '2021-02-04 10:39:37'),
(3, 'Arts & Music', 1, '2021-02-05 17:13:38', '2021-02-05 17:13:38'),
(4, 'Biographies', 1, '2021-02-05 17:13:38', '2021-02-05 17:13:38'),
(5, 'Business', 1, '2021-02-05 17:14:04', '2021-02-05 17:14:04'),
(6, 'Computers & Tech', 1, '2021-02-05 17:14:04', '2021-02-05 17:14:04'),
(7, 'Cooking', 1, '2021-02-05 17:14:04', '2021-02-05 17:14:04'),
(8, 'Edu & Reference', 1, '0000-00-00 00:00:00', '2021-02-05 17:14:04'),
(9, 'Entertainment', 1, '2021-02-05 17:14:04', '2021-02-05 17:14:04'),
(10, 'Health & Fitness', 1, '2021-02-05 17:14:04', '2021-02-05 17:14:04'),
(11, 'History', 1, '2021-02-05 17:14:04', '2021-02-05 17:14:04'),
(12, 'Hobbies & Crafts', 1, '2021-02-05 17:14:04', '2021-02-05 17:14:04'),
(13, 'Home & Garden', 1, '2021-02-05 17:14:04', '2021-02-05 17:14:04'),
(14, 'Horror', 1, '2021-02-05 17:14:04', '2021-02-05 17:14:04'),
(15, 'Kids', 1, '2021-02-05 17:16:58', '2021-02-05 17:16:58'),
(16, 'Literature & Fiction', 1, '2021-02-05 17:16:58', '2021-02-05 17:16:58'),
(17, 'Medical', 1, '2021-02-05 17:17:47', '2021-02-05 17:17:47'),
(18, 'Mysteries', 1, '2021-02-05 17:17:47', '2021-02-05 17:17:47'),
(19, 'Parenting', 1, '2021-02-05 17:17:47', '2021-02-05 17:17:47'),
(20, 'Religion', 1, '2021-02-05 17:17:47', '2021-02-05 17:17:47'),
(21, 'Romance', 1, '2021-02-05 17:17:47', '2021-02-05 17:17:47'),
(22, 'Sci-Fi & Fantasy', 1, '2021-02-05 17:17:47', '2021-02-05 17:17:47'),
(23, 'Science & Math', 1, '2021-02-05 17:17:47', '2021-02-05 17:17:47'),
(24, 'Self-Help', 1, '2021-02-05 17:17:47', '2021-02-05 17:17:47'),
(25, 'Social Sciences', 1, '2021-02-05 17:17:47', '2021-02-05 17:17:47'),
(26, 'Sports', 1, '2021-02-05 17:17:47', '2021-02-05 17:17:47'),
(27, 'Teen', 1, '2021-02-05 17:20:03', '2021-02-05 17:20:03'),
(28, 'Travel', 1, '2021-02-05 17:20:03', '2021-02-05 17:20:03'),
(29, 'True Crime', 1, '2021-02-05 17:20:37', '2021-02-05 17:20:37'),
(30, 'Westerns', 1, '2021-02-05 17:20:37', '2021-02-05 17:20:37'),
(31, 'other', 1, '2021-02-05 17:21:17', '2021-02-05 17:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rental`
--

CREATE TABLE `tbl_rental` (
  `id` int(11) NOT NULL,
  `idbook` int(11) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `idadmin` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_rental`
--

INSERT INTO `tbl_rental` (`id`, `idbook`, `iduser`, `note`, `from_date`, `to_date`, `idadmin`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'ok', '2021-02-04 10:41:06', '2021-02-20 00:00:00', 1, 0, '2021-02-04 10:41:06', '2021-02-06 13:49:14'),
(2, 2, 1, 'ok', '2021-02-04 10:41:54', '2021-02-05 00:00:00', 1, 1, '2021-02-04 10:41:54', '2021-02-06 13:38:47'),
(3, 2, 8, 'fd', '2021-02-10 00:00:00', '2021-02-25 00:00:00', 1, 1, '2021-02-05 20:58:04', '2021-02-06 13:38:52'),
(4, 2, 1, 'sđssdsdsđs', '2021-02-19 00:00:00', '2021-02-24 00:00:00', 1, 0, '2021-02-05 20:59:10', '2021-02-06 14:11:18'),
(5, 7, 8, 'ghh', '2021-02-18 00:00:00', '2021-02-26 00:00:00', 1, 1, '2021-02-05 21:06:06', '2021-02-06 04:29:59'),
(7, 5, 1, '42hhb', '2021-02-11 00:00:00', '2021-02-11 00:00:00', 1, 0, '2021-02-05 21:11:23', '2021-02-06 04:12:54'),
(8, 8, 14, 'gfcdgf', '2021-02-18 00:00:00', '2021-02-19 00:00:00', 1, 0, '2021-02-05 21:31:37', '2021-02-06 04:12:44'),
(9, 5, 13, 'ok', '2021-02-09 00:00:00', '2021-02-19 00:00:00', 1, 0, '2021-02-06 10:58:23', '2021-02-06 04:13:24'),
(10, 5, 8, 'dđfdf', '2021-02-11 00:00:00', '2021-02-10 00:00:00', 1, 0, '2021-02-06 21:07:52', '2021-02-06 14:58:28'),
(11, 4, 12, 'ok', '2021-02-12 00:00:00', '2021-02-25 00:00:00', 1, 0, '2021-02-07 09:54:40', '2021-02-07 03:43:31'),
(12, 14, 1, 'hg', '2021-02-19 00:00:00', '2021-02-18 00:00:00', 1, 0, '2021-02-07 09:57:05', '2021-02-07 03:43:28'),
(13, 14, 12, 'vnn', '2021-02-12 00:00:00', '2021-02-11 00:00:00', 1, 1, '2021-02-07 10:15:05', '2021-02-07 10:15:05'),
(14, 13, 14, 'vhhj', '2021-02-19 00:00:00', '2021-02-19 00:00:00', 1, 1, '2021-02-07 10:18:51', '2021-02-07 10:18:51'),
(15, 16, 1, 'ok', '2021-02-07 00:00:00', '2021-02-24 00:00:00', 1, 1, '2021-02-07 10:43:07', '2021-02-07 03:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `passport` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT 1,
  `total_rental` int(11) DEFAULT 0,
  `total_return` int(11) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `passport`, `name`, `address`, `phone`, `image`, `active`, `total_rental`, `total_return`, `created_at`, `updated_at`) VALUES
(1, 201783899, 'ho huu vinh', 'california', '0799438990', '1.jpg', 1, 2, 1, '2021-02-04 10:32:25', '2021-02-04 10:32:25'),
(8, 44554555, 'rrrtrddd', 'Da nang', '0434545454', '1544650552.PNG', 1, 0, 0, '2021-02-05 12:21:30', '2021-02-05 11:16:15'),
(12, 202838383, 'fdffdfdfdfd', 'gfgfgg', '0799438999', '1816063450.jpg', 1, 0, 0, '2021-02-05 21:26:33', '2021-02-05 21:26:33'),
(13, 43435454, 'fdff', 'gffg', '0799438999', '367057124.jpg', 1, 0, 0, '2021-02-05 21:29:55', '2021-02-05 21:29:56'),
(14, 43435454, 'fdff', 'gffg', '0799438999', '1847913860.jpg', 1, 0, 0, '2021-02-05 21:30:37', '2021-02-05 21:30:37'),
(15, 54455454, 'fd df', 'gffg', '0799438999', 'avatarDefault.jpg', 1, 0, 0, '2021-02-05 21:31:02', '2021-02-05 21:31:02'),
(16, 353535355, 'test user', 'dffdfdfd', '3333333333', '2031060753.jpg', 1, 0, 0, '2021-02-07 10:44:58', '2021-02-07 10:44:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_analytic`
--
ALTER TABLE `tbl_analytic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_book`
--
ALTER TABLE `tbl_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rental`
--
ALTER TABLE `tbl_rental`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_analytic`
--
ALTER TABLE `tbl_analytic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_book`
--
ALTER TABLE `tbl_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_rental`
--
ALTER TABLE `tbl_rental`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Database: `web-store-server-db`
--
CREATE DATABASE IF NOT EXISTS `web-store-server-db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `web-store-server-db`;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `title`, `content`, `image`) VALUES
(1, 'Thiết kế Web trọn gói giá rẻ', 'Thiết kế web theo mẫu có sẵn, giá chỉ từ 1,9 triệu. TẶNG tên miền và hosting, chuẩn SEO, chuẩn mobile responsive.', 'card1.png'),
(2, 'Thiết kế Web trọn gói giá rẻ', 'Thiết kế web theo mẫu có sẵn, giá chỉ từ 1,9 triệu. TẶNG tên miền và hosting, chuẩn SEO, chuẩn mobile responsive.', 'card2.png'),
(3, 'Thiết kế Web trọn gói giá rẻ', 'Thiết kế web theo mẫu có sẵn, giá chỉ từ 1,9 triệu. TẶNG tên miền và hosting, chuẩn SEO, chuẩn mobile responsive.', 'card3.png'),
(4, 'Thiết kế Web trọn gói giá rẻ', 'Thiết kế web theo mẫu có sẵn, giá chỉ từ 1,9 triệu. TẶNG tên miền và hosting, chuẩn SEO, chuẩn mobile responsive.', 'card4.png'),
(5, 'Thiết kế Web trọn gói giá rẻ', 'Thiết kế web theo mẫu có sẵn, giá chỉ từ 1,9 triệu. TẶNG tên miền và hosting, chuẩn SEO, chuẩn mobile responsive.', 'card5.png'),
(6, 'Thiết kế Web trọn gói giá rẻ', 'Thiết kế web theo mẫu có sẵn, giá chỉ từ 1,9 triệu. TẶNG tên miền và hosting, chuẩn SEO, chuẩn mobile responsive.', 'card6.png');

-- --------------------------------------------------------

--
-- Table structure for table `categoris`
--

CREATE TABLE `categoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoris`
--

INSERT INTO `categoris` (`id`, `title`, `slug`, `updated_at`, `created_at`) VALUES
(1, 'Thời trang', 'thoi-trang', NULL, NULL),
(2, 'Mỹ phẩm', 'my-pham', NULL, NULL),
(3, 'Điện thoại', 'dien-thoai', NULL, NULL),
(4, 'Điện máy', 'dien-may', NULL, NULL),
(5, 'Đồng hồ', 'dong-ho', NULL, NULL),
(6, 'Bách hóa', 'bach-hoa', NULL, NULL),
(7, 'Nội thất', 'noi-that', NULL, NULL),
(8, 'Văn phòng', 'van-phong', NULL, NULL),
(9, 'Doanh Nghiệp', 'doanh-nghiep', NULL, NULL),
(10, 'Tin tức', 'tin-tuc', NULL, NULL),
(11, 'Khác', 'khac', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

CREATE TABLE `domain` (
  `id` int(11) NOT NULL,
  `nameDomain` varchar(255) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `timeUnit` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `domain`
--

INSERT INTO `domain` (`id`, `nameDomain`, `time`, `timeUnit`, `price`) VALUES
(2, 'Tên miền .NET', 12, 1, 290000),
(3, 'Tên miền .COM ', 12, 1, 290000),
(4, 'Tên miền .COM.VN', 12, 1, 580000),
(5, 'Tên miền .VN', 12, 1, 750000);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `hosting`
--

CREATE TABLE `hosting` (
  `id` int(11) NOT NULL,
  `nameHosting` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `capacityUnit` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `timeUnit` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hosting`
--

INSERT INTO `hosting` (`id`, `nameHosting`, `capacity`, `capacityUnit`, `time`, `timeUnit`, `price`) VALUES
(1, 'G1', 100, 1, 12, 1, 150000),
(2, 'G2', 1, 2, 12, 1, 590000),
(3, 'G3', 2, 2, 12, 1, 990000),
(4, 'G4', 4, 2, 12, 1, 1490000);

-- --------------------------------------------------------

--
-- Table structure for table `methods`
--

CREATE TABLE `methods` (
  `id` int(11) NOT NULL,
  `nameMethod` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `methods`
--

INSERT INTO `methods` (`id`, `nameMethod`) VALUES
(1, 'Chuyển khoảng ngân hàng'),
(2, 'Ví điện tử'),
(3, 'Thanh toán trực tiếp');

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
(1, '2014_10_12_000000_create_categoris_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2014_10_12_000000_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `nameCustomer` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `noteCustomer` text DEFAULT NULL,
  `method` int(11) DEFAULT NULL,
  `hosting` int(11) DEFAULT NULL,
  `domain` int(11) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `activeOrder` int(11) DEFAULT NULL,
  `idpost` int(11) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `nameCustomer`, `phone`, `email`, `noteCustomer`, `method`, `hosting`, `domain`, `total`, `activeOrder`, `idpost`, `create_at`) VALUES
(1, 'Ho Huu Vinh', 1208837290, 'vihhofb@gmail.com', 'điện tử #1 Website thương mại điện tử #1 điện tử #1 Website thương mại điện tử #1điện tử #1 Website thương mại điện tử #1', 1, 1, 1, 200000, 1, 1, '2021-01-06 09:32:11'),
(2, 'Abc đhđ', 1208837290, 'vinhho@gmail.com', 'điện tử #1 Website thương mại điện tử #1 điện tử #1 Website thương mại điện tử #1điện tử #1 Website thương mại điện tử #1', 2, 2, 3, 300000, 2, 3, '2021-01-22 09:33:22');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkdemo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `note`, `content`, `feature`, `sale`, `image`, `active`, `type`, `image1`, `image2`, `image3`, `created_at`, `updated_at`, `slug`, `linkdemo`, `price`) VALUES
(1, 'A Website thương mại điện tử #1', 'Mẫu web thương mại điện tử giống shoppe, lazada', '- Giao diện thiết kế chuẩn Responsive giúp trang web bạn được hiển thị trên tất cả các công cụ tìm kiếm cũng như các loại màn hình laptop, desktop, điện thoại, tablet.\r\n- Giao diện thiết kế chuẩn Responsive giúp trang web bạn được hiển thị trên tất cả các', '- Viết bằng wordpress\r\n- Gio hàng (Thêm hàng vào giỏ)\r\n- Thanh toán Atm (momo)\r\n- Trang quản trị (Thêm, sửa, xóa) hàng hóa\r\n- Kiểm tra đặt hàng của khách\r\n- Điều chỉnh bố cục trang web\r\n- Tương thích các thiết bị di động', '- TẶNG hosting và tên miền\r\n- TẶNG tin VIP trên website rao vặt\r\n- Trang quản trị (Thêm, sửa, xóa) hàng hóa\r\n- Bàn giao full mã nguồn web\r\n- Bảo hành miễn phí trọn đời\r\n- Hỗ trợ khách hàng trong suốt thời gian sử dụng website\r\n- Bảo hành vĩnh viễn khi khá', 'image1.jpg,image2.png,image3.png,', 0, 1, 'image1.png', 'image2.png', 'image3.png', '2020-11-25 00:00:00', NULL, 'website-thuong-mai-dien-tu-1ggfgsvvcv', NULL, 10000),
(3, 'B Website thương mại điện tử #2', 'Mẫu web thương mại điện tử giống shoppe, lazada', '- Giao diện thiết kế chuẩn Responsive giúp trang web bạn được hiển thị trên tất cả các công cụ tìm kiếm cũng như các loại màn hình laptop, desktop, điện thoại, tablet.\r\n- Giao diện thiết kế chuẩn Responsive giúp trang web bạn được hiển thị trên tất cả các', '- Viết bằng wordpress\r\n- Gio hàng (Thêm hàng vào giỏ)\r\n- Thanh toán Atm (momo)\r\n- Trang quản trị (Thêm, sửa, xóa) hàng hóa\r\n- Kiểm tra đặt hàng của khách\r\n- Điều chỉnh bố cục trang web\r\n- Tương thích các thiết bị di động', '- TẶNG hosting và tên miền\r\n- TẶNG tin VIP trên website rao vặt\r\n- Trang quản trị (Thêm, sửa, xóa) hàng hóa\r\n- Bàn giao full mã nguồn web\r\n- Bảo hành miễn phí trọn đời\r\n- Hỗ trợ khách hàng trong suốt thời gian sử dụng website\r\n- Bảo hành vĩnh viễn khi khá', 'image2.png,image3.jpg,image4.jpg', 0, 1, 'image5.jpg', 'image6.jpg', 'image7.jpg', '2020-11-29 14:37:29', '2020-11-29 14:37:29', 'laravel-5-framework', NULL, 23000),
(4, 'C Website thương mại điện tử #3', 'Mẫu web thương mại điện tử giống shoppe, lazada', '- Giao diện thiết kế chuẩn Responsive giúp trang web bạn được hiển thị trên tất cả các công cụ tìm kiếm cũng như các loại màn hình laptop, desktop, điện thoại, tablet.\r\n- Giao diện thiết kế chuẩn Responsive giúp trang web bạn được hiển thị trên tất cả các', '- Viết bằng wordpress\r\n- Gio hàng (Thêm hàng vào giỏ)\r\n- Thanh toán Atm (momo)\r\n- Trang quản trị (Thêm, sửa, xóa) hàng hóa\r\n- Kiểm tra đặt hàng của khách\r\n- Điều chỉnh bố cục trang web\r\n- Tương thích các thiết bị di động', '- TẶNG hosting và tên miền\r\n- TẶNG tin VIP trên website rao vặt\r\n- Trang quản trị (Thêm, sửa, xóa) hàng hóa\r\n- Bàn giao full mã nguồn web\r\n- Bảo hành miễn phí trọn đời\r\n- Hỗ trợ khách hàng trong suốt thời gian sử dụng website\r\n- Bảo hành vĩnh viễn khi khá', 'image3.png,image4.jpg', 0, 1, 'image5.jpg', 'image6.jpg', 'image7.jpg', '2020-11-29 14:37:47', '2020-11-29 14:37:47', 'laravel-5-framework-a-be', NULL, 1200000),
(5, 'Website thương mại điện tử #4', 'Mẫu web thương mại điện tử giống shoppe, lazada', '- Giao diện thiết kế chuẩn Responsive giúp trang web bạn được hiển thị trên tất cả các công cụ tìm kiếm cũng như các loại màn hình laptop, desktop, điện thoại, tablet.\r\n- Giao diện thiết kế chuẩn Responsive giúp trang web bạn được hiển thị trên tất cả các', '- Viết bằng wordpress\r\n- Gio hàng (Thêm hàng vào giỏ)\r\n- Thanh toán Atm (momo)\r\n- Trang quản trị (Thêm, sửa, xóa) hàng hóa\r\n- Kiểm tra đặt hàng của khách\r\n- Điều chỉnh bố cục trang web\r\n- Tương thích các thiết bị di động', '- TẶNG hosting và tên miền\r\n- TẶNG tin VIP trên website rao vặt\r\n- Trang quản trị (Thêm, sửa, xóa) hàng hóa\r\n- Bàn giao full mã nguồn web\r\n- Bảo hành miễn phí trọn đời\r\n- Hỗ trợ khách hàng trong suốt thời gian sử dụng website\r\n- Bảo hành vĩnh viễn khi khá', 'image1.jpg,image3.jpg,image4.jpg', 0, 1, 'image5.jpg', 'image6.jpg', 'image7.jpg', '2020-11-29 14:38:09', '2020-11-29 14:38:09', 'website-thuong-mai-dien-tu-1ggfg', NULL, 2500000),
(6, 'Website thương mại điện tử #5', 'Mẫu web thương mại điện tử giống shoppe, lazada', '- Giao diện thiết kế chuẩn Responsive giúp trang web bạn được hiển thị trên tất cả các công cụ tìm kiếm cũng như các loại màn hình laptop, desktop, điện thoại, tablet.\r\n- Giao diện thiết kế chuẩn Responsive giúp trang web bạn được hiển thị trên tất cả các', '- Viết bằng wordpress\r\n- Gio hàng (Thêm hàng vào giỏ)\r\n- Thanh toán Atm (momo)\r\n- Trang quản trị (Thêm, sửa, xóa) hàng hóa\r\n- Kiểm tra đặt hàng của khách\r\n- Điều chỉnh bố cục trang web\r\n- Tương thích các thiết bị di động', '- TẶNG hosting và tên miền\r\n- TẶNG tin VIP trên website rao vặt\r\n- Trang quản trị (Thêm, sửa, xóa) hàng hóa\r\n- Bàn giao full mã nguồn web\r\n- Bảo hành miễn phí trọn đời\r\n- Hỗ trợ khách hàng trong suốt thời gian sử dụng website\r\n- Bảo hành vĩnh viễn khi khá', 'image2.png,image3.jpg,image4.jpg', 0, 2, 'image5.jpg', 'image6.jpg', 'image7.jpg', '2020-11-29 14:38:35', '2020-11-29 14:38:35', 'website-thuong-mai-dien-tu-1ggfg2020-11-29-143835', NULL, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hohuuvinh', 'vinhhofb@gmail.com', '2020-11-25 07:52:00', '$2y$10$00YGVkehoikEuC5vqvGgw.hABAL/3XCEgo/PiEU5BVyzf22pM4DaK', NULL, '2020-11-18 07:52:00', '2020-11-13 07:52:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoris`
--
ALTER TABLE `categoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hosting`
--
ALTER TABLE `hosting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `methods`
--
ALTER TABLE `methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categoris`
--
ALTER TABLE `categoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `domain`
--
ALTER TABLE `domain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hosting`
--
ALTER TABLE `hosting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `methods`
--
ALTER TABLE `methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
