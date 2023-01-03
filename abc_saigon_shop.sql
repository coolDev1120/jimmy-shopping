-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2022 at 01:40 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc_saigon_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT 0,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `shop_name`) VALUES
(1, 'Admin', 'admin@gmail.com', '01629552892', 0, '1637505369admin.jpg', '$2y$10$p35S2FczpEfpbe41CX4j4.XE548tHBtF5weGLPxZ56MX5dsOFtaCC', 1, '6rOasBX4FqxnzeXzHb18ECR1hCsg7CW7Zj6LKepb7brxVPToKq675zzbFyj2', '2018-02-28 23:27:08', '2021-11-21 12:36:09', 'Genius Store'),
(8, 'Vietnam Agent1', 'vietnam.agent1@gmail.com', '123456789', 17, '1637349402big-sale-banner.png', '$2y$10$ezguC3SN9AqagdLLzCgGiu20VSGSJXH7wBFr5Qya.wBGl3A8hHJda', 1, 'pA8aLs0zNVo8A1Np8KJff1ALphW0I6LO2DnSOL2Sp1u0YkuBsplN0nrShze3', '2021-11-19 17:16:42', '2021-11-19 17:16:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1567232745AoOcvCtY.json', '1567232745AoOcvCtY', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_conversations`
--

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_messages`
--

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT 1 COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `attributable_id`, `attributable_type`, `name`, `input_name`, `price_status`, `details_status`, `created_at`, `updated_at`) VALUES
(14, 5, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(20, 4, 'App\\Models\\Category', 'Warranty Type', 'warranty_type', 1, 1, '2019-09-24 00:41:46', '2019-10-03 00:18:54'),
(21, 4, 'App\\Models\\Category', 'Brand', 'brand', 1, 1, '2019-09-24 00:44:13', '2019-10-03 00:19:13'),
(22, 2, 'App\\Models\\Subcategory', 'Color Family', 'color_family', 1, 1, '2019-09-24 00:45:45', '2019-09-24 00:45:45'),
(24, 1, 'App\\Models\\Childcategory', 'Display Size', 'display_size', 1, 1, '2019-09-24 00:54:17', '2019-09-24 00:54:17'),
(25, 12, 'App\\Models\\Subcategory', 'demo', 'demo', 1, 1, '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(30, 3, 'App\\Models\\Subcategory', 'Interior Color', 'interior_color', 1, 1, '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(31, 8, 'App\\Models\\Childcategory', 'Temperature', 'temperature', 1, 1, '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(32, 18, 'App\\Models\\Category', 'Demo', 'demo', 1, 1, '2019-10-02 23:39:12', '2019-10-02 23:39:12'),
(33, 4, 'App\\Models\\Category', 'RAM', 'ram', 1, 1, '2019-10-12 03:22:03', '2019-10-12 23:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `created_at`, `updated_at`) VALUES
(107, 14, 'No Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(108, 14, 'Local seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(109, 14, 'Non local warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(110, 14, 'International Manufacturer Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(111, 14, 'International Seller Warranty', '2019-09-23 22:56:07', '2019-09-23 22:56:07'),
(157, 22, 'Black', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(158, 22, 'White', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(159, 22, 'Sliver', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(160, 22, 'Red', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(161, 22, 'Dark Grey', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(162, 22, 'Dark Blue', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(163, 22, 'Brown', '2019-09-24 00:46:26', '2019-09-24 00:46:26'),
(172, 24, '40', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(173, 24, '22', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(174, 24, '24', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(175, 24, '32', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(176, 24, '21', '2019-09-24 01:25:32', '2019-09-24 01:25:32'),
(177, 25, 'demo 1', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(178, 25, 'demo 2', '2019-09-24 01:26:47', '2019-09-24 01:26:47'),
(187, 30, 'Yellow', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(188, 30, 'White', '2019-09-24 04:31:44', '2019-09-24 04:31:44'),
(189, 31, '22', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(190, 31, '34', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(191, 31, '45', '2019-09-24 04:34:35', '2019-09-24 04:34:35'),
(195, 20, 'Local seller warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(196, 20, 'No warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(197, 20, 'international manufacturer warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(198, 20, 'Non-local warranty', '2019-10-03 00:18:54', '2019-10-03 00:18:54'),
(199, 21, 'Symphony', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(200, 21, 'Oppo', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(201, 21, 'EStore', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(202, 21, 'Infinix', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(203, 21, 'Apple', '2019-10-03 00:19:13', '2019-10-03 00:19:13'),
(243, 33, '1 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(244, 33, '2 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(245, 33, '3 GB', '2019-10-12 23:30:39', '2019-10-12 23:30:39'),
(253, 32, 'demo 1', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(254, 32, 'demo 2', '2019-10-13 03:18:04', '2019-10-13 03:18:04'),
(255, 32, 'demo 3', '2019-10-13 03:18:04', '2019-10-13 03:18:04');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `photo`, `link`, `type`) VALUES
(1, '1568889151top2.jpg', 'https://www.google.com/', 'TopSmall'),
(2, '1568889146top1.jpg', NULL, 'TopSmall'),
(3, '1568889164bottom1.jpg', 'https://www.google.com/', 'Large'),
(4, '1564398600side-triple3.jpg', 'https://www.google.com/', 'BottomSmall'),
(5, '1564398579side-triple2.jpg', 'https://www.google.com/', 'BottomSmall'),
(6, '1564398571side-triple1.jpg', 'https://www.google.com/', 'BottomSmall');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `meta_tag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `video_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `details`, `photo`, `source`, `views`, `status`, `meta_tag`, `meta_description`, `tags`, `created_at`, `video_id`, `user_id`) VALUES
(9, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700986-min.jpg', 'www.geniusocean.com', 36, 1, 'b1,b2,b3', 'Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-02-06 09:53:41', NULL, 13),
(10, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700902-min.jpg', 'www.geniusocean.com', 14, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-03-06 09:54:21', NULL, 22),
(12, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700821-min.jpg', 'www.geniusocean.com', 19, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-04-06 22:04:20', NULL, 27),
(13, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA’s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI — For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that’s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth — and one of the most active — covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean — and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn’t see what,” said \r\nTim Jones.\r\n                                    </p>', '15542700676-min.jpg', 'www.geniusocean.com', 57, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-05-06 22:04:36', NULL, 28),
(14, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700595-min.jpg', 'www.geniusocean.com', 3, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-06-03 06:02:30', NULL, 13),
(15, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700464-min.jpg', 'www.geniusocean.com', 6, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-07-03 06:02:53', NULL, 22),
(16, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700383-min.jpg', 'www.geniusocean.com', 5, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14', NULL, 27),
(17, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542700322-min.jpg', 'www.geniusocean.com', 51, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37', NULL, 28),
(18, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1610742955blog-15.jpg', 'www.geniusocean.com', 152, 1, NULL, NULL, NULL, '2019-01-03 06:03:59', 'xcd', 13),
(20, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542699136-min.jpg', 'www.geniusocean.com', 10, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14', NULL, 27),
(21, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542699045-min.jpg', 'www.geniusocean.com', 37, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37', NULL, 28),
(22, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '1610743031blog-32.jpg', 'www.geniusocean.com', 70, 1, NULL, NULL, NULL, '2019-01-03 06:03:59', 'dfghd', 22),
(23, 7, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698893-min.jpg', 'www.geniusocean.com', 5, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14', NULL, 13),
(24, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA’s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI — For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that’s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth — and one of the most active — covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean — and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn’t see what,” said Tim Jones.</p>', '15542698832-min.jpg', 'www.geniusocean.com', 35, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37', NULL, 13);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(10) DEFAULT 'blog'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `item`) VALUES
(2, 'Kids Emotional Wellness', 'kids-emotional-wellness', 'blog'),
(3, 'COVID-19', 'covid-19', 'blog'),
(4, 'Self Reflection', 'self-reflection', 'blog'),
(9, 'Infectious Diseases', 'infectious-diseases', 'blog'),
(10, 'Alternative Medicine', 'alternative-medicine', 'blog'),
(11, 'Heart Disease', 'heart-disease', 'blog'),
(12, 'Caregivers', 'caregivers', 'blog'),
(13, 'Nutrition', 'nutritiion', 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
(1, 31, 'vittali lyappunov', 'lyappunov19@outlook.com', 'This is my new comment', '2021-01-12 06:54:28', '2021-01-12 06:54:34'),
(2, 31, 'vittali lyappunov', 'lyappunov19@outlook.com', 'akdkakgjas geavasj\r\nas dfjaksdfja\r\nfafdasdfjaskdfja\r\nf af', '2021-01-12 07:20:56', '2021-01-12 07:20:59'),
(3, 31, 'vittali lyappunov', 'lyappunov19@outlook.com', 'comentadfsf', '2021-01-12 07:21:02', '2021-01-12 07:21:04'),
(4, 28, 'vittali lyappunov', 'lyappunov19@outlook.com', 'kdjkdjvmjriekdjkdn', '2021-01-12 07:21:07', '2021-01-12 07:21:09'),
(5, 27, 'vittali lyappunov', 'lyappunov19@outlook.com', 'fdakjdfjkajd\r\nI dislke you', NULL, NULL),
(6, 26, 'vittali lyappunov', 'lyappunov19@outlook.com', 'sfgsdhsrjshrd', '2021-01-12 15:34:51', '2021-01-12 15:34:51'),
(7, 30, 'sdfasfsegasdgasdfsafsefsefsdf', 'lyppunov19@outlook.com', 'asdfawegasfasefasefaefse', '2021-01-16 14:19:23', '2021-01-16 14:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `photo`, `is_featured`, `image`) VALUES
(4, 'Holiday & Seasonal', 'holiday', 1, '1557807287light.png', 0, '1568709131f6.jpg'),
(5, 'Appliances', 'appliances', 1, '1557807279fashion.png', 0, '1568709123f1.jpg'),
(6, 'Automotive & Tires', 'automotive-and-tires', 1, '1557807264camera.png', 0, '1568709110f2.jpg'),
(7, 'Baby', 'baby', 1, '1557377810mobile.png', 0, '1568709597f4.jpg'),
(8, 'Clothing, Luggage, &amp; Handbags', 'clothing-luggage-and-handbags', 1, '1557807258sports.png', 0, '1568709577f8.jpg'),
(9, 'Computers', 'computers', 1, '1557807252furniture.png', 0, '1568709077f7.jpg'),
(10, 'Electronics', 'electronics', 1, '1557807228trends.png', 0, '1568709067f3.jpg'),
(11, 'Floral & Gift Baskets', 'floral-and-gift-baskets', 1, '1557377917bags.png', 0, '1568709050f8.jpg'),
(12, 'Furniture &amp; Mattresses', 'furniture-and-mattresses', 1, '1557807214sports.png', 0, '1568709042f9.jpg'),
(13, 'Gift Cards & Tickets', 'gift-cards-and-tickets', 1, '1557807208bags.png', 0, '1568709037f10.jpg'),
(15, 'Grocery & Household', 'grocery-and-household', 1, '1568708648motor.car.png', 0, '1568709031f11.jpg'),
(16, 'Health & Beauty', 'health-and-beauty', 1, '1568708757home.png', 0, '1568709027f12.jpg'),
(17, 'Home & Kitchen', 'home-and-kitchen', 0, '1568878538electronic.jpg', 0, NULL),
(18, 'Home Improvement', 'home-improvement', 1, '1568878596home.jpg', 0, NULL),
(19, 'Jewellery, Watches & Sunglasses', 'jewellery-and-watches-sunglasses', 1, NULL, 0, NULL),
(20, 'Patio, Lawn & Garden', 'patio-lawn-garden', 0, NULL, 0, NULL),
(21, 'Pet Supplies', 'pet-supplies', 1, NULL, 0, NULL),
(22, 'Sports & Fitness', 'sprts-and-fitness', 1, NULL, 0, NULL),
(23, 'Toys & Books', 'toys-and-books', 0, NULL, 0, NULL),
(24, 'Office Products', 'office-products', 1, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(191) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 29, 101, 'this is my new comment', '2021-01-12 23:12:03', '2021-01-12 23:12:03'),
(2, 29, 102, 'this is my first test comment.\r\nThank you.', '2021-02-10 02:08:51', '2021-02-10 02:08:51');

-- --------------------------------------------------------

--
-- Table structure for table `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `reply_content` longtext DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment_replies`
--

INSERT INTO `comment_replies` (`id`, `comment_id`, `name`, `email`, `reply_content`, `pid`, `created_at`, `updated_at`) VALUES
(1, 1, 'Alexandr Kuznetsov', 'alexandr_1227@outlook.com', 'alexandr kuznetsov', NULL, '2021-01-12 16:39:33', '2021-01-12 16:39:33'),
(2, 1, 'Nikita Kulikov', 'Nikita@gmail.com', 'I am Nikita', NULL, '2021-01-12 17:21:28', '2021-01-12 17:21:28'),
(3, 2, 'Nikita Kulikov', 'Nikita@gmail.com', 'I am Nikita kulikov', NULL, '2021-01-12 18:00:25', '2021-01-12 18:00:25'),
(4, 7, 'vittali lyappunov', 'lyppunov19@outlook.com', 'I agree with you', NULL, '2021-01-16 14:41:32', '2021-01-16 14:41:32');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` int(11) NOT NULL,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT 0,
  `todays_count` int(11) NOT NULL DEFAULT 0,
  `today` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `type`, `referral`, `total_count`, `todays_count`, `today`) VALUES
(1, 'referral', 'www.facebook.com', 5, 0, NULL),
(2, 'referral', 'geniusocean.com', 2, 0, NULL),
(3, 'browser', 'Windows 10', 1378, 0, NULL),
(4, 'browser', 'Linux', 221, 0, NULL),
(5, 'browser', 'Unknown OS Platform', 384, 0, NULL),
(6, 'browser', 'Windows 7', 415, 0, NULL),
(7, 'referral', 'yandex.ru', 15, 0, NULL),
(8, 'browser', 'Windows 8.1', 536, 0, NULL),
(9, 'referral', 'www.google.com', 6, 0, NULL),
(10, 'browser', 'Android', 356, 0, NULL),
(11, 'browser', 'Mac OS X', 502, 0, NULL),
(12, 'referral', 'l.facebook.com', 1, 0, NULL),
(13, 'referral', 'codecanyon.net', 6, 0, NULL),
(14, 'browser', 'Windows XP', 2, 0, NULL),
(15, 'browser', 'Windows 8', 1, 0, NULL),
(16, 'browser', 'iPad', 4, 0, NULL),
(17, 'browser', 'Ubuntu', 1, 0, NULL),
(18, 'browser', 'iPhone', 4, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GK', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libyan Arab Jamahiriya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'TY', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Reunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Swaziland'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `price`, `times`, `used`, `status`, `start_date`, `end_date`) VALUES
(1, 'eqwe', 1, 12.22, '990', 18, 1, '2019-01-15', '2026-08-20'),
(2, 'sdsdsasd', 0, 11, NULL, 2, 1, '2019-05-23', '2022-05-26'),
(3, 'werwd', 0, 22, NULL, 3, 1, '2019-05-23', '2023-06-08'),
(4, 'asdasd', 1, 23.5, NULL, 1, 1, '2019-05-23', '2020-05-28'),
(5, 'kopakopakopa', 0, 40, NULL, 3, 1, '2019-05-23', '2032-05-20'),
(6, 'rererere', 1, 9, '665', 1, 1, '2019-05-23', '2022-05-26');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`) VALUES
(1, 'USD', '$', 1, 1),
(4, 'BDT', '৳', 85, 0),
(6, 'EUR', '€', 0.89, 0),
(8, 'INR', '₹', 68.95, 0),
(9, 'NGN', '₦', 363.919, 0),
(10, 'BRL', 'R$', 4.02, 0);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `currency` blob DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT 0,
  `currency_value` double DEFAULT 0,
  `method` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_body` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `status`) VALUES
(1, 'new_order', 'Your Order Placed Successfully', '<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>', 1),
(2, 'new_registration', 'Welcome To Royal Commerce', '<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>', 1),
(3, 'vendor_accept', 'Your Vendor Account Activated', '<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>', 1),
(4, 'subscription_warning', 'Your subscrption plan will end after five days', '<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>', 1),
(5, 'vendor_verification', 'Request for verification.', '<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>', 1),
(6, 'wallet_deposit', 'Balance Added to Your Account.', '<p>Hello {customer_name},<br>${deposit_amount} has been deposited in your account. Your current balance is ${wallet_balance}</p><p>Thank You<br></p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `details`, `status`) VALUES
(1, 'Right my front it wound cause fully', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(3, 'Man particular insensible celebrated', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 1),
(4, 'Civilly why how end viewing related', '<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(5, 'Six started far placing saw respect', '<span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>', 0),
(6, 'She jointure goodness interest debat', '<div style=\"text-align: center;\"><div style=\"text-align: center;\"><img src=\"https://i.imgur.com/MGucWKc.jpg\" width=\"350\"></div></div><div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.<br></span></div>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `favorite_sellers`
--

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite_sellers`
--

INSERT INTO `favorite_sellers` (`id`, `user_id`, `vendor_id`) VALUES
(1, 22, 13);

-- --------------------------------------------------------

--
-- Table structure for table `featured_banners`
--

CREATE TABLE `featured_banners` (
  `id` int(191) NOT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featured_banners`
--

INSERT INTO `featured_banners` (`id`, `link`, `photo`) VALUES
(6, 'https://www.google.com/', '1571287040feature1.jpg'),
(7, 'https://www.google.com/', '1571287047feature2.jpg'),
(8, 'https://www.google.com/', '1571287054feature3.jpg'),
(10, 'https://www.google.com/', '1571287106feature4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `featured_links`
--

CREATE TABLE `featured_links` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featured_links`
--

INSERT INTO `featured_links` (`id`, `name`, `link`, `photo`) VALUES
(12, 'GADGET 1', 'https://www.google.com/', '1571287354flink.png'),
(13, 'GADGET 2', 'https://www.google.com/', '1571287366flink.png'),
(14, 'GADGET 3', 'https://www.google.com/', '1571287383flink.png'),
(15, 'GADGET 4', 'https://www.google.com/', '1571287404flink.png'),
(16, 'GADGET 5', 'https://www.google.com/', '1571287415flink.png'),
(17, 'GADGET 6', 'https://www.google.com/', '1571287427flink.png'),
(18, 'GADGET 7', 'https://www.google.com/', '1571287439flink.png'),
(19, 'GADGET 8', 'https://www.google.com/', '1571287453flink.png'),
(20, 'GADGET 9', 'https://www.google.com/', '1571287481flink.png'),
(21, 'GADGET 10', 'https://www.google.com/', '1571287511flink.png');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(6, 93, '156801646314-min.jpg'),
(7, 93, '156801646315-min.jpg'),
(8, 93, '156801646316-min.jpg'),
(22, 129, '15680254328Ei8T0MB.jpg'),
(23, 129, '1568025432wRmpve8d.jpg'),
(24, 129, '1568025432kkRYzLsF.jpg'),
(25, 129, '1568025432zxQBe6Gk.jpg'),
(26, 128, '1568025537sJbDPnFk.jpg'),
(27, 128, '1568025537NBmHxJOz.jpg'),
(28, 128, '1568025537hxqeFbS8.jpg'),
(29, 128, '1568025538zK3tJpmL.jpg'),
(34, 126, '1568025693kKLReNYO.jpg'),
(35, 126, '1568025694Iv3pkz1q.jpg'),
(36, 126, '1568025694T8HhdLVS.jpg'),
(37, 126, '1568025695vTdg7ndt.jpg'),
(38, 125, '15680257894Waz2tuN.jpg'),
(39, 125, '1568025789vd0P4TBv.jpg'),
(40, 125, '15680257899bih5sGh.jpg'),
(41, 125, '156802578924sLIgzl.jpg'),
(42, 124, '1568025825cC2Pmuit.jpg'),
(43, 124, '1568025825EACzLFld.jpg'),
(44, 124, '1568025825MfCyCqtD.jpg'),
(45, 124, '15680258252yabMeAz.jpg'),
(46, 123, '15680258512fKQla5g.jpg'),
(47, 123, '1568025851pIjl0mWp.jpg'),
(48, 123, '1568025851tQw7JXXG.jpg'),
(49, 123, '1568025851ewjtSDkZ.jpg'),
(50, 96, '1568025891wWAAbOjc.jpg'),
(51, 96, '1568025891fyMNeXRy.jpg'),
(52, 96, '1568025891OdV64Tw1.jpg'),
(53, 96, '1568025891xQF7Zufe.jpg'),
(58, 102, '1568026307THs0VQQU.jpg'),
(59, 102, '1568026307jvCscHth.jpg'),
(60, 102, '1568026307g5xMFdx3.jpg'),
(61, 102, '1568026307Z3at0HEM.jpg'),
(62, 101, '1568026331Y6UMgMcI.jpg'),
(63, 101, '1568026331xZbT4OWG.jpg'),
(64, 101, '1568026331y7eIFJXZ.jpg'),
(65, 101, '1568026331i2wH8RI0.jpg'),
(66, 100, '1568026374xCTjQYZ8.jpg'),
(67, 100, '1568026374DzmvqA9d.jpg'),
(68, 100, '1568026374OEH73u5X.jpg'),
(69, 100, '1568026374vZhqRv8c.jpg'),
(70, 99, '15680264120LdBSU1v.jpg'),
(71, 99, '1568026412eMjsI940.jpg'),
(72, 99, '1568026412GFjvHiZv.jpg'),
(73, 99, '15680264122fwGi20d.jpg'),
(78, 97, '1568026469hSlmBpzE.jpg'),
(79, 97, '15680264697AI8LicQ.jpg'),
(80, 97, '15680264691xyFt5Y6.jpg'),
(81, 97, '1568026469dC3hrMz0.jpg'),
(86, 109, '1568026737EBGSE78G.jpg'),
(87, 109, '1568026737B8hO1RRr.jpg'),
(88, 109, '1568026737tf0rwVoz.jpg'),
(89, 109, '1568026737GGIPSqYo.jpg'),
(95, 107, '1568026797FFNrNPxK.jpg'),
(96, 107, '1568026797UwY9ZLfQ.jpg'),
(97, 107, '1568026797Kl6eZLx5.jpg'),
(98, 107, '1568026797h3R48VaO.jpg'),
(99, 107, '15680267989kXwH40I.jpg'),
(100, 106, '1568026836ErM5FJxg.jpg'),
(101, 106, '1568026836VLrxIk0u.jpg'),
(102, 106, '1568026836lgLuMV6p.jpg'),
(103, 106, '1568026836JBUTQX8v.jpg'),
(104, 105, '1568026861YorsLvUa.jpg'),
(105, 105, '1568026861PikoX1Qb.jpg'),
(106, 105, '1568026861SBJqjw66.jpg'),
(107, 105, '1568026861WYh54Arp.jpg'),
(108, 104, '1568026885rmo0LDoo.jpg'),
(109, 104, '15680268851m939o7O.jpg'),
(110, 104, '1568026885fVXYCGKu.jpg'),
(111, 104, '1568026885GDRL3thY.jpg'),
(112, 103, '1568026903LbVQUxIr.jpg'),
(113, 103, '1568026914IpRVYDV4.jpg'),
(114, 103, '15680269141gKO8x5X.jpg'),
(115, 103, '1568026914Q938xXM2.jpg'),
(116, 93, '1568026950y7ihS4wE.jpg'),
(125, 122, '1568027503rFK94cnU.jpg'),
(126, 122, '1568027503i1X2FtIi.jpg'),
(127, 122, '156802750316jxawoZ.jpg'),
(128, 122, '1568027503QRBf290F.jpg'),
(129, 121, '1568027539SQqUc8Bu.jpg'),
(130, 121, '1568027539Zs5OTzjq.jpg'),
(131, 121, '1568027539C45VRZq1.jpg'),
(132, 121, '15680275398ovCzFnJ.jpg'),
(133, 120, '1568027565bJgX744G.jpg'),
(134, 120, '1568027565j0RPFUgX.jpg'),
(135, 120, '1568027565QGi6Lhyo.jpg'),
(136, 120, '15680275658MAY3VKp.jpg'),
(137, 119, '1568027610p9R6ivC6.jpg'),
(138, 119, '1568027610t2Aq7E5D.jpg'),
(139, 119, '1568027611ikz4n0fx.jpg'),
(140, 119, '15680276117BLgrCub.jpg'),
(141, 118, '156802763634t0c8tG.jpg'),
(142, 118, '1568027636fuJplSf3.jpg'),
(143, 118, '1568027636MXcgCQHU.jpg'),
(144, 118, '1568027636lfexGTpt.jpg'),
(145, 117, '1568027665rFHWlsAJ.jpg'),
(146, 117, '15680276655LPktA9k.jpg'),
(147, 117, '1568027665vcNWWq3u.jpg'),
(148, 117, '1568027665gQnqKhCw.jpg'),
(149, 116, '1568027692FPQpwtWN.jpg'),
(150, 116, '1568027692zBaGjOIC.jpg'),
(151, 116, '1568027692UXpDx63F.jpg'),
(152, 116, '1568027692KdIWbIGK.jpg'),
(153, 95, '1568027743xS8gHocM.jpg'),
(154, 95, '1568027743aVUOljdD.jpg'),
(155, 95, '156802774327OOA1Zj.jpg'),
(156, 95, '1568027743kGBx6mxa.jpg'),
(172, 130, '1568029084hQT5ZO0j.jpg'),
(173, 130, '1568029084ncGXxQzN.jpg'),
(174, 130, '1568029084b0OonKFy.jpg'),
(175, 130, '15680290857TD4iOWP.jpg'),
(180, 114, '1568029158brS7xQCe.jpg'),
(181, 114, '1568029158QlC0tg5a.jpg'),
(182, 114, '1568029158RrN4AEtQ.jpg'),
(187, 112, '1568029210JSAwjRPr.jpg'),
(188, 112, '1568029210EiVUkcK6.jpg'),
(189, 112, '1568029210fJSo5hya.jpg'),
(190, 112, '15680292101vCcGfq8.jpg'),
(191, 111, '1568029272lB0JETcn.jpg'),
(192, 111, '1568029272wF3ldKgv.jpg'),
(193, 111, '1568029272NI33ExCu.jpg'),
(194, 111, '15680292724TXrpokz.jpg'),
(197, 134, '15693932021.jpg'),
(198, 134, '15693932022.jpg'),
(199, 135, '15698200931.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT 1,
  `talkto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_language` tinyint(1) NOT NULL DEFAULT 1,
  `is_loader` tinyint(1) NOT NULL DEFAULT 1,
  `map_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disqus` tinyint(1) NOT NULL DEFAULT 0,
  `disqus` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_contact` tinyint(1) NOT NULL DEFAULT 0,
  `is_faq` tinyint(1) NOT NULL DEFAULT 0,
  `guest_checkout` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_check` tinyint(1) NOT NULL DEFAULT 0,
  `cod_check` tinyint(1) NOT NULL DEFAULT 0,
  `stripe_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_format` tinyint(1) NOT NULL DEFAULT 0,
  `withdraw_fee` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `tax` double NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `mail_engine` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT 0,
  `is_comment` tinyint(1) NOT NULL DEFAULT 1,
  `is_currency` tinyint(1) NOT NULL DEFAULT 1,
  `add_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_stock` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_wish` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_wish` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish_remove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_compare` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_compare` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `compare_remove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_change` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_found` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_coupon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_coupon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_affilate` tinyint(1) NOT NULL DEFAULT 1,
  `affilate_charge` int(100) NOT NULL DEFAULT 0,
  `affilate_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `already_cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_commission` double NOT NULL DEFAULT 0,
  `percentage_commission` double NOT NULL DEFAULT 0,
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT 0,
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT 0,
  `reg_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `cod_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT 0,
  `menu_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_hover_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT 0,
  `is_verification_email` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instamojo` tinyint(1) NOT NULL DEFAULT 0,
  `instamojo_sandbox` tinyint(1) NOT NULL DEFAULT 0,
  `is_paystack` tinyint(1) NOT NULL DEFAULT 0,
  `paystack_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paystack_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wholesell` int(191) NOT NULL DEFAULT 0,
  `is_capcha` tinyint(1) NOT NULL DEFAULT 0,
  `error_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT 0,
  `popup_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popup_background` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT 0,
  `is_report` tinyint(1) NOT NULL,
  `paypal_check` tinyint(1) DEFAULT 0,
  `paypal_client_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_client_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paypal_sandbox_check` tinyint(2) DEFAULT 2,
  `footer_logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_merchant` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_website` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_industry` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paytm` int(11) NOT NULL DEFAULT 1,
  `paytm_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_mode` enum('sandbox','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_molly` tinyint(1) NOT NULL DEFAULT 0,
  `molly_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `molly_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_razorpay` int(11) NOT NULL DEFAULT 1,
  `razorpay_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `razorpay_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_stock` tinyint(1) NOT NULL DEFAULT 0,
  `is_maintain` tinyint(1) NOT NULL DEFAULT 0,
  `maintain_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_authorize` tinyint(4) NOT NULL,
  `authorize_login_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorize_txn_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorize_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorize_mode` enum('PRODUCTION','SANDBOX') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_mercado` tinyint(4) NOT NULL,
  `mercado_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mercado_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mercadopago_sandbox_check` tinyint(1) NOT NULL DEFAULT 1,
  `is_buy_now` tinyint(4) NOT NULL,
  `is_flutter` tinyint(4) NOT NULL DEFAULT 1,
  `flutter_public_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_twocheckout` tinyint(1) NOT NULL DEFAULT 1,
  `twocheckout_private_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twocheckout_seller_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twocheckout_public_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twocheckout_sandbox_check` tinyint(1) NOT NULL DEFAULT 1,
  `twocheckout_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_ssl` tinyint(1) NOT NULL DEFAULT 1,
  `ssl_sandbox_check` tinyint(1) NOT NULL DEFAULT 1,
  `ssl_store_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssl_store_password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ssl_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_voguepay` tinyint(1) NOT NULL DEFAULT 1,
  `vougepay_merchant_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vougepay_developer_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voguepay_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_product` tinyint(1) NOT NULL DEFAULT 1,
  `api_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `favicon`, `title`, `header_email`, `header_phone`, `footer`, `copyright`, `colors`, `loader`, `admin_loader`, `is_talkto`, `talkto`, `is_language`, `is_loader`, `map_key`, `is_disqus`, `disqus`, `is_contact`, `is_faq`, `guest_checkout`, `stripe_check`, `cod_check`, `stripe_key`, `stripe_secret`, `currency_format`, `withdraw_fee`, `withdraw_charge`, `tax`, `shipping_cost`, `mail_engine`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_smtp`, `is_comment`, `is_currency`, `add_cart`, `out_stock`, `add_wish`, `already_wish`, `wish_remove`, `add_compare`, `already_compare`, `compare_remove`, `color_change`, `coupon_found`, `no_coupon`, `already_coupon`, `order_title`, `order_text`, `is_affilate`, `affilate_charge`, `affilate_banner`, `already_cart`, `fixed_commission`, `percentage_commission`, `multiple_shipping`, `multiple_packaging`, `vendor_ship_info`, `reg_vendor`, `cod_text`, `paypal_text`, `stripe_text`, `header_color`, `footer_color`, `copyright_color`, `is_admin_loader`, `menu_color`, `menu_hover_color`, `is_home`, `is_verification_email`, `instamojo_key`, `instamojo_token`, `instamojo_text`, `is_instamojo`, `instamojo_sandbox`, `is_paystack`, `paystack_key`, `paystack_email`, `paystack_text`, `wholesell`, `is_capcha`, `error_banner`, `is_popup`, `popup_title`, `popup_text`, `popup_background`, `invoice_logo`, `user_image`, `vendor_color`, `is_secure`, `is_report`, `paypal_check`, `paypal_client_id`, `paypal_client_secret`, `paypal_sandbox_check`, `footer_logo`, `email_encryption`, `paytm_merchant`, `paytm_secret`, `paytm_website`, `paytm_industry`, `is_paytm`, `paytm_text`, `paytm_mode`, `is_molly`, `molly_key`, `molly_text`, `is_razorpay`, `razorpay_key`, `razorpay_secret`, `razorpay_text`, `show_stock`, `is_maintain`, `maintain_text`, `is_authorize`, `authorize_login_id`, `authorize_txn_key`, `authorize_text`, `authorize_mode`, `is_mercado`, `mercado_token`, `mercado_text`, `mercadopago_sandbox_check`, `is_buy_now`, `is_flutter`, `flutter_public_key`, `flutter_text`, `flutter_secret`, `is_twocheckout`, `twocheckout_private_key`, `twocheckout_seller_id`, `twocheckout_public_key`, `twocheckout_sandbox_check`, `twocheckout_text`, `is_ssl`, `ssl_sandbox_check`, `ssl_store_id`, `ssl_store_password`, `ssl_text`, `is_voguepay`, `vougepay_merchant_id`, `vougepay_developer_code`, `voguepay_text`, `version`, `affilate_product`, `api_url`) VALUES
(1, '16361270941580538560logo.png', '1636127365favicon.png', 'ABC Saigon Shop', 'Info@example.com', '0123 456789', 'ABC SAIGON is a delivery and shopping company which transfer all kinds of goods and packages from US to Vietnam.', 'COPYRIGHT © 2021. All Rights Reserved By ABCSaigonShop.com', '##5fa30f', '1564224328loading3.gif', '16361274181564224329loading3.gif', 0, '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', 1, 1, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 0, '<div id=\"disqus_thread\">         \r\n    <script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://junnun.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n    </script>\r\n    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n    </div>', 1, 1, 0, 1, 1, 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 1, 5, 5, 0, 5, 'smtp', NULL, NULL, NULL, NULL, 'geniustest11@gmail.com', 'GeniusTest', 0, 1, 1, 'Successfully Added To Cart', 'Out Of Stock', 'Add To Wishlist', 'Already Added To Wishlist', 'Successfully Removed From The Wishlist', 'Successfully Added To Compare', 'Already Added To Compare', 'Successfully Removed From The Compare', 'Successfully Changed The Color', 'Coupon Found', 'No Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR PURCHASE.', 'We\'ll email you an order confirmation with details and tracking info.', 1, 8, '15587771131554048228onepiece.jpeg', 'Already Added To Cart', 5, 5, 1, 1, 1, 1, 'Pay with cash upon delivery.', 'Pay via your PayPal account.', 'Pay via your Credit Card.', '#ffffff', '#354e63', '#5fa30f', 1, '#ff5500', '#02020c', 0, 0, 'test_172371aa837ae5cad6047dc3052', 'test_4ac5a785e25fc596b67dbc5c267', 'Pay via your Instamojo account.', 0, 1, 0, 'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2', 'junnuns@gmail.com', 'Pay via your Paystack account.', 10, 1, '1566878455404.png', 1, 'NEWSLETTER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita porro ipsa nulla, alias, ab minus.', '1578998786adv-banner.jpg', '16361271201580538560logo.png', '1567655174profile.jpg', '#666666', 0, 1, 1, 'AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi', 'EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE', 1, '16361271171580538560logo.png', NULL, 'tkogux49985047638244', 'LhNGUUKE9xCQ9xY8', 'WEBSTAGING', 'Retail', 0, 'Pay via your Paytm account.', 'sandbox', 0, 'test_5HcWVs9qc5pzy36H9Tu9mwAyats33J', 'Pay with Molly Payment.', 0, 'rzp_test_xDH74d48cwl8DF', 'cr0H1BiQ20hVzhpHfHuNbGri', 'Pay via your Razorpay account.', 0, 0, '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>', 0, '76zu9VgUSxrJ', '2Vj62a6skSrP5U3X', 'Pay Via Authorize.Net', 'SANDBOX', 0, 'TEST-705032440135962-041006-ad2e021853f22338fe1a4db9f64d1491-421886156', 'Pay Via MarcadoPago', 1, 1, 0, 'FLWPUBK_TEST-a34940f2f87746abbdd8c117caee81cf-X', 'Pay via your Flutter Wave account.', 'FLWSECK_TEST-1cb427c96e0b1e6772a04504be3638bd-X', 0, '9668BB2D-C246-4175-8F5B-CB72F655097B', '901417869', '2C2879C4-9F81-47D5-89F3-863F4CF0E7A3', 1, 'Pay Via 2Checkout', 0, 1, 'geniu5e1b00621f81e', 'geniu5e1b00621f81e@ssl', 'Pay Via SSLCommerz', 0, 'demo', '5a61be72ab323', 'Pay Via Voguepay', '4.0', 1, 'http://localhost:8090/Vietnam');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`) VALUES
(11, 1, 'English', '1579775344B7uQhhvr.json');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(191) NOT NULL,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL,
  `order_id` int(191) UNSIGNED DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `vendor_id`, `product_id`, `conversation_id`, `is_read`, `created_at`, `updated_at`) VALUES
(2, 2, NULL, NULL, NULL, NULL, 1, '2020-02-01 03:16:12', '2020-02-01 03:16:27'),
(17, 4, NULL, NULL, NULL, NULL, 0, '2021-11-25 22:51:30', '2021-11-25 22:51:30'),
(18, 5, NULL, NULL, NULL, NULL, 0, '2021-12-01 23:30:40', '2021-12-01 23:30:40'),
(19, 6, NULL, NULL, NULL, NULL, 0, '2021-12-01 23:33:47', '2021-12-01 23:33:47'),
(20, 7, NULL, NULL, NULL, NULL, 0, '2021-12-01 23:43:41', '2021-12-01 23:43:41'),
(21, 8, NULL, NULL, NULL, NULL, 0, '2021-12-02 00:08:37', '2021-12-02 00:08:37'),
(22, 9, NULL, NULL, NULL, NULL, 0, '2021-12-02 00:13:54', '2021-12-02 00:13:54'),
(23, 10, NULL, NULL, NULL, NULL, 0, '2021-12-02 00:15:32', '2021-12-02 00:15:32'),
(24, 11, NULL, NULL, NULL, NULL, 0, '2021-12-02 00:20:17', '2021-12-02 00:20:17'),
(25, 12, NULL, NULL, NULL, NULL, 0, '2021-12-02 00:23:32', '2021-12-02 00:23:32'),
(26, 13, NULL, NULL, NULL, NULL, 0, '2021-12-02 00:25:02', '2021-12-02 00:25:02'),
(27, 14, NULL, NULL, NULL, NULL, 0, '2021-12-02 00:29:32', '2021-12-02 00:29:32'),
(28, 15, NULL, NULL, NULL, NULL, 0, '2021-12-02 00:36:31', '2021-12-02 00:36:31'),
(29, 16, NULL, NULL, NULL, NULL, 0, '2021-12-02 00:51:39', '2021-12-02 00:51:39'),
(30, 17, NULL, NULL, NULL, NULL, 0, '2021-12-02 03:18:32', '2021-12-02 03:18:32'),
(31, 18, NULL, NULL, NULL, NULL, 0, '2021-12-02 03:29:37', '2021-12-02 03:29:37'),
(32, 19, NULL, NULL, NULL, NULL, 0, '2021-12-02 03:33:17', '2021-12-02 03:33:17'),
(33, 20, NULL, NULL, NULL, NULL, 0, '2021-12-02 03:51:04', '2021-12-02 03:51:04'),
(34, 21, NULL, NULL, NULL, NULL, 0, '2021-12-02 05:05:00', '2021-12-02 05:05:00'),
(35, 23, NULL, NULL, NULL, NULL, 0, '2021-12-02 05:11:34', '2021-12-02 05:11:34'),
(36, 25, NULL, NULL, NULL, NULL, 0, '2021-12-02 05:24:24', '2021-12-02 05:24:24'),
(37, 26, NULL, NULL, NULL, NULL, 0, '2021-12-02 05:25:52', '2021-12-02 05:25:52'),
(38, 27, NULL, NULL, NULL, NULL, 0, '2021-12-02 05:36:39', '2021-12-02 05:36:39'),
(39, 28, NULL, NULL, NULL, NULL, 0, '2021-12-02 05:37:50', '2021-12-02 05:37:50'),
(40, 29, NULL, NULL, NULL, NULL, 0, '2021-12-02 05:41:42', '2021-12-02 05:41:42'),
(41, 30, NULL, NULL, NULL, NULL, 0, '2021-12-02 05:48:00', '2021-12-02 05:48:00'),
(42, 32, NULL, NULL, NULL, NULL, 0, '2021-12-02 05:49:34', '2021-12-02 05:49:34'),
(43, 33, NULL, NULL, NULL, NULL, 0, '2021-12-02 05:54:33', '2021-12-02 05:54:33'),
(44, 34, NULL, NULL, NULL, NULL, 0, '2021-12-02 06:12:38', '2021-12-02 06:12:38'),
(45, 35, NULL, NULL, NULL, NULL, 0, '2021-12-02 06:14:08', '2021-12-02 06:14:08'),
(46, 36, NULL, NULL, NULL, NULL, 0, '2021-12-02 06:18:01', '2021-12-02 06:18:01'),
(47, 37, NULL, NULL, NULL, NULL, 0, '2021-12-02 06:18:56', '2021-12-02 06:18:56'),
(48, 39, NULL, NULL, NULL, NULL, 0, '2021-12-02 06:37:04', '2021-12-02 06:37:04'),
(49, 40, NULL, NULL, NULL, NULL, 0, '2021-12-02 06:38:20', '2021-12-02 06:38:20'),
(50, 41, NULL, NULL, NULL, NULL, 0, '2021-12-02 06:39:46', '2021-12-02 06:39:46'),
(51, 42, NULL, NULL, NULL, NULL, 0, '2021-12-02 06:43:23', '2021-12-02 06:43:23'),
(52, 44, NULL, NULL, NULL, NULL, 0, '2021-12-02 06:45:07', '2021-12-02 06:45:07'),
(53, 46, NULL, NULL, NULL, NULL, 0, '2021-12-02 06:47:18', '2021-12-02 06:47:18'),
(54, 48, NULL, NULL, NULL, NULL, 0, '2021-12-02 07:23:24', '2021-12-02 07:23:24'),
(55, 49, NULL, NULL, NULL, NULL, 0, '2021-12-02 07:26:24', '2021-12-02 07:26:24'),
(56, 51, NULL, NULL, NULL, NULL, 0, '2021-12-02 07:28:38', '2021-12-02 07:28:38'),
(57, 53, NULL, NULL, NULL, NULL, 0, '2021-12-02 07:37:21', '2021-12-02 07:37:21'),
(58, 55, NULL, NULL, NULL, NULL, 0, '2021-12-02 07:43:30', '2021-12-02 07:43:30'),
(59, 57, NULL, NULL, NULL, NULL, 0, '2021-12-02 07:46:49', '2021-12-02 07:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT 0,
  `tax` int(191) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT 0,
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_shipping_id` int(191) NOT NULL DEFAULT 0,
  `vendor_packing_id` int(191) NOT NULL DEFAULT 0,
  `wallet_price` double NOT NULL DEFAULT 0,
  `shipping_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packing_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(200) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `wallet_price`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`, `weight`) VALUES
(3, NULL, 'BZh91AY&SYíOß3\0ßP\0Xø?[ü¿ïÿú`=\0¨Â2æ4À&C\00L\0\0 ©ä¨ 4ÓL@`Ld0\0À\0\0D¦# ¦\r\09M0	À\0L\0\0\"\"hÔÐ#Ð154õÔzRÀRÐ)gy{\"A@x\'Ùåî}ïE$QÕ:âç\ZË.1Ð(á¤.î7\\°kaWRÒk©hB×âLL«c±M(QU6I$ÎËPÖì\rfÂÞcÚý¶öÑ¿,ï Ä¿A^@ëÈ úÏ©âxãµÆÂt*yÈÓ\nÀÏ n¯qÆ%ÎÁ-:ey¤86J9qÞA7 \0Ø4ºh,T\ZF²Db\r1¦-tÇ]\r&E\\ºeGï(¡*Äad@qJ_\"µ2hL$ØÂÒ¬*MMx¦B`@Ø5X´ÚzÊqÃ dQ^RwBQT ªNï*X\n´E+E e¢Ú&³8l ©ª»ÎÁL01ÊA\nXq,Pá°qL¨ð¡ªRðv{P-æî\\ºD¥ËS`dT\" ÎîV®\né$£©*Ë(dª«Ü¾©jó\r¬¢I6Ø!%@èÔ\r¸\Z¨* ;RPH°aF À¶fX	dBA[HÃcÕ¬ÙªÄ\0}Tã+:T6S¤ÂíÛ½VÐqA3LdPÊ¦ÉsNIB(>,=3Zãª4Ð/1LÅÙiàÑÊMç_1Èu	GÇÀÿ/)ô\\¦ã2JlýåÃQ^ñy\rÖíSrJ¢J¦1ahØ  (z\ZçÌfãòAwOÄüÏ§Ìà\\Ö¤Çñ©E&ÐÚhM,9Òy7-Y©(ï>D2ÇªßÚ@\ZÏy¬Ú_H4zTä²Y`ÐØ®pes`vM\Zµ@F$Ã*ðd\ZÆHÅÄ>ÏÜ2wògmýTÉb°(3ó<6j¢½ÖGÌFÃqs¦\\RLN¢Ègy%àAÖ)¸]¸ãX=w÷?SiÛ æ<g¥Ò8\Z÷ZfÕÙ$=Á6,ñ´ò_\0gªð](bb!Övö`OÒæ¡Ì{;3	%Q­µlõ$Ðê´-Ë¤lÛÀÊºÍóN\'°êÒHcb¡8-iÄLµQNkwÔeV*$´(J³Y+3¡T»#d¶>Æ¶tG:.j\'/±=K,ñ2F_-ËI¼ªPj7ÐñÀèl*w}Æ}FvEZ5J.3g1fsôÛgJã+\nT^ã!AÖ4Ü6\n(Ôª.W¸0[Ý\'\ZeAå¤h¡K,c¤\"´A¢ÀRl.tèß®Ô¸«¤Ã1B°J2(D.T:x8Sx¦Æ8¦sJÀ¹yÝ9\0©È1Y*P1F»«ÚÆ|:oÔ\0¨¨¢Ë#y>£áÌ|É÷8\n«ñh Ò\\¬h¾)à/o$/@AÛÛíF@j§ü]ÉáBCµ?|Ì', 'Manual Payment', 'shipto', 'Azampur', '1', 520, '12457879746', NULL, 'numV1636693098', 'Pending', 'quang_nvd@yahoo.com', 'duy nguyen', 'United States', '9409991111', '3212 jupiter rd', 'garland', '75044', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-11-12 10:58:18', '2021-11-12 10:58:18', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'texas', NULL, '0'),
(4, 38, 'BZh91AY&SY¨ìA]\0³_@\0ø+«üD¿ÿÿúP<R,g:Etë££XI$ÈÉ¢a¨õ2\0=L\rA(*~©ê¨4Â\0\0É@\nQPÈÑê2\0iê 4\r4ÈÐ9\0\0\0\0\0\0\0\"Ò¤Ðj\0õ\rLe SM/8ÿxÄçÔÐüj~nm\rÃRES¨QiaÆ:Ïnuß¦\n&FXF×räß©hBñ´Bfe³7®­PI»%M7Ä±cyÚ¬[ øhAkr)È`$AsÐac ÊfbwbHi\n| ¦xJÁAsRä4+M\rXk\'\n*°1AAX¬è,EQ)°÷Ä\"å\0@Ø5H´ÛÐêx­aWh 6ÌÌÑH4V´ ´*(hLwThW ØbÆõ@Â8ÄPáÆDbM©-)\Z¶ \\NÁK{Z	HFHºTgw«°\néÇR¤««Z,UUx¥ïH_Êÿ(MHi%Ë8TIN\Z´XZÖ$¤¤B5ÐC%(ZP¢;¦Ëz3{bê¤¤FÐÆè²`;ôédÃns½Þõ\Zs\"\Z¶4iS`Ì9bT\\¹dÉJ+¥®\rg9»\'s)b¸Vù)>.}n()¯aÎoFÂF%¹¶KºZÃ)a³a\rCur(iª´±j£Òµã¡ñ4pÏÄødíEq¨ð5ùf%@ìÆTÃ1 [GUc-cóLÞ##2DÈÈP.D©DÅCbÜ¸o¡Þfn-¦0Ê­Ljzú<¡ÝßÝÙKã%ÅÞ½ÖÈø&EF¶Pf*Áî!,t$©Æ´cÒkàOì\n)àÌkÚ2q¡×ÜE­½AÎO ¨ñª``\nÛïÞ-üÖË©ìu)\Z@|Û\"ÚnGááà{¾Aì°àbAã I*gÿâ¤°E{vêÐÙ1ÿ.óñf{§iã°Æ!IÕ5BARp¤ò))v¶(J³RVe\nRóà0ù¬WyQZ1T&Ò\nTÊ]»îÏiq ÞvÀ#¸cM²¤yUJh#ÔvÈÔãN}m,WpJ¥Ê¨:\r,Dk`wi×kt{;gÔÐÄÀc½±³1#@R­\nä¦\r	µSRÇ;aâÂªê[î.o%`m`Ì:là<Ïc\n<[N&Y&¡ª±ó0XÖcîEJ\0º3eÒæâÕí9àäR½Þ(Ü5Ù$0q7É¢5j/Qæuæê<üö£ACXÿÅÜN$*;W@', 'Manual Payment', 'shipto', 'Azampur', '1', 72.5, '123123123123123', NULL, 'kpNK1637887890', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-11-25 22:51:30', '2021-11-25 22:51:30', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '3.5'),
(5, 38, 'BZh91AY&SY.%\0*ßP\0Xø?[ü¿ïÿú`=÷@hb [\0`Ld0\0À\0\0J&M&¦\0Ô\0\04\09M0	À\0L\0\0\nT)½PÑ=AÐÐ\04 9M0	À\0L\0\0\" ¡2\0ÙA=L#QíIêy5Nz÷0;`|SæüÎV.P¨Ékøÿ±uàd(|&\\\Z°cÝe*MÖc¤IÐÙÎéYÎU§Äè)\"êÇÉI$Áu¼k\r^£Þ1ý¸ùðé¸ÐÈßÚWµ$\0ÏàÄë5>\'ÚzC·ØP<Îót1zª¾âÂ5Rh·b±§Lñ¥aÁÄäT9y\0#H&åHA±±ÀC\Zhjã8Vv¡¸´q0N¨H Ë.!1LËAÃDÂ@mñjÒ\'C`hÉ­+ÀÒ³75nm5$®D+A¾UUÊ+³Ò¥¦f¬¹UA\n´E+E Ê-ähLÌÛM\\ÍvqB¹$.XØF!£[1YQ<¢o`yW)22T y»µnTP©{Q4DÌ-zÔVÈRU.T£©*êÖ¡5U_rø¤.+Ô8²ZR³×©À.iÂ¬Ã$ 59±,-DÆ5¨	a`×BÒù½nÆnï(è 1 Ý<e6^+CkJ¡o\Z6¶4Á#ÒÐh(YKD¬UØ¬C$ÔZÐbj Õ Ñ)QËVµ¡k¥\\¾÷ª\\÷Hrö a5O~1 lo(uË`á¸h&>ÏàÄGP¸Q¢Ü­þYÉU¥VÅkÇCäm>£9¡\"õI\Z§IÚyø\ZæDbZF	ÇF2RÂÌÜÃySÐk3ô%æ@µ.{÷ÐGOi\0l}FÇ£åS½\ZéfaCbÀ~G0Ï0åcÚn8ß¾2&T¬&a°É»æþ±Ó¾ÝúxS5±A22SÞ`Í°ÀÛU0³?RF{Î3¾¥¡INÄ%d^§¡dxÎ¡áû*kÎmßÚ|?¡®&çAºq²>áX²ÆY\nn0Ã¡À\rBÀPbàîSkÂòçïhp¤0\"Ç|öû:ÊvÀÎt9Lyn	%Q­qzÝô$Ð\'è.¸låØg]õNÎg°ðÜ2P·Hd&^¨\'U=*2«%BL^%LY±+RÄB©y\nGÍp|ÍáÚ-:4ËÔ2;þdø,ì4ÏÈÍþ|#¿qÐªPo:ä?þu­O2O¸×ÀÖê­-áÜïLäEµ9Tãg£K+\nTc!Aâ4®t As·O«ºÞ/¹ù§Ì\"&#dbÁ,ÌJD4R®K:ó¤w:}¬Meà¸µE\"á(Ì¡ºÖø0wu¸²ÜoÄägi\ZÔdSÀ(LÖaÔ}©@É\Z5î_Fö÷÷cSÅ.À¨¨¢ë±ÖOÐ}|ÔÜë(Xìh Ü`tÖò¯hñíGââãF ±ÿ¹\"(HI\0', 'Cash On Delivery', 'shipto', 'Azampur', '2', 282.5, NULL, NULL, 'LjhO1638408639', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Alexandr', 'Vietnam', NULL, 'Kuznetsov', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, 'pending', '2021-12-01 23:30:39', '2021-12-01 23:30:39', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Ho Chi Minh City', '0'),
(6, 38, 'BZh91AY&SYÚ¨µ\0+ßP\0Xø;Kü¿ÿÿú`=ð\0Ä¢9¦&\0\0\0\0\0	Q2hMP=@\0\0@Ð\0b`00\0	\0$J&L#&dÉÂa0\0æ\0L\0L\0`\0&	&MÑ©é¤J6¦Ê\Z~4§¨õ?T	A\"`c4fâ°   \r(ækÞ8X¹B£%¯!ÛüwY ò!´ËñY\r*UÑF~lÄÔÒÕ\"øm¥5¬c÷WÕçE$gÖÑ®»\Z?#Ú1þ7úÏ±ÇòØ`mäWHs<ÎÃ3ÌøPÆ-¦£8jH}JOHc<A\n×_j4\ZøKhµÙtÊ6R£¡_ÄZMI!ÓCRDh\ri¡«m¬éEVm.0ÈÉ2 P Å`À!jW(À[¶,\"-âÌ\n ×ôLÁ\\@Ø5X¼ß¸Ì¹\r®BAkÑS¸àUTÈ½Ø6Þfkò1,ª1fµ©¨ÍFUn ¸BdÚfì¨£¥Æ`AìP¡.IK$7B¨ÉD4gf2\n\'Mì\ná&\n/7v­Âª/j&µëQ[\0aIT¸AR¤««Z,UU|Bà¿½I&ÒÂ\0?«P6âhl	PU68:Ún\0i\r&&14	À\"&ÄHãW#=R	\0Q ÒwÊ¢ó&æ|29k.8¸ÍðQñ\"âÔ¼JåD2MEµ&¡\n¶¡(¨åíkDÐ½ÈRÓ0ÁìôFs `¦¹íç:MÀà.T¹þãÒ=aãxò3*º¸Êê?Ò2Y«~ìÞªÒ«LbµãQCæm¸ÏôAÃ¤c!Üye>ÌôbZgBsLtcÄ¸³3T8¡ô*u­_èxY>ZPG_B\0Ðø\Z\Zf\r¤lÒÄÉCbÈ>\0Çê±ë47Û¶0&T¬}CQ1vþ~ÑÇbKE¦¦ËÙ*8¤*(ªUJÕ(eg´àdXk½A°T)#	Ð²í$ºó=Ä=£7\'Ò¦|) M¹vÀÖóCæwùTèiÈØí¾tJ#ÚráðHû{§5ÉxÞLHbb!½&wÏ_R¹NA¨3®Y¼È¿@U\ZÏ+Öè ÏBM? À7!\'bæ6ur2¶ãx½ `S»@í axè*p%¬ä.&^¨\'bÀ5U¡B	&/\n¦,ÚJØX¨U.ñHàX­F£bZòÎÉ\r2õÜåû£èçäm;%§`¿Cü§!Í°±$±¦Ë*4¶ÃÔsLàEó8TÂüX¬)RC!AÐi\\âAèç-ïUº>OÁ@Æ/¨B¸d$Á¤ÓLihBÒJ\ZL\ZjMÆG-aÞhª½Å¬f(@A	F%èv­dØsíp/b²Ì×dàci¨ÈOdTè¦+Áf>H©@Á\Zø/Fõý¹eÞ ¨¨¢ë\"aO¸û8õ8Y\rö4fb@Ö_c<+ít.`åË¨Mbqw$S	\rªP', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'Vl191638408827', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Vietnam', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Ford', 'Vietnam', NULL, '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', 'THis is my shipping', NULL, NULL, 'pending', '2021-12-01 23:33:47', '2021-12-01 23:33:47', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Ho Chi Minh City', '0'),
(7, 38, 'BZh91AY&SYÎ)\0*ßP\0Xø?[ü¿ïÿú`=ð\0á¨À$#Ó\0\0Á0\0\0£I& h\r\0õ\0\0`Ld0\0À\0\0B\n=CF@dõ\ZzCC@\0õ\0h`Ld0\0À\0\0HSMÈDóPQLGµG©å4Nz÷0;|SÝø?X¹B£%¯Üb6ý»¬~ã$3Cùr|k!¾¥]kþÙ¡7©¾Õ\"øÚZV±¥ý`ÍÆAucä¤M`ºØk¥£Øcûröèë¦¹Ü`Û¼¯zHb<A\"Új|O´ô;1ls83 xøc.ô*e}Åj1.ÄÐ\r!oÌ\Z4é¤fàâr*¥½Ç¼r@ÄhAÐ\\©668#\0ÐÆ\Z¸×\nÏ\nÇfEÆ]dÊe~ÂT ¨Ì0\Z!Îi¦	¶+Ä_`©Ò×Ú	m`ÕbóRJî\Z!\\\"øª¯2J+³Ò¥¦f¬¹UA\n´E+E¸eÄhLÌÛM\\ÍxÐ¸¡B\\\n,Hp$Q¹D4kf2O7°<W`Â¥ËÍÝ«pª¢KÚ¢&d)kÖ¢¶%RáJ:®­j´UU÷/Bä½C(T¥ciÐàéÂ¬Ã$ 48jh°´vf°	Ia`ÑBÒ¿oFoo¨ëPq!¯dÙ\"R}ñëj(gaBÊYábbìQi1(:£-&Aá	Äµ)Gi°êR%k\Z%Ñº4J°ã	÷Î`{\ZFÐæñ\"gP!ü¸bIìð.Cô¹õoîÎj­*´Æ+^8\n#úè}ãW@Êty¬TÈCPåL$E¼/,,ì9¼ø:-ÃZ¡(ô?©sáµuúö8ïOnÒÐËÅü¦ÎÇÔo8ÛhÁ0Ê¥cø4$bîþ\'¯;»õò¦\nÅXÁõ>MµQg+Cõ$gÀât2XkëPn\nHàÄð!,÷]z\Z=v/ÛS^Þoóùÿ\\¤LæéÆÉÆ=rÊ÷ÀS3E\0iFxz»\'0ÿ<¨¯YÄÂb\ZÎU3o·±\\§xpt¡ÐädÙ¼$FµÍëtPgÐpOÐ0Pº¯³q¥xEëÝiå¼;b$<ÅBpµ¾CeêuX\'­FUaP¡	Sp%jX¨U/`¤p-ÌÜñnìFPÓ/PÁãó\'Éia¦~Óñã;Î¥Rc¨¾CÿÇiÞØT÷}Æ¾F·UilÈÏÎd[SÙNPèÀÈÊÂ!ÈÈPy+H å\\ïÝõø[Íø?z>aù1+#	fbR$!¤BrX$iÐp3»Ôíâjë¯ê|XÔP.\nµmO×ö+(zÙ\ZhFãec&g¬Tò\nSE aj>äT a÷/£ü_ÔóK¸!**(ºîDvôo3õ%#ü¥«#}ÍÌN½/1\Zv&ÄyÁ\r»y ¡È,âîH§\n9À ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, '1TFZ1638409421', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Ford', 'Albania', NULL, '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, 'pending', '2021-12-01 23:43:41', '2021-12-01 23:43:41', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Ho Chi Minh City', '0'),
(8, 38, 'BZh91AY&SYtóþZ\0+ßP\0Xø;Kü¿ÿÿú`=ñ@\\J(Ð\næ\0L\0L\0`\0&	DÉ¡5@õ\0\0\0\r@\0iÀÀ\0&\0`* 21&\0\r\0iÀÀ\0&\0`@MÑ©TÙOdjl¡§é0§©´õ,KÐwrl((û<ýÏß(Tdµæ1¿b.ë$c$2¡ór}«!­Jº(ÓêÌI½MmX¢/êQcZÆ7ÿÐeq]Xàw©$H.·\ruØØÞa÷ágíÃSæ_¹wKL¶jà-`T¢b(ÎmLæc¼Aq°Î$\"¡SÈÖÏgP:ëí-Q£^árM\0ÒÙÁf2é\'QÈÔ¯äA-¦¤q©±\"54ÐÕÆ·Vu¢«7* 22L®Ä¨P¨1\\,@5+b``°i\0Ûc8³¨!5ù¦B`®D l\Z¬^oÞhI\\W! µè©Þq*ªd^ìJo35÷UÀ³DZÔØfÃ*·\\M¡2m3v@ÔQÌÒã0 ô(P$¥ËÉ!ATdÉ¢\Z4³EÂ&öpJ	»VáUE\nµL\nZõ¨­0¤ª\\ ©GRUÕ­B*ª¾+ê¸¯°peI´Àp¡%@äÔ\r¸\ZTM	`~2PH°aF À±@6$Ú@Ø÷=\Zl°H\0ù\r³ÂUW73áËYqÅÆh/Â.¥âW,ìZ!j-¨15Teµ	D¥G/kZ$^îBdw¤ª315Ïl9Òhr¥Ïööù\ZãÌÐªêä\\4+°ýÇHÉh­ú³«J­1×º~=çÄa5qåû03Ñi	Í1ÑCâÌÍPâ§Ä©Ö³\Zÿ¤#ÈbÈ©ïÖ:ú§¸ÀÔØË@hûÔõ#1Ý,L46,âqq«ØÔÞ[vèÀeR±ó1\rHÅØËõ[Z-56^ÉTÅ ©P©EP¨ª¨ÂV©C(Ã<ÍÇ\"Ã^\nÅB80HK!²K¯©ì ÄîÀy>4ãMBmÏ°ú}¸Àþò©Ð×·ÒI(XMË´a#íï½Ëò\n?¨®õ³\nARÌ«\róçD³5t:ÎD\Z¨Ö^·Ezføzîv.á³«·éùúiÄAP-i!q2õDI9¬	åQX* bð0¡*`rÍÄ¬Ë\n¥à)°ÃðfÜÅdzwú\'½ca¦~¦(Çá¾;¼ÍÇad Øìàs´ñ$;Iú\ZçeFàÌõ#!ÉH¾ªB!*B2Èd(:\r+ ß\\ç³ÕnñG1jF*°\"Æ0B QDA´ÚyÏ>PðK´U^ÂÖ4  £Bô;VÒfwv¸ä¬¡äwg8âFÊ2ÆFSÙ:\0©Ä0Z*P0Fm{W£ûÿ=Æhx%Ì!**(ºæ¡ØSè>Î$$|DC}\Z598&$~Áxò# H5Sþ.äp¡ éçü´', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'qHig1638410917', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 00:08:37', '2021-12-02 00:08:37', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(9, 38, 'BZh91AY&SYßPÜ\0+ßP\0Xø;Kü¿ÿÿú`=¾J(\0h#b`00\0	\0%4&ECOH\0\0\0Ðb\0\0æ\0L\0L\0`\0&	¤ÄÉ¦É2b0L\09¦&\0\0\0\0\0	DDÐB2jzi2bFÔhÓÔ	A\"`c4fâ°   \r(ækÞ|î`D&çÇK|¬@ç8\r¤úD(>øÒ¥]gâÌ	µM.¬Q¿e(°­cpcaY\\n9©$8,¶\ruÜ@jm/û`Æ3öÝÜ\'3Ç\"óg\"¼@è#$Aâq3<OiÞubØj3y¤Ð¨Tð43´àTºûª0ÐkÚ1.	 \ZB×(.iÓÊàÞu¸\Zï<%¡TÐTl45$FÐÆ\Z°ÖÊÎUfÂÃLS)ª%B\nW°¯X1³èÑmcnÈÖïz\"ò¨!5ø&B`¬D l\Z¬ZmÚfI\\FV! ºÔTí7U1-f\r¥6ûÌF0.h®¦£5U´Âm	tÍQG3K¼qB±$,\\Hm$XÙ,&:K\\²·Ð+ÅÁe´ÈÈÌeV2igiÍK&CÃÀMg\Z¬L4ä©GRU×Pª¯zñH[×ôDm!°(AIPú5n ÀScÈÃ­¦àÒbcÓ@L!lI´±í5y²3Õ!^ô\Z\r\'t«1NIÅPÒkK	\"*¶ßb3oNn ÝÓîj`ÕT6µ ¤Ðµéß2o­jß&û`ÛiÓLåì6Ù>Ü¤õg)â2T±ú=GzÃÂòÑó3*º¸Êê?iÒ1Y«¾ÜªÒ«LbºÑ¨¡ñ6OÔg¼ù ÅT³ø.cölq4Õ=MèÁ-\0àn,`h|k!¯ÜxX=úPG_B\0Ðö\Zæ\rjdd;%Å|áÕqç46lÙªWÉj2F.!ÿ?HÉáæ·ntÖÔH,°³)&®Û\'1>fÃyp×r!P¤çBÄg¤ËÄõ`@öÜ<_Jï¦7râ}¡­ÇÄî=r©ÐÓ»té$G¤&Å3Ø0övNkð<­	.ÄÄBÏZLî=~¥bPg]³qv$ª56­ADýÂðÚüW1³«ÛMÂòN\\Ý°¢C ¨M³°j¢$äð¨Ê«Õ\nI1hP09fÂVEÄB©w\nGÁj0û%¯!e½¡¦Z¡yÏó\'µapÓ>Ãã¶9üÍä Ôâ/¸þÇaÞHsl.$ÜiÊ-æF#9¦o\"ÙÎª_~FV©Ç è4¬p lAc^¯5Ý\'Þ1ê n	0i4Ó\ZC\Z&Ð´ÚiË.îK°U^¢ëÅ\"Á(À¡¼Å¬ûÐ®Pñ9å7`Ffª2ãã:\0©À/Y*P/FM{Úü¹ãÜ ¨¨¢Ë\"QñÞBGÐàHQb7Å 3¯¢÷ð®+µÐ¹.¡6\r8]ÅÜN$ ·Ô7\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'rpKh1638411234', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', 'Ford', 'Vietnam', NULL, '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, 'pending', '2021-12-02 00:13:54', '2021-12-02 00:13:54', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', 'Ho Chi Minh City', '0'),
(10, 38, 'BZh91AY&SY¬âA\0*ßP\0Xø?[ü¿ïÿú`=¾\0j°	æ4À&C\00L\0\0¢dÒiª\Zz\0Ô\0@\09M0	À\0L\0\0\nT(õ\rÔié\r\r\0Ô 9M0	À\0L\0\0\" A4&!ôÔ&Ñ2mIêy4Nz÷0;|SÝø<îeL¢gx¢ÍE/sÑX÷êtQ¯îÌ½MÖ¬QÆÔ¢Êµ¯ëwÕ\'I5ëa®v 7zagëÇqÿNyk\rºê\0gÀÄèj|O´ô;1lr83y yèc.ô*u|ËÔb]É \ZBÝ4égHpp8VãRþg¼t \0à4 Ñ4*B\räÀ41¦®5­g}\rÃ³\"ã33L§ØJqÃs3È²±ÃDÂ@mñÄá+À×Ú	m`ÕbóRJè4B¹4âª¼(¬ZÌJ²åU0*Ñ­(¶ °BdÖfÜ$jjæk¼fD}Å\n2äT¹bCy$(*4CF¶c(±Dñ{Åq&*PL¼ÝÚ·\nª(T½¨\"fB½j+`RU.T£©*êÖ¡%U_5ñH\\W¨qeJ ,q\r:Ý8Ud\rMÌÖ),12\Z0 hZP¢à7íèÍíõj\0n$3[J(¯2ndG+UÃ¢/µã\n\"Z$XP²X«±XI¨µ ÄÔ!Q´%µkXj±\nUËïz¥Ït g/bT÷è1=dxC¬þ\\K\rÄKD±4ÉöxaBâmÆr·àÎJ­*´Æ+^8\n#|úæaÖ$j\'iÀÔ/2#Ò9S`fæÜ|\nÖYäzÔ¹ðÚ:}D¼ûÎ&{£åSÅ\ZédfÁ¡±fÌ2È9XúÇÛm&T¬³ Þ2F.¡óÐdôñw~TÉaX Ë0§ÀÌÉ°Ìmª<ÖGèHÏÀæfXkëPh*ÁÞBY÷]z=w7î©¯:n	·ÿ?®\'AÎtãd}Ã7X²ÆÜaC\Z0ÄPbáïWcÄóçïë8LCYÊ±Æm÷w+ð\ràÎt9LÈ=»ITk\\ï[¢>ýÁ¢ì6rêe]çzÁ\0À§^g¸òÜHb$=¡8ZÝ!2õDI:¬Ò£*°¨PIÀÂ©Ë7µ,@T*´R8KÃæhiÜÐÓ/PÁãó\'Éea¦~FHËóá;Rc ¾CÿçyàØT÷}Æ¾F·UilÏÎD[SÝN0èÀÌeaJó\n`Ò¹Ð1Ï\r>¾Öö>ÏÞD>LG\nÈÅYi¥\\	\ZtLîõ;xºëÂ:Å¬j(@A	FEÞ¶3·{{U<ÆÙÎ²M#Cec39é<TÉdZª*P0\Zó_F÷þ½g©ìK¨BTTQuÕÞOÐ}üÐØï(Yõh ÜfA:ô¼ÄiØ<ç6íäF ±ÿ¹\"(HVqF ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'aX5N1638411332', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Albania', '333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 00:15:32', '2021-12-02 00:15:32', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0'),
(11, 38, 'BZh91AY&SY,>3\0+ßP\0Xø;Kü¿ÿÿú`=ð\0r\049¦&\0\0\0\0\0	SBzSõ=P\0\0\0\0\0\0b`00\0	\0\"Jh\0M4ô \Zb`00\0	\0$DS#F¦6SÙ$òÒLÒi=OÕ-À¦c<CÜ Þ\n\nÅ3ó*2Zòß\".ë$C$2¡õr}ë!­Jº(ÓÍzÚ±D_\rÔ¢ÆµoýAÆAucz à²ÔkÄãcÀõÆ|¹»©Ñf`nê+Ô\0g`P$Aæq4<ÏqÞsbÜl3ÄÐ¨U°Æw<\nÑ_ij5\Z÷Kh¶Î4égHpp9Î&¥{Ï	h@]4$M¨41¦®5º³­Y¸¸Ã#e²J¬!áJå,a\06ÅFÎ,ÀªM~©+«ö\ZW!¢ÈH-z*v\\\n»ÒÌÍ¾%F0,Ñµ6°Ê®b´&M¦nÈ\Z9\\f{Ê eÉ ©rÄ1$(*4CFc(°¢xDÞÀð®``©A2ówjÜ*¨¡Rö¢i1!K^µ°K(êJºµ¨BÅUW½y¤.îÙDm!°(AIPú5n ÀScÉr2PH°aF Àµ@I´±ó=\Zl°H\0ú\r³¾UØODñ0ÜÇB9áÎ3cÅ6Sj{¹$p2c \Zml\r¡`K3\ZeLU)xÀIbBr<üOô|Èö*\\ýÁÃÒ?C@ðÀ¼y\Z\\üKv¸íß³7ª´ªÓ­xØ@@Pñ7OØgÀø ÉÚ£ÄýÏ§Ìÿ¦FÊHè=ëõ©E&ðÞf:°à§Ä©Ð³\Zù\"§ÃZèí \rOq©±Ñø©êFcºX0hlYÄàâö?Á©Ì[vèÀeR±õ1\rHÅÒùúÆOT;»ñë¦+b,``l0jE\nçÌFãa®åb¡IN¤%ÏY%×ì Äî¼y>Úp¦¡6åÒ}¾ã[Î%¸ÿ2©ÚkÈÍÛ|íJ#Örá¡íHú»¯Zä¼ç+Ãpº`ÃÃgÛ [º\Záó\"íBITkL¯[¢=	3	üÌü+¬lçäencx½ `S³Pê axí	¸Ö/TDÀ5U¡B	&/\n¦,ÜJÌ±Pª]ÂÀ±[?&imÈYðFHi¨`uÿÂ{6\Zgìb|y£¯ÈÜtJ\r~Gø:òC­°±$ó\\ì¨ÒÜ¤d3­3ÐàsÓCð`d2°¥HFYhÒ¹Ähç,ý«v¾O½@Æ/u#D\nXcE!(\"!\ZICIBmIÌdrÏ\"»ÒêW°µ\"á(Ä¡½¥´}Nú+(yfÙÎ8¦¡²±ôÅNÐ 1XAòEJÍ¯jô`_aï¬Ã-ä¹%EE\\:J}ÓÀ¡Ä¢Èo¥ C°¢÷·xpÞG0!eQ$\Z)ÿrE8P,>3', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'Lnkl1638411617', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 00:20:17', '2021-12-02 00:20:17', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(12, 38, 'BZh91AY&SYÀõ\0*ßP\0Xø?[ü¿ïÿú`=ð\0\0è4 `Ld0\0À\0\0æ4À&C\00L\0\0`Ld0\0À\0\0H(z&G¤=ChCL4\06e$ÈÓF¦	 \r\rÈ¦4@\ZhDÔý4Õ4ÚÔMå\'©íR@H\'Æü .\0õEgÇéûebå\n¼Æ#oÔºÉÉPýæ\\ÙR®5þ7©²Õ\"ùm¥u¬gX1q]Xà H,¶\rq±´Üeê=Ï®þóþ9ë¼òI\03¸G0HÐê5=#Äâ1iÐo fâ@ð<Q²Ë<JÆ¾j1.) \ZBÙ3iÓ8Å!Á¼àT8ð>$\0\rãB&åHA´Ún$F@ÐÆ\Z¸ÖêÎêfEÆ`Âe>D¨AA\\2 CéË+4L$Ø¯|§&]dY¦¼!0M l\Z¬^oÚjI]W!|ª«ÐIEbÖ`ÚT´ÌÕ*¨1V¥hµE´Âm	Yo ©«®á@AýJ eÉ ©rÄâHPU\Z2hlÆQeDò½å\\¤ÈÉReæîÕ¸UQB¥íDÑ2µëQ[ aIT¸AR¤««Z,ÕU|¢Bà½C(M¤6)*\0~m@Û!¡°%ATØàr0âÓpHi11i L&Á6$Ú@Ø÷¬w$,\0<Ædðv:T­\rÖC<ß&mliF%¥ Ða£4´hgI3µ¥U;UÈ´EèiyÚ\r.i¡fgC¦k*e&$±\"äz|Ï#ø:âÇÀ©sô{?#@øäZ8[¾ÇÔÈ5-ùÈ÷Fb·Í\n­*´Æ+^7\nctúé?1v¢ýÏòyý³å$tò©E\'\0àh:\\Áæ\\CSIÐ@¸Íó-DQQ\0Z>FFãÑö©Út³0Á¡±`?C¤3Ì:,~Ãym»`#\"aJÇìfHÅÈ>ïú®Øwwêî¦k%b,dd§ä`Í°ÀÛU0³>üçIÃ_¡INâÀÏ%×©âAÚ3ðýõ5é¦Àvö¿ò5Àê(|ÏÀùJ§¼ÙØhíÂ{äð	¹pÔòHùw¾BáEò	9UPH¨|ÃFv\rÊvàgMvÀU\Z×­ÑAÄûA½©s:9×q¼^°@0)Ë¤÷Û¢C¼T\' %­	ª\"IÕdOUFUd¨PIÀÂ©Ë7µ,@T*¸R8kxÃîhþÁiÅCL½C#·îOrÎÃLò\'Dú9\"ÉAd UYtèl&0Æ½Æ·UimhÀÎÔÎ-©Ðq§Cñ``eaJ`d(;ÆÎ¢8D;4øs·{æþ(ýAXá\náM1¤1  bmI(i0hM©79éÕ¯¹\n«k\ZEÂQB!u­°`çÖà^åe3·i¤hmP10bz¢§pP\n¬Ã%¨ù\"¥$h×ö`_pÏÇ5;Òä]rDuì>¾èJGêu\n¬\ròh Ø`¬¥]ã%¤WéB¬UUô&Á±Cp»)Â\07¬È', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'mr7W1638411812', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 00:23:32', '2021-12-02 00:23:32', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0'),
(13, 38, 'BZh91AY&SYt_D\0+ßP\0Xø;Kü¿ÿÿú`=÷@ @  iÀÀ\0&\0`&55M\0\0&`\0diiÀÀ\0&\0`*LLa0&#	Àb`00\0	\0$Db4#&§¦ÐÉG©²gÂ£ÔýR@$IÐ1\nÀ4£¯yýabå\n¼#gðEÝdÈd4>³.OÅh«WEÎöRJºÚÖt+|÷tÕ¦ßÆ2°£V7å$gÖÁ®»\ZL?#Ø1þ7zÏ©ÃVxä`läWHs>ç3î|O¨cÃAÈ4$<ÊO\\1\0Ï u×àZ£\rc_pM\0ÒAF1¾Uó¨àk+àxKHé ©$ Øl4$6&-ÐÆ\ZÀf*Í&ST$Pb¸À2\n^jW*ÒI.âaUì×jfPBkû&B`®D l\Z¬^oÚfI\\FW! µè©ÚIE¼÷`ÚSy·ÈÔYTcÍkSAªÚAq6É´ÍÚ j(æiq@Aï(P$¥ËI!ATbÉ¢\Z3³EÂ&öpJ	»VáUE\nµL\nZõ¨­0¤ª\\ ©GRUÕ­B¥U_û¤-ëðDm!°B\nJP6âhl	QT8*uÂn@hM&&14	 bM¤\ri£Í1 ×;¥K=J¹¡G&WKIÊR#,dPQÆ)lô&\"UlPª(RlR¬æ&fÅ`&¦Y<£½½ÊÙ=ºSÓ;ÎòåK¸#¼ôax`^<Ê®®Ã2ºÄé¬Õ¿fnUiU¦1Zñ ¡ó6OØgÈú ÅÚÃæ~çòÓE$uñ©E&àÜd:ØoYô*u¬¿à1bTùk ¾¬ñ05æ\r¤d;¥¨ÅCbÄ>ðÕ¨:¬zÍfÒÛ6@FÃ*©¨4#ÿÏÚ2u¶l¶ÖÛyK¤)ËË*ÅUJ	{¥Fy\ræ%»\n$pa:ÈKÒK¯¹ÞA¨ì¸x¾3ßMa6åÄû~·\n3¸÷J§C_#\'mÐ3¤QÐÏxÂGÙÚ-|×%àz/r]09!äÜ{=}Jå9Îºfãía$ª57­ÑAþ\0ÚýW1³«¶é¸ºÃ°âC ¨MÀ³¸z¢$ð¨Ê¬\nI1xP09fÂVE\nRî©h0ý%§!e½¡¦^¡ÏüÚµXi±©\Z¾{c°âY(48ô?ÉØ|	m$þæ¼¬¨ÒØ¤b3fò/¼ê¦x4±XR¤#FB Ò¹À\r±ÎYwú­Ñòy¾¡\náM1¤1  bmI(i0hM©6²á®ä»UÞZÆbpj(D/C±i&G>Çö+(xÍ2\rZHÌÑ@Æ@XÄÆxÅN@*jZù\"¥d×½z0/ ÏñÌÃÎä¹%EE\\8ûò<Î#|Z355ØÏ\nâ»] ¹rê`Ø¡Ü]ÉáBBÑ}', 'Cash On Delivery', 'shipto', 'Azampur', '2', 282.5, NULL, NULL, 'HjTO1638411901', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 00:25:01', '2021-12-02 00:25:01', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0'),
(14, 38, 'BZh91AY&SYO&ÕÆ\0(ßP\0Xø;Kü¿ÿÿú`=÷@\0Ë \0 iÀÀ\0&\0`ÐSýOT@2\0\0\0\0\09¦&\0\0\0\0\0	MID@È\0\0d 9¦&\0\0\0\0\0	D@4 hSÌ£)â§ÂÔýRÁ!t$3N£ÄD÷(6d\0  <¡ÇðzbÅÊ-}#ä$è2C*i\'æ²NØýPYqæf³;¥OÂ$A%cyèRI&È.·\rsXÔÞcô=ÃÏ1ö7å³=ºõ\0gp°HðhvÄð91n5ÄRCêT©âm3ÀâT=e$a°kø:h·gtÄeHpp!Îm+àxKBé ©$%µ3q¸Ô¡45­k;¨ªÍK44L¦¨AAÁ\0<eR¹ÆFF¢a\06Åe93PBkÒ	¹°j±y¿i°¹®BAkÑS´¢âTÌµÐÚSy·´Èª²°Æ4E­MFj2«yÄÚ&Ó7d\rEÍ.3{\n eÉ ©rÄòHPU(4l«Ez\'x,Ä(&^në[U*^ÔM2&$)kÖ¢¶%RáJ:®­j²UUõ¯ÂBâ¿!ÁI&ÒÂ-((V¨¦\n¥b\r5Ø´ ÈÀZRFÒÇ¼ÕìdlÕ!a ê4g«±Ò£°Ï&GX/\0 ÁÂ¸KÊ*!IÌHPæ)Ô\ruTÈ.EØTÏ:d©KÆ	¡$ g#ñï?Úq>G ¹RçÄüQç6ÇÐØUt÷\ruÝ­ÞæpUiU¦1Zñ¨¡ï7OÜg´ø ÍÚ£Þ|O¯Ìÿ¦fªHç=ø©E\'\0àh:Xqið*s­¾d#ÀbÌ©íÛAýä´ñ0m53Ø\rªhÐwK#<à!\røC,ÇÚo-»t`eR±ö2\rFHÅÒùúOG\\;»ôvS%b,`À`»a¶¤XÂ¹ó$gÐÜq3,5Þ ÐT)#´³è$ºüáî©³6ÛI÷üp:¼÷GõB¯y»¬ØíÆwÉ%é	¹pÚzÆ>]ÂÛÚº×Aä½HIwàëC0zgôyùÊr\rAô9Îdm¡$ª5³;Öè Ï\"MaÞý+°læägmçyA\0À§.·hu0¼Hw\nÜ	kdÄËÕ$è°OEFUaP¡	Sn%hX¨U.ñHàY-F³Dµä-8£44ËÔ0v|IíYXió$eðßCqÒY(5:Eûèê=dcabI=¦Ý,¨ÒÜ\ZhÌgbg/°âsSàÀÌeaJó\ná¥s \rñÎZzzíÜù?Z> Æ/\Z¡i*DÄdPai%\r&\r	µ&ó3ðK¨U^Ö6\nEÂQB!yKY4;:Î¬¡æv\Zé82É4ª2ÆfsÓ;TÉd[É(Fzú÷vÏaÞ ¨¨¢ë\"IO¸úxýc}-\ZÅ°eËäÃ~ @Á\"j¹\"(H\'jã\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'G5Ql1638412172', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', 'Alexandr Kuznetsov', 'Italy', NULL, '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, 'pending', '2021-12-02 00:29:32', '2021-12-02 00:29:32', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', 'Lazio', '0'),
(15, 38, 'BZh91AY&SY³wé6\0*ßP\0Xø?[ü¿ïÿú`=ð\0á¨À$#Ó\0\0Á0\0\0£I& h\r\0õ\0\0`Ld0\0À\0\0B\n=CF@cPzCC@\0õ\0h`Ld0\0À\0\0HSMÈh§¨õ{TzS@)¨é¨øs¸Å9ÍßöÅ*2ZýF#oÌºÉê2C4?y\'Ê²êUÑF¿ízíX¢/©E¥k\Z_ÖÜdV9Õ$kÖÃ],@p8õÃÏÏ°þºkÆ\r»Ê÷¤æ#Ä ù¦§Èøó°cÇ38*¡ï7Ãpg¼¨ô,#Qv&i~`Ñ§M#4Pì5-è{\'$\0FMÊcc\"0\ri¡«p¬ð¡¼vd\\fL¦Sù¡\\apÁ\0BéLèYXÐa¹5	È\r±^\"ø3PBkà	m`Õ\"ÓoRJî\Z!\\âª¼É(¬ZÌJ²åU0*Ñ­£(¶ °BdÖfÜJ)(5J¹p¡yB¹$.XàI\n\n£s&hÖÌe(\"o`x®$ÁJ	»VáUE\nµDLÈR×­El\nJ¥Â\nu%]ZÔ!hª«í_$Éz&Q$¥ciÐàéÂ¬Ã$ 48jh°´vf°	Ia`ÑBÒ¿oFoo¨ëPq!¯dÙ\"R}ñëj(gaBÊYábbìQi1(:£-&Aá	Äµ)Gi°êR%k\Z%Ñº4J°ã	÷Î`{\ZFÐæñ\"gP!ü¸bIìð.Cô¹\rËz·õg5VZc¯DÂ}Ft?¸ÂUâ2aåÞk2#Ô9S	F/Ë#`o>%NpÖú%ãñ Z>;PG_´8óàÑó©âÃºZ`ÐØ²Ð4Ð9ØûMçÛm&T¬~ÆÀd]ÁôxÉëãîý|©¢Â±A0`=OFÃ#mTYÊÐüñ8\ZûB81<K#=	.½OqaËû*kÒÂmãÞ~ÿðkÔÝ8Ù#Ç®Y^ø\nfa¡À\r2aÀPax{£ÕØñ<ÁùåE{ÚÎ$Ör¬wÍ¾ÅráÀÒCfðU\Z×7­ÑARMÁ?PÀqBê¼Î}Æàq¬\nwt>ÃËxw0ÄHyà	k|ËÕ$ê°OZªÂ¡B	&/\n¦,àJÔ±Pª^ÁHàZ.#¡¹.=âÝØ¡¦^¡ÇèOÒÃLü\r§ãÆ<wJ¥ÇQ|ÇÿÒ½°©èIð5ò5º«K`ðFFx¦s\"ÚÎÊr?s#+\nTg#!Aæ4®u As¿wÝáo7àýóÉáY°K3 a\r\"«Á#Né}NÞ&®ºð§µE\"á(Ð¡»VÐdðíp/b²¡àmÁ¦¤n6P12fzÅO  4Z£îEJ¹¯jú°/Àgóð1O4»¢¢®äGi?Qöó?\"R?C´ Udo¹ yëÒó§`òlGÛ·\Z\nÇþ.äp¡!fïÒl', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'z0lC1638412591', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 00:36:31', '2021-12-02 00:36:31', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(16, 38, 'BZh91AY&SYUvÚ\0_P\0Xø?[ü¿ÿÿú`ß}\0\0( \n\nIB`\00\0L`À0\0L\0L&	0`\0&L\0&Â0Ì\0&\0	a\0E	!òIé !¦COD=CFRA$Ó&&$fÄ\r2zOD.\rÇÜ~|$²ZG¼O ðÜ&+[¶0Òk\nä;Û©XQò/\'ÍuÔ¹ú2¼ÙeL%%ÃV6­a\Z6v0ÂnË+7jýV85(´Õ4;OÞ¥`ÄÁÍcdèRw´©Úlý_ígR(ü]Ï{ÞÿG±ÉÌÜ¿W·G¸Óô=g#ô<é(¢vRÇrÇRãâ¦\'Ôv,¢Qô²úMU\'2§¹Qé@©!ÑÅi4eÁgRÇ î2wÍKà²üa*HªIÁ*\rLNRÐèu.¨QIH©±GVWubv)¢¥¦¥\'Qéij©5MI-%R¥Û²ËÛ¶6,¡Å(´¢ä¥*FË,ÙºíÔle%\'ÖZ(MVY\nP¤ÊÍWjó92âR-\Ze«fc*kâw-55h©)I0Õu×eOµ¹¢fQA¢fZ0è´±Ð£)Ô±¬)P.ÊëµzÊ]ÒÙde÷µjË\rÍlnmh<\rÆ¢ì\"ÏEa6a)²Ëµh)³-&EMWkMj2K&\Z´a(RË¬¸ÃF¬²M\n]0Ô$,jEá´´«#xØ6C¹PÌ¥áQJ\",¥¤øÔX¥)e¥\nTòÌÅ*RÅ.PÏzÉT¼-ERRTJ)H)RgG^ksë$7|eAØ»eÒ¨ÕL±:4\\ÄÝº®Ö®Ñ§ò¤N-JTqh³»´hºeE7j\\ÊK©»RÍY«víÚ,qk8¸(Ý\\Ý2ÃeÂ©Áy¢ô¤²§¬ÝòzÝaï68¤¹½ù¢î@=Äí=NÉ¢xwaÿ_åÀtwJ}½g4è?ôÉØ@À@6p¨2µ{^æHw0ZTeã{_«ãµÐàå\Z2gzÓ¬±¨ÒvÉÚqÉÍCÐNgÞdôeFïÆ^Qü\')©÷;ï{KIõN¶ps\'ð±Ô&6½À 0¸3­åäô4éÎu;6YS)4?3qÐ©rêöSç]ÞòYMTÕÞóaºlLhll?GÞá7R¤É88&óhP >.ûÁ´ yF\\`Õ©F%ÄPÊÈ¸0ô4nÁÒÞÆFÌr>9SyhòxÏõ§yí=ÇÒºaíÞ3;V(ö¯/1à.Öj§À¤¼§©æNo$ñO¬XýãèOciã\n%HY\r¡u»C0ÜÔõss¼ºÍà(Ñ*¨äàÕ¨Ä©ûËÎ)wì6Q>/ò)GsÆphêvÈÿJaâïç±Ø<eM\\|ÄÄ»`ºãbTÕYyw$Ú]àÌ©Ù11,^^Ím(b].´¥Õ:KÇ#IaÊOlÊZ§YCÿN):½dâîGTTÕ´ó~ïbnÑIkxÆù\'àdt6£.W@?ÐöézÉJ\ZK>ÉÍìrjRNÊeiGt³W9Ý=,6Z\n\'	S+EÒâÆ0ÈÈk`K²ÁÁ-Ïç5\ZÈ8:ñ`OlË$2,)		$T¨)¤B¨YI)*ª/:ÎÖâïYv¤õ)ë4d\\´ö¬>fËG¨ÒA*lFH0\rS£í·å:E¥Y4\'¼f{3tÜlrñfhqR}÷¤º}¯)³ùxDÂa,Õ<af§Ñ?%â>\'Ìq)OR ´ç8I`qÆ¦ yB>B/)ÌBAJcÿ¹\"(H*»Dm\0', 'Cash On Delivery', 'shipto', 'Azampur', '2', 282.5, NULL, NULL, 'Y2wY1638413499', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Ford', 'Vietnam', NULL, '123456789', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, 'pending', '2021-12-02 00:51:39', '2021-12-02 00:51:39', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Ho Chi Minh City', '0'),
(17, 38, 'BZh91AY&SYc|ã\0²_@\0ø+«üD¿ÿÿúP<Tå\0ÍµXI$ÐÂHõ2z=&4ôÐ\0=A$	¢§¢§¨\0d\0\0=C@\nRP£#FÓ4M4\0\0\0\0\0\0\0\"@A`jõ\ZH=M¦R0Ö\"õìæ¬û\Z\ZÉÓÓ¡ß51¹#ä6\Z`sÄ\ZûC¶êp£uÒn4EÑ»òÎùª§Õþæ¥vËi(ã¢ôÀ©SI½T¯AêÌ¶/´Ð@\"c\nO#	4¥ÖiÉd®ÀAcYð\Z¦ª5{ÊóT`#	h¤ºV&aaóÍ\"ÄÑ\0@Ø58¬«æv:Q+2$cC\"YS\"ÜP©)<´(7Xã\"b¢Ì t©9Fü+XM/øÍfS\"bâÛaJS©¼Jdñª2\nl¢ZV±iR®)rH_EÒ(@3Hi%Ï8TIN\Z,-	rkRBRAXF­2R¥ñíÍj>I9È©sÙRT1\nMQã\'¾lA¡[9¶&¦\raÌ50Ú¢ÌQ\\ÄåfM¯Z»691(ÉñQ|\ZF|PT/N£´á5JJÌ-ò`XtÔÖ\nIJv\rÐqD¡¦«Á¨£T6m\ZÏ¡»|B]f à|Øøù¦&¥\"7KÊÔ°Èt4w µb5â9(0Äe`&TD#êäDjÔ°hlZÖ\r39\Z\nç\\23ã5Ä>%³l;;wn°PÀ©6ÅQ·qZÊç©ô4J\rqPd)àÂZK	EÐ3Pð|¨e²y«Ãqñô\Z«[ùï.ë¥AÊGØH¢;ä5;\"ïþsKì{ÒH[PÆ\"v0\ZÞxxmV\'Ì[¤n5wæ$¦ÖX[þ(H+tTg¹#pKZÎ5üy[`{³¸	óÞwñÂ±à)P!Ø¤?h$l¡YRHäöã¡Æ:¤-@ gøl¸w<È1]!ÿÒ*5¬e»]~Bâ ÒoAúä4Û(AùcD¦ÖaÅ9-c®&³dõB÷´±M%9Ã\"	(:\r+H ×\\án5èøºÏ¹1ÆÿÄYL )VrX\Zj²¦Ì÷Â)±.\"¢ìWÈ±¤¸På×ó³R¬ÄÚFÚ¨)&H°Ö c *bc.QBeÕÂË!ðE	 ²2k,X!º1²ò3ÈjZÉ==:µ¡Ü(Äk²Ha\nÂokD j³^Ã\'ÈíÉØxøöCACXÿÅÜN$#Xß8À', 'Cash On Delivery', 'shipto', 'Azampur', '1', 72.5, NULL, NULL, 'SzHg1638422311', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 03:18:31', '2021-12-02 03:18:31', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '3.5'),
(18, 38, 'BZh91AY&SYtqí\0+ßP\0Xø?[ü¿ïÿú`=\0*± [\0`Ld0\0À\0\0J\0¦¦¦ª@ÐPhOPÈ\0æ4À&C\00L\0\0)P£Ô4d5¤44\0Pæ4À&C\00L\0\054É4É£D	âÔd\Zµ\ZmM\0¦ S¤z÷0;|SÝø>Qd(êïsk.1ÀQÃX>ÎêçL¸nV¸ºÀ÷&ê/N¤Bbe±5±F-Tè=ÊDÁe ×\n\ZùAgëÑë?£YãasN²i zs>GQÜ|¤cóq5 S;Ïl1xòb6Kzh³Ê4çh¼áÁ©¸ o3+ÞxK\0\Z0! jHEÁ¡45a­i-fmY	úÉ(A1X.@,§ª6\'	©\0Û¢-y](^ÔÈLh§y)°\Z!X^ÉU+V\r¥:ÊR£,B¢Æ\Z\"3MvcReÄÚ)iJû8¨ò®óÕÈÃRÇÊ7!AD¢HhÛ¥XÊ+Ñ;Ä«Pw¥ä\\ºK{Z	HFHºTÝÂ*æD­B$§`Ý	+*Öd,>¥òH[×t²i$å(CN\0·Nf%¡ÃSE ³5JKDLÈ\Z(¸\rûz3{}GZ\rÏ³¥¨±$ÁÇNc¶Ð;ÕkGDÍ1C*f&!ÌU:J\nTuÅL×qS³9)LA®±Ò4j\r\\¡Ää:yçAÖ;å\"K=Àùw.7\\É)Çû9Í¯h»Ïl[U~öoTiQ¦1VÑ¸@@LùËÌgÞ0cU¨F;g°ø>ghÔãG°zS|lMÌ7´ò(p[²?BHð=ä2ÇÇØ@\Z%ÍNA£çC6ÉdaCbÀ|A¾§°Ún+¦rPÊ%Sø2\rFHbäGî.<áÙÛlòWU&2¥Ëä`É°ÀÛT0²>$y\n{T2r¤%ä/3À\" ÎáúègÂ{BUçÖ?à×AÄðwHå7rZÙ9\\ròÙaÄo^èõv<O0aþyQ^ö³!Ä5«óo¥XXjá3Ð`Õ´$IM¬ñjYèHØôä.+°lßÈÊç|¸³·hr axw\nd®Û ¸j\"$K5r\\h2êdÈ$J-	RÉY (KÔ)Ü0úÝÖ-(Â\Ze¨9ý	v¬ª4Ï2üwG=§A¡Ä_1ÿÇQÖØPï$}}¦vTihÀÎiÈ®fó¦}àÀÀÊBF02ÃJÇ:\"{=½î}½0|³1)Ò!J¹,4è8ÇÔíâjë¯êxÊÔÌP,FDÈÔ´gSzT<ÃLJæY&°Ñ@Æ@TÁq¡0(d²¬ÇÉ&FÆ¾¥èÀ¶£>ÞÂøÌîKBSSQeÉÔKÐ}[Ï$Øê&XäÐA´ÁuéyÓ°y6#ÎmÛÈAcÿrE8Ptqí', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'B7kW1638422976', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Ford', 'Vietnam', NULL, '123456789', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, 'pending', '2021-12-02 03:29:36', '2021-12-02 03:29:36', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Ho Chi Minh City', '0'),
(19, 38, 'BZh91AY&SY æµ\0+ßP\0Xø;Kü¿ÿÿú`=J(\0h#b`00\0	\0%4MSDõ\04\0\r\r&\0iÀÀ\0&\0`*LLa0&#	Àb`00\0	\0$DM4#\'ªzi£\"6FIê=OÔ	A\"`c4fâ°   \r(ækÞtâÅÉ(D&èÇ0÷U 6ë ûÔê)K?R2EèÝjybøálÕ>oøskrÊãéRI&pYn\Zí¸ÔÞ_÷ágûáé?ãy»b»$ÔG@Hìs3>Ç¼ØìÅ¸Ôg\rI¡P©äig3È¨µ÷Ta ×¼b\\@4®P\\Ó¦1!ÁÄì9\Zñ<%¡dÐh®(J\rÆãRDn4ÐÕãZÖwQUbbLPÁÀv3Elù2a°6øÌeA	¯ð	±°j±i·y1Ähb­ENòSÖ`ÚSi»à`\\ª1sD]u5¨Ê­ähL¦lÈ\Z(¸89ÈI#¹\\±Ö vrÙ,&8,KbYaâöÄ0Ó#\"ñuj¸SK;Mí,6½PÖÀ i¸9R¤«+®¡U_öH\\WôDm!°(AIPú5n ÀScÈÃµ¦àÒbcÓ@L!lI´±ï5y²3Õ!^ô\Z\r\'«!M\'¡¤ÎVýòDZÛkb3jÎhA¤jÏ£3mhjBÍÈ)BÍÇ³½äÖs9«Ñdf¶´ÍßI´ Gtêå=´ëÇ±RÇìöqê3+ËGÌÌªìäX3+¨ýçXÅf®ýÁU¥VÅu£QCân¨ÏòA²´³ÃùNsölq4Ù9×D´Ãy¡Q¹4>ENÕ×îB<,J\r(#·©\0h{ËÍ\rLs½OB2ÀÅCbÄ>GÃ\0ì¸ôË·nÉU+äÀ5#0ÿïÖ2yz]_µß¶\ZÄ±é@ØÃ\\ç gÌÜq1.\ZðPd*Á|èBXõY}apÎÅõ©\ZhvÜÏ¯ô5ÀäPø¶U:ldîá:É%ë	±`Ì÷$}ÝâÓ¢ÙykÚ[ÍÄÄBÏjLð=^Åb ÎÚ§\rITk<m[\"<É2	üá½ø9®gfÆ7o8Î6äwèÄ-EBlµËU$ä¯\'FU^¨PI@Â©Ë7². *KÀR8QàÉ-v\\Q\Zeª?R{Ö\r3ô0FñÓæn9%§1~÷;C£aq$¦W*4·G¡èÄfq;)|!ù01XR¤#FB¨Ò±È\rñ²öz.êö~(ù¾¡\náM1¤1  bmI(i0hM©7eÊ^	w\n«Ø]q¡X%\"Üµ#§szÊ\'C\\¦óHÌÕ@Æ@\\bc<â§P 0Xë1ìÑ^åæÀ¶£?>øæx%°BTTQe²\"2QóâBGÐäHQb7Í 3¯¢üxWÚè\\ÁËPÅ.âîH§\n´Ö ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'UZo31638423196', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 03:33:16', '2021-12-02 03:33:16', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0'),
(20, 38, 'BZh91AY&SY#ûZ\0+ßP\0Xø;Kü¿ÿÿú`=ª!9¦&\0\0\0\0\0	SA4EÈ\0\0\0@Ð\0æ\0L\0L\0`\0&	¤ÄÉ¦É2b0L\09¦&\0\0\0\0\0	DÐ\'©¦Ñ2bÍ&=I\0$&3@Æn +\0Òf½çÓ8,Bo8¹µP9ò´XÞ 8h¥,üÑG)åÏËj©õ6±UXm;1«1®\r\r¿qæ1þ6ú¡ÂìoÀ´ÏR¤ÌG HÌâbyq¼cf7hH<FPÆw;ÊÑOqe\rxKh´Â\Zs¾087ÎE;ò	4 2V¨Aa2ffhHF`ÐÆ\Z¨ÖsTfF¦OJLb°28ÂÎ¨­F¶FÝ8	!²ïFA	¯É2R!`Õ\"²¯Y\"Ö;0bå§¶Krl] I.\"1ê4a¨CÆ²Éè3A[*&Ð+%*²¢n\"lFGôHâ,Ê,ÁÒ vrÙ,&80KfYeâð52e¦FEÅ¬U4³´Þ%!áà\'T62&\Zl¡7BJªË&B¹QS¹y¤-ËìY4m!°(A9(ù5n À±Àä0èi¸¤4Æ4Ð&D0M66=F:$+R\0<)m«ÑRqâ\ZMirrIm¾Äfßn Ýá÷50k¤-Y ÂhZ±ðïro­kofûF¨ÛiÓLÛä6ìÓÐzSðP©û;OHõ}¥cÄÄ¢ßÀ¨bSAøâõ³âÍª*4Æ++\Z	#9}F|ÂÖ%ëÓà|ùÏÙ±ÆÐ?Pô·h9ÜTp å#æPèX\r$#¼b¼¡ðÊb:9Gi¡~ Ñ÷¡ÔT®/`ÐØ¯¸.¸7ØzçQ+¡ph2Cÿ°d¸uBµ}^Ôé²Ø$FdI4\rµäñ37\rv(0ÉÈp[,JñÂEWÚAqÌfÑÞùÐÇtò	Y¯ëö\ZÚp&|ÃÛ%>fZ;6ÀÎr$MÀJ\'¸a!ôõ.KUÞz/j\\í5C-=©3°õú·ªÔ4tLè6vd$¦Ö7ÖDÆz0	~ÐØýW!³~¥öl6Òõàuä$+àÒE	¸ ,d]0ðFí:´\"-$An \ZP\"s3wF8Úm´ÔXnEèi ZrýIu«¬\ZgÄ¹|¶G/3bPhqàs¤î$	=æXX¦ÒÌ0:xÎI®&ã|í>öã)\nJAÞ2ÆNl*koUÞ¯¹ Æ/¨B¸d$Á¤ÓLihBÒJ\ZL\ZjFÂó\\8B)µ.QvXb(@A	\"âdBô:V09t¸­X¡Þr4ÂV\\F&2ÂòùqÂ`P¹\\¬Gª(L-F\r{£ºý9ßØ¡	MMEV¨IýGÇq	GA5xßK\Z¶kÞ3Â¸®×Bæ.\\ºØ6(`áwrE8P#ûZ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'fa3Z1638424264', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 03:51:04', '2021-12-02 03:51:04', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(21, 38, 'BZh91AY&SYe8¦\0+ßP\0Xø;Kü¿ÿÿú`=ð\0q(+Ti iÀÀ\0&\0`©OÅCOHbh\0\r\r\0\r\0iÀÀ\0&\0`*!ê£F2h\0\0\0\riÀÀ\0&\0` MF\'©§©3Hhhié4È\r.¦xtä!îP`\n\nÁ??÷Å*2Zñò.ë$#$3¡ñr|ë!µJº(×äÌ½M­X¢/¢Êµ¯üÁÆAuc¬è¤M`ºà5Ûbs¨Çô>Ï_Ô|NYkÊóI\03 ðHäw\Z#ØzÎÁ\\\rÆq Üø\nÐÆx:¶¾¢Õl5ì$Ð\r!o¤iÓ8ÒàâvúÏ	hBÙ0&ÅAÀànH\0ÐÆ\Z¸ÖõUfåÆ¦SBT  Å`Á\0B2©\\âË#\"¢a\06Åe93PBkíLÁ\\@Ø5X¼ßÌjI\\ÆW! µè©æ(¸3/v\r¥7{L*`Y¢-jn3q]DhLLÝ5s4¸Ì@A÷(@ËARå¢HPU²hlÆQbâ&öâLT y»µnTP©{Q4È¥¯ZØK(êJºµ¨BÉUWÖ¾Iù[(M¤6)*\0 mÄÐØ ªlK\rÉ@E\"Á!åCØicê7z²5Ý!a à4Mî(²9!ÒE(·ß!Þ\"¶¨â,(YKCX¤¤C¤ÔZ\\95Tu¥ÃC5Ò-JRµÅ¬BZÊ)\\ÚCÈ«80¦CFs é0óÒ\\©sôzO¤}f¡áñâjUvr.\ZÜ~Ã¤fµVüYÖªÒ«LbµãqCò8Oð3Ú{UbHÆ39ÜyøeLãldËÂòÂÌÙ6=ÅNÕ ×ìB<,ÊÝ¨#·¡\0l{ê\rÕO*4ÒÈÍCbÌ=ÇË ì±õE¸pªV>&A¸É»þ~ËËîü»éÂ±A0`0]°ÀÛR,a\\ýâp8\Zó¨4\nHàÄìBYô]h8F(0º¢UÜ§Zñíî*^l3§ªt6æhí×:I%è	¹pÔõ$~O0¶ïV¼aFW\"+»ajARÆ-ûîqvÐÜÛC´ë3 óìJ£ZçzÝô$Ð\'ýò>l¿i¡xÖ´P@.Û²niÑDÄAP-k!q2õDI:,Ê£*°¨PIÀÂ©Ë8´,@T*R8KqúhüÅ§fzÿÌ2ÊÃLüJ!LúÍÈÕ1ÆüÎAÃ*¨@ã´²£KhyQÎôÎ$_SÙLB1*B3Ìd(:\r+ ê.sÓÓå·GÍúÑâÉHÑ%BXÆHD\n È\r¤44&ÔFg=9B+ÖU^Ö5  £\"BúE¼þGúÕ<Îó}\'Y&©º±÷EN@*d²-GÍ(FzÑ}Æ~æ3Ôó¥Ì!**(ºæ¡ÜSøw>\"B1¾æ\rL\Z²ëÎBîÇÀC,hÈ\r@ÿ¹\"(H2S\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, '3XY31638428699', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Ford', 'Vietnam', NULL, '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, 'pending', '2021-12-02 05:04:59', '2021-12-02 05:04:59', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Ho Chi Minh City', '0'),
(22, 38, 'BZh91AY&SYe8¦\0+ßP\0Xø;Kü¿ÿÿú`=ð\0q(+Ti iÀÀ\0&\0`©OÅCOHbh\0\r\r\0\r\0iÀÀ\0&\0`*!ê£F2h\0\0\0\riÀÀ\0&\0` MF\'©§©3Hhhié4È\r.¦xtä!îP`\n\nÁ??÷Å*2Zñò.ë$#$3¡ñr|ë!µJº(×äÌ½M­X¢/¢Êµ¯üÁÆAuc¬è¤M`ºà5Ûbs¨Çô>Ï_Ô|NYkÊóI\03 ðHäw\Z#ØzÎÁ\\\rÆq Üø\nÐÆx:¶¾¢Õl5ì$Ð\r!o¤iÓ8ÒàâvúÏ	hBÙ0&ÅAÀànH\0ÐÆ\Z¸ÖõUfåÆ¦SBT  Å`Á\0B2©\\âË#\"¢a\06Åe93PBkíLÁ\\@Ø5X¼ßÌjI\\ÆW! µè©æ(¸3/v\r¥7{L*`Y¢-jn3q]DhLLÝ5s4¸Ì@A÷(@ËARå¢HPU²hlÆQbâ&öâLT y»µnTP©{Q4È¥¯ZØK(êJºµ¨BÉUWÖ¾Iù[(M¤6)*\0 mÄÐØ ªlK\rÉ@E\"Á!åCØicê7z²5Ý!a à4Mî(²9!ÒE(·ß!Þ\"¶¨â,(YKCX¤¤C¤ÔZ\\95Tu¥ÃC5Ò-JRµÅ¬BZÊ)\\ÚCÈ«80¦CFs é0óÒ\\©sôzO¤}f¡áñâjUvr.\ZÜ~Ã¤fµVüYÖªÒ«LbµãqCò8Oð3Ú{UbHÆ39ÜyøeLãldËÂòÂÌÙ6=ÅNÕ ×ìB<,ÊÝ¨#·¡\0l{ê\rÕO*4ÒÈÍCbÌ=ÇË ì±õE¸pªV>&A¸É»þ~ËËîü»éÂ±A0`0]°ÀÛR,a\\ýâp8\Zó¨4\nHàÄìBYô]h8F(0º¢UÜ§Zñíî*^l3§ªt6æhí×:I%è	¹pÔõ$~O0¶ïV¼aFW\"+»ajARÆ-ûîqvÐÜÛC´ë3 óìJ£ZçzÝô$Ð\'ýò>l¿i¡xÖ´P@.Û²niÑDÄAP-k!q2õDI:,Ê£*°¨PIÀÂ©Ë8´,@T*R8KqúhüÅ§fzÿÌ2ÊÃLüJ!LúÍÈÕ1ÆüÎAÃ*¨@ã´²£KhyQÎôÎ$_SÙLB1*B3Ìd(:\r+ ê.sÓÓå·GÍúÑâÉHÑ%BXÆHD\n È\r¤44&ÔFg=9B+ÖU^Ö5  £\"BúE¼þGúÕ<Îó}\'Y&©º±÷EN@*d²-GÍ(FzÑ}Æ~æ3Ôó¥Ì!**(ºæ¡ÜSøw>\"B1¾æ\rL\Z²ëÎBîÇÀC,hÈ\r@ÿ¹\"(H2S\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, '3XY31638428699', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Ford', 'Vietnam', NULL, '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, 'pending', '2021-12-02 05:05:00', '2021-12-02 05:05:00', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, 'Lazio', 'Ho Chi Minh City', '0'),
(23, 38, 'BZh91AY&SYÛk~\0*ßP\0Xø?[ü¿ïÿú`=ð\0á¨À$#Ó\0\0Á0\0\0£I& h\r\0õ\0\0`Ld0\0À\0\0B\n=CF@cPzCC@\0õ\0h`Ld0\0À\0\0HSMÈMè´LLGµG©äÐ\nj:Aê>GÜÀîñNswàýñbå\n¿aÛõ\"î²AûÍâeÉñ¬útQ¯üfÞ¦ûV(ãjQiZÆõ7ÕGµI$Áu°×K&=G°Æ3õåì?Ù×Ms¸Á·y^ô<ÄxD´Ôøiï;1ls83 zó|1{ÊÙ_BÂ5bh·æ\r\ZtÒ3Hpq9ÃRÞ¸r@ÄhAÐ\\©668#\0ÐÆ\Z¸×\nÏ\nÇfEÆdÊe=¤¨AA\\0@:S:V45¹@H\r±^\"ø3PBkíLÁ6°ji·©%r4B¹21ÅUes(B±k0m*ZfjËTÀ«DR´Z¢ØÂm	Yq ©«¯@A÷(@ËARå ª72hlÆQbâ&öâLT y»µnTP©{Q4DÌ-zÔVÀ0¤ª\\ ©GRUÕ­Bª¿bø¤.KÔ92$å(CN\0·Nf%¡ÃSE ³5JKDLÈ\Z(¸\rûz3{}GZm{$ÔXÈLÉ[ïÌï[TaDK<\nRÏwdIIAÕi2N%©J<LµR+XÑ.Ðq¢UL§¾sØÒ67:åÀ°pÜ<4ËLgpb¤\\\rÈn[Õ¿sUiU¦1ZñÄ@@Pù\'ÔgCû U^))Ðv]æ±S\"1\rC0bð¼°²1°æóàTè·\rhQî?2©sáµuöÞ`àr3¼\Z>U<Q¸wKC,\ZCò:;ÓyÄ¶Û@F	U+¹ p#p|ßô=|aÝß¯4XV(2Æ©ð2hØdmª9Z¡#>¡Ã_Zp¨RG\'	dg¡%×©î Ðì3°yUMzSxM¼{Ïãþr:3§$sõË+ßLÌ18¦L1\n/tz»\'0ÿ<¨¯{YÄÂb\ZÎUù·ÁØ®S¼8:Pèr2AìÞJ£Zæõº(3èI¸\'è(]WÙÏ¸Ò¼\"õNîÔyoâ1P-oÀz¢$V	ëQXT(A$ÅàaBTÀå	Z *KØ)EÄaó7%Ç¼[»4ËÔ0xüÉòZXi¢4üøÇó©T Øê/ÿùÚ@w¶=	>ã_#[ª´¶dgg2-©Ìì§(C÷022°¥HFr2cJçR9D;÷}~ó~Ñ0|³1)Ò!J¹,4è8ÇÔíâjë¯êxËXÔP.\nµmO×ö+(zÙ\ZhFãec&g¬Tò\nSE aj>äT aûÑ~?¯êy¥Ü]w\";Iú·úþÒU¾æ\ræH¯KÌFÉ±pCnÞDh(rø»)ÂÛ[ô', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'XnJN1638429093', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Alexandr Kuznetsov', 'Vietnam', NULL, '3423232', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, 'pending', '2021-12-02 05:11:33', '2021-12-02 05:11:33', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Lazio', '0'),
(24, 38, 'BZh91AY&SYÛk~\0*ßP\0Xø?[ü¿ïÿú`=ð\0á¨À$#Ó\0\0Á0\0\0£I& h\r\0õ\0\0`Ld0\0À\0\0B\n=CF@cPzCC@\0õ\0h`Ld0\0À\0\0HSMÈMè´LLGµG©äÐ\nj:Aê>GÜÀîñNswàýñbå\n¿aÛõ\"î²AûÍâeÉñ¬útQ¯üfÞ¦ûV(ãjQiZÆõ7ÕGµI$Áu°×K&=G°Æ3õåì?Ù×Ms¸Á·y^ô<ÄxD´Ôøiï;1ls83 zó|1{ÊÙ_BÂ5bh·æ\r\ZtÒ3Hpq9ÃRÞ¸r@ÄhAÐ\\©668#\0ÐÆ\Z¸×\nÏ\nÇfEÆdÊe=¤¨AA\\0@:S:V45¹@H\r±^\"ø3PBkíLÁ6°ji·©%r4B¹21ÅUes(B±k0m*ZfjËTÀ«DR´Z¢ØÂm	Yq ©«¯@A÷(@ËARå ª72hlÆQbâ&öâLT y»µnTP©{Q4DÌ-zÔVÀ0¤ª\\ ©GRUÕ­Bª¿bø¤.KÔ92$å(CN\0·Nf%¡ÃSE ³5JKDLÈ\Z(¸\rûz3{}GZm{$ÔXÈLÉ[ïÌï[TaDK<\nRÏwdIIAÕi2N%©J<LµR+XÑ.Ðq¢UL§¾sØÒ67:åÀ°pÜ<4ËLgpb¤\\\rÈn[Õ¿sUiU¦1ZñÄ@@Pù\'ÔgCû U^))Ðv]æ±S\"1\rC0bð¼°²1°æóàTè·\rhQî?2©sáµuöÞ`àr3¼\Z>U<Q¸wKC,\ZCò:;ÓyÄ¶Û@F	U+¹ p#p|ßô=|aÝß¯4XV(2Æ©ð2hØdmª9Z¡#>¡Ã_Zp¨RG\'	dg¡%×©î Ðì3°yUMzSxM¼{Ïãþr:3§$sõË+ßLÌ18¦L1\n/tz»\'0ÿ<¨¯{YÄÂb\ZÎUù·ÁØ®S¼8:Pèr2AìÞJ£Zæõº(3èI¸\'è(]WÙÏ¸Ò¼\"õNîÔyoâ1P-oÀz¢$V	ëQXT(A$ÅàaBTÀå	Z *KØ)EÄaó7%Ç¼[»4ËÔ0xüÉòZXi¢4üøÇó©T Øê/ÿùÚ@w¶=	>ã_#[ª´¶dgg2-©Ìì§(C÷022°¥HFr2cJçR9D;÷}~ó~Ñ0|³1)Ò!J¹,4è8ÇÔíâjë¯êxËXÔP.\nµmO×ö+(zÙ\ZhFãec&g¬Tò\nSE aj>äT aûÑ~?¯êy¥Ü]w\";Iú·úþÒU¾æ\ræH¯KÌFÉ±pCnÞDh(rø»)ÂÛ[ô', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'XnJN1638429093', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Alexandr Kuznetsov', 'Vietnam', NULL, '3423232', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, 'pending', '2021-12-02 05:11:34', '2021-12-02 05:11:34', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, 'Lazio', 'Lazio', '0'),
(25, 38, 'BZh91AY&SYËcÈá\0+ßP\0Xø;Kü¿ÿÿú`=ñ@8Ê(Õ9¦&\0\0\0\0\0	Q2hMP=C@\0\04\0\0b`00\0	\0¢G¢zM¨ô1MI¡ \04=A£Cb`00\0	\0$D2jf6Õ=\Z2§¥<&ÔôÈHÞ$o·ÉU¹Î:Ý_ýÂÅÊ-yFß.ë$c$2¡òr}k!­Jº(ÓèÌI½MmX¢/Ô¢ÆµoüÁÆAucÜ¤M ºØk¦ÄçAØ{c>5>N=üüÆgwS{T+	nr3·:^f¶7ÄrCâT*y\ZÃâò*M}eª0ÔkØ1.¤Ð\r!oiÓ(Îàâz£R¾\'°HÕ4ÐX¡667$FÀÐÆ\Z¸Öõ¨ªÍË 22L®d¨AA¡\0BÔ®QÀY¦lXDaâÌ\n ×æ	¹°j±y¿q¡%r\Z!\\×¢§qEÄ©{°m)¼ÌÛÚbYTcÍkSqªè ¸BdÚfì¨£¥Æ`AêP¡.IK$:	!ATdÉ¢\Z4³EÂ&öpJ	»VáUE\nµL\nZõ¨­0¤ª\\ ©GRUÕ­B*ª¾+è¸¯¨peI´Àp¡%@âÔ\r¸\ZTMN;-À²,*ªË	L#¤¶BÕÐâ¹ëø¤LÒ©aÃJ(¯2ngÃ#²ãÑ_/.(]KÄ®YØ´C$Ô[Pbj¨ËjJ^Ö´H½Ü-3ÈïITg0b	\nkÙNc Ñ>r¥Ïöð?ù\ZãÌÐªôu\r\nî?aÎ2Z+~ìàªÒ«LbµãqCÜm?1ÓÞ0Ã¤S)Úyxfz1-39f:1b\\Y°â§¼©Ò³\ZþGÅSÛ­tó \rOa©¹Ñö©éFcºX0hlY¼ââàÔè-¶Ð0Ê¥cäb¬?ûõlòZ-2l=©AR¡R¡QUQ­RðHÏ3ca®õb¡IN¤%ÏQ%×Ðð Äì3ò|êiÆÛYóúp:ã¼ÿ2©Ì×·ÎI(PMË¬a#ìî½«\\óvNxs5ÅJC3¢Jñ6øôÎÛ.±¸3¦IÀÈ¿PU\ZÓ+Öè ÏÁ&a?pÌhörÏÖnÖy;0ÁF]|nS\n/ÅBnµ¤ÄËÕ$æ°\'ª£*°T(A$ÅàaBTÀå³,@T*x¤p,Vã¹[ò|Q\Zeê¿èåû£wDvùes¬_qýÃÄíl,I\'êk\Z[g¥íLâEô8a~LV©Ë! æ4®uAÑ\\å¦Üß\'â0ª8¸¬IK%UV*Z\r¤44&ÔG,ú¡à`ª¼XÐP.Jðv-äÌíìp/ÉYCÈí7Îp1Å4\rÔd§®*s\nS`´$T `Úõ¯Ãûý»L2ÐïKBTTQuÉC¬§Ì}|HHøDC}m\Z5,õ+.ÄçÙ¬Ý¼ñ--LRâÅÜN$2Øò8@', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'bm1n1638429863', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Alexandr Kuznetsov', 'Italy', NULL, '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, 'pending', '2021-12-02 05:24:23', '2021-12-02 05:24:23', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Lazio', '0'),
(26, 38, 'BZh91AY&SY=Ofg\0+ßP\0Xø;Kü¿ÿÿú`=ð\0¨Í10\0\0\0À\0L9¦&\0\0\0\0\0	4ÄÀ``\0\00B=M2=&ÒM\0\0\Z\0Ñ¡Í10\0\0\0À\0L\"©SÓJ)ìyMéM<ÒiOQêzM S®£âD~ @ÀÀ>IÒt~Oõ*2Zó¿\".ë$c$2¡õr}ë!²¥]ièÌI½M¬QÃm(±­cÿ¸2¸È.¬n9©$H.¶vXÔê0ühÆ3å»¼ú1Ó,Ì\r¼òI\03 `¡ÄÐô=ÇÖ1i¨Íä\ZB¡SÄÙgp3Ä¨ö¨Ã`×¸b\\@4®pY§L£:CyÖYp6ð<H%BSAb Úm5$F@ÐÆ\Z¸Öµ´Uf¥Æ&S2T  Å`À!jW(ÄÄÁ`,Ó¶,\"0ÆqfPBk÷LÁ\\@Ø5X¼ß¸Ð¹\r®BAkÑS¸¢ÞTÈ½Ø6Þfmð1,ª1fµ©¨ÍFUu\\M¡2m3v@ÔQÌÒã0 ÞP¡.IK$:!ATdÉ¢\Z4³EÂ&öpJ	»VáUE\nµL\nZõ¨­0¤ª\\ ©GRUÕ­B*ª¾Ñ!o_pÜÊ$i(CN\0º\'\n³Ðá´Ñah îM`Ã Á£2¥\n-gjÝÝí(êP ÞÒ®ÇJ¡­¥PÇ»u	[,ò$bYÚÆ³;Ff4ZUXñ¹%XY©xÜD^xã Îæyf52ÊªRñ42ÄäzyØøÏì.T¹ü=ê?c@ñÀ¼y]|u¸é-¿nUiU¦1Zñ¨¡äm°ÏñAµ§üOÿLTØ{×ïRMÁ¸Ìu60ÞÃâTìY|ÈGÅSá²;:ÃÜ`l52Ð\Z?=HÌwK&\r\r øÃC®Çô6E¶í	U+SÔd\\Cÿ?XÉáêw~éÁX ËÛÚa¹ó$g´ÞdXk½A¨RG°²ë$ºô==£7\'Ò¦é°&Ü¸o¸ÖãCÈï?¬ªt6r3vÝ:I%ë	¹pÐö$}½ÂÙÍØùC§ïê6$0£cÀrøx±§`jì¡Øn2 ïØJ£ZezÝú$Ì\'ò\ZZ?Sîpl76õãÕ\'{x8Ì ¼Ht	¸Ö/TDÀU¡B	&/\n¦,ÚJÌ±Pª]âÀ±Z?&ikÈYïFHi¨`sÿ÷,l4ÏàÅùuG?3iÄ²Pjqä´ð$9¶$ÞlÎÊ-¡êFC9¦o\"úÎºa~,V©Ë! è4®p ª ¹Ë?gªÝ\'à0|Ø³1)Ò!J¹,4è5ÎÇ&ÖúñÓâ6ìh(@A	F%ú;V²fsíp/ÙYCÈækàci\Z\Z¨ÈO©Ð(LV!Ð|R3kÚ¿Lê3ûó0ËC½.A	QQE×$E%>Ãã¼¡À¢ÈoA$\rÕ¥ô§y¹é9yy ¡È,âîH§\n©ìÌà', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'Mtwk1638429952', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 05:25:52', '2021-12-02 05:25:52', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(27, 38, 'BZh91AY&SY\0+ßP\0Xø;Kü¿ÿÿú`=¾h¦±\0 iÀÀ\0&\0`LU4Ó\0\0L\0\0&\0æ\0L\0L\0`\0&¡\Z#2hh\0\0Ð\0æ\0L\0L\0`\0&	Ð¥MóI<¦ÊhÛTÙ\'¤õ?T°\nZ.AÞBÊ\r°@  <ìó÷<mTQ;Åýö«;Å2sÉXõ¬µ*è£O³1&õ5µb¾©EkßþAÆAuc à²Ôk²Äãc¸õÆ­þ\'î_¹wKL¶jà-`T¢b(ÎmLæc¼Aq°Î$eB§µy¥gP;kí-Q£^ñrM\0ÒÙÁf2é\'aäj[ÜyKBÐTn7#p41¦®5µguY±qFIÔ(1X0 CÃ\ZÊ110X4Â\0m1YTüÓ!0W\"6\rV/7ð4$®CD+ZôTð(¸2/v\r¥7|LK*`Y¢-jl3a[È.&Ð6» j(æiq@Að(P$¥ËÉ!ATdÉ¢\Z4³EÂ&öpJ	¬VB¨éDyEE(Ô`xÔH°(;#ÈP©GRUÕ­B*ª¾åöH\\WðDm!°(AIPójÜA\r\r*\n¦ÇøÉ@E\"Á!ÅT±&ÒÇ¼ÙèÈÓd@Ðk<%]õ*æl29{®vsÑc!10(aLE0]Ø¼C%T[ÈÅT!QòR)Is½â$ÆRõ2ÉîóKæL@ÁAMSÓ ã9Ló´Þ$©sõ{HüËñô4*»9\r\nì?yÖ2Z+~àªÒ«LbµãaCän¨ÏóAµÇÈýO?Øÿ¦FÊHí>ó©E\'\0àf:°â§Ì©Ú³\ZýGÅSã­võ \rOy©±Ñ÷©êFcºX0hlYÌââ?¡©¼¶íÐ0Ê¥c÷1\rHÅÌ?óõ^¨YYÒ×{¥ÅÄªUFÖI;ú&E¼T$pa:C=d_cØAÜ3ò}jiÆÛ§3ëü\rp9>GýeS©¯C7n3¬Q°\rhÂGÝà-{×Eä9Q]ëf¤-Væ>Îgk;hv<u	%Q­2½nô$Ì\'ðô/ös]ãggC+o8Ò:r<5â¢¡7ZÒBâeêsXÊ£*°T(A$ÅàaBTÀåY *KÄR8+aàÍ-º>(É\r2õÿðOÆÃLýQË|wý\rÇ2ÉA±Ì_ýÎãÜHw¶$àk\Z[3Ôw¦q\"úNÊa~LV©Ë! ê4®r |As¦~ÏUº¾Ü 15#D\nXcE!(\" ÚICIBmI¼Èé(Ex%Ü*¯ak\Z\nEÂQB!zËi3;ûòVPò;Í³qM#Cec#)ç:\0©Ä0Z¢*P0Fm{W£ûþýæhx¥Ð!**(ºè¡Ì§Ô|øær$(²æÐA¡XQ|YÄ91#öcÇA¨ñw$S		1@', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'YVHw1638430598', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '123456789', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 05:36:38', '2021-12-02 05:36:38', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0'),
(28, 38, 'BZh91AY&SYÎcp\0+ßP\0Xø;Kü¿ÿÿú`=ª!(\0h#b`00\0	\0%4DP\0\0h\r\0iÀÀ\0&\0`*LLa0&#	Àb`00\0	\0$DM4#&§©élC mLÒhÓÔ	A\"`c4fâ°   \r(ækÞ}3É(D&çÇ0öª9Ä@m\'Ö!A÷¨\Z)K?B4EÑÃybóÅ2Úª}_áÍ¬CWbI3Ë`×]Ä¦Òÿ°öc?ÞæpÃ<r/6r+É$\0Î9D\'3Ä÷ÇPÆ-£7jHx\næÆw;Ê×_iuF\Z\r{Ä¸&i\\ ¹§Lc*CyÔp4+ÜwKBÉ ©$ ØhjH¡45a­(ªÍ¦SRT  ÅpdpQ[>l» pCeß:#%PBkñLÁX@Ø5X´ÛÎfI\\Fk1rÓÜ%¹\n6.Ð$Íå4a¨Bæºêj3Q[H,&Ð7LÚÊ	\Z¸¡psÈI#²(³LÙÊcdD°àÂ-eÀ,Ö`É±VÒÎÓxL]PØÈ i°r¥IVW]B\nª¾Õâ·¯¨neI´Àp¡%@Á¨q46¨*Fm7\04ÆÂ`bM¤\ri«Í©\nô ÒwJ³ÑRt±\r&´¸øäÆ6ßb3o7nðû5CR¬a4-Xøw¹7Öµ7³}Ì#Tm´é¦mòDAÄvNié9NCñT±û=gzLÃºòÑò3*º¸Êê>ó¤b³W~ÜªÒ«LbºÑ¨¡ð6OÐgä|Fbî¢°ø±áüéª:Ïz÷T¢pn2MoCâTëY\r$#¸bÄ©ùiA}C¼¼ÐÔÇ0hûTó#!Ù,X46,Câo0«A¡´»fÈ¼eR¸ù£$bâóõhV¯­Û6[Á!Ò&³³ä@°Þb\\5Ú ÈT)#ùÐ±ê$²ñ=d=7Ò¦{é MÜ¸O¨ÖãCàvÉTèiÈÉÝºtJ#ÔbÁø$}qiÍr]Áö!%ÒóAyìI§§ÑÔ¬Sjë¡Ön1 íÐ$F³ÆÕ²(3È ¸^P¿£æ6ur1»i¸^P@0)ËçÐ;Z$:\nØ	k9	ª\"IÉ^O\nª½P¡	Sl%d\\@T*h¤p,£¹Zò[Ñ\ZeªÿR|ëú#Øçò6KS¾ãû´æØ\\I\'¼Ó+\Z[#ÌFsLÞE³7T¾û¬)R#!AÐiXàAØÇ,½~kº>OÚ1ê n	0i4Ó\ZC\Z&Ð´ÚiË.îK°U^²ëÅ\"Á(À¡¼Å¬ûÒ®Pñ9å7`Ffª2ãã:\0©À/Y*P/FM~ÉmF~|ËñÌíKBTTQeÉCO øï!#ÀàHQb7Å 3¯¢÷ð®+µÐ¹.¡6\r8]ÅÜN$3§Ü\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'd2qK1638430670', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 05:37:50', '2021-12-02 05:37:50', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0');
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `wallet_price`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`, `weight`) VALUES
(29, 38, 'BZh91AY&SY`Å\r\0+ßP\0Xø;Kü¿ÿÿú`=ð\0È\0\0h#b`00\0	\054\'¥?SÕ\0\0\0\0\0\0\09¦&\0\0\0\0\0	D©12iÂ2`FL&\0iÀÀ\0&\0`BdÔÈÑ©êzCFI<¦Êiæ4§¤ÓõI\0$&3@Æn +\0Òf½çó*2Zñ¿B.ë$#$2¡÷r~k!¥Jº(ÏÉzZ±D_\r´¢Æµoÿ Êã º±¸îRI&p]m\Zê±©ÐaúÑgÓw¨û1Ï-Þ%x¤ÌG HÈë3<Ã¼éÅ´Ôfò\rI±P©àigx3À¨U÷¨ÃA¯zÐ\r!k²4él¤87\'B½ç´ .\nB\r¦¤Ð\ZÓCW\ZÛYÒ¬Ú\\ae5%B\nVðÆ¥rLLØ@\r±a30*_²d&\näBÁªÅæþ2Jä4B¹	¯EOIE¼©{°m)¼ÌÛâbYTcÍkST3Q]hLLÝ5s4¸Ì  ø(@ËARåHPU2hìÆQaDð½á\\$ÀÁReæîÕ¸UQB¥íDÓ\"bB½j+`)**QÔukPª¯zòH[×ä72$ÚC`8P öjÜA\r\r*\n¦ÇSMÀ\r!¤ÄÆ1¦0CØicè5y²3Õ!`ö\Z\r\'t«°âa¹:sÃg\ZÆ1m\n ¦Õ÷3s\" I\0á\0dÇ@4ÚØ<*\"BÀ*f52ÊªRñ42Äây|ð|MçÐî.T¹ü;8õãÄÌªéà\\3+¨ýç8Éf­û³r«J­1×D¶>\'ÌaNÔPv#ø>ßSþ\Z©#¨ø/Ú¥q°u4a¼\rS©l\Zú\"§ÇJêæ@\ZóCS,Á£õSÐºX0hlYÌÞâ6=FAm»`#aJÇÜÄ5#Xçì<=îïÃ1X+c\0À»aÛR,0W>¤ñ6Ì\rv¨6\n$pa:C=^Gq$hÍÃÉó©úhn=gãò5¸àPù§¶U9q6;näöÜ¸f{>ÏH´ä¸¯\0Í{PçÅLD Àö¤ÎÓ×êéW)Ä5uPê7vèJ£YåzÝæI°\'û¡ù:×!³§º\rÂóN<NØ@Âñ!ÌT&àKYÈ\\L½QNÅ<*2«BL^%LY´°±Pª]¢À±Z?³bZñÍèÉ\r2õ_èJÆÃLýÌQË¢9xN²ÉA©Ö/ì£°ï$96$ài²Ê-¡°ô#!7|ÍçM0?C+\nTeÈPs\ZW8AÑ\\ã³»ÑnoïG1ßP74i!h@ÚICIBmIÐdqÙÂ]Év\n«¸µÅ\"á(Ä¡¼ÎÅ¬]ëVPò9\ZìqM#3Uc#)ëÂTÅb,ÇÅ(#c^åæÀ¾£?Ï#³;Râ]qDPë)ø^ò>ÇB!¾¶ÌH\ZÂà3Â¸®×Bæ.\\ºØ6(`áwrE8P`Å\r', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'R3SM1638430901', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 05:41:41', '2021-12-02 05:41:41', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(30, 38, 'BZh91AY&SYC?Ø\0+ßP\0Xø;Kü¿ÿÿú`=ª!(\0h#b`00\0	\0%4#$Q4È\0\0i Ð\0æ\0L\0L\0`\0&	¤ÄÉ¦É2b0L\09¦&\0\0\0\0\0	DDÐB2jzÒl£F&ÔbhÓÔ	A\"`c4fâ°   \r(ækÞ}/%`D&çÇKzXÎqIõP}ñÃ\nYø:¢+pòÅ_Jeµ>«ðæÔ!Ë+Ç©I$Áe°k®âSiØ{1¾ïAý0ÏÍòI\03 `Ðâf}¼êÅ°Ôfò\rI¡SÀÒÎðgP:ëì.¨ÃA¯ÅKhµÊtÆ2¤87GB½ç´ ,\nB\r¤Ð\ZÓCV\ZÙYÒ¬ØXae5%B\nW°¯X1³èÑmcnÈÖïz\"Ê ×rd&\nÄBÁªÅ¦Þs2Jâ4CPìÁnáÈ`Øª@4TDW)£©²!fµ©QªÚAa6ÉºfÌ¨£cz$q@æ\n2@tÈÃ\"%ÇPkVñYx¸,¶³4³´Öe!áà\'5\r\r4T£©*Êë¨BÁUWØ¾zúæQ$Hl\nRT\0üZ·CC`J©±ÀäaÖÓpHi11i L&Á6$Ú@Øö¼Ùê¯H\0ñ\Z\r\'t«1NIÅi5¥ÇÇ$Fs¶û!|¹¸toÜÔÁ¬æZ¢ ÊhZ¡òïRo­k.oFûF°m´é¦iì6$ìÓÒr1â(©câî<£Òf÷UÕÀ°fWQø#»ÜÍÊ­*´Æ+­\Z\nódüÆ~gÀa.ê(;yñ<ý15RGYí_J)7ã!ÔÑð4>Nµ×ðB;Æ,J×Ð4<Í\rLsµO22ÀÅCbÄ>ðÃ\0ê¸ô\ZK¶lÉU+èÀ5#ÿ¨dðóB¥]nÜé­²HXYI&®Ú>FÃyp×j!P¤çBÄg¨Ëèw`@öÜ<_Jï¦7râ|þ£[yÚzåS¡§#\'vèÒI(PMgà0öyÅ§5ÉwKÖKÎHbb!ç­&vGR±NA¨3®Y¸Ä·@U\ZÏVÈ Ï\"L~áxmBþN+ÙÕÈÆí¦áyA\0À§.@ì ahè*`%¬ä,&Z¨\'%y<*2ªõBLZ%LY°qPª]¢À°Z>æIkÈYoF(i¨^sýIó¬.\Zg¸Á{öÇ?°â\\\ZE÷Øì=6ÂâI=¦\\¨ÒØdb3fò-¼ê¥ðÞÀÄeaJq\nJÇ6Ä9eÝæ»£äýù¾¡\náM1¤1  bmI(i0hM©6²á®ä»UÜ]q¡X%\"Øµ#czUÊ\'3\\¦óHÌÕ@Æ@\\bc<b§@ 0Xë1òEJèÉ¯Áy0-¨ÏÓ~9©rJ,¹\"(q)óä$x	\n,Fø´f`@Õô^ÑÅvº0AråÔ&Á±C¸»)ÂÁþÀ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'XS7P1638431280', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Alexandr Kuznetsov', 'Italy', NULL, '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, 'pending', '2021-12-02 05:48:00', '2021-12-02 05:48:00', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Lazio', '0'),
(31, 38, 'BZh91AY&SYC?Ø\0+ßP\0Xø;Kü¿ÿÿú`=ª!(\0h#b`00\0	\0%4#$Q4È\0\0i Ð\0æ\0L\0L\0`\0&	¤ÄÉ¦É2b0L\09¦&\0\0\0\0\0	DDÐB2jzÒl£F&ÔbhÓÔ	A\"`c4fâ°   \r(ækÞ}/%`D&çÇKzXÎqIõP}ñÃ\nYø:¢+pòÅ_Jeµ>«ðæÔ!Ë+Ç©I$Áe°k®âSiØ{1¾ïAý0ÏÍòI\03 `Ðâf}¼êÅ°Ôfò\rI¡SÀÒÎðgP:ëì.¨ÃA¯ÅKhµÊtÆ2¤87GB½ç´ ,\nB\r¤Ð\ZÓCV\ZÙYÒ¬ØXae5%B\nW°¯X1³èÑmcnÈÖïz\"Ê ×rd&\nÄBÁªÅ¦Þs2Jâ4CPìÁnáÈ`Øª@4TDW)£©²!fµ©QªÚAa6ÉºfÌ¨£cz$q@æ\n2@tÈÃ\"%ÇPkVñYx¸,¶³4³´Öe!áà\'5\r\r4T£©*Êë¨BÁUWØ¾zúæQ$Hl\nRT\0üZ·CC`J©±ÀäaÖÓpHi11i L&Á6$Ú@Øö¼Ùê¯H\0ñ\Z\r\'t«1NIÅi5¥ÇÇ$Fs¶û!|¹¸toÜÔÁ¬æZ¢ ÊhZ¡òïRo­k.oFûF°m´é¦iì6$ìÓÒr1â(©câî<£Òf÷UÕÀ°fWQø#»ÜÍÊ­*´Æ+­\Z\nódüÆ~gÀa.ê(;yñ<ý15RGYí_J)7ã!ÔÑð4>Nµ×ðB;Æ,J×Ð4<Í\rLsµO22ÀÅCbÄ>ðÃ\0ê¸ô\ZK¶lÉU+èÀ5#ÿ¨dðóB¥]nÜé­²HXYI&®Ú>FÃyp×j!P¤çBÄg¨Ëèw`@öÜ<_Jï¦7râ|þ£[yÚzåS¡§#\'vèÒI(PMgà0öyÅ§5ÉwKÖKÎHbb!ç­&vGR±NA¨3®Y¸Ä·@U\ZÏVÈ Ï\"L~áxmBþN+ÙÕÈÆí¦áyA\0À§.@ì ahè*`%¬ä,&Z¨\'%y<*2ªõBLZ%LY°qPª]¢À°Z>æIkÈYoF(i¨^sýIó¬.\Zg¸Á{öÇ?°â\\\ZE÷Øì=6ÂâI=¦\\¨ÒØdb3fò-¼ê¥ðÞÀÄeaJq\nJÇ6Ä9eÝæ»£äýù¾¡\náM1¤1  bmI(i0hM©6²á®ä»UÜ]q¡X%\"Øµ#czUÊ\'3\\¦óHÌÕ@Æ@\\bc<b§@ 0Xë1òEJèÉ¯Áy0-¨ÏÓ~9©rJ,¹\"(q)óä$x	\n,Fø´f`@Õô^ÑÅvº0AråÔ&Á±C¸»)ÂÁþÀ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'XS7P1638431280', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Alexandr Kuznetsov', 'Italy', NULL, '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, 'pending', '2021-12-02 05:48:00', '2021-12-02 05:48:00', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, 'Lazio', 'Lazio', '0'),
(32, 38, 'BZh91AY&SYíCQ7\0+ßP\0Xø;Kü¿ÿÿú`=¾©!\0\Zæ\0L\0L\0`\0&	MLi5HÓÊ \0i£A4\09¦&\0\0\0\0\0	D©12iÂ2`FL&\0iÀÀ\0&\0`4Ð§¤(ÈÈI£OR@$IÐ1\nÀ4£¯yô©0Aq¤C~rØWrÇH\r ú»§>÷Ò¥]gâÌ	µM.¬Q¿e(°­cpcaY\\n=*I$Î-]w\ZKþÃØ1ý÷zèáxä^läWHs<N&gàwC¶\ZÞA©!ó*<\r!ïx®½ÅÕh5èCà¤-ræ1©\rçQÀÐ¯qÞA-&¤a¡©\"44ÐÕ¶Vt¢«6bbMIPÁE³\n³rû[&JjLÀ$«Z²ùEA	¯Á2b!`ÕbÓo9%q\Z!°Y\'ÑÀÐÝóy&¤	3=;¾9Mk`\\Ñ]LFj2«iÚ&é2¢fyâbH*X¸ÚI\n\n±²LpJ\rPÊ¬øUzrhÂà.ÐÖhÄÃ&EÎ8½Æí(êJ²ºê°UUî^)zúæQ$Hl\nRT\0þm@Û!¡°%ATØàr0ëi¸¤4Æ4Ð&\0`m l{M^lõHW¤\0|ÆIÝ*ÌQrðpË´ÊÝºyµ°âµ64 Ò56Ñs3.×BÎ.S:ÎM­5ælk´J3sm£-PðläÞ:¹CÞsSK¨#ÖyG¤Ì;ï-#2««`Ì®£ð:F+5wæÍÊ­*´Æ+­\Z\ndý{ÏÂTÃXîÇÄùô³c·hö7®ä3q¡\\ë ÞÄ©Ö²\ZþGxÅSß¥uô \róCSÁ£íSÌd°1`ÐØ±¼0À:®=Òí \"òaJãú0\rFHÅÄ?çê<<Ð°±Ûãµ4\"J((ÂABIj¦ÁÐ8°Þb\\5Ú ÈT)#ùÐ±ê$²ñ=d=7Ò¦{é MÜ¸O¨ÖãCàvÉTèiÈÉÝºtJ#ÔbÁíHû<âÓä»Â%ìBK¥ç$11óØ;OO£©X§ Ô×C¬ÜbAÛ I*g«dPg&A?p¼6¡\'ÌlêäcvÓp¼ `SÏ v0´Ht	°Ör-TD¼Uz¡B	&-\n¦,ØJÈ¸¨U.ÑHàX-Fs$µä,·£4ËT/9þùÖ\r3ó0F\r±Ïäl8%§}Çö;âCaq$ãL®Til21Í3yÌÞuRøCï`b2°¥HF8A¥cb²õù®èù>ä|_PpÈII¦ÒÐ16\r¤44&ÔLNYpWr]ªõ\\f(@A	Fäv-dÈçØà^rÌ×)¼ÃÒ35P1Ï©Ð(LzÌ|Rz2kÚ¼ÔgåÌ¿ÎÔ¹%EE\\8úò>gB¾-5}¸gq]®Ì\\¹u	°lPÁÂî.äp¡!Ú¢n', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'sFnc1638431373', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 05:49:33', '2021-12-02 05:49:33', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(33, 38, 'BZh91AY&SYoÿ±\0+ßP\0Xø;Kü¿ÿÿú`=¾©!\0\Zæ\0L\0L\0`\0&	MÉÒ\0\0£A\0b`00\0	\0$J&L#&dÉÂa0\0æ\0L\0L\0`\0&	@MÉê§¤J=ÙRzSõ$DHÍ¸¬J9÷;ÉD	¹Ä1Òå sDÒ}\"|HiR®3òfÚ¦V(_ºXV±¿äØdWRI3Ëp×mÄ¦òÿ¸÷c?ßQü°ÏÍÛÙ$\0Î¢:DG33Èø·\ZâA©!õ*<M!ðx¶¾òê4\Zø!rM\0Ò¹AsNÆT°ähWÀñ ARHA¸ÐÔ\ZC\ZhjÃ[«:QU11L¦¤¨AAà±Àvë6}\Z-¬mÙ\ZÝïQ¤YTÿ	+«zLe²\Z¬v`«néÄ`Üª@4TDW£-\"ë©ÍFUo °BdÝ3f@ÔQÌÒÃ/ âP¡,IKÉ!AV6DK	PkVñYx¸,¶³4³´Öe!áà\'5\r\r4T£©*Êë¨BÁUWÁy$.+ú¢I6Ø ¤¨ýZ·CC`J©±ÀäaÚÓpHi11i L&Á6$Ú@Ø÷¼Ùê¯H\0úÂU§$éæ\ZMipá$Fs¶û!|¹¸toÜÔÁ¬æZ¢ ÊhZ¡òïRo­k.oFûF°m´é¦iì6$ínCÔqG)ã(©cö{O8õå£èfUvr,Ô¬b³W~àªÒ«LbºÑ¨¡ò7OØgä|Æb³,çdä>Ëý6úÇ­½8% à\rÅ¢\rSµd5û§å¥võ \ry¡©`Ñ÷©èFC²X°hlXÌâ`£CyvíÐy0Ê¥qü£$bæýûO/D*U×îNÛ$ÉeXh\Zí¨æ GÐÜq1.\ZïPd*Á|èBXöYyÒáëS>4Ð&í¹oèkÈ¡ò;Ïtªu4ØÉÝÂuJ#ØbÁïHû½\"Ó¢ÙxkÜ[ÍÄÄBÏrLï=~®Åb ÎÚ§ýITk<m[\"<É2	üá½ø9®gfÆ7o8Î6äztâ¢¡6ZÎBÂeªrWÊ£*¯T(A$Å aBTÀåY\n¥Þ)¨Ãðd».(Å\r2ÕÎ©>ÃLýË|túeÉA©Ì_ýÎãÀèØ\\I\'ÄÓ+\Z[#ÐFtLâE³8¾üX¬)R#!AÔiXäAøÆÙ{}u{?}_PpÈII¦ÒÐ16\r¤44&ÔÌM²å¯»Uí.¸ÌP,\nÌîZÉÓ¹À½jå¡®Sy	¤fj c .11qS¨P\n,õöEJèÉ¯zó`[QBüs;ÒØ!**(²ÙCO°ùñ!#êr$(±æÐAWÑ|FxWÚè\\ÁËPÅ.âîH§\nmÿö ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'F1mp1638431673', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 05:54:33', '2021-12-02 05:54:33', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(34, 38, 'BZh91AY&SYµ4^\0+ßP\0Xø;Kü¿ÿÿú`=ª!\0\Zæ\0L\0L\0`\0&	MÑ5MÒ\0\0#A4\09¦&\0\0\0\0\0	D©12iÂ2`FL&\0iÀÀ\0&\0`\0CF(ÉS44õ$DHÍ¸¬J9÷L\\¢KÝ\"áç s¤DÒ}b{@n±e,üHÉcuìòÅce³k>kðæÔ!ËUÓ±I$AjÐk¦ÂSawÜzc?¾èo¿,1.4âWHÄr<Gàw´5¸RCÄ¨Täggp3¼¨5öTa×ôÐ\r!k4écHpn:\ræe{ò	h@Z\nB\rÍI41¦­\ZÒ³Y¡hÃÊjJ¬°±ÙòdÃ`m2$6ñÊ2¯,A)¯É2q°jÈºnë2$®#CµÌ©iïe¤	3EDEr.ÖÀ±¢,²ÔeVÂDÚ&ÉYQG4#rHâ(Ë\\ë;9f6DK	¡ØXx«Å±4ÈÈ¨¥{PY¥¦¯,7«XkàL4Ð9R¤«UPzª¯ròH[Ø6²$ÚC`8P âÔ\r¸\ZTM#\ZCIcMa0	±&ÒÇ°ÕäÈËTr@Ðg;eZÅ6-\'á¤ÎVýòD^ûkb3jîhA¤jï£3oxk!f,é¡f»½I¬ç7sTkEÑm9i|&Ð\\qÃ«ö§ÎyJ*Z~ÀÓÎ=FAßql|Ì®å¡]GàsJÏ6ª´ªÓ¬¶5>&õï>C0Ws¶sçÐ~Í&û#zìKA¼7È8ÀÌù:V#_Éï°*{ó dà\\fja4}êzíJó\r\r\0ùûÃ¢ÃÒfl,ÓH¸eR°ú£$bàóõþT«³Þ¶\Zä¹	&±£ 3Cq`×bP¤§2Àg¬Õäv^@ô´x>u2ÝLÂlãÀúý¶Ê°öJ§3>&.Í°3Q°KC#Ú0õu>Kï<×±	.wPÄÄBbLì=^iN!¨3¦I´À³0U\ZËkj(3ÌÀ\\¿£ä6tq0³a´^p@0)Çy×u0¶$9Úµ¢eµDI8«ßQW* bØP09f¬K\nRìzÔaø1K^\"Çr0CL¶¡qËõ\'­_`Ó>è¿ã²9|ÍA©À_ýÎ£¸äØXI\'¸Ï\ZZ\'¡ä¸r7ºûØ¬)R!AÌiZo dAiÇßEßÜ1ê n	0i4Ó\ZC\Z&Ð´ÚaÇðíK¨U]¥\nE¡(¼¡¼Î¥¬ºÔ¬Pð9\Zã7ÞFFª2Ã	á9\0©z¼.Y*P.F-{WÝF~°ÈìKBTTQjâ¡À§Ô|7âo$(°àÐAyWQ{xWÚè\\ÁËPÅ.âîH§\n¦+À', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'yDPk1638432758', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:12:38', '2021-12-02 06:12:38', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(35, 38, 'BZh91AY&SYó÷¿\n\0+ßP\0Xø;Kü¿ÿÿú`=ª!\0\Zæ\0L\0L\0`\0&	MÑ5MÒ\0\0#A4\09¦&\0\0\0\0\0	D©12iÂ2`FL&\0iÀÀ\0&\0`4Ð§¤HÉ3I£OR@$IÐ1\nÀ4£¯yôÅÊ$°MÒ!qéZ:D@m\'Ö!A÷´ëRÏÁÔV7^Ï,V8f[6³æ¿mB²¸ÜtRI&pYl\Zë¸ÔÚ_÷Ágñ»Ì}gEæÎEy$ÐG0HÀâfxÃ¸êÅ°Ôfò\rIP©Þigx3¡P:ëë.¨ÃA¯bÐ\r!k4éeHpo:{ò	h@Y4$\r\rI 41¦¬5²³¥Y°°ÃÊjJ®°±ÙÃ&L6Ó pCaß¢ò¨!5ù&B`¬D l\Z¬Zmå3$®#CµÌ©iïe¤	3EDEr.ÖÀ¹¢.ºÔeVÒ	´&MÓ6d\rEDÐ89ÈI#¢,Qr¬@ìåÙ,&8.KbYaâ®Ä0Ó#\"¢íAfv¼²d<<Þ­a¯A0Ó@åJ:¬®º,U{BÞ¾Á¹I&ÒÂ\0?P6âhl	PU68:Ún\0i\r&&14	À\"&ÄHÓW#=Ré\01 ÒwJ³Ø´W9[÷É{í­Í«¹¡«¾Ì½á¬ ²¦îõ&³ÝÍQ­Flm´å¦iðDArÄw®cØrg9å(©cözOó}å£äfUup,Ô~Ã¤b³W{Ù¹U¥VÅu£QCàl¨ÏqñA¼³³ø>ölq4Ø9×bZ\rá¼Ð¬nAÆÄ©Ö²\ZþHGxÅSÝ¥uô \ray¡©`Ñ÷©äFC²X°hlXÄÞ`WcCivÍy0Ê¥qô0\rFHÅÄ?çè<<©Wg½9l5És$Mc\rGA>FÃyp×j!P¤çBÄg ËÀô`@öÜ<_Jï¦7râ}~Ã[Úz¥S¡§#\'vèÒI(@Mg¬a#ìòNkï<W©	.ÄÄBÏRLí<þn¥bPg]³qn$ª56­A$þðÚýW1³«ÛMÂñN\\.Ø@ÂÑ!ÐT&ÀKYÈXLµQNJòxTeUê$´(J³a+\"â¡T»E#`µ~×²ÞPÓ-P¼çúåX\\4Ïy0øm#aÄ¹(58ð?¹ØwÛ$öer£K`dyÎiÈ¶fóªÂ{*B1Äd(:\r+ ÛXå§ÉwGÉ÷#äbú(BL\ZM4ÆÆ´ m$¡¤Á¡6¤ÚbrË\"»ìW¤ºã1B°J0(D/±k&G>Çó«<Nf¹Mæ&ª¸ÄÆxÅN@*`°ÖcäÑ^µâÀ¶£?Neøæv¥È!**(²ä¡Ä§Ô|wó8Xñh ÌÀ«è½£<+ít.`åË¨Mbqw$S	?{ð ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'HIGo1638432847', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:14:07', '2021-12-02 06:14:07', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(36, 38, 'BZh91AY&SY]¬Ñå\0+ßP\0Xø;Kü¿ÿÿú`=ð\0r\049¦&\0\0\0\0\0	SBzSõ=P\0\0\0\0\0\0b`00\0	\0\"Jh\0M4ô \Zb`00\0	\0$D524jbS5=O)²y¤Í)é=ORÐ)\nh3À=Ê\rà@  <S1éð8±rFK^C¿âEÝdÈdt>.Oµd5©WE\Zy³\"oS[V(ã}(²­c+ÿÈ3¸È.¬p;I¤[Æº¬@ltûxÆ3ãÃSèue¦{û\nö$Ü#Ð	y3Øx#·âA±!ó*<Maðxª¾²Õ=xÔKh¶ÝtÎ7RN©_ÄZMI!óSbDj\ri¡«o¬ëEVo.4³3L¦Ä¨AAÁ\0<eR¹ÆFF¹0bÄF2¨!5û&B`®D l\Z¬^oÜhI\\ÆW! µè©+¸âTÌ½Ø6Þfoî2,ª1fµ©°ÍUt\\M¡2m3v@ÔQÌÒã0A´¡B\\\n,HtB¨ÍD4if2O7°<W`Â¥ËÍÝ«pª¢KÚ¦DÄ-zÔVÀ0¤ª\\ ©GRUÕ­BJª¾Í!q_`àÊ$i\ráB\nJÍ¨q46¨*HEB1ª¨bM¤\r ÙèÈÓdÐk<%]øO\rÌxD)Óã8Ö0àAShP@)6¨G¸!H&8¦ÖÁáQÚT³2©tÉRC9,H@Îg¼ÿ¸â|OQr¥Ïàê?1ú\ZÇ¡UÓÈ¸hWaûøÍh­û³«J­1×y¾~£=ÇÀanÔPvóø>#þ)#¨ö¯Ú¥¸u5aÄ\rOS©n\Zù2§»Zêï \rOaSc=£ïSÐÃºY°hlYÀâd6?±©Ð[~øÁ0Ê¥cèd¬?óýFO/D;»òí¦K\nÅXÁÁvÃmH±säHÏ#yÄÌ°×¥A¸T)#©	f3õ$ºó=D=ã87ßSN4Ô&ÜúÏ¯ØkÈ¡ï=\'÷Nó^fçn3¾I(Ô&åÃCÖ0öw^ÕÍxÎ$Wáu Á)%Î-·@·t5ÂT:dBITkLï[¢?$èBþNµÚ6tó3·AÀ_ çÈîÔ;^$;ÅBnµ¤ÄËÕ$îX\'FUaP¡	So%n,@T*¤R8KaàÜÜÅ»3CL½Coú\'¹ea¦~æHËßÑ¾Fó¬²Pluð?¹Øx­$öî²£Kxn=Ìgjg/¡Äé¦!ÅÊÂ!æ2ãJç\":\"÷z½ï|ß<^ÊF*°\"Æ0B QDB4Ú Ìç»\"¼ìW¨µ\"á(È¡¿\'bÚMÇoc~Êgi¶éÁI¤hl c ,fg=qS¼(LA ù¢¥Ü×­~XØgùí1¥.a	QQE×4E²Qõñ!#ær$(³ëh ÐÈ¬Q{F[¼8o#²Ì(È\r@ÿ¹\"(H.Öhò', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'GKzN1638433081', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:18:01', '2021-12-02 06:18:01', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(37, 38, 'BZh91AY&SY«c\0+ßP\0Xø;Kü¿ÿÿú`=ð\0Ä¢9¦&\0\0\0\0\0	Q2hMP=@\0\0@Ð\0b`00\0	\0$J&L#&dÉÂa0\0æ\0L\0L\0`\0&	ÔÈÉ©é¥0d£Êl¡§é3JzSõI\0$&3@Æn +\0Òf½çó*2Zò¿Áu!PûL¹?ÙR®4óf$Þ¦ËV(á¶XÖ±ÿÜ\\dV7ÔI¤[F»,@ju~G´cünï>ÇtË3o\"¼@è#$Aæq4<ÏàubÚj3y¤Ô¨Tñ6CÜñ*e}å¾\nÄÑ©Ð\r!kiÓ(ÎàÞu\\\r¼	h@`\nB\r¦ÃRDl4ÐÕÆ¶ÖvÑUddMIP\0<1©\\£³L Ø°ÃÅA	¯è	¹°j±y¿q¡%r\Z!\\×¢¤®ãyS\"÷`ÚSy¿ÈÄ²¨Æ\"Ö¦£5UÔAq6É´ÍÙQG3KÀB¹$.Xê$Q&hÒÌeOØÂL(&^ní[U*^ÔM2&$)kÖ¢¶\0Â©p¥IWVµXªªø/4½~s(M¤6)*\0V mÄÐØ ªlp9v4Ü\0Ò\ZLLc\Zh	D0M66>£W£#MR	\0Q Ù;¥]Eys>µ\\fÂø(xqBê^%rÎÅ¢&¢ÚPF[PJTröµ¢Eè^ä)i`öGzJ£90HS\\öÈs&àp*\\ÿ\0ié³@ñÀ¼y\Z]|uÀé-¿vnUiU¦1Zñ¨¡ó6ÏÜgÈú ÁaÒF±î<²fz1-3¡9¦:1b\\YªÀØ}\n1¯ôB<F,-ÙÐ6a©Ñù©êFcºX0hlYÐÞâv?caÔ[nØÀeR±ö1\rFHÅÄ?óö©-/dª@âT¨T¢¨TUTa+T¡aFÓya®õb¡INÂÈg°ëÌöb@öÜ<Jo¦Àrâ}ÿ[Þ{¥S¡³¶èÒI(`MË¼a#íîÎkñ=¹	.ÄÄBrLï=·Z¹NA¨3²a¸È¿`I*iëtPg¡&a? À:¿æ6uò2·Q¸^@0)ËÝ°;H^$:\nÜ	kIª\"IÍ`O\nªÁP¡	Sm%fX¨U.ñHàX­F£4µä,÷£$4ËÔ09ÿr{6\Zgîb~}QÏÈÚq,\ZEúäí<	m$ø3²£KhfzÎiÈ¾ó®B!*B2Èd(:\r+ ê.rÏÛê·GÉø#ÈÅõP74i!h@ÚICIBmIÔdrÏ\"»íW´µ\"á(Ä¡½Õ¬û\\Ö¬¡äs5Îp1Å4\rTd§Tè¦+Áh>H©@Áµï^ê3ûs0ËC½.A	QQE×$E%>ãã¼©À¢ÈoA$\raEñá\\Wk¡s.]Bl0p»¹\"(HUÀ?±', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'KyIY1638433136', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', 'Lesnyaya, moscow', 'Ho Chi Minh City', '2508', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:18:56', '2021-12-02 06:18:56', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'russia', NULL, '0'),
(38, 38, 'BZh91AY&SY«c\0+ßP\0Xø;Kü¿ÿÿú`=ð\0Ä¢9¦&\0\0\0\0\0	Q2hMP=@\0\0@Ð\0b`00\0	\0$J&L#&dÉÂa0\0æ\0L\0L\0`\0&	ÔÈÉ©é¥0d£Êl¡§é3JzSõI\0$&3@Æn +\0Òf½çó*2Zò¿Áu!PûL¹?ÙR®4óf$Þ¦ËV(á¶XÖ±ÿÜ\\dV7ÔI¤[F»,@ju~G´cünï>ÇtË3o\"¼@è#$Aæq4<ÏàubÚj3y¤Ô¨Tñ6CÜñ*e}å¾\nÄÑ©Ð\r!kiÓ(ÎàÞu\\\r¼	h@`\nB\r¦ÃRDl4ÐÕÆ¶ÖvÑUddMIP\0<1©\\£³L Ø°ÃÅA	¯è	¹°j±y¿q¡%r\Z!\\×¢¤®ãyS\"÷`ÚSy¿ÈÄ²¨Æ\"Ö¦£5UÔAq6É´ÍÙQG3KÀB¹$.Xê$Q&hÒÌeOØÂL(&^ní[U*^ÔM2&$)kÖ¢¶\0Â©p¥IWVµXªªø/4½~s(M¤6)*\0V mÄÐØ ªlp9v4Ü\0Ò\ZLLc\Zh	D0M66>£W£#MR	\0Q Ù;¥]Eys>µ\\fÂø(xqBê^%rÎÅ¢&¢ÚPF[PJTröµ¢Eè^ä)i`öGzJ£90HS\\öÈs&àp*\\ÿ\0ié³@ñÀ¼y\Z]|uÀé-¿vnUiU¦1Zñ¨¡ó6ÏÜgÈú ÁaÒF±î<²fz1-3¡9¦:1b\\YªÀØ}\n1¯ôB<F,-ÙÐ6a©Ñù©êFcºX0hlYÐÞâv?caÔ[nØÀeR±ö1\rFHÅÄ?óö©-/dª@âT¨T¢¨TUTa+T¡aFÓya®õb¡INÂÈg°ëÌöb@öÜ<Jo¦Àrâ}ÿ[Þ{¥S¡³¶èÒI(`MË¼a#íîÎkñ=¹	.ÄÄBrLï=·Z¹NA¨3²a¸È¿`I*iëtPg¡&a? À:¿æ6uò2·Q¸^@0)ËÝ°;H^$:\nÜ	kIª\"IÍ`O\nªÁP¡	Sm%fX¨U.ñHàX­F£4µä,÷£$4ËÔ09ÿr{6\Zgîb~}QÏÈÚq,\ZEúäí<	m$ø3²£KhfzÎiÈ¾ó®B!*B2Èd(:\r+ ê.rÏÛê·GÉø#ÈÅõP74i!h@ÚICIBmIÔdrÏ\"»íW´µ\"á(Ä¡½Õ¬û\\Ö¬¡äs5Îp1Å4\rTd§Tè¦+Áh>H©@Áµï^ê3ûs0ËC½.A	QQE×$E%>ãã¼©À¢ÈoA$\raEñá\\Wk¡s.]Bl0p»¹\"(HUÀ?±', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'KyIY1638433136', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', 'Lesnyaya, moscow', 'Ho Chi Minh City', '2508', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:18:56', '2021-12-02 06:18:56', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, 'russia', NULL, '0'),
(39, 38, 'BZh91AY&SYnG÷ø\0*ßP\0Xø?[ü¿ïÿú`=¾\0j°	æ4À&C\00L\0\0¢dÒi¨z=@4õ Ó\0\0Á0\0\0¥BPÑÔÐÐ\0=@\ZÓ\0\0Á0\0\0\"ÔÓA2?MB=FíQêyM\0¦ S¤£àD}Ìà ``ç7~õÐPrb©Q\r/\"TY±#8£îÙßR®5ÿlÐÔßjÅ|mJ-+XÒþÐfã º±È÷©$X.¶\ZébÄÇ°öÆ^^ãýt×;wïI\03ÌG$Aò;MO÷ç`Æ-gp TCÔßeÁ¥@ì¯¡a\ZK±4H[ó:i¤88a©oCàA9 \0â4 Êh.T	hcM\r\\kg\rã³\"ã2e2q*PeÆ!ÎÎ{	¶+Ä_`ªM}é&Ð6\rR-6ñ\ZÔ¹\Z!\\bª¼É(¬ZÌJ²åU0*Ñ­£(¶ °BdÖfÜH$jjækÀf~\n2äT¹bC$(*Ì!£[1X¢x½â¸(&^ní[U*^ÔM3!K^µ°)**QÔukP¢ª¯¢ù$.KØ92$å(CN\0·Nf%¡ÃSE ³5JKDLÈ\Z(¸\rûz3{}GZ­%W73C#ªáÑÚñ-,(YKD¬UØ¬C$ÔZÐbj¨ËZJZµ¬HµX*å÷½RçºP3±	²hê1=\rCtöL¡Ú}®%â%ªXfø<!âoËrÞ­üÙÍU¥VÅkÇCæpaÄa\"õI\'YÞgþædbZÇ:c1ÑÂÌÊÃÏS¢Ü5¡ûSó Z>;PG_°8qÈÎðhùÔñFáÝ-°hlYÈè\Zhì}óm¶ªV?Á p#p}ð=|aÝß¯4XV(2Æ±ñ2hØdmª9Z¹#>\'¡Ã_jp¨RG\'	dgÀëØõ Ðì3°y~úô¦ðx÷çþ\rr:u£ø»E0§:@Ô(Eº=]ÌTW½¬âHa1\rg*Ç|ÛàìW)Þ(t9 ÷o	%Q­szÝõ$Üõ.«ÀlçÜi^{A\0À§wCÞyoâ1P-oÀz¢$V	ëQXT(A$ÅàaBTÀå	Z *KÜ)EÄaô7%Ç¼[»4ËÔ0xý	òZXi¢4üøÇó©T Øê/ÿñÚ@w¶>¯­ÕZ[23Å3ÔævS!ú°22°¥HFr2cJçR9D;÷}¾ó~àD>LG\nÈÅYi¥\\	\ZtLãêvñ5u×u<e¬j(@A	FÚ¶\'k{=lÎ\r4M#q²±3Ö*y\0©¢Ð0µr*P0Íz/«üÔóK¸!**(ºîDvõo3÷%#û¥«#}ÍÌ7^;b<àÝ¼ÐPä?ñw$S	ä', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, '51fq1638434223', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:37:03', '2021-12-02 06:37:03', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(40, 38, 'BZh91AY&SYÛ\0+ßP\0Xø;Kü¿ÿÿú`=ñ@\\J(Ð\næ\0L\0L\0`\0&	DÉ¡5@õ\0\0\0\r@\0iÀÀ\0&\0`* 21&\0\r\0iÀÀ\0&\0`@M	=\ZTÙMä£jl£\nzSõK\0¥ Ràtä! Û\n\nÁ>Ï?sùÂÅÊ-yFïÜºÉÉ¨|æ\\jÈkR®4ú³oS[V(áºXÖ±ÿÜ\\dV8\" Î-F»,@n60ûQgï¿Àùî]ÒÓ-¸X\0èJ3EÓ9ã/bÜl3ÄÈ¨TkÈÖXÏgP÷&­â^Ã\rÃW$Ð\r!miÓ(ÎàâvJøDÐºh*I7\Z#PhcM\r\\kugZ*³qqFIØ(1X0 CÃ\ZÊ110X4Â\0m1YTþÉ+«÷W!¢ÈH-z*Jï82/v\r¥7ûÌK*`Y¢-jl3a[È.&Ð6» j(æiq@Aú(@ËARå\rä ª2dÑ\r\ZY¢Âá{Â¸I¥ËÍÝ«pª¢KÚ¦DÄ-zÔVÀRU.T£©*êÖ¡U_õH\\WØ82$ÚC`8P òjÜA\r\r*\n¦Ç°@¿(¤X0#`X Jm l{Í6HX$\0|Yá*+ÌðÈå¬¸âã4FÀaDKÄRñ+v-É5Ô*2Ú¢R£µ­/B÷!KLÃ²;ÒUÌBç¶Cé4O¹Rçú{OHüËñæhUvr.\ZØ~ã¬d´VýYÁU¥VÅkÆÂÀÝ?Aóâ0I\ZÆC¸òÊ}èÄ´ÎæèÆ!qff¨qSâTõ,Æ¿ä1dT÷ëA®¤©î0562Ð\Z>õ=hÌwK&\r\r øCC²Çô57Ýº0&T¬|ÌCa1vþ~ÁËbKE¦¦ËÙ*8¤*(ªUJÕ(eg¸âdXkÁA¨RG©	d3ØIuõ=¤=Ã8\'Ö¦i¨M¹öO°×CàxÖU:ó3vá:É%ì	¹pÐüÆ>îñkÑs^AGóÞ¶aH0JBÙa¾cà¼èp°3ÕCÔp2 ðÔ$F´Êõº(3Ð0À`Ð¿µt;9[yÀ^@0)Ïß¨w0¼Hu	¸Ö/TDÀUU¡B	&/\n¦,ÜJÌ±Pª^À±[?imÌYñFHi¨`tÿ$÷¬l4ÏÔÅü7ÇO3qÚY(6;EøÜî<I$ý\rs²£KpfzÑÎH¾²B!*B2Èd(:+ ß\\ç·×n¯ñG1jF*°\"Æ0B QDA´ÚyÏ>PðK¸U^ÒÖ4  £Bô;Òftîp/ÉYCÈèmàci\Z(ÈOlTê¦+Áh>h©@Áµù¯Föþ:e¡à0¨¨¢ë\"iO ûxò9Y\rö´hb@Ö\\ä,âû1ãÈ Ô	Oø»)Â.Ø`', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'f8MK1638434300', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'THis is my shipping', NULL, NULL, 'pending', '2021-12-02 06:38:20', '2021-12-02 06:38:20', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0'),
(41, 38, 'BZh91AY&SYèjOK\0+ßP\0Xø;Kü¿ÿÿú`=ð\0Ä¢) iÀÀ\0&\0`M\ZTÓOPdh\0\rP4\0\0æ\0L\0L\0`\0&	¤ÄÉ¦É2b0L\09¦&\0\0\0\0\0	DA524jf¤z\ZzLÒcÔ	A\"`c4fâ°   \r(ækÞ~øX¹B£%¯!ÝúwY ò!¬ËïY\rjUÑFlÄÔÖÕ\"øn¥5¬cýWÕç½I$Au¸kªÄÇAð=ÃÏ×¬úqÓ,Ì\rÜòI\03ÐHÌë4<ÏÀð:F1n6ÀbCèT*xÃàñ*U~%ª0ÔkðÐ\r!miÓ(ÎààtMJø$Ðºh*I7\Z#PhcM\r\\kugZ*³qqFIØ(1X0 CÃ\ZÊ110X#4Ñ\06ÅFÎ,ÀªM¤ÈLÈ\rUÍû	+ÑS¹)ÞÇEìÁ´¦Ó3eQ4E­Ml2« âm	iüjJ\rRÎfØÈ\n eÉ ©rÄA$(*Ù4CFVc(°¢xDÞÀð®``©A2ówjÜ*¨¡Rö¢i1!K^µ°K(êJºµ¨BÅUWâ¼Ò÷\rì¢I6Ø ¤¨ý\Z·CC`J©±ÀäaÔÓpHi11i L&Á6$Ú@Øú\r6HX$\0}Yß*j,dJ&7dZ­÷Äfwº×(gaBÊYáb±b®ìQk1(:£-fAá	ÄµkWi°êVE×F©Î\Z%Ì8ÁMÛ é5O¹Rçý{Hö\ZãÈÐªéâ\\4+°üNqÑ[òfõVZc¯\nº~Ã>GÌaÊñHLãËAö\\cF!®gNyF/Ë#\05>eN¥×ìB<,-h#«\0jx\Zh\rÅOR3ÒÄÉCbÈ>g\0Çé±ë5:nÝªV>¦!°ÉºÃû~ÑÇj5ÆhÕ(DQÊ\nU\n\nª%(43ÈÜp2,5Þ ÌT)#	Ô²í$ºó=Ä=Ã7\'Î¦)¨M¹uo¸ÖóCó;Ï|ªs5äfí¾sJ#Úrá¡ðHû;¯jä¼EïBK$11Þ;Ïg¯¥\\§ ØÕC¨ÞdAß¨I*iëtPg¡&a?Ð`_¹Ö»FÎFVè7Ò9q;µÂb¡7ZÒBâeêsXÆ£*°T(A$ÅàaBTÀåY *K¼R8+aôfÜdzoü\'¹ca¦~F(®\ZÍâiDÈ\'à¿&S`Ìª0ÆsQ¥¸3=HÈgjg/¡Àé¦àÀÈeaJ²\ncJç:\"³÷z­Íòy¾¡\náM1¤1  bmI(i0hM©:YñWz]ª÷± ¡\\%\"¡Ø¶3·±À½ÊGi¶s)¤hl c ,de=qSP\n¬C ù\"¥f×Áz0/°ÏÇ´Ã-ô¹%EE\\:Ê}×À¡Ä¢Èo­ C°¢ûá\\Wk¡s.]Bl0p»¹\"(Ht5\'¥', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'f9Mf1638434385', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:39:45', '2021-12-02 06:39:45', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0'),
(42, 38, 'BZh91AY&SY£ \0*ßP\0Xø?[ü¿ïÿú`=ð\0á¨À$#Ó\0\0Á0\0\0£I& h\r\0õ\0\0`Ld0\0À\0\0B\n=CF@dõ\ZzCC@\0õ\0h`Ld0\0À\0\0H#SMÈ4$6P4\0ÓAµ\ZdÐ\nj:Aê>GÜÀîñNswàþ2±rFK^á×ÚEÝdÜ2C?\'¾²jUÑFÛ3&õ6Ú±D_-iEkßÒ\\dV8*I$Ò­F¹XÜo2ô£Ïoú9ç¦6\ZöíI\03ÀG@HÞuóê<Î¡ZMäÜ@¨GCl1yª¾²Â4Rh¶âÚtÎ1Hpo8£BÞ³Èp@¼hAÐ\\©557# hcM\r\\kugu\r£³\"ã0a2I*PeÆç:c2ÊÆc\ZfÄÂ@mñÊrd, ×Ô	m`ÕbÓnÀÑ\nä ÀÄ_*ªñ$¢±k0m*ZfjËTÀ«DR´Z¢ÔÂm	Yo ©«®á@Aõ(@ËARå\rÄ ª62h,ÆQeDò½å\\¤ÈÉReæîÕ¸UQB¥íDÑ2µëQ[ aIT¸AR¤««Z,ÕU}kÞ¸/@àÊ$)@Xâ\Zt8ºp«0É(\r\Z,-¬RXb\"d4`&@Ð´¡EÀoÛÑÛê:Ô\0ÜHckÙ&¢ÆD¢dvH¢ß|FgzÚ£\n\"YàXP²xX¤X£»$ZLbJ¨ËIxBq-JQàZe¬:ZÆtn¬8Âe=óÆ´9¼HÔ.áá¦Xdû<ý\"ànFÅµ[îgVZc¯Äº}r?\n«Å e:ÃË¼Ö*dF!¨r¦\"^FÖ@Ú{\nÁ¬ÏÔyÐ¹ìÖ9üÄ¸úLÇA£áS¢6éfaCbÀ~\' Ï0ãcæ6Ëk¬dL2©XþÃpÉ»âþÏ¤;»óï¦k%b,dd°Áa¶ª,af~ÄöÎF\r|ê\r¡INâÀÏ\"K¯CÌ2¨Î¡áúªiÊBmÓ´þÁ®2&stãdc¹e{à)\"\04É#A¼=]ÌTW¿¬âHa1\rg*Ç·ÕÔ®S´79Päp0Aã´$F´ÅëtPgÈ`OÈ2\rè\\×pÙÇ°Î»âôNÎG¨ïÚ2P¶Èd&^¨\'E<ê2«%BL^%LY¸¡b¡T¼E#f·>&Ä·ögR0zGO=ë;\r3ñ3Føé´æU(59à?øë ;[\nDY§y¥ÕZZr03¢g-¡Äê§Có``eaJ`d(<Îdp.vìùû­àû>aù1+#	fbR$!¤BrX$iÐp3»Ôíâjë¯ê{XÐP.Ê­kî·ñVPó;q9æFÃUc\'Tï\nS5d´b*P2FÆ½käÀ¾ágq4<ìJ.»dü×ÄýHýÎ²U¾Æ\r¦\'^;b<àÝ¼ÐPä?ñw$S	\0*8ò\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'zAba1638434602', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:43:22', '2021-12-02 06:43:22', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_tracks`
--

INSERT INTO `order_tracks` (`id`, `order_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(4, 4, 'Pending', 'You have successfully placed your order.', '2021-11-25 22:51:30', '2021-11-25 22:51:30'),
(5, 5, 'Pending', 'You have successfully placed your order.', '2021-12-01 23:30:39', '2021-12-01 23:30:39'),
(6, 6, 'Pending', 'You have successfully placed your order.', '2021-12-01 23:33:47', '2021-12-01 23:33:47'),
(7, 7, 'Pending', 'You have successfully placed your order.', '2021-12-01 23:43:41', '2021-12-01 23:43:41'),
(8, 8, 'Pending', 'You have successfully placed your order.', '2021-12-02 00:08:37', '2021-12-02 00:08:37'),
(9, 9, 'Pending', 'You have successfully placed your order.', '2021-12-02 00:13:54', '2021-12-02 00:13:54'),
(10, 10, 'Pending', 'You have successfully placed your order.', '2021-12-02 00:15:32', '2021-12-02 00:15:32'),
(11, 11, 'Pending', 'You have successfully placed your order.', '2021-12-02 00:20:17', '2021-12-02 00:20:17'),
(12, 12, 'Pending', 'You have successfully placed your order.', '2021-12-02 00:23:32', '2021-12-02 00:23:32'),
(13, 13, 'Pending', 'You have successfully placed your order.', '2021-12-02 00:25:02', '2021-12-02 00:25:02'),
(14, 14, 'Pending', 'You have successfully placed your order.', '2021-12-02 00:29:32', '2021-12-02 00:29:32'),
(15, 15, 'Pending', 'You have successfully placed your order.', '2021-12-02 00:36:31', '2021-12-02 00:36:31'),
(16, 16, 'Pending', 'You have successfully placed your order.', '2021-12-02 00:51:39', '2021-12-02 00:51:39'),
(17, 17, 'Pending', 'You have successfully placed your order.', '2021-12-02 03:18:32', '2021-12-02 03:18:32'),
(18, 18, 'Pending', 'You have successfully placed your order.', '2021-12-02 03:29:37', '2021-12-02 03:29:37'),
(19, 19, 'Pending', 'You have successfully placed your order.', '2021-12-02 03:33:17', '2021-12-02 03:33:17'),
(20, 20, 'Pending', 'You have successfully placed your order.', '2021-12-02 03:51:04', '2021-12-02 03:51:04'),
(21, 21, 'Pending', 'You have successfully placed your order.', '2021-12-02 05:05:00', '2021-12-02 05:05:00'),
(22, 23, 'Pending', 'You have successfully placed your order.', '2021-12-02 05:11:34', '2021-12-02 05:11:34'),
(23, 25, 'Pending', 'You have successfully placed your order.', '2021-12-02 05:24:24', '2021-12-02 05:24:24'),
(24, 26, 'Pending', 'You have successfully placed your order.', '2021-12-02 05:25:52', '2021-12-02 05:25:52'),
(25, 27, 'Pending', 'You have successfully placed your order.', '2021-12-02 05:36:39', '2021-12-02 05:36:39'),
(26, 28, 'Pending', 'You have successfully placed your order.', '2021-12-02 05:37:50', '2021-12-02 05:37:50'),
(27, 29, 'Pending', 'You have successfully placed your order.', '2021-12-02 05:41:41', '2021-12-02 05:41:41'),
(28, 30, 'Pending', 'You have successfully placed your order.', '2021-12-02 05:48:00', '2021-12-02 05:48:00'),
(29, 32, 'Pending', 'You have successfully placed your order.', '2021-12-02 05:49:34', '2021-12-02 05:49:34'),
(30, 33, 'Pending', 'You have successfully placed your order.', '2021-12-02 05:54:33', '2021-12-02 05:54:33'),
(31, 34, 'Pending', 'You have successfully placed your order.', '2021-12-02 06:12:38', '2021-12-02 06:12:38'),
(32, 35, 'Pending', 'You have successfully placed your order.', '2021-12-02 06:14:08', '2021-12-02 06:14:08'),
(33, 36, 'Pending', 'You have successfully placed your order.', '2021-12-02 06:18:01', '2021-12-02 06:18:01'),
(34, 37, 'Pending', 'You have successfully placed your order.', '2021-12-02 06:18:56', '2021-12-02 06:18:56'),
(35, 39, 'Pending', 'You have successfully placed your order.', '2021-12-02 06:37:04', '2021-12-02 06:37:04'),
(36, 40, 'Pending', 'You have successfully placed your order.', '2021-12-02 06:38:20', '2021-12-02 06:38:20'),
(37, 41, 'Pending', 'You have successfully placed your order.', '2021-12-02 06:39:46', '2021-12-02 06:39:46'),
(38, 42, 'Pending', 'You have successfully placed your order.', '2021-12-02 06:43:23', '2021-12-02 06:43:23'),
(39, 44, 'Pending', 'You have successfully placed your order.', '2021-12-02 06:45:07', '2021-12-02 06:45:07'),
(40, 46, 'Pending', 'You have successfully placed your order.', '2021-12-02 06:47:17', '2021-12-02 06:47:17'),
(41, 48, 'Pending', 'You have successfully placed your order.', '2021-12-02 07:23:24', '2021-12-02 07:23:24'),
(42, 49, 'Pending', 'You have successfully placed your order.', '2021-12-02 07:26:24', '2021-12-02 07:26:24'),
(43, 51, 'Pending', 'You have successfully placed your order.', '2021-12-02 07:28:37', '2021-12-02 07:28:37'),
(44, 53, 'Pending', 'You have successfully placed your order.', '2021-12-02 07:37:21', '2021-12-02 07:37:21'),
(45, 55, 'Pending', 'You have successfully placed your order.', '2021-12-02 07:43:30', '2021-12-02 07:43:30'),
(46, 57, 'Pending', 'You have successfully placed your order.', '2021-12-02 07:46:49', '2021-12-02 07:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Default Packaging', 'Default packaging by store', 0),
(2, 0, 'Gift Packaging', 'Exclusive Gift packaging', 15);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` tinyint(1) NOT NULL DEFAULT 0,
  `footer` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`, `header`, `footer`) VALUES
(1, 'About Us', 'about', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"font-family: \" 51);\"=\"\"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', NULL, NULL, 0, 0),
(2, 'Privacy & Policy', 'privacy', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><img src=\"https://i.imgur.com/BobQuyA.jpg\" width=\"591\"></h2><h2><font size=\"6\">Title number 1</font></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'test,test1,test2,test3', 'Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1),
(3, 'Terms & Condition', 'terms', '<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 't1,t2,t3,t4', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagesettings`
--

CREATE TABLE `pagesettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `side_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` tinyint(1) NOT NULL DEFAULT 1,
  `service` tinyint(1) NOT NULL DEFAULT 1,
  `featured` tinyint(1) NOT NULL DEFAULT 1,
  `small_banner` tinyint(1) NOT NULL DEFAULT 1,
  `best` tinyint(1) NOT NULL DEFAULT 1,
  `top_rated` tinyint(1) NOT NULL DEFAULT 1,
  `large_banner` tinyint(1) NOT NULL DEFAULT 1,
  `big` tinyint(1) NOT NULL DEFAULT 1,
  `hot_sale` tinyint(1) NOT NULL DEFAULT 1,
  `partners` tinyint(1) NOT NULL DEFAULT 0,
  `review_blog` tinyint(1) NOT NULL DEFAULT 1,
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom_small` tinyint(1) NOT NULL DEFAULT 0,
  `flash_deal` tinyint(1) NOT NULL DEFAULT 0,
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_category` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagesettings`
--

INSERT INTO `pagesettings` (`id`, `contact_success`, `contact_email`, `contact_title`, `contact_text`, `side_title`, `side_text`, `street`, `phone`, `fax`, `email`, `site`, `slider`, `service`, `featured`, `small_banner`, `best`, `top_rated`, `large_banner`, `big`, `hot_sale`, `partners`, `review_blog`, `best_seller_banner`, `best_seller_banner_link`, `big_save_banner`, `big_save_banner_link`, `bottom_small`, `flash_deal`, `best_seller_banner1`, `best_seller_banner_link1`, `big_save_banner1`, `big_save_banner_link1`, `featured_category`) VALUES
(1, 'Success! Thanks for contacting us, we will get back to you shortly.', 'admin@geniusocean.com', '<h4 class=\"subtitle\" style=\"margin-bottom: 6px; font-weight: 600; line-height: 28px; font-size: 28px; text-transform: uppercase;\">WE\'D LOVE TO</h4><h2 class=\"title\" style=\"margin-bottom: 13px;font-weight: 600;line-height: 50px;font-size: 40px;color: #0f78f2;text-transform: uppercase;\">HEAR FROM YOU</h2>', '<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>', '<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>', '<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>', '3212 N Jupiter Rd, Ste 120 Garland, Texas 75044', '+1  972 495 8131', NULL, 'abcsaigonservices@gmail.com', 'https://abcsaigonshop.com/', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, '1568889138banner1.jpg', 'http://google.com', '1565150264banner3.jpg', 'http://google.com', 1, 1, '1568889138banner2.jpg', 'http://google.com', '1565150264banner4.jpg', 'http://google.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(191) NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `photo`, `link`) VALUES
(7, '1571289583p1.jpg', 'https://www.google.com/'),
(8, '1571289601p2.jpg', 'https://www.google.com/'),
(9, '1571289608p3.jpg', 'https://www.google.com/'),
(10, '1571289614p4.jpg', 'https://www.google.com/'),
(11, '1571289621p5.jpg', 'https://www.google.com/'),
(12, '1571289627p6.jpg', 'https://www.google.com/'),
(13, '1571289634p7.jpg', 'https://www.google.com/'),
(14, '1571289642p8.jpg', 'https://www.google.com/'),
(15, '1571289650p9.jpg', 'https://www.google.com/'),
(16, '1571289657p10.jpg', 'https://www.google.com/'),
(17, '1571289663p11.jpg', 'https://www.google.com/'),
(18, '1571289669p12.jpg', 'https://www.google.com/'),
(19, '1571289675p13.jpg', 'https://www.google.com/'),
(20, '1571289680p14.jpg', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `status`) VALUES
(46, 'Pay via Manual Payment.', 'Manual Payment', '<font size=\"3\"><font size=\"3\"><b>Manual Payment</b></font><b>&nbsp;No: 6528068515</b><br><br></font>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `id` int(191) UNSIGNED NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`id`, `location`) VALUES
(2, 'Azampur'),
(3, 'Dhaka'),
(4, 'Kazipara'),
(5, 'Kamarpara'),
(6, 'Uttara');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(191) UNSIGNED NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text DEFAULT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `category_id` int(191) UNSIGNED NOT NULL,
  `subcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `childcategory_id` int(191) UNSIGNED DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(2) UNSIGNED NOT NULL DEFAULT 1,
  `views` int(191) UNSIGNED NOT NULL DEFAULT 0,
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text DEFAULT NULL,
  `colors` text DEFAULT NULL,
  `product_condition` tinyint(1) NOT NULL DEFAULT 0,
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT 0,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) UNSIGNED NOT NULL DEFAULT 0,
  `best` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `top` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `hot` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `latest` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `big` tinyint(10) UNSIGNED NOT NULL DEFAULT 0,
  `trending` tinyint(1) NOT NULL DEFAULT 0,
  `sale` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT 0,
  `discount_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_catalog` tinyint(1) NOT NULL DEFAULT 0,
  `catalog_id` int(191) NOT NULL DEFAULT 0,
  `weight` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `weight`) VALUES
(93, NULL, 'normal', NULL, 0, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 1', 'digital-product-title-will-be-here-by-name-1-94l93dsn', '15680269303GYKjODW.png', '1568026930poclhyxJ.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 40, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 07:07:43', '2019-12-29 00:39:18', 0, NULL, NULL, NULL, 0, 0, '0'),
(95, 'pr495jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 95', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027732dTwHda8l.png', '1568027751AidGUyJv.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 53, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 1, '2019-09-09 07:36:06', '2021-11-25 18:31:43', 1, '09/08/2021', NULL, NULL, 0, 0, '0'),
(96, 'pr601jsv', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Top Rated product title will be here according to your wish 96', 'top-rated-product-title-will-be-here-according-to-your-wish-96-rdk96x5b', '1568025872cCRVsp2k.png', '1568025872thPsuRSJ.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 19, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 1, '2019-09-09 08:00:05', '2021-12-14 05:53:47', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, '0'),
(97, 'pr602jsv', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 97', 'physical-product-title-title-will-be-here-97-pr602jsv', '1568026462TxRJ07FG.png', '1568026462WBWcd7KZ.jpg', NULL, 'S,M,L', '2147483596,2147483597,2147483596', '20,30,40', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 70, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2021-12-14 05:53:29', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, '0'),
(99, 'pr604jsv', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-hjm99shr', '15680264040zpMCpmS.png', '1568026404Hm4kTmnP.jpg', NULL, 'S', '2147483641', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 17, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2020-02-01 00:23:13', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, '0'),
(100, 'pr605jsv', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 100', 'physical-product-title-title-will-be-here-100-qqz100nzi', '1568026368qU5AILZo.png', '1568026368CzWwfWLG.jpg', NULL, 'S', '2147483646', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 8, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 0, 1, 1, '2019-09-09 11:59:33', '2020-02-01 01:13:22', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, '0'),
(101, 'pr606jsv', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 101', 'physical-product-title-title-will-be-here-101-8e1101lbq', '1568026326RDSwScJe.png', '1568026326vMlslLz4.jpg', NULL, 'S', '2147483633', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 24, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2021-12-14 05:52:52', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, '0'),
(102, 'pr607jsv', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 102', 'physical-product-title-title-will-be-here-102-pr607jsv', '1568026301A6SNpEFR.png', '1568026301VLkmQEpb.jpg', NULL, 'S', '2147483590', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 57, 'clothing,bag', NULL, NULL, 1, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 11:59:33', '2021-12-02 07:46:49', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, '0'),
(103, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 1', 'digital-product-title-will-be-here-by-name-1-laj1033wf', '1568026899SLhVRzQv.png', '15680268999fypNo3k.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 4, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2019-10-03 01:16:24', 0, NULL, NULL, NULL, 0, 0, '0'),
(104, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 104', 'digital-product-title-will-be-here-by-name-104-ffv1047iv', '1568026881R8KnUyJv.png', '1568026881yy7vilmh.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 6, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2019-09-10 08:21:46', 0, NULL, NULL, NULL, 0, 0, '0'),
(105, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 105', 'digital-product-title-will-be-here-by-name-105-xpt105lfz', '1568026853LMtcb9he.png', '1568026853ZnMf5AkF.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2019-10-07 22:40:15', 0, NULL, NULL, NULL, 0, 0, '0'),
(106, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 106', 'digital-product-title-will-be-here-by-name-106-iq4106dr3', '1568026820NnXjzL5e.png', '1568026820j7QX4FZs.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2019-10-07 22:40:14', 0, NULL, NULL, NULL, 0, 0, '0'),
(107, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 107', 'digital-product-title-will-be-here-by-name-107-4ll107cru', '1568026791NGCCXoMs.png', '1568026791O2FR26Va.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 4, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2019-10-12 22:27:40', 0, NULL, NULL, NULL, 0, 0, '0'),
(109, NULL, 'normal', NULL, 13, 11, NULL, NULL, NULL, 'Digital Product Title will Be Here by Name 109', 'digital-product-title-will-be-here-by-name-109-ext109m9m', '15680267308Mckygzw.png', '1568026730uz1TS02K.jpg', '1568016463minimal (16).zip', NULL, NULL, NULL, NULL, 50, 75, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 1, 'book,ebook', NULL, NULL, 0, NULL, 0, 'book,ebook', 'These are ebook from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Digital', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, 0, 0, '2019-09-09 12:07:43', '2019-09-09 15:33:10', 0, NULL, NULL, NULL, 0, 0, '0');
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `weight`) VALUES
(111, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 111', 'license-key-title-will-be-here-according-to-your-wish-111-wb3111ubd', '1568029267UZnlkD97.png', '1568029267AY9MRYAQ.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 1, 1, 1, 1, '2019-09-09 12:25:20', '2019-09-19 02:39:08', 0, NULL, NULL, NULL, 0, 0, '0'),
(112, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 1', 'license-key-title-will-be-here-according-to-your-wish-1-sct112k8z', '1568029203HHnZu8em.png', '1568029203eAzBjS8a.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'game', 'Keyword 2,Keyword1', '#e80707,#113fe0', 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 1, 1, 1, '2019-09-09 12:25:20', '2019-09-09 20:23:17', 0, NULL, NULL, NULL, 0, 0, '0'),
(114, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 1', 'license-key-title-will-be-here-according-to-your-wish-1-bbb114jm9', '1568029152hgFzyOZv.png', '1568029152PVeSE2Ct.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 1, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '9999999999999999999999999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 1, 0, 1, '2019-09-09 12:25:20', '2019-10-01 23:34:27', 0, NULL, NULL, NULL, 0, 0, '0'),
(116, 'pr496jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 116', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027684whVhJDrR.png', '1568027717gm0tFzeb.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', 'Keyword1,Keyword 2', '#ff1a1a,#0fbcd4', 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:15:17', 1, '09/08/2021', NULL, NULL, 0, 0, '0'),
(117, 'pr497jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 117', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027658Up0FIXsW.png', '1568027670dTA7gQml.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:14:30', 1, '09/08/2021', NULL, NULL, 0, 0, '0'),
(118, 'pr498jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 118', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027631cnmEylRa.png', '1568027643PgYviwVK.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:14:03', 1, '09/08/2021', NULL, NULL, 0, 0, '0'),
(119, 'pr499jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 1', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027603i5UAZiKB.png', '1568027616O1coe3aV.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:13:36', 1, '09/08/2021', NULL, NULL, 0, 0, '0'),
(120, 'pr500jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 120', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027558gLSECTIh.png', '1568027591b1oUIo7Q.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, 0, '2019-09-09 12:36:06', '2019-09-09 10:53:33', 1, '09/08/2021', NULL, NULL, 0, 0, '0'),
(121, 'pr501jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 121', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027534O1QEBPpR.png', '1568027543P8eoamtf.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:12:23', 1, '09/08/2021', NULL, NULL, 0, 0, '0'),
(122, 'pr502jsv', 'affiliate', 'https://www.amazon.com/Rolex-Master-Automatic-self-Wind-Certified-Pre-Owned/dp/B07MHJ8SVQ/ref=lp_13779934011_1_2?s=apparel&ie=UTF8&qid=1565186470&sr=1-2&nodeID=13779934011&psd=1', 13, 4, NULL, NULL, NULL, 'Affiliate Product Title will Be Here. Affiliate Product Title will Be Here 122', 'affiliate-product-title-will-be-here-affiliate-product-title-will-be-here-1-pr495jsv', '1568027493eLqHNoZP.png', '1568027517LGq90luX.jpg', NULL, NULL, NULL, NULL, '#000000,#a33333,#d90b0b,#209125', 50, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 55555, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'watch', NULL, NULL, 2, '5-7 days', 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-09 12:36:06', '2019-09-09 10:11:57', 1, '09/08/2021', NULL, NULL, 0, 0, '0'),
(123, 'pr608jsv', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-0af12392v', '1568025845ksCVo0hg.png', '1568025845bvB0Q0RE.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 7, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, 0, 0, 1, '2019-09-09 13:00:05', '2019-10-12 04:26:54', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, '0'),
(124, 'pr609jsv', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Top Rated product title will be here according to your wish 124', 'top-rated-product-title-will-be-here-according-to-your-wish-124-hua12449x', '1568025818Iu033mHq.png', '1568025818tm9YHIHp.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 3, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 1, 1, '2019-09-09 13:00:05', '2019-10-02 03:39:33', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, '0'),
(125, 'pr610jsv', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Top Rated product title will be here according to your wish 125', 'top-rated-product-title-will-be-here-according-to-your-wish-125-lbp125hto', '1568025774B3MU5tJK.png', '1568025774ZsBKNuio.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 1, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, 1, '2019-09-09 13:00:05', '2019-10-01 21:57:30', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, '0');
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `weight`) VALUES
(126, 'pr611jsv', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Top Rated product title will be here according to your wish 1', 'top-rated-product-title-will-be-here-according-to-your-wish-1-7uo96fft', '1568025683HenL6lSt.png', '1568025683ZYvDAf0q.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify;\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; padding: 0px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 10, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, 0, 0, 0, '2019-09-09 13:00:05', '2019-10-01 21:57:22', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, '0'),
(128, 'pr613jsv', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Top Rated product title will be here according to your wish 102', 'top-rated-product-title-will-be-here-according-to-your-wish-102-rgr128igz', '1568025531RbQwgMZ5.png', '1568025531ckSl3TVR.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 2, 'fashion', 'Keyword1,Keyword 2', '#42c406,#f00505', 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 0, 1, '2019-09-09 13:00:05', '2019-10-01 22:13:52', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 0, '0'),
(129, 'pr614jsv', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Top Rated product title will be here according to your wish 101', 'top-rated-product-title-will-be-here-according-to-your-wish-101-nls129ico', '1568025423UQNFrvNh.png', '15680254230iXcasMb.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 2, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1, 0, 1, 1, '2019-09-09 13:00:05', '2019-10-02 03:39:25', 0, NULL, '10,20,30,40', '5,10,15,20', 1, 0, '0'),
(130, NULL, 'normal', NULL, 13, 8, NULL, NULL, NULL, 'License key title will be here according to your wish 130', 'license-key-title-will-be-here-according-to-your-wish-130-nwn1300xx', '1568029076fUcMe2QP.png', '1568029076jgoAP4SR.jpg', '156801752005.zip', NULL, NULL, NULL, NULL, 80, 100, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 8, 'game', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=HxNydN5tScI', 'License', '888888888888888888888888', '999', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, 1, 1, '2019-09-09 12:25:20', '2020-01-27 02:20:21', 0, NULL, NULL, NULL, 0, 0, '0'),
(134, 'OO42939gas', 'normal', NULL, 13, 4, NULL, NULL, NULL, 'Elite 24\'\' ELITE HD LED TV DN600D', 'elite-24-elite-hd-led-tv-dn600d-oo42939gas', '1570072567FiBwycha.png', '1570072567Cqr5iSzD.jpg', NULL, NULL, NULL, NULL, NULL, 300, 400, '<span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;\"=\"\"><font size=\"3\">TVs always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 992, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\"><font size=\"3\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</font></span><br>', 1, 36, 'tv,television', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-25 00:33:22', '2019-10-12 06:20:27', 0, NULL, NULL, NULL, 1, 0, '0'),
(135, '3uZ9903ofs', 'normal', NULL, 13, 4, NULL, NULL, NULL, '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-3uz9903ofs', '1570072554QTCZrnNj.png', '1570072555mZv9XiNP.jpg', NULL, NULL, NULL, NULL, NULL, 300, 500, '<span style=\"color: rgb(0, 0, 0); font-family: calibri, sans-serif;\"><font size=\"4\">NAPCO TV always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 396, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>', 1, 80, 'lcd,tv,led', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-29 23:08:12', '2019-10-12 05:43:18', 0, NULL, NULL, NULL, 1, 0, '0'),
(144, 'vrX2915O5c', 'normal', NULL, 13, 4, NULL, NULL, NULL, '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-vrx2915o5c', '1570072918cZGfHP4L.jpg', '1570072918kGfglIIV.jpg', NULL, NULL, NULL, NULL, NULL, 300, 500, '<span style=\"color: rgb(0, 0, 0); font-family: calibri, sans-serif;\"><font size=\"4\">NAPCO TV always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It’s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn’t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 396, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>', 1, 21, 'lcd,tv,led', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-02 21:21:58', '2019-10-07 23:20:46', 0, NULL, NULL, NULL, 0, 135, '0'),
(169, 'TRg5938WNy', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-trg5938wny', '1570875978KD9cRleA.jpg', '15708759789N9Hm1QJ.jpg', NULL, NULL, NULL, NULL, 'Red,#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 4, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:26:18', '2019-10-12 04:31:05', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123, '0'),
(170, '6Vb6172gWR', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-6vb6172gwr', '1570876195YsopRMZ0.jpg', '157087619598Nfs52R.jpg', NULL, NULL, NULL, NULL, 'Black,Red,#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:29:55', '2019-10-12 04:29:55', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123, '0'),
(171, 'zia62030Vj', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Top Rated product title will be here according to your wish 123', 'top-rated-product-title-will-be-here-according-to-your-wish-123-zia62030vj', '1570876207958wem8B.jpg', '1570876207Ri9VVzRq.jpg', NULL, NULL, NULL, NULL, '#000000,#15a0bf,#f5cf07,#2b4cc2,#247d32,#d62727', 100, 500, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 1, 'fashion', NULL, NULL, 2, '5-7 days', 0, 'fashion', 'Fashion meta tag from Demo store.', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:30:07', '2020-01-23 00:53:46', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 123, '0'),
(173, 'b2Q6258iDf', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 0131 Test', 'physical-product-title-title-will-be-here-0131-test-b2q6258idf', '1570876281siGCkmvP.jpg', '1570876281Wt1wdK8O.jpg', NULL, 'S', '2147483643', '20', 'White,Red,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 120, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', 'Keyword1,Keyword 2', '#cf1d1d,#c92be3', 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:31:21', '2019-10-12 04:31:21', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 131, '0'),
(174, 'bXf62830R9', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 0131 Test', 'physical-product-title-title-will-be-here-0131-test-bxf62830r9', '1570876303dcztUot8.jpg', '15708763046Vwtn82r.jpg', NULL, 'S', '2147483643', '20', 'White,Black,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 120, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', 'Keyword1,Keyword 2', '#cf1d1d,#c92be3', 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:31:43', '2019-10-12 04:31:44', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 131, '0'),
(175, '9gn6494iUN', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 102', 'physical-product-title-title-will-be-here-102-9gn6494iun', '1570876503CUOkgSFD.jpg', '1570876503XgLFnuQi.jpg', NULL, 'S', '55555555555555555', '20', '#ffffff,#000000,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', NULL, NULL, 1, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:35:03', '2019-10-15 04:50:14', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 102, '0'),
(178, 'Tcv6794KXS', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-tcv6794kxs', '1570876820YXbcdnxW.jpg', '1570876820rpkj3Z6U.jpg', NULL, 'S', '2147483644', '20', 'White,Black,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:40:20', '2019-10-12 04:40:20', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, '0'),
(179, 'mf56823djs', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 99', 'physical-product-title-title-will-be-here-99-mf56823djs', '1579415279unIkBvYL.jpg', '1579415279kCjz7hO7.jpg', NULL, 'S', '2147483644', '20', '#ffffff,#ff0000,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 0, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-12 04:45:27', '2020-01-19 00:27:59', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, '0'),
(180, 'myy7236gFD', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 99u', 'physical-product-title-title-will-be-here-99u-myy7236gfd', '1570877254IpMreGOE.jpg', '1570877254wBRHJA4w.jpg', NULL, 'S', '2147483644', '20', 'White,Red,#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 1, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2019-10-12 04:47:34', '2019-12-29 03:35:52', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, '0');
INSERT INTO `products` (`id`, `sku`, `product_type`, `affiliate_link`, `user_id`, `category_id`, `subcategory_id`, `childcategory_id`, `attributes`, `name`, `slug`, `photo`, `thumbnail`, `file`, `size`, `size_qty`, `size_price`, `color`, `price`, `previous_price`, `details`, `stock`, `policy`, `status`, `views`, `tags`, `features`, `colors`, `product_condition`, `ship`, `is_meta`, `meta_tag`, `meta_description`, `youtube`, `type`, `license`, `license_qty`, `link`, `platform`, `region`, `licence_type`, `measure`, `featured`, `best`, `top`, `hot`, `latest`, `big`, `trending`, `sale`, `created_at`, `updated_at`, `is_discount`, `discount_date`, `whole_sell_qty`, `whole_sell_discount`, `is_catalog`, `catalog_id`, `weight`) VALUES
(181, 'TJV7256rgp', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 99u', 'physical-product-title-title-will-be-here-99u-tjv7256rgp', '15794152717uaGUxnH.jpg', '1579415271xFKOowd2.jpg', NULL, 'S', '2147483644', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 1, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2019-10-12 04:47:55', '2021-01-17 04:04:06', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, '0'),
(182, 'b017277kfm', 'normal', NULL, 13, 5, NULL, NULL, NULL, 'Physical Product Title Title will Be Here 99u', 'physical-product-title-title-will-be-here-99u-b017277kfm', '1579415166fSKljyd2.jpg', '1579415166PgtQXtEv.jpg', NULL, 'S', '2147483644', '20', '#000000,#851818,#ff0d0d,#1feb4c,#d620cf,#186ceb', 100, 200, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', NULL, '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 1, 2, 'clothing,bag', NULL, NULL, 2, '5-7 days', 0, 'clothing,bag,js,css,php', 'clothing, bag', 'https://www.youtube.com/watch?v=HxNydN5tScI', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, '2019-10-12 04:48:06', '2020-01-19 00:26:06', 0, NULL, '10,20,30,40', '5,10,15,20', 0, 99, '0'),
(183, 'GE01649k50', 'normal', NULL, 0, 8, 63, NULL, NULL, 'T-Shirts-Girls', 't-shirts-girls-ge01649k50', '1637871826S4GjPIXt.png', '16378718273eIjvkeR.jpg', NULL, NULL, NULL, NULL, NULL, 50, 70, 'This shirt is for girls.', 8, 'This shirt is for girls.', 1, 9, 'Women\'s Clothing', 'purple,red', '#b657ef,#d01e1e', 0, NULL, 0, NULL, NULL, NULL, 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2021-11-25 18:23:46', '2021-12-02 03:18:32', 0, NULL, NULL, NULL, 0, 0, '3.5');

-- --------------------------------------------------------

--
-- Table structure for table `product_clicks`
--

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_clicks`
--

INSERT INTO `product_clicks` (`id`, `product_id`, `date`) VALUES
(4, 102, '2020-01-12'),
(5, 171, '2020-01-23'),
(6, 95, '2020-01-23'),
(7, 130, '2020-01-27'),
(8, 130, '2020-01-27'),
(9, 130, '2020-01-27'),
(10, 102, '2020-02-01'),
(11, 101, '2020-02-01'),
(12, 100, '2020-02-01'),
(13, 99, '2020-02-01'),
(14, 96, '2020-02-01'),
(15, 96, '2020-02-01'),
(16, 96, '2020-02-01'),
(17, 96, '2020-02-01'),
(18, 96, '2020-02-01'),
(19, 101, '2021-01-12'),
(20, 101, '2021-01-12'),
(21, 101, '2021-01-12'),
(22, 101, '2021-01-12'),
(23, 101, '2021-01-12'),
(24, 102, '2021-01-13'),
(25, 101, '2021-01-13'),
(26, 102, '2021-01-14'),
(27, 181, '2021-01-16'),
(28, 102, '2021-02-09'),
(29, 102, '2021-02-09'),
(30, 102, '2021-02-09'),
(31, 102, '2021-02-09'),
(32, 102, '2021-02-09'),
(33, 102, '2021-02-09'),
(34, 102, '2021-02-09'),
(35, 102, '2021-02-09'),
(36, 102, '2021-02-09'),
(37, 102, '2021-03-01'),
(38, 101, '2021-03-09'),
(39, 95, '2021-11-05'),
(40, 95, '2021-11-18'),
(41, 101, '2021-11-22'),
(42, 183, '2021-11-25'),
(43, 183, '2021-11-25'),
(44, 95, '2021-11-25'),
(45, 95, '2021-11-25'),
(46, 95, '2021-11-25'),
(47, 97, '2021-11-25'),
(48, 183, '2021-11-25'),
(49, 183, '2021-11-25'),
(50, 183, '2021-11-25'),
(51, 183, '2021-11-25'),
(52, 183, '2021-11-26'),
(53, 101, '2021-12-02'),
(54, 102, '2021-12-02'),
(55, 101, '2021-12-02'),
(56, 102, '2021-12-02'),
(57, 102, '2021-12-02'),
(58, 101, '2021-12-02'),
(59, 102, '2021-12-02'),
(60, 101, '2021-12-02'),
(61, 102, '2021-12-02'),
(62, 102, '2021-12-02'),
(63, 101, '2021-12-02'),
(64, 102, '2021-12-02'),
(65, 101, '2021-12-02'),
(66, 102, '2021-12-02'),
(67, 183, '2021-12-02'),
(68, 183, '2021-12-02'),
(69, 101, '2021-12-02'),
(70, 102, '2021-12-02'),
(71, 102, '2021-12-02'),
(72, 102, '2021-12-02'),
(73, 101, '2021-12-02'),
(74, 102, '2021-12-02'),
(75, 102, '2021-12-02'),
(76, 102, '2021-12-02'),
(77, 102, '2021-12-02'),
(78, 102, '2021-12-02'),
(79, 102, '2021-12-02'),
(80, 102, '2021-12-02'),
(81, 102, '2021-12-02'),
(82, 102, '2021-12-02'),
(83, 102, '2021-12-02'),
(84, 102, '2021-12-02'),
(85, 102, '2021-12-02'),
(86, 101, '2021-12-02'),
(87, 102, '2021-12-02'),
(88, 102, '2021-12-02'),
(89, 101, '2021-12-02'),
(90, 102, '2021-12-02'),
(91, 102, '2021-12-02'),
(92, 102, '2021-12-02'),
(93, 102, '2021-12-02'),
(94, 102, '2021-12-02'),
(95, 102, '2021-12-02'),
(96, 102, '2021-12-02'),
(97, 102, '2021-12-02'),
(98, 101, '2021-12-14'),
(99, 97, '2021-12-14'),
(100, 96, '2021-12-14');

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) UNSIGNED NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote_color_size` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quote_qty` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `customer_email`, `customer_phone`, `customer_name`, `customer_country`, `quote_link`, `quote_name`, `quote_color_size`, `quote_qty`, `photo`, `count`, `created_at`, `updated_at`, `status`) VALUES
(58, 'Alexandr_1227@outlook.com', '123312312', 'T-Shirts', NULL, '[]', '[]', '[]', '[]', '[]', 1, '2021-11-26 01:03:53', '2021-11-26 01:03:53', 0),
(59, 'Alexandr_1227@outlook.com', '123312312', 'T-Shirts', NULL, '[]', '[]', '[]', '[]', '[]', 1, '2021-11-26 01:04:04', '2021-11-26 01:04:04', 0),
(60, 'Alexandr_1227@outlook.com', '123312312', 'T-Shirts', 'Vietnam', '{\"0\":\"123\",\"2\":\"123\"}', '{\"0\":\"1234\",\"2\":\"123213\"}', '{\"0\":\"12334\",\"2\":\"123213\"}', '{\"0\":\"123321\",\"2\":\"213231\"}', '[\"1637895984bir.jfif\",\"1637895984bir (2).jfif\"]', 2, '2021-11-26 01:06:24', '2021-11-26 01:06:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `comment_id` int(191) UNSIGNED NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `comment_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 29, 1, 'I dislike you', '2021-01-12 23:12:25', '2021-01-12 23:12:25'),
(2, 29, 1, 'akjdflajdflasdf', '2021-01-12 23:12:53', '2021-01-12 23:12:53'),
(3, 29, 1, 'ajdfjlajdfklajsldkjaklf', '2021-01-12 23:13:01', '2021-01-12 23:13:01'),
(4, 29, 1, 'adfasdf', '2021-01-12 23:13:19', '2021-01-12 23:13:19'),
(5, 29, 1, '4rttrt', '2021-01-12 23:48:04', '2021-01-12 23:48:04'),
(6, 29, 1, 'sfafaw', '2021-01-12 23:48:36', '2021-01-12 23:48:36'),
(7, 29, 2, 'I agree with you', '2021-02-10 02:09:17', '2021-02-10 02:09:17'),
(8, 29, 2, 'good opinion', '2021-02-10 02:09:44', '2021-02-10 02:09:44'),
(9, 29, 2, 'good porduct', '2021-02-10 02:10:02', '2021-02-10 02:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `product_id`, `title`, `note`, `created_at`, `updated_at`) VALUES
(1, 29, 102, 'Silver', 'this product', '2021-02-10 02:15:14', '2021-02-10 02:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `photo`, `title`, `subtitle`, `details`) VALUES
(4, '1557343012img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(5, '1557343018img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.'),
(6, '1557343024img.jpg', 'Jhon Smith', 'CEO & Founder', 'Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(17, 'Agent', 'orders , products , customers , categories , blog , messages , language_settings'),
(18, 'Staff', 'orders , products , vendors , vendor_subscription_plans , categories , blog , home_page_settings , menu_page_settings , language_settings , seo_tools , subscribers');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keys` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, '<script>//Google Analytics Scriptfffffffffffffffffffffffssssfffffs</script>', 'Genius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,Sea');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `user_id`, `title`, `details`, `photo`) VALUES
(2, 0, 'FREE SHIPPING', 'Free Shipping All Order', '1571288944s1.png'),
(3, 0, 'PAYMENT METHOD', 'Secure Payment', '1571288950s2.png'),
(4, 0, '30 DAY RETURNS', '30-Day Return Policy', '1571288955s3.png'),
(5, 0, 'HELP CENTER', '24/7 Support System', '1571288959s4.png'),
(6, 13, 'FREE SHIPPING', 'Free Shipping All Order', '1571457250s1.png'),
(7, 13, 'PAYMENT METHOD', 'Secure Payment', '1571457257s2.png'),
(8, 13, '30 DAY RETURNS', '30-Day Return Policy', '1571457261s3.png'),
(9, 13, 'HELP CENTER', '24/7 Support System', '1571457265s4.png');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL,
  `user_id` int(191) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `title`, `subtitle`, `price`) VALUES
(1, 0, 'Free Shipping', '(10 - 12 days)', 0),
(2, 0, 'Express Shipping', '(5 - 6 days)', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(191) UNSIGNED NOT NULL,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `subtitle_text`, `subtitle_size`, `subtitle_color`, `subtitle_anime`, `title_text`, `title_size`, `title_color`, `title_anime`, `details_text`, `details_size`, `details_color`, `details_anime`, `photo`, `position`, `link`) VALUES
(8, 'More Savings', '24', '#ffffff', 'slideInUp', 'Up to 40% Off', '60', '#ffffff', 'slideInDown', 'Highlight your personality  and look with these fabulous and exquisite fashion.', '16', '#ffffff', 'slideInRight', '1636145955d-hero-211025-whs-savings-wk1-2-en.jpg', 'slide-three', 'https://www.google.com/'),
(9, 'World Fashion', '24', '#ffffff', 'slideInUp', 'Up to 40% Off', '60', '#ffffff', 'slideInDown', 'Highlight your personality  and look with these fabulous and exquisite fashion.', '16', '#ffffff', 'slideInDown', '1636154156d-hero-211025-holiday-en.jpg', 'slide-one', 'https://www.google.com/'),
(10, 'World Fashion', '24', '#c32d2d', 'slideInUp', 'Up to 40% Off', '60', '#bc2727', 'slideInDown', 'Highlight your personality  and look with these fabulous and exquisite fashion.', '16', '#c51d1d', 'slideInLeft', '1636154171d-hero-211101-travel-en.jpg', 'slide-one', 'https://www.google.com/'),
(11, NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '1636154202d-hero-211101-bridgestone-en.jpg', 'slide-one', 'https://google.com'),
(12, NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', NULL, NULL, '#000000', 'fadeIn', '1636154232d-hero-211101-furniture-en.jpg', 'slide-two', 'https://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT 1,
  `g_status` tinyint(4) NOT NULL DEFAULT 1,
  `t_status` tinyint(4) NOT NULL DEFAULT 1,
  `l_status` tinyint(4) NOT NULL DEFAULT 1,
  `d_status` tinyint(4) NOT NULL DEFAULT 1,
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gredirect` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `facebook`, `gplus`, `twitter`, `linkedin`, `dribble`, `f_status`, `g_status`, `t_status`, `l_status`, `d_status`, `f_check`, `g_check`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://dribbble.com/', 1, 1, 1, 1, 1, 1, 1, '503140663460329', 'f66cd670ec43d14209a2728af26dcc43', 'https://localhost/upgraded/kingcommerce-new/auth/facebook/callback', '333699045118-ucrujnec19f6v2as2uetbbp8ov3k6g8g.apps.googleusercontent.com', 'yLf6iTjYcc4MMvkCvEJcKV_6', 'https://www.cyn.xgu.mybluehost.me/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`) VALUES
(18, 4, 'Christmas Lights', 'Christmas-Lights', 1),
(19, 4, 'Christmas Trees', 'Christmas-Trees', 1),
(20, 4, 'Christmas Wreaths & Garlands', 'Christmas-Wreaths-&-Garlands', 1),
(21, 4, 'Costume & Dress Up', 'Costume-&-Dress-Up', 1),
(22, 4, 'Holiday & Christmas Decorations', 'Holiday-&-Christmas-Decorations', 1),
(23, 4, 'Outdoor Holiday & Christmas Decorations', 'Outdoor-Holiday-&-Christmas-Decorations', 1),
(24, 5, 'Commercial Appliances', 'Commercial-Appliances', 1),
(25, 5, 'Cooling, Heating & Air Treatment', 'Cooling,-Heating-&-Air-Treatment', 1),
(26, 5, 'Dishwashers', 'Dishwashers', 1),
(27, 5, 'Freezers & Ice Makers', 'Freezers-&-Ice-Makers', 1),
(28, 5, 'Kitchen Appliance Packages', 'Kitchen-Appliance-Packages', 1),
(29, 5, 'Microwaves', 'Microwaves', 1),
(30, 5, 'Propane & Portable Appliances', 'Propane-&-Portable-Appliances', 1),
(31, 5, 'Refrigerators', 'Refrigerators', 1),
(32, 5, 'Stoves, Cooktops & Range Hoods', 'Stoves,-Cooktops-&-Range-Hoods', 1),
(33, 5, 'Washers & Dryers', 'Washers-&-Dryers', 1),
(34, 5, 'Wine Fridges & Cellars', 'Wine-Fridges-&-Cellars', 1),
(35, 6, 'ATV, UTV & Motorcycle Accessories', 'ATV,-UTV-&-Motorcycle-Accessories', 1),
(36, 6, 'Automotive Electronics', 'Automotive-Electronics', 1),
(37, 6, 'Batteries', 'Batteries', 1),
(38, 6, 'Car & Truck Accessories', 'Car-&-Truck-Accessories', 1),
(39, 6, 'Car Shelters', 'Car-Shelters', 1),
(40, 6, 'Garage Door Openers', 'Garage-Door-Openers', 1),
(41, 6, 'GPS Navigation', 'GPS-Navigation', 1),
(42, 6, 'Motor Oil, Lubricants & Fluids', 'Motor-Oil,-Lubricants-&-Fluids', 1),
(43, 6, 'RV Accessories', 'RV-Accessories', 1),
(44, 6, 'Shop & Garage Equipment', 'Shop-&-Garage-Equipment', 1),
(45, 6, 'Tires', 'Tires', 1),
(46, 6, 'Trailers', 'Trailers', 1),
(47, 6, 'Wash & Wax', 'Wash-&-Wax', 1),
(48, 6, 'Wheels', 'Wheels', 1),
(49, 6, 'Winter Products & Snow Plows', 'Winter-Products-&-Snow-Plows', 1),
(50, 7, 'Baby Blankets & Gifts', 'Baby-Blankets-&-Gifts', 1),
(51, 7, 'Baby Care & Safety', 'Baby-Care-&-Safety', 1),
(52, 7, 'Baby Diapers & Wipes', 'Baby-Diapers-&-Wipes', 1),
(53, 7, 'Baby Formula & Feeding', 'Baby-Formula-&-Feeding', 1),
(54, 7, 'Baby Gear & Activity', 'Baby-Gear-&-Activity', 1),
(55, 7, 'Baby Monitors', 'Baby-Monitors', 1),
(56, 7, 'Car Seats', 'Car-Seats', 1),
(57, 7, 'High Chairs', 'High-Chairs', 1),
(58, 7, 'Strollers & Travel Systems', 'Strollers-&-Travel-Systems', 1),
(59, 8, 'Children\'s & Baby Clothing', 'Children\'s-&-Baby-Clothing', 1),
(60, 8, 'Handbags', 'Handbags', 1),
(61, 8, 'Luggage, Suitcases & Travel Bags', 'Luggage,-Suitcases-&-Travel-Bags', 1),
(62, 8, 'Men\'s Clothing', 'Men\'s-Clothing', 1),
(63, 8, 'Women\'s Clothing', 'Women\'s-Clothing', 1),
(64, 9, 'Computer Accessories', 'Computer-Accessories', 1),
(65, 9, 'Computer Buy Online & Pick Up in Warehouse', 'Computer-Buy-Online-&-Pick-Up-in-Warehouse', 1),
(66, 9, 'Desktops', 'Desktops', 1),
(67, 9, 'Extended Warranty Computers and Tablets', 'Extended-Warranty-Computers-and-Tablets', 1),
(68, 9, 'Hard Drives & Storage Devices', 'Hard-Drives-&-Storage-Devices', 1),
(69, 9, 'iPads & Tablets', 'iPads-&-Tablets', 1),
(70, 9, 'Laptops', 'Laptops', 1),
(71, 9, 'Mac', 'Mac', 1),
(72, 9, 'Monitors', 'Monitors', 1),
(73, 9, 'Printers & Scanners', 'Printers-&-Scanners', 1),
(74, 9, 'Routers & Networking', 'Routers-&-Networking', 1),
(75, 9, 'Software', 'Software', 1),
(76, 10, 'Apple Products', 'Apple-Products', 1),
(77, 10, 'Cell Phones & Accessories', 'Cell-Phones-&-Accessories', 1),
(78, 10, 'Digital Cameras & Camcorders', 'Digital-Cameras-&-Camcorders', 1),
(79, 10, 'Electronics Buy Online & Pick Up in Warehouse', 'Electronics-Buy-Online-&-Pick-Up-in-Warehouse', 1),
(80, 10, 'Extended Warranty Televisions', 'Extended-Warranty-Televisions', 1),
(81, 10, 'Home Audio & Video', 'Home-Audio-&-Video', 1),
(82, 10, 'Movies & Music', 'Movies-&-Music', 1),
(83, 10, 'Musical Instruments', 'Musical-Instruments', 1),
(84, 10, 'Phones & Walkie Talkies', 'Phones-&-Walkie-Talkies', 1),
(85, 10, 'Security Cameras & Surveillance Systems', 'Security-Cameras-&-Surveillance-Systems', 1),
(86, 10, 'Smart Home', 'Smart-Home', 1),
(87, 10, 'Smart Watches & Activity Trackers', 'Smart-Watches-&-Activity-Trackers', 1),
(88, 10, 'TVs', 'TVs', 1),
(89, 10, 'Video Games & Consoles', 'Video-Games-&-Consoles', 1),
(90, 11, 'Floral', 'Floral', 1),
(91, 11, 'Gift Baskets', 'Gift-Baskets', 1),
(92, 12, 'Baby Furniture', 'Baby-Furniture', 1),
(93, 12, 'Bedroom Furniture', 'Bedroom-Furniture', 1),
(94, 12, 'Dining Room & Kitchen Furniture', 'Dining-Room-&-Kitchen-Furniture', 1),
(95, 12, 'Entertainment Centres', 'Entertainment-Centres', 1),
(96, 12, 'Kids\' Furniture', 'Kids\'-Furniture', 1),
(97, 12, 'Living Room Furniture', 'Living-Room-Furniture', 1),
(98, 12, 'Mattresses', 'Mattresses', 1),
(99, 12, 'Office Furniture', 'Office-Furniture', 1),
(100, 12, 'Ottomans & Benches', 'Ottomans-&-Benches', 1),
(101, 13, 'All Tickets & Gift Certificates', 'All-Tickets-&-Gift-Certificates', 1),
(102, 13, 'Costco Memberships', 'Costco-Memberships', 1),
(103, 13, 'Costco Shop Card', 'Costco-Shop-Card', 1),
(104, 13, 'Spa Gift Certificates', 'Spa-Gift-Certificates', 1),
(105, 15, 'Bakery & Desserts', 'Bakery-&-Desserts', 1),
(106, 15, 'Cheese', 'Cheese', 1),
(107, 15, 'Cleaning Supplies', 'Cleaning-Supplies', 1),
(108, 15, 'Coffee & Tea', 'Coffee-&-Tea', 1),
(109, 15, 'Cookies & Crackers', 'Cookies-&-Crackers', 1),
(110, 15, 'Costco Grocery', 'Costco-Grocery', 1),
(111, 15, 'Deli & Cured Meats', 'Deli-&-Cured-Meats', 1),
(112, 15, 'Emergency Food Kits', 'Emergency-Food-Kits', 1),
(113, 15, 'Gluten-Free', 'Gluten-Free', 1),
(114, 15, 'Gourmet Products', 'Gourmet-Products', 1),
(115, 15, 'Household Products', 'Household-Products', 1),
(116, 15, 'International Foods', 'International-Foods', 1),
(117, 15, 'Kirkland Signature', 'Kirkland-Signature', 1),
(118, 15, 'Laundry Detergent', 'Laundry-Detergent', 1),
(119, 15, 'Meat & Seafood', 'Meat-&-Seafood', 1),
(120, 15, 'Organic', 'Organic', 1),
(121, 15, 'Pantry & Dry Goods', 'Pantry-&-Dry-Goods', 1),
(122, 15, 'Paper & Plastic Products', 'Paper-&-Plastic-Products', 1),
(123, 15, 'Poultry', 'Poultry', 1),
(124, 15, 'Same Day Delivery', 'Same-Day-Delivery', 1),
(125, 15, 'Seafood', 'Seafood', 1),
(126, 15, 'Snacks, Candy & Nuts', 'Snacks,-Candy-&-Nuts', 1),
(127, 15, 'Vegan Foods', 'Vegan-Foods', 1),
(128, 15, 'Water & Beverages', 'Water-&-Beverages', 1),
(129, 15, 'Wine & Beer Kits', 'Wine-&-Beer-Kits', 1),
(130, 16, 'Beauty', 'Beauty', 1),
(131, 16, 'First Aid & Emergency Response', 'First-Aid-&-Emergency-Response', 1),
(132, 16, 'Health & Medicines', 'Health-&-Medicines', 1),
(133, 16, 'Herbals & Dietary Supplements', 'Herbals-&-Dietary-Supplements', 1),
(134, 16, 'Home Health Care', 'Home-Health-Care', 1),
(135, 16, 'Massage & Relaxation', 'Massage-&-Relaxation', 1),
(136, 16, 'Natural Health Products', 'Natural-Health-Products', 1),
(137, 16, 'Nutrition & Weight Management', 'Nutrition-&-Weight-Management', 1),
(138, 16, 'Personal Care', 'Personal-Care', 1),
(139, 16, 'Pharmacy', 'Pharmacy', 1),
(140, 16, 'Readers', 'Readers', 1),
(141, 16, 'Smoking Cessation', 'Smoking-Cessation', 1),
(142, 16, 'Spa Gift Sets', 'Spa-Gift-Sets', 1),
(143, 16, 'Vitamins & Minerals', 'Vitamins-&-Minerals', 1),
(144, 17, 'Albums & Frames', 'Albums-&-Frames', 1),
(145, 17, 'Bathroom', 'Bathroom', 1),
(146, 17, 'Bedding', 'Bedding', 1),
(147, 17, 'Fireplaces & Accessories', 'Fireplaces-&-Accessories', 1),
(148, 17, 'Home Décor', 'Home-Décor', 1),
(149, 17, 'Kitchen & Dining', 'Kitchen-&-Dining', 1),
(150, 17, 'Rugs', 'Rugs', 1),
(151, 17, 'Sewing & Garment Care', 'Sewing-&-Garment-Care', 1),
(152, 17, 'Small Kitchen Appliances', 'Small-Kitchen-Appliances', 1),
(153, 17, 'Vacuums & Floor Care', 'Vacuums-&-Floor-Care', 1),
(154, 18, 'Alternative Power Systems', 'Alternative-Power-Systems', 1),
(155, 18, 'Bathroom', 'Bathroom', 1),
(156, 18, 'Building Materials', 'Building-Materials', 1),
(157, 18, 'Fans', 'Fans', 1),
(158, 18, 'Flooring & Wall Coverings', 'Flooring-&-Wall-Coverings', 1),
(159, 18, 'Home Safety & Automation', 'Home-Safety-&-Automation', 1),
(160, 18, 'Installation Services', 'Installation-Services', 1),
(161, 18, 'Kitchen', 'Kitchen', 1),
(162, 18, 'Lighting', 'Lighting', 1),
(163, 18, 'Safes', 'Safes', 1),
(164, 18, 'Storage & Organization', 'Storage-&-Organization', 1),
(165, 18, 'Tools', 'Tools', 1),
(166, 19, 'Bracelets', 'Bracelets', 1),
(167, 19, 'Diamond Education & FAQ', 'Diamond-Education-&-FAQ', 1),
(168, 19, 'Earrings', 'Earrings', 1),
(169, 19, 'Jewellery Boxes & Armoires', 'Jewellery-Boxes-&-Armoires', 1),
(171, 19, 'Jewellery Sets', 'Jewellery-Sets', 1),
(172, 19, 'Necklaces', 'Necklaces', 1),
(173, 19, 'Rings', 'Rings', 1),
(174, 19, 'Sunglasses', 'Sunglasses', 1),
(175, 19, 'Watches', 'Watches', 1),
(176, 24, 'Business Equipment', 'Business-Equipment', 1),
(177, 24, 'Cash/Check Handling', 'Cash/Check-Handling', 1),
(178, 24, 'Catering', 'Catering', 1),
(179, 24, 'Ink & Toner Cartridges', 'Ink-&-Toner-Cartridges', 1),
(180, 24, 'Janitorial & Safety', 'Janitorial-&-Safety', 1),
(181, 24, 'Mats & Footrests', 'Mats-&-Footrests', 1),
(182, 24, 'Office Accessories', 'Office-Accessories', 1),
(183, 24, 'Office Lamps', 'Office-Lamps', 1),
(184, 24, 'Office Paper & Stationery', 'Office-Paper-&-Stationery', 1),
(185, 24, 'Office Supplies', 'Office-Supplies', 1),
(186, 24, 'Paper Shredders', 'Paper-Shredders', 1),
(187, 24, 'Safes', 'Safes', 1),
(188, 24, 'School Supplies', 'School-Supplies', 1),
(189, 24, 'Water Coolers & Accessories', 'Water-Coolers-&-Accessories', 1),
(190, 20, 'Awnings & Shades', 'Awnings-&-Shades', 1),
(191, 20, 'Backyard Play', 'Backyard-Play', 1),
(192, 20, 'BBQ', 'BBQ', 1),
(193, 20, 'Garden Centre', 'Garden-Centre', 1),
(194, 20, 'Hot Tubs & Spas', 'Hot-Tubs-&-Spas', 1),
(195, 20, 'Outdoor Heating', 'Outdoor-Heating', 1),
(196, 20, 'Outdoor Power Equipment', 'Outdoor-Power-Equipment', 1),
(197, 20, 'Outdoor Structures', 'Outdoor-Structures', 1),
(198, 20, 'Patio Furniture', 'Patio-Furniture', 1),
(199, 20, 'Pools', 'Pools', 1),
(200, 20, 'Sheds & Storage', 'Sheds-&-Storage', 1),
(201, 21, 'Aquariums', 'Aquariums', 1),
(202, 21, 'Bird', 'Bird', 1),
(203, 21, 'Bowls & Feeders', 'Bowls-&-Feeders', 1),
(204, 21, 'Cat Litter Boxes', 'Cat-Litter-Boxes', 1),
(205, 21, 'Cat Posts', 'Cat-Posts', 1),
(206, 21, 'Crates, Carriers & Kennels', 'Crates,-Carriers-&-Kennels', 1),
(207, 21, 'Grooming & Health Care', 'Grooming-&-Health-Care', 1),
(208, 21, 'Pet Beds', 'Pet-Beds', 1),
(209, 21, 'Pet Food & Treats', 'Pet-Food-&-Treats', 1),
(210, 21, 'Ramps, Travel & Outdoors', 'Ramps,-Travel-&-Outdoors', 1),
(211, 21, 'Training & Toys', 'Training-&-Toys', 1),
(212, 21, 'Aquariums', 'Aquariums', 1),
(213, 21, 'Bird', 'Bird', 1),
(214, 21, 'Bowls & Feeders', 'Bowls-&-Feeders', 1),
(215, 21, 'Cat Litter Boxes', 'Cat-Litter-Boxes', 1),
(216, 21, 'Cat Posts', 'Cat-Posts', 1),
(217, 21, 'Crates, Carriers & Kennels', 'Crates,-Carriers-&-Kennels', 1),
(218, 21, 'Grooming & Health Care', 'Grooming-&-Health-Care', 1),
(219, 21, 'Pet Beds', 'Pet-Beds', 1),
(220, 21, 'Pet Food & Treats', 'Pet-Food-&-Treats', 1),
(221, 21, 'Ramps, Travel & Outdoors', 'Ramps,-Travel-&-Outdoors', 1),
(222, 21, 'Training & Toys', 'Training-&-Toys', 1),
(223, 22, 'Bikes, Skateboards & Scooters', 'Bikes,-Skateboards-&-Scooters', 1),
(224, 22, 'Boating & Watersports', 'Boating-&-Watersports', 1),
(225, 22, 'Camping', 'Camping', 1),
(226, 22, 'Exercise & Fitness', 'Exercise-&-Fitness', 1),
(227, 22, 'Game Room', 'Game-Room', 1),
(228, 22, 'Golf', 'Golf', 1),
(229, 22, 'Hockey', 'Hockey', 1),
(230, 22, 'Hunting & Fishing', 'Hunting-&-Fishing', 1),
(231, 22, 'Recreational Sports', 'Recreational-Sports', 1),
(232, 22, 'Saunas', 'Saunas', 1),
(233, 22, 'Sports Memorabilia', 'Sports-Memorabilia', 1),
(234, 22, 'Winter Sports', 'Winter-Sports', 1),
(235, 23, 'Action Figures & Plush Toys', 'Action-Figures-&-Plush-Toys', 1),
(236, 23, 'Board Games & Puzzles', 'Board-Games-&-Puzzles', 1),
(237, 23, 'Books', 'Books', 1),
(238, 23, 'Building Blocks & Sets', 'Building-Blocks-&-Sets', 1),
(239, 23, 'Costume & Dress Up', 'Costume-&-Dress-Up', 1),
(240, 23, 'Dolls & Dollhouses', 'Dolls-&-Dollhouses', 1),
(241, 23, 'Educational & STEM Toys', 'Educational-&-STEM-Toys', 1),
(242, 23, 'Infant & Preschool Toys', 'Infant-&-Preschool-Toys', 1),
(243, 23, 'Kids’ Arts & Crafts', 'Kids’-Arts-&-Crafts', 1),
(244, 23, 'Kids’ Kitchens', 'Kids’-Kitchens', 1),
(245, 23, 'Kids’ Outdoor Toys & Play', 'Kids’-Outdoor-Toys-&-Play', 1),
(246, 23, 'Ride-on Toys & Wagons', 'Ride-on-Toys-&-Wagons', 1),
(247, 23, 'Toy Cars & Trucks', 'Toy-Cars-&-Trucks', 1),
(248, 23, 'Train Sets & Activity Tables', 'Train-Sets-&-Activity-Tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(1, 'lyappunov19@outlook.com');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`) VALUES
(5, 'Standard', '$', 'INR', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>'),
(6, 'Premium', '$', 'USD', 120, 90, 90, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(7, 'Unlimited', '$', 'USD', 250, 365, 0, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span><br>'),
(8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `txn_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT 0,
  `currency_sign` blob DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT 0,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'plus, minus',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `txn_number`, `amount`, `currency_sign`, `currency_code`, `currency_value`, `method`, `txnid`, `details`, `type`, `created_at`, `updated_at`) VALUES
(1, 13, 'p466552VgR', 100, 0x24, 'USD', 1, NULL, NULL, 'test', 'plus', '2020-01-27 03:15:52', '2020-01-27 03:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT 0,
  `status` tinyint(10) NOT NULL DEFAULT 0,
  `verification_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_income` double NOT NULL DEFAULT 0,
  `shop_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `f_check` tinyint(1) NOT NULL DEFAULT 0,
  `g_check` tinyint(1) NOT NULL DEFAULT 0,
  `t_check` tinyint(1) NOT NULL DEFAULT 0,
  `l_check` tinyint(1) NOT NULL DEFAULT 0,
  `mail_sent` tinyint(1) NOT NULL DEFAULT 0,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `current_balance` double NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT 0,
  `balance` decimal(11,2) NOT NULL DEFAULT 0.00,
  `gender` tinyint(1) NOT NULL DEFAULT 1,
  `birthday` date DEFAULT NULL,
  `real_name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `zip`, `city`, `country`, `state`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `affilate_income`, `shop_name`, `owner_name`, `shop_number`, `shop_address`, `reg_number`, `shop_message`, `shop_details`, `shop_image`, `f_url`, `g_url`, `t_url`, `l_url`, `is_vendor`, `f_check`, `g_check`, `t_check`, `l_check`, `mail_sent`, `shipping_cost`, `current_balance`, `date`, `ban`, `balance`, `gender`, `birthday`, `real_name`, `agent`) VALUES
(13, 'Vendor', '1557677677bouquet_PNG62.png', '1234', NULL, 'Algeria', 'UN', NULL, '3453453345453411', '23123121', 'vendor@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'RB8I11SHW8Feb8wMAmq0cc7w2GG27ci9lHCIBOx4dL7ZqpYOvQ9u1YINllkV', '2018-03-07 18:05:44', '2021-11-19 04:43:14', 0, 2, '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8ry', 'Yes', '$2y$10$oIf1at.0LwscVwaX/8h.WuSwMKEAAsn8EJ.9P7mWzNUFIcEBQs8rysdfsdfds', 5020.799999999999, 'Test Stores', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'sdf', NULL, '1579424193adv-banner.jpg', NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 5368.02, '2020-07-11', 0, '199.79', 1, NULL, NULL, '0'),
(22, 'User', '1557677677bouquet_PNG62.png', '1231', 'Test City', 'United States', 'UN', 'Test Address', '34534534534', '34534534534', 'user@gmail.com', '$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq', 'J61mUfH13adOBybknviuLXxojumujnVbmUT8jh45vssC6rVJnyVab4vkMOdO', '2019-06-20 12:26:24', '2020-02-01 01:13:22', 0, 0, '1edae93935fba69d9542192fb854a80a', 'Yes', '8f09b9691613ecb8c3f7e36e34b97b80', 4963.6900000000005, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, '127674.18', 1, NULL, NULL, '0'),
(27, 'Test User', '1557677677bouquet_PNG62.png', '1234', 'Test City', 'United Kingdom', 'UN', 'Space Needle 400 Broad St, Seattles', '34534534', '34534534', 'junajunnun@gmail.com', '$2y$10$pxNqceuvTvYLuwA.gZ15aejOTtXGHrDT7t2m8wfIZhNO1e52z7aLS', 'RdBI4RFgbKUzSDCo8mhI3LSz4oXURe8RNUizf7DXUEIO4sdVF35qJlLleDHn', '2019-10-05 04:15:08', '2020-01-12 01:36:22', 0, 0, '0521bba4c819528b6a18a581a5842f17', 'Yes', 'bb9d23401cd70f11998fe36ea7677797', 0, 'Test Store', 'User', '43543534', 'Space Needle 400 Broad St, Seattles', 'asdasd', 'ds', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 1, 0, 0, '2019-11-24', 0, '10000.00', 1, NULL, NULL, '0'),
(28, 'User', '1557677677bouquet_PNG62.png', '1234', 'Test City', 'Algeria', 'UN', NULL, '34534534', '034534534', 'junnun@gmail.com', '$2y$10$YDfElg7O3K6eQK5enu.TBOyo.8TIr6Ynf9hFQ8dsIDeWAfmmg6hA.', 'pNFebTvEQ3jRaky9p7XnCetHs9aNFFG7nqRFho0U7nWrgT7phS6MoX8f9EYz', '2019-10-13 05:39:13', '2020-01-12 01:36:05', 0, 0, '8036978c6d71501e893ba7d3f3ecc15d', 'Yes', '33899bafa30292165430cb90b545728a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '9000.00', 1, NULL, NULL, '0'),
(29, 'vittali lyappunov', NULL, NULL, NULL, NULL, NULL, 'sovetskaya, defgesf', '0283455678', NULL, 'lyappunov19@outlook.com', '$2y$10$5rd.sM059wkxTL2osckGAeQW.oMpOju/xGYANEVCtCX5LQynk0hkK', 'xMTUtrFh6NV9X3vcKmSqy9Za2GRl7EQOlUkr2YuuVAZGskVEnagOnnYSSjrh', '2021-01-12 23:11:01', '2021-01-12 23:11:01', 0, 0, 'b7a9193ade8d4a5489372f9676022da1', 'Yes', 'e859624c21c220960968bcae12740647', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '0.00', 1, NULL, NULL, '0'),
(37, 'Nikita Kulikov', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nikita@gmail.com', '$2y$10$oXjMfUBK/dMmLWF04D6Qd.R8PSZz0Swrs14tFW5Z31oB7mtGmyI1C', 'JQcbJ8rT0OAuVnrcE4s78JPf4jlMa4GYFZfePNbgZPal8CRTN3Nlg8T0otUx', '2021-01-14 00:39:12', '2021-01-14 00:39:12', 0, 0, '4678028ac987dbd81e2356026f0ef322', 'Yes', 'dd2597aa8525b1971d184559efeca3d5', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '0.00', 1, NULL, NULL, '0'),
(38, 'T-Shirts', NULL, NULL, NULL, NULL, NULL, NULL, '123312312', NULL, 'Alexandr_1227@outlook.com', '$2y$10$l9qRCXM2FtmT6zLSWENa0.epzJZcIgT99wB/vb6sFZF8WWV6lx/Qa', 'o2bnoiAL3Q414EtGSQk1j8FyWdVQFRpusORdJdwg1K8AdRfausb1LdRyoK2H', '2021-01-14 10:14:49', '2021-12-02 07:46:49', 0, 0, '98e3ae1cbaeeeb7e8b778771cf4d4fc5', 'Yes', '9c3161907248469f23ae1f314657cf8a', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '0.00', 1, NULL, NULL, '0'),
(39, 'safafa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lyappunov19@gmail.com', '$2y$10$gUcvTb1SkxJSqEztOphPKOr.03oJLFQ47yMEk4NrUFHUXxjturpai', NULL, '2021-01-17 02:18:11', '2021-01-17 02:18:11', 0, 0, 'fe7f06c8989f67461f193e3a1e4b8c15', 'Yes', '66c049b1ab5395bca84bf76d8962eafc', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '0.00', 1, NULL, NULL, '0'),
(40, 'adfakfdjlas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lyappunov@gmail.com', '$2y$10$M16mbKM4Jdti63INnNKx7ucbueCM3TSnMbi8LQi/6lMhYtj3xZhPG', 'QhaAOCkMWiPNrBtZddBGMNBORG4Cidb73QXFnXXg2kUlaQmNjRllhvPbj2Gk', '2021-01-17 02:19:45', '2021-01-17 02:19:45', 0, 0, 'b42ea9918859bc144b40fbc9dc83d0d0', 'Yes', '2267dcc4db5e1569d6eae47f69383a39', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '0.00', 1, NULL, NULL, '0'),
(41, 'snake', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'snake@gmail.com', '$2y$10$CXbIzyMTula7Ak.LRakfnO2aSzYmhaW7WAiJ/uTyD4GJqB3poiFp2', NULL, '2021-01-17 02:21:34', '2021-01-17 02:21:34', 0, 0, '453fff8e9260b951526129c301b76335', 'Yes', '817d4d29987df49f61d0851403a41303', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '0.00', 1, NULL, NULL, '0'),
(42, 'vittalli harmilton', NULL, NULL, NULL, NULL, NULL, 'sovetskaya, defgesf', '23408283495', NULL, 'harmilton@gmail.com', '$2y$10$f1juVrkHldaDlmgYeUmmg.fHJYQ5jB/s5SKRKlxjpfkhww3c1RX1G', 'rNcr5tbnodOhIHRB3aU8zkvyKUFWjE5YsrlhV3nxJtQ0msT4ojen3j6VxFG3', '2021-03-06 05:56:54', '2021-03-06 05:56:54', 0, 0, 'b25cc077f448dd8bf21f05bbd9190d9a', 'Yes', '0e9c65e36848eae3dfefe1f13fd558e3', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '0.00', 1, NULL, NULL, '0'),
(43, 'sharp', NULL, NULL, NULL, NULL, NULL, 'sovetskaya, defgesf', '234223423', NULL, 'sharp@gmail.com', '$2y$10$2nDwoHTVEUPBS/GYYdabtekWgOST0nKzsKasAkjggHGcEpCfFIpJe', NULL, '2021-03-09 18:15:38', '2021-03-09 18:15:38', 0, 0, '1215953f33396e8c66a38302916bbc3d', 'Yes', '4e808b598f76c0cee50a53b008027d2e', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '0.00', 1, NULL, NULL, '0'),
(44, 'shanell', NULL, NULL, NULL, NULL, NULL, 'moscow', '191068', NULL, 'shanell@gmail.com', '$2y$10$V7kZAMoy/SWogUD./bshreK3bpGxZ97SEq7t5zF0ZZU4p19/2Ur8C', 'rH5CFqVdDRPW1w7FbkXXmnIhFIHe4b4Hcr2Zyn0N996mtAAQ6fVBTQ9lJXtx', '2021-03-10 01:49:27', '2021-03-10 01:49:27', 0, 0, 'ad241fa0687a5f879cd99804d244efa4', 'Yes', '39b690feebb26205631bee5ca4f3a9e1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '0.00', 1, NULL, NULL, '0'),
(45, 'house', '1637504262bir.jfif', '123123', NULL, 'Andorra', 'house', 'house', 'house', 'house', 'house@gmail.com', NULL, NULL, '2021-11-21 12:17:42', '2021-11-21 12:17:42', 0, 0, NULL, 'No', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '0.00', 1, NULL, NULL, '0'),
(46, 'Coin', '1637504502images.jpg', '123123123', NULL, 'American Samoa', 'COin', 'coin', 'coin', 'coin', 'Coin@gmail.com', NULL, NULL, '2021-11-21 12:21:42', '2021-11-21 12:21:42', 0, 0, NULL, 'No', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '0.00', 1, NULL, NULL, '8'),
(47, 'Alexandr1', NULL, '400000', NULL, 'Afghanistan', 'Lazio', 'kivska street', '0333333333', 'house', 'Alexandr_12271@outlook.com', NULL, NULL, '2021-11-21 12:26:11', '2021-11-21 12:26:11', 0, 0, NULL, 'No', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, '0.00', 1, NULL, NULL, '8');

-- --------------------------------------------------------

--
-- Table structure for table `user_accesses`
--

CREATE TABLE `user_accesses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `desire_name` varchar(128) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `secratary_question` varchar(255) DEFAULT NULL,
  `secratary_answer` varchar(255) DEFAULT NULL,
  `acknowledge` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cds_number` varchar(128) DEFAULT NULL,
  `license_number` varchar(128) DEFAULT NULL,
  `licensure_type` varchar(64) DEFAULT NULL,
  `specialty_type` varchar(64) DEFAULT NULL,
  `issuing_state` varchar(64) DEFAULT NULL,
  `street1` varchar(64) DEFAULT NULL,
  `street2` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `state` int(5) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `order_number`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 13, 'byeS1580541202', 0, '2020-02-01 01:13:22', '2020-02-01 01:13:22'),
(2, 13, '3CzM1580548569', 0, '2020-02-01 03:16:12', '2020-02-01 03:16:12'),
(3, 13, 'LjhO1638408639', 0, '2021-12-01 23:30:40', '2021-12-01 23:30:40'),
(4, 13, 'Vl191638408827', 0, '2021-12-01 23:33:47', '2021-12-01 23:33:47'),
(5, 13, '1TFZ1638409421', 0, '2021-12-01 23:43:41', '2021-12-01 23:43:41'),
(6, 13, 'qHig1638410917', 0, '2021-12-02 00:08:38', '2021-12-02 00:08:38'),
(7, 13, 'rpKh1638411234', 0, '2021-12-02 00:13:54', '2021-12-02 00:13:54'),
(8, 13, 'aX5N1638411332', 0, '2021-12-02 00:15:32', '2021-12-02 00:15:32'),
(9, 13, 'Lnkl1638411617', 0, '2021-12-02 00:20:18', '2021-12-02 00:20:18'),
(10, 13, 'mr7W1638411812', 0, '2021-12-02 00:23:32', '2021-12-02 00:23:32'),
(11, 13, 'HjTO1638411901', 0, '2021-12-02 00:25:02', '2021-12-02 00:25:02'),
(12, 13, 'G5Ql1638412172', 0, '2021-12-02 00:29:32', '2021-12-02 00:29:32'),
(13, 13, 'z0lC1638412591', 0, '2021-12-02 00:36:32', '2021-12-02 00:36:32'),
(14, 13, 'Y2wY1638413499', 0, '2021-12-02 00:51:40', '2021-12-02 00:51:40'),
(15, 13, 'B7kW1638422976', 0, '2021-12-02 03:29:37', '2021-12-02 03:29:37'),
(16, 13, 'UZo31638423196', 0, '2021-12-02 03:33:17', '2021-12-02 03:33:17'),
(17, 13, 'fa3Z1638424264', 0, '2021-12-02 03:51:04', '2021-12-02 03:51:04'),
(18, 13, '3XY31638428699', 0, '2021-12-02 05:05:00', '2021-12-02 05:05:00'),
(19, 13, 'XnJN1638429093', 0, '2021-12-02 05:11:34', '2021-12-02 05:11:34'),
(20, 13, 'bm1n1638429863', 0, '2021-12-02 05:24:24', '2021-12-02 05:24:24'),
(21, 13, 'Mtwk1638429952', 0, '2021-12-02 05:25:52', '2021-12-02 05:25:52'),
(22, 13, 'YVHw1638430598', 0, '2021-12-02 05:36:39', '2021-12-02 05:36:39'),
(23, 13, 'd2qK1638430670', 0, '2021-12-02 05:37:51', '2021-12-02 05:37:51'),
(24, 13, 'R3SM1638430901', 0, '2021-12-02 05:41:42', '2021-12-02 05:41:42'),
(25, 13, 'XS7P1638431280', 0, '2021-12-02 05:48:00', '2021-12-02 05:48:00'),
(26, 13, 'sFnc1638431373', 0, '2021-12-02 05:49:34', '2021-12-02 05:49:34'),
(27, 13, 'F1mp1638431673', 0, '2021-12-02 05:54:33', '2021-12-02 05:54:33'),
(28, 13, 'yDPk1638432758', 0, '2021-12-02 06:12:38', '2021-12-02 06:12:38'),
(29, 13, 'HIGo1638432847', 0, '2021-12-02 06:14:08', '2021-12-02 06:14:08'),
(30, 13, 'GKzN1638433081', 0, '2021-12-02 06:18:01', '2021-12-02 06:18:01'),
(31, 13, 'KyIY1638433136', 0, '2021-12-02 06:18:56', '2021-12-02 06:18:56'),
(32, 13, '51fq1638434223', 0, '2021-12-02 06:37:04', '2021-12-02 06:37:04'),
(33, 13, 'f8MK1638434300', 0, '2021-12-02 06:38:21', '2021-12-02 06:38:21'),
(34, 13, 'f9Mf1638434385', 0, '2021-12-02 06:39:46', '2021-12-02 06:39:46'),
(35, 13, 'zAba1638434602', 0, '2021-12-02 06:43:23', '2021-12-02 06:43:23'),
(36, 13, '9nav1638434707', 0, '2021-12-02 06:45:07', '2021-12-02 06:45:07'),
(37, 13, '6Aqz1638434837', 0, '2021-12-02 06:47:18', '2021-12-02 06:47:18'),
(38, 13, 'XITb1638437003', 0, '2021-12-02 07:23:24', '2021-12-02 07:23:24'),
(39, 13, 'C6Hp1638437183', 0, '2021-12-02 07:26:24', '2021-12-02 07:26:24'),
(40, 13, '4IBR1638437317', 0, '2021-12-02 07:28:38', '2021-12-02 07:28:38'),
(41, 13, '7Zon1638437840', 0, '2021-12-02 07:37:21', '2021-12-02 07:37:21'),
(42, 13, 'pmSF1638438210', 0, '2021-12-02 07:43:30', '2021-12-02 07:43:30'),
(43, 13, 'wthr1638438409', 0, '2021-12-02 07:46:49', '2021-12-02 07:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_practics_addresses`
--

CREATE TABLE `user_practics_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `street1` varchar(255) DEFAULT NULL,
  `street2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `coutry_id` int(5) DEFAULT NULL,
  `state_id` int(5) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `phone_number` varchar(64) DEFAULT NULL,
  `alternative_phone` varchar(128) DEFAULT NULL,
  `fax` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT 0,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flutter_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`id`, `user_id`, `subscription_id`, `title`, `currency`, `currency_code`, `price`, `days`, `allowed_products`, `details`, `method`, `txnid`, `charge_id`, `flutter_id`, `created_at`, `updated_at`, `status`, `payment_number`) VALUES
(81, 27, 5, 'Standard', '$', 'NGN', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paystack', '688094995', NULL, NULL, '2019-10-09 21:32:57', '2019-10-09 21:32:57', 1, NULL),
(94, 13, 5, 'Standard', '$', 'USD', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Voguepay', 'demo-5e1d577004e90', NULL, NULL, '2020-01-13 23:54:30', '2020-01-13 23:54:30', 1, NULL),
(95, 13, 5, 'Standard', '$', 'USD', 60, 45, 25, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Paypal', '5BP83764T7667933U', NULL, NULL, '2020-01-15 22:35:49', '2020-01-15 22:35:49', 1, NULL),
(96, 0, 5, 'Standard', '$', 'INR', 60, 45, 25, '', 'Instamojo', 'MOJO0116O05A79460608', NULL, NULL, '2020-01-16 01:11:37', '2020-01-16 01:11:37', 1, NULL),
(97, 30, 8, 'Basic', '$', 'USD', 0, 30, 0, '<ol><li>Lorem ipsum dolor sit amet<br></li><li>Lorem ipsum dolor sit ame<br></li><li>Lorem ipsum dolor sit am<br></li></ol>', 'Free', NULL, NULL, NULL, '2021-01-13 22:01:55', '2021-01-13 22:01:55', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_orders`
--

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor_orders`
--

INSERT INTO `vendor_orders` (`id`, `user_id`, `order_id`, `qty`, `price`, `order_number`, `status`) VALUES
(3, 13, 5, 2, 260, 'LjhO1638408639', 'pending'),
(4, 13, 6, 1, 130, 'Vl191638408827', 'pending'),
(5, 13, 7, 1, 130, '1TFZ1638409421', 'pending'),
(6, 13, 8, 1, 130, 'qHig1638410917', 'pending'),
(7, 13, 9, 1, 130, 'rpKh1638411234', 'pending'),
(8, 13, 10, 1, 130, 'aX5N1638411332', 'pending'),
(9, 13, 11, 1, 130, 'Lnkl1638411617', 'pending'),
(10, 13, 12, 1, 130, 'mr7W1638411812', 'pending'),
(11, 13, 13, 2, 260, 'HjTO1638411901', 'pending'),
(12, 13, 14, 1, 130, 'G5Ql1638412172', 'pending'),
(13, 13, 15, 1, 130, 'z0lC1638412591', 'pending'),
(14, 13, 16, 1, 130, 'Y2wY1638413499', 'pending'),
(15, 13, 16, 1, 130, 'Y2wY1638413499', 'pending'),
(16, 13, 18, 1, 130, 'B7kW1638422976', 'pending'),
(17, 13, 19, 1, 130, 'UZo31638423196', 'pending'),
(18, 13, 20, 1, 130, 'fa3Z1638424264', 'pending'),
(19, 13, 21, 1, 130, '3XY31638428699', 'pending'),
(20, 13, 23, 1, 130, 'XnJN1638429093', 'pending'),
(21, 13, 25, 1, 130, 'bm1n1638429863', 'pending'),
(22, 13, 26, 1, 130, 'Mtwk1638429952', 'pending'),
(23, 13, 27, 1, 130, 'YVHw1638430598', 'pending'),
(24, 13, 28, 1, 130, 'd2qK1638430670', 'pending'),
(25, 13, 29, 1, 130, 'R3SM1638430901', 'pending'),
(26, 13, 30, 1, 130, 'XS7P1638431280', 'pending'),
(27, 13, 32, 1, 130, 'sFnc1638431373', 'pending'),
(28, 13, 33, 1, 130, 'F1mp1638431673', 'pending'),
(29, 13, 34, 1, 130, 'yDPk1638432758', 'pending'),
(30, 13, 35, 1, 130, 'HIGo1638432847', 'pending'),
(31, 13, 36, 1, 130, 'GKzN1638433081', 'pending'),
(32, 13, 37, 1, 130, 'KyIY1638433136', 'pending'),
(33, 13, 39, 1, 130, '51fq1638434223', 'pending'),
(34, 13, 40, 1, 130, 'f8MK1638434300', 'pending'),
(35, 13, 41, 1, 130, 'f9Mf1638434385', 'pending'),
(36, 13, 42, 1, 130, 'zAba1638434602', 'pending'),
(37, 13, 44, 1, 130, '9nav1638434707', 'pending'),
(38, 13, 46, 1, 130, '6Aqz1638434837', 'pending'),
(39, 13, 48, 1, 130, 'XITb1638437003', 'pending'),
(40, 13, 49, 1, 130, 'C6Hp1638437183', 'pending'),
(41, 13, 51, 1, 130, '4IBR1638437317', 'pending'),
(42, 13, 53, 1, 130, '7Zon1638437840', 'pending'),
(43, 13, 55, 1, 130, 'pmSF1638438210', 'pending'),
(44, 13, 57, 1, 130, 'wthr1638438409', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `verifications`
--

CREATE TABLE `verifications` (
  `id` int(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_warning` tinyint(1) NOT NULL DEFAULT 0,
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verifications`
--

INSERT INTO `verifications` (`id`, `user_id`, `attachments`, `status`, `text`, `admin_warning`, `warning_reason`, `created_at`, `updated_at`) VALUES
(4, 13, '1573723849Baby.tux-800x800.png,1573723849Baby.tux-800x800.png', 'Verified', 'TEst', 0, NULL, '2019-11-14 03:30:49', '2019-11-14 03:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(191) UNSIGNED NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_banners`
--
ALTER TABLE `featured_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_links`
--
ALTER TABLE `featured_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesettings`
--
ALTER TABLE `pagesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `attributes` (`attributes`);

--
-- Indexes for table `product_clicks`
--
ALTER TABLE `product_clicks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_accesses`
--
ALTER TABLE `user_accesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_practics_addresses`
--
ALTER TABLE `user_practics_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `verifications`
--
ALTER TABLE `verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_user_conversations`
--
ALTER TABLE `admin_user_conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_user_messages`
--
ALTER TABLE `admin_user_messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `favorite_sellers`
--
ALTER TABLE `favorite_sellers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `featured_banners`
--
ALTER TABLE `featured_banners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `featured_links`
--
ALTER TABLE `featured_links`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pagesettings`
--
ALTER TABLE `pagesettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `product_clicks`
--
ALTER TABLE `product_clicks`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user_accesses`
--
ALTER TABLE `user_accesses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `user_practics_addresses`
--
ALTER TABLE `user_practics_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `vendor_orders`
--
ALTER TABLE `vendor_orders`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `verifications`
--
ALTER TABLE `verifications`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
