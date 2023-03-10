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
(9, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA???s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI ??? For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that???s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth ??? and one of the most active ??? covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean ??? and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn???t see what,??? said \r\nTim Jones.\r\n                                    </p>', '15542700986-min.jpg', 'www.geniusocean.com', 36, 1, 'b1,b2,b3', 'Mauna Loa, the biggest volcano on Earth ??? and one of the most active ??? covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level.', 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-02-06 09:53:41', NULL, 13),
(10, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA???s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI ??? For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that???s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth ??? and one of the most active ??? covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean ??? and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn???t see what,??? said \r\nTim Jones.\r\n                                    </p>', '15542700902-min.jpg', 'www.geniusocean.com', 14, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-03-06 09:54:21', NULL, 22),
(12, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA???s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI ??? For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that???s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth ??? and one of the most active ??? covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean ??? and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn???t see what,??? said \r\nTim Jones.\r\n                                    </p>', '15542700821-min.jpg', 'www.geniusocean.com', 19, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-04-06 22:04:20', NULL, 27),
(13, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a \r\ndrifting tone like that of a not-quite-tuned-in radio station \r\n                                        rises and for a while drowns out\r\n the patter. These are the sounds encountered by NASA???s Cassini \r\nspacecraft as it dove \r\n                                        the gap between Saturn and its \r\ninnermost ring on April 26, the first of 22 such encounters before it \r\nwill plunge into \r\n                                        atmosphere in September. What \r\nCassini did not detect were many of the collisions of dust particles \r\nhitting the spacecraft\r\n                                        it passed through the plane of \r\nthe ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\">How its Works ?</h3>\r\n                                    <p align=\"justify\">\r\n                                        MIAMI ??? For decades, South \r\nFlorida schoolchildren and adults fascinated by far-off galaxies, \r\nearthly ecosystems, the proper\r\n                                        ties of light and sound and \r\nother wonders of science had only a quaint, antiquated museum here in \r\nwhich to explore their \r\n                                        interests. Now, with the \r\nlong-delayed opening of a vast new science museum downtown set for \r\nMonday, visitors will be able \r\n                                        to stand underneath a suspended,\r\n 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, \r\nmahi mahi, devil\r\n                                        rays and other creatures through\r\n a 60,000-pound oculus. <br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of\r\n a huge cocktail glass. And that???s just one of many\r\n                                        attractions and exhibits. \r\nOfficials at the $305 million Phillip and Patricia Frost Museum of \r\nScience promise that it will be a \r\n                                        vivid expression of modern \r\nscientific inquiry and exposition. Its opening follows a series of \r\nsetbacks and lawsuits and a \r\n                                        scramble to finish the \r\n250,000-square-foot structure. At one point, the project ran \r\nprecariously short of money. The museum\r\n                                        high-profile opening is \r\nespecially significant in a state s <br></p><p align=\"justify\"><br></p><h3 align=\"justify\">Top 5 reason to choose us</h3>\r\n                                    <p align=\"justify\">\r\n                                        Mauna Loa, the biggest volcano \r\non Earth ??? and one of the most active ??? covers half the Island of \r\nHawaii. Just 35 miles to the \r\n                                        northeast, Mauna Kea, known to \r\nnative Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea \r\nlevel. To them it repre\r\n                                        sents a spiritual connection \r\nbetween our planet and the heavens above. These volcanoes, which have \r\nbeguiled millions of \r\n                                        tourists visiting the Hawaiian \r\nislands, have also plagued scientists with a long-running mystery: If \r\nthey are so close together, \r\n                                        how did they develop in two \r\nparallel tracks along the Hawaiian-Emperor chain formed over the same \r\nhot spot in the Pacific \r\n                                        Ocean ??? and why are their \r\nchemical compositions so different? \"We knew this was related to \r\nsomething much deeper,\r\n                                        but we couldn???t see what,??? said \r\nTim Jones.\r\n                                    </p>', '15542700676-min.jpg', 'www.geniusocean.com', 57, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-05-06 22:04:36', NULL, 28),
(14, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA???s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI ??? For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that???s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth ??? and one of the most active ??? covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean ??? and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn???t see what,??? said Tim Jones.</p>', '15542700595-min.jpg', 'www.geniusocean.com', 3, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-06-03 06:02:30', NULL, 13),
(15, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA???s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI ??? For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that???s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth ??? and one of the most active ??? covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean ??? and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn???t see what,??? said Tim Jones.</p>', '15542700464-min.jpg', 'www.geniusocean.com', 6, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-07-03 06:02:53', NULL, 22),
(16, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA???s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI ??? For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that???s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth ??? and one of the most active ??? covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean ??? and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn???t see what,??? said Tim Jones.</p>', '15542700383-min.jpg', 'www.geniusocean.com', 5, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14', NULL, 27),
(17, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA???s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI ??? For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that???s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth ??? and one of the most active ??? covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean ??? and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn???t see what,??? said Tim Jones.</p>', '15542700322-min.jpg', 'www.geniusocean.com', 51, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37', NULL, 28),
(18, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA???s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI ??? For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.??<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that???s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s??<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth ??? and one of the most active ??? covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean ??? and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn???t see what,??? said Tim Jones.</p>', '1610742955blog-15.jpg', 'www.geniusocean.com', 152, 1, NULL, NULL, NULL, '2019-01-03 06:03:59', 'xcd', 13),
(20, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA???s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI ??? For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that???s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth ??? and one of the most active ??? covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean ??? and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn???t see what,??? said Tim Jones.</p>', '15542699136-min.jpg', 'www.geniusocean.com', 10, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14', NULL, 27),
(21, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA???s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI ??? For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that???s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth ??? and one of the most active ??? covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean ??? and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn???t see what,??? said Tim Jones.</p>', '15542699045-min.jpg', 'www.geniusocean.com', 37, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37', NULL, 28),
(22, 2, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA???s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI ??? For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.??<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that???s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s??<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth ??? and one of the most active ??? covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean ??? and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn???t see what,??? said Tim Jones.</p>', '1610743031blog-32.jpg', 'www.geniusocean.com', 70, 1, NULL, NULL, NULL, '2019-01-03 06:03:59', 'dfghd', 22),
(23, 7, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA???s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI ??? For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that???s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth ??? and one of the most active ??? covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean ??? and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn???t see what,??? said Tim Jones.</p>', '15542698893-min.jpg', 'www.geniusocean.com', 5, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2018-08-03 06:03:14', NULL, 13),
(24, 3, 'How to design effective arts?', '<div align=\"justify\">The recording starts with the patter of a summer squall. Later, a drifting tone like that of a not-quite-tuned-in radio station rises and for a while drowns out the patter. These are the sounds encountered by NASA???s Cassini spacecraft as it dove the gap between Saturn and its innermost ring on April 26, the first of 22 such encounters before it will plunge into atmosphere in September. What Cassini did not detect were many of the collisions of dust particles hitting the spacecraft it passed through the plane of the ringsen the charged particles oscillate in unison.<br><br></div><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">How its Works ?</h3><p align=\"justify\">MIAMI ??? For decades, South Florida schoolchildren and adults fascinated by far-off galaxies, earthly ecosystems, the proper ties of light and sound and other wonders of science had only a quaint, antiquated museum here in which to explore their interests. Now, with the long-delayed opening of a vast new science museum downtown set for Monday, visitors will be able to stand underneath a suspended, 500,000-gallon aquarium tank and gaze at hammerhead and tiger sharks, mahi mahi, devil rays and other creatures through a 60,000-pound oculus.&nbsp;<br></p><p align=\"justify\">Lens that will give the impression of seeing the fish from the bottom of a huge cocktail glass. And that???s just one of many attractions and exhibits. Officials at the $305 million Phillip and Patricia Frost Museum of Science promise that it will be a vivid expression of modern scientific inquiry and exposition. Its opening follows a series of setbacks and lawsuits and a scramble to finish the 250,000-square-foot structure. At one point, the project ran precariously short of money. The museum high-profile opening is especially significant in a state s&nbsp;<br></p><p align=\"justify\"><br></p><h3 align=\"justify\" style=\"font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);\"=\"\">Top 5 reason to choose us</h3><p align=\"justify\">Mauna Loa, the biggest volcano on Earth ??? and one of the most active ??? covers half the Island of Hawaii. Just 35 miles to the northeast, Mauna Kea, known to native Hawaiians as Mauna a Wakea, rises nearly 14,000 feet above sea level. To them it repre sents a spiritual connection between our planet and the heavens above. These volcanoes, which have beguiled millions of tourists visiting the Hawaiian islands, have also plagued scientists with a long-running mystery: If they are so close together, how did they develop in two parallel tracks along the Hawaiian-Emperor chain formed over the same hot spot in the Pacific Ocean ??? and why are their chemical compositions so different? \"We knew this was related to something much deeper, but we couldn???t see what,??? said Tim Jones.</p>', '15542698832-min.jpg', 'www.geniusocean.com', 35, 1, NULL, NULL, 'Business,Research,Mechanical,Process,Innovation,Engineering', '2019-01-03 06:03:37', NULL, 13);

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
(4, 'BDT', '???', 85, 0),
(6, 'EUR', '???', 0.89, 0),
(8, 'INR', '???', 68.95, 0),
(9, 'NGN', '???', 363.919, 0),
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
(1, '16361270941580538560logo.png', '1636127365favicon.png', 'ABC Saigon Shop', 'Info@example.com', '0123 456789', 'ABC SAIGON is a delivery and shopping company which transfer all kinds of goods and packages from US to Vietnam.', 'COPYRIGHT ?? 2021. All Rights Reserved By ABCSaigonShop.com', '##5fa30f', '1564224328loading3.gif', '16361274181564224329loading3.gif', 0, '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>', 1, 1, 'AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8', 0, '<div id=\"disqus_thread\">         \r\n    <script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://junnun.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n    </script>\r\n    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>\r\n    </div>', 1, 1, 0, 1, 1, 'pk_test_UnU1Coi1p5qFGwtpjZMRMgJM', 'sk_test_QQcg3vGsKRPlW6T3dXcNJsor', 1, 5, 5, 0, 5, 'smtp', NULL, NULL, NULL, NULL, 'geniustest11@gmail.com', 'GeniusTest', 0, 1, 1, 'Successfully Added To Cart', 'Out Of Stock', 'Add To Wishlist', 'Already Added To Wishlist', 'Successfully Removed From The Wishlist', 'Successfully Added To Compare', 'Already Added To Compare', 'Successfully Removed From The Compare', 'Successfully Changed The Color', 'Coupon Found', 'No Coupon Found', 'Coupon Already Applied', 'THANK YOU FOR YOUR PURCHASE.', 'We\'ll email you an order confirmation with details and tracking info.', 1, 8, '15587771131554048228onepiece.jpeg', 'Already Added To Cart', 5, 5, 1, 1, 1, 1, 'Pay with cash upon delivery.', 'Pay via your PayPal account.', 'Pay via your Credit Card.', '#ffffff', '#354e63', '#5fa30f', 1, '#ff5500', '#02020c', 0, 0, 'test_172371aa837ae5cad6047dc3052', 'test_4ac5a785e25fc596b67dbc5c267', 'Pay via your Instamojo account.', 0, 1, 0, 'pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2', 'junnuns@gmail.com', 'Pay via your Paystack account.', 10, 1, '1566878455404.png', 1, 'NEWSLETTER', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita porro ipsa nulla, alias, ab minus.', '1578998786adv-banner.jpg', '16361271201580538560logo.png', '1567655174profile.jpg', '#666666', 0, 1, 1, 'AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi', 'EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE', 1, '16361271171580538560logo.png', NULL, 'tkogux49985047638244', 'LhNGUUKE9xCQ9xY8', 'WEBSTAGING', 'Retail', 0, 'Pay via your Paytm account.', 'sandbox', 0, 'test_5HcWVs9qc5pzy36H9Tu9mwAyats33J', 'Pay with Molly Payment.', 0, 'rzp_test_xDH74d48cwl8DF', 'cr0H1BiQ20hVzhpHfHuNbGri', 'Pay via your Razorpay account.', 0, 0, '<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>', 0, '76zu9VgUSxrJ', '2Vj62a6skSrP5U3X', 'Pay Via Authorize.Net', 'SANDBOX', 0, 'TEST-705032440135962-041006-ad2e021853f22338fe1a4db9f64d1491-421886156', 'Pay Via MarcadoPago', 1, 1, 0, 'FLWPUBK_TEST-a34940f2f87746abbdd8c117caee81cf-X', 'Pay via your Flutter Wave account.', 'FLWSECK_TEST-1cb427c96e0b1e6772a04504be3638bd-X', 0, '9668BB2D-C246-4175-8F5B-CB72F655097B', '901417869', '2C2879C4-9F81-47D5-89F3-863F4CF0E7A3', 1, 'Pay Via 2Checkout', 0, 1, 'geniu5e1b00621f81e', 'geniu5e1b00621f81e@ssl', 'Pay Via SSLCommerz', 0, 'demo', '5a61be72ab323', 'Pay Via Voguepay', '4.0', 1, 'http://localhost:8090/Vietnam');

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
(3, NULL, 'BZh91AY&SY??O??3\0????P\0X???[??????????`=??\0????????2??4??&C\00L\0\0????????????????????4??L@`Ld0\0??\0\0D????# ??????\r????\09??M0	????\0L\0\0\"\"h????#????154????????z??R??R??)??gy{\"A@x\'??????}??E??$Q??:????\Z??.1??(????.??7\\??k??aWR????k??hB??????LL??c??M(Q??U6????I$????P????\rf????c????????????,????????A^??@???? ??????????x????????t*y????\n??????n??q??????%????????-:ey??86J??9????q??A7 \0??4????h,T??\Z??F??Db\r1????-t??]\r&E??\\??eG??(??*????a??d@qJ_\"??2hL$??????????*MMx??B`??@??5X????z????q?????? dQ^RwBQT????N??*X??????\n??E+E??e????&??8l ????????????L01??A\nXq??,P????q????L????????????R????v{P-????\\??D??????S`????d??T\"??????V????\n??$????*??(d??????????j??\r????I6????!%@????\r????\Z??*?? ????;RPH??aF ????fX	dBA[H??c??????????\0}??T??+:T??6S??????????V????qA3LdP??????????sN??I??B??(>,=3Z????4????/1L????i??????M??_1??u??	G??????????/)????\\????2Jl????????Q^??y\r????????SrJ??J??1ah??  (z\Z????f????Aw??O????????????\\??????????????E&????hM,9????y7-Y??(??>D2??????????@\Z??y??????_H4zT??????Y`??????pe??s`v??M??\Z??@F$??*????d\Z??H????>????2w????gm??T??b??(3??<????6j??????G??????F??qs??\\RL??N????gy%??????A????)??]????????X=w???????Si?? ??<g????8\Z????Zf????$??=??6,????????????????_\0g??????]??(bb!??????v??`O????????{??;3	%Q????l????$????????-????l??????????????????N\'??????Hcb??8??-i????L??QNkw??eV*??$????(J????Y+3??T??#??d??>??????tG:.????j??\'/??=K,????2F_-????I????Pj7????????????l*w??}??}FvEZ5J.3??g1fs????g??J??+\nT??^??!A??4??6\n(????.W??0[????\'\ZeA????h????K,c??\"??A????????????Rl.t??????????????????1B??J2(D.T:x8Sx????????8????sJ??????????y??9\0??????1Y????*P1F????????????|:o??????\0????????????#y>??????|????8\n??????h ??\\????h??)??/o$/@A??????F@??j????]????BC???|??', 'Manual Payment', 'shipto', 'Azampur', '1', 520, '12457879746', NULL, 'numV1636693098', 'Pending', 'quang_nvd@yahoo.com', 'duy nguyen', 'United States', '9409991111', '3212 jupiter rd', 'garland', '75044', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-11-12 10:58:18', '2021-11-12 10:58:18', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'texas', NULL, '0'),
(4, 38, 'BZh91AY&SY????A]\0??_??@\0??+????D????????P??<R,g:Et??????XI$????????a????2\0=L????\rA(*~????????4??\0\0????@\nQP??????2\0i?? 4\r4????9??\0\0\0\0\0\0\0\"??????????j??\0??\rLe SM??/8??x??????????j~??nm\r??RES??Q??ia??:????n??u????\n&FXF??r????????hB????Bfe????7??????PI??%M7??????cy????[????hAk??r)??`$As??ac????fbw??b??Hi\n| ??????xJ????AsR??4+??M\rXk\'\n*??1A??A??X??????????,EQ)??????????\"??\0??@??5H????????x??a????Wh??6????????????H??4V??????*(hL??w??ThW ??b????@????8????P??????D??bM??-)\Z????\\N??????K{Z??	HFH????Tgw??????\n????R????????Z??,UUx????H_????(MHi??%??8T??IN??\Z??XZ??$????????B5??C%(ZP??;????z3{b????????????F????????`??;????d??n??s??????\Zs\"\Z??4i??S`??9??b??T\\??d??J+????????\rg9??\'s)b????V??)>.??}n()??a??o??F????F??%??????K??Z??)a??a\rCur(i????????j??????????????????4??p??????d??Eq????5????f%@????T??1??[??G??Uc-c??????L??##2??D????P.D????D????Cb????o????fn-??????0????Ljz??????<??????????K??%????????????????????&EF??Pf*????????!,??t$??????c??k??O??\n)????k??2q??????????E????A??O????????????``\n??????-??????????u)\Z@|??????\"??n??G????????{??A????????bA????I*??g????????????E??{v??????????1??.????f{????i????????!I??5BAR??p??????))????v??(J????RVe??\n??R????????0??????W??yQZ1T&????\nT??????????]??????iq????v????#????cM????y??UJ??h#????v??????N??}m,??WpJ??????????:\r,Dk`wi??kt{;g??????????c????????1#??@R??\n????\r	??SR??;a??????????[??.o%`????m`??:l??<????c\n<??[N&Y&????????????????????????0X??c??EJ\0??3e????????????????9??????????R????(??5??$0??q7????????5j/Q????u??????<??????AC??X????????N$*;W@', 'Manual Payment', 'shipto', 'Azampur', '1', 72.5, '123123123123123', NULL, 'kpNK1637887890', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-11-25 22:51:30', '2021-11-25 22:51:30', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '3.5'),
(5, 38, 'BZh91AY&SY??.%\0*????P\0X???[??????????`=??@hb??[\0????`Ld0\0??\0\0J&M&????????\0??\0\04\09??M0	????\0L\0\0\nT)??P????=A??????\04??9??M0	????\0L\0\0\" ????2\0????A=L#Q??I??y5??N??z??????0;`??????|S????????V.P????k????????u????d??(|&\\??\Z??c????e*M????c??I??????????Y??U????????)\"??????I$????u??k????\r??^????1????????????????????????W??$\0??????????5>\'??zC??????????P<????t1??z????????5??Rh????b????L????a??????T9????y??????\0#H&????HA????????C\Zhj??8Vv??????q??0??N??H??????.!????1L??A????D??@m??????j??\'C`h??????+??????75nm5$????D+????A????UU??????+????????f????UA??\n??E+E????-??hL??????????M\\??v??qB????$.X??????F????!??[1??YQ<??o`yW)22T????y????nTP??{Q4D????-z??V??RU.T????*??????5U_r????.+??8????ZR??????????.i??????$??59??,-D??5??	a??????`??????B????????n??n??(????1 ??<e6^??+CkJ????o??\Z6??4??#????h(YKD??U????C$??Z??bj????????)Q??V??????k??\\??????\\??H??r?? a5O~??1??l??o(u??????`??????h??&??>??????GP??Q????????Y??U??V????k??C??m>??9??????\"????I\Z??I??y??\Z????DbZF	????F2??R????????????yS????k3??%????@??.{????GOi\0l}??F????????S??\Z??fa??Cb??~G0??0??c??n8????2&T??&a??????????????????????xS5????A??22S??`????????U0???RF{??3??????????IN??%????d??^????dx????????*k??????m????|?????&????A??q??>????X????Y\nn0??????\rB??????Pb??????Sk????????????hp??0??????\"??|????:????v??????t9??Lyn	%Q??qz????$??\'??.????l????g]????????N??g????????2??P????????Hd&^????\'U??=*2??%B??L^%LY??+R??B??y\nG??p|??????-:????4????2;??d??,??4????????|#??q????Po:?????u??????O2O????????????-????????L??E??9T??g??K+\nT??c!A??4??t ????As??O??????/????????\"&#??db??,??JD????4??R??K??:??????w:}??M??e??????????E\"??(??????????0wu????????????o????g??i\Z??d??????S??(L??a????}????@??\Z5??_F??????cS??.????????????????O??}|????????????(X??h ??`??t????????h????G????????F???? ????????\"??(HI????\0', 'Cash On Delivery', 'shipto', 'Azampur', '2', 282.5, NULL, NULL, 'LjhO1638408639', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Alexandr', 'Vietnam', NULL, 'Kuznetsov', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, 'pending', '2021-12-01 23:30:39', '2021-12-01 23:30:39', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Ho Chi Minh City', '0'),
(6, 38, 'BZh91AY&SY????????\0+????P\0X??;K??????????`=??\0????????9??&\0\0\0\0??\0	??Q2hMP=@\0\0@??\0??b`00\0	??\0??$J??&??L#&d??????a0\0??????\0L\0L\0`\0&	&M????????J6????\Z~??4???????T??	A\"`c4f????   \r(??k??8X??B??%??!??????wY ??!??????????Y\r*U??F~l????????????\"??m??5??c??W??????E$??g????????\Z?????#??1????7????????????`m??W??H??s??<????3??????P??-????8jH}J??OHc<A??\n????_??j??4\Z????K??h????????t??6R??????_????ZMI!??CRDh\ri??????m????EVm.0????2??????P??????`????!jW(??????????[??,\"-??????\n????????L????\\??@??5X????????????\r??BAk??S????UT??????6????fk??1,??1??f??????????FUn ????Bd??f??????????????`A??P??.IK??$7B????????D4gf2??\n\'??M??\n??&\n??/7v????????/j&??????Q[\0aIT??AR????????Z??,UU|??B????????I&????????\0???P6??hl	PU68??:??n\0i\r&&1??4	????\"&????H??W??#=R	\0Q????w????????&??|29k.8????????Q??\"????????J??????D2ME??&??\n??????(????????kD????????R??0??????????Fs `????????????:M????.T????????=??a????x??3*???????????????2Y??~??????????Lb????QC??m??????????A????????c!??ye>????bZgBsLtc??????3T8????*u????_????x??Y>ZPG_B\0??????\Z\Z??f\r??????l????????Cb??>??\0????????47????0&T??}??CQ??1v??~??????bKE????????*??8??*(??UJ??(eg??????dXk??A??T)#??	????????$????=????=??7??\'????|)??M??v????????C??w????T??i????????t??J#??r??????H??{????5??x??????????LHbb!??&w????_R??NA??3????Y????????@??U\Z??+????????BM???????7!\'b??6ur2????x?? ??`S????@?? ax????*p%????.&^????\'b????5U????B	&/\n??,??J??X????U.??H??X??F??bZ??????\r2????????????????????????????m;%??`??C????????!??????$????????*4????????????sL??E??8T????X??)R??C!A??i\\??A??????-????U??>O??@??/??B????d$??????Lih??B??J\ZL\ZjM??G-??a????h????????f(@A	F%????v??d??s??p/b??????????d??c??i??????OdT????+??f>H??@??\Z??/F????????e?????? ????????????\"??aO????8????8??Y\r??4fb@??_c<+????t.`????????M??b??qw$S??	\r????P', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'Vl191638408827', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Vietnam', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Ford', 'Vietnam', NULL, '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', 'THis is my shipping', NULL, NULL, 'pending', '2021-12-01 23:33:47', '2021-12-01 23:33:47', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Ho Chi Minh City', '0'),
(7, 38, 'BZh91AY&SY??)\0*????P\0X???[??????????`=??\0??????$#????\0??\0??0\0\0????I??&????h\r\0????\0\0`Ld0\0??\0\0B??\n=CF@d??\ZzCC@\0??\0h`Ld0\0??\0\0H??SM??D??P??Q??LG??G????4????N??z??????0;????????|S?????????X??B??%????b6??????????~??$3C????r|k!????]k??????7????????\"??????ZV??????`????Auc????????M`????k????????c??r????????????`??????zH??b<A\"????j|O????;1ls8??3????x????c.??*e}????j1.????\r!o??\Z4????f??????r*????????????r@??hA????\\??668#\0??????\Z????\n??\n??fE??]d??e~??T ????0\Z!??i??????????	??+??_??`??????????????	??m`??b??RJ??\Z!\\????\"??????2J+????????f????UA??\n??E+E??e??hL??????????M\\??x????????B\\??\n??,Hp$??Q????D4kf2??O7??<W`????????????p??????K??????&d)k????????%R??J:??????j??UU??/??B????C??(??T??c??i????????????$??48jh????vf??	Ia??????`??????B??????oFoo????Pq!????d??????????\"R??}??????j??(??g??aB??Y??b??b??????Qi1??(:??-&A??	????)G??i??????R%k\Z%????4J????	??????`{\ZF??????\"gP!??????????bI??????.C????????????o????j??*????+^8??\n#????????}??W??@??t????y??T????CP??L$E??/,,????9??????:-??Z??(?????s????u????????8????????On??????????????????????????o8????h??0????c??4$b????????\'????;??????????\n??X??????>M????Qg+C??$g????t2Xk??Pn\nH??????!,??????]z????\Z=??v/??S^????o????????\\????L??????????=r??????S3E\0i??F??xz??\'??0??<????Y??????b\Z??U??3o????\\??xpt??????d??????$??F??????tPg????pO??0P????????q??xE??????i????;??b$<??Bp????Ce??????uX\'??FUaP????????	S??p%jX????U/`??p-??????????n??FP??/P??????\'??ia??~????????;????R??c????C????i????T????}????F??Uil??????d[S????NP??????????????!????Py??+??H ??\\????????[?????z>a??1+#	fbR$!??B??rX$i??p3????????j??????|X??P????.??\n??mO????+(z????\Zh??F??ec&g??T??\nSE??aj>??T??a????/????_????K??!**(????Dv????o3??%#????????#}??????N??/1\Zv&??y??\r??y??????,????H??\n9???? ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, '1TFZ1638409421', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Ford', 'Albania', NULL, '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, 'pending', '2021-12-01 23:43:41', '2021-12-01 23:43:41', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Ho Chi Minh City', '0'),
(8, 38, 'BZh91AY&SYt????Z\0+????P\0X??;K??????????`=??@\\J(??\n??????\0L\0L\0`\0&	D????5@??\0\0\0\r@\0i????????\0&\0`??*????21&????\0\r\0i????????\0&\0`??@M??????T??Od??jl??????0????????,????K????w????r??l((??<??????(Td????1??b.??$c$2??????r}??!??J??(??????I??MmX??/????QcZ??7????eq??]X??w??$??H.??\ru????????a??????g????S??_??wKL??j??-`T??b(??mL??c????A??q????$\"??S??????g??P:????-Q????^????rM\0??????f??2????\'Q??????????A-??????????q????\"5??4????????Vu????7*??22L??????P????1\\,@????5+??b``??i??\0??c8????!5????B`??D l\Z??^o??hI\\????W! ????????q*??d^??Jo35??????U????DZ????f??*????\\M??2m3v@??Q??????0 ??????(P????$????????!ATd????\Z4??E????&????p??J	??????V??UE\n????L????\nZ????????0????\\ ??GRU????B*????+??????????peI??????p??%@????\r????\ZTM??	`??~2PH??aF ????@??6$??@??????=\Zl????H\0??\r????UW??73??????Yq????h??/??????????.????W,??Z!??j-??15Te??	D??G/kZ$^????B??????dw????3??1??5??l??9??h??r????????????\Z??????????????\\4+??????H??h??????????J??1????????????~??=????a??5????q??????03????i??	??1????C??????P????????????\Z????#??b??????????:??????????????@h??????#1??,L??46,????qq????????[v??????eR????1\r??H????????????[Z-56^??T???? ??P??EP????????V??C(??<????\"??^\n??B??80??HK!????K?????? ????????y>??4??MBm??????}??????????????????????????I(??XM????????a#????????????\n???????????\nA??R????\r????D????5????t:??D\Z??????????^??Ezf??z??v.????????????????????????i????AP????-i!q2??DI9??	??Q??X* ??b??0??*`r????????\n????)??????f????????d????z??w??\'??ca??~??(??????;??????ad????????s????$;??I??\Z??eF????????#!??????H????????B??!????*B2??d(:\r+???? ??\\????????n??????G??1??jF??*??\"??0??B QDA??????????????y????>P????K??U^????4  ????????B??;V??fwv??????????wg8????F????2??FS??:\0??????0Z??*P0Fm{W??????=??hx%??!**(??????????S??>??$$|??D??C}??\Z??5??98??&$~??x??# H5S??.????p?? ????????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'qHig1638410917', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 00:08:37', '2021-12-02 00:08:37', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(9, 38, 'BZh91AY&SY????P??\0+????P\0X??;K??????????`=??????J(\0h#??b`00\0	??\0??%4&??ECOH\0\0\0??b\0\0??????\0L\0L\0`\0&	????????????2b0??L\09??&\0\0\0\0??\0	??DD??B2jzi??2bF??h??????	A\"`c4f????   \r(??k??|??????`D&????K??|??@??8??\r????D(>????????]g????	??M.??Q??e(????cpca??Y\\n9??$??8,??\ru??@jm/??`??3??????\'3??\"??g\"????@??#??$A??q3<Oi??ub??j3y????????T??4??3????T??????0??k??1.	??\ZB??(.i??????????u??\Z??<%??T??T??l45$F????????\Z??????????Uf????LS)??%B\nW??????X1??????mcn????????z??\"????!5??&B`??D l\Z??Zm??fI\\F??V! ????T??7??U1-f\r??6??????????F0.h????????5U??????m	??t????QG3K????qB????$,\\Hm$??X??,&:??K\\????????+????e????????eV2igi??K&C????Mg\Z??L4????GRU????P????????z??H[??????D??m!??(AIP??5n ????????Sc????????????????bc??@??L!??lI????????5y??3??!^????\Z\r\'t??1NI??P??kK??	\"*????b3oNn ??????j`??T6???? ????????????2o??j????&??????`??i??L??????6??????>??????????g)??2T????=G??z??????????3*?????????i??1Y????????????Lb??????????????6O??g???? ??T??????????.c??lq4??=M????-\0??n,`h|????k!??????xX??=??PG_B\0????????\Z????\rj??dd;%??????????|????????q??46??l??????W????j2F.!???H??????????????nt????H??,????)??&??????\'1>f??y??p??r??!P??????B??g??????????`@????<_J????????7r??}????????????=r????????????t??$??G??&????3??0????v??Nk????<????	.??????????B??ZL??=~??b????Pg]??q??v??$??5??6????A??D??????????????W1??????????M????????N\\??????????C????M????????????j??$????????????????\nI1hP??09f??VE??B??w\nG??j0????%??!e??????Z??y????\'??ap??>??????9??????????????/??????a??Hsl.$????i??????-??????F#9??o\"????????_~FV??????????4??p ??lAc??^??5??\'??????1??????n	0i4??\ZC\Z&??????????????????i????.????K??U^????????\"??(????????????????????P??9????7??`??Ff??2????:\0??????/Y????*P/FM{???????????????????? ????????????\"????Q????BG????HQb7??????3??????????+??????????.??6\r??8]??????N$ ????7\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'rpKh1638411234', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', 'Ford', 'Vietnam', NULL, '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, 'pending', '2021-12-02 00:13:54', '2021-12-02 00:13:54', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', 'Ho Chi Minh City', '0'),
(10, 38, 'BZh91AY&SY??????A\0*????P\0X???[??????????`=??\0j??	??4??&C\00L\0\0??d??i??\Zz??\0??\0@\09??M0	????\0L\0\0\nT(??\r????i??\r\r\0????9??M0	????\0L\0\0\" A4&??!????&??2??mI??y4????N??z??????0;????????|S??????<????????eL????gx????????E/s????X??????????tQ??????????M????Q????????????????w????\'????I5????a??v 7??z??a??g????q??Nyk????\r????????\0g????????????j|O????;??1lr83y??y??????c.??*u|????b]????\ZB????4????gHpp8??V??R??g????t \0??4 ??4*B\r??????????41??????5??g}\r????\"??33L????J??q????s??3??????????D??@m??????????+????????????	??m`??b??RJ??4B??4??????????(??Z??J??????????U0*??????(?? ????Bd??f??$jj??k??fD}??\n2????T??bCy$(*??4CF??c(??D??{??q&*PL????????\n??(T??????\"fB????j+`RU.T????*??????%U_5??H\\W??qeJ????,q\r:??8U??d????\rM??????),12\Z0 hZP????7??????????j\0n$3[J(??2nd??G+U????/????\n\"Z$XP??????X????X??I??????????!Q????%????kX??j??\nU????z????t??g/bT????1=??d??x??C????\\K\r??KD??4????x??aB??m????r??????J??*????+^8\n#|??????a??????$j??\'i??????/2#??9S????`f??????|\n??????Y????z????????????:}D??????&{??????S??\Z??df??????f????2??9X????????m&T???? ??2F.??????d??????w~??T??aX????0????????????m????<??G??H????????fXk??Ph*????????BY??????]z????=??w7??????:n	?????????????\'A????t??d}??7X??????a??C??\Z??0??Pb????Wc????????????8??LCY??????m??w+????\r????t9??L??=????ITk\\??[????>????????????6r??e]??z??\0????^g??????Hb$=????8Z??!??2??DI:??????*????P??I??????????????7????,@T*????R8K??????h??i????????/P??????\'??ea??~FH??????;????R??c????C????y????T????}????F??Uil????????D[S????N0????????eaJ??????\n`????????1??\r>??????>????????D>LG\n??????Y??????i??\\??	\ZtL????;x????????:??????j(@A	FE????????3??{??{U??<??????????M#Cec39??<????T??dZ????*P0??\Z??_F??????????g????K??BTTQu????O??}??????????????(Y????h ??fA:??????i??<????6????F???? ????????\"??(HVqF????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'aX5N1638411332', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Albania', '333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 00:15:32', '2021-12-02 00:15:32', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0'),
(11, 38, 'BZh91AY&SY,??>3\0+????P\0X??;K??????????`=??\0r\04??9??&\0\0\0\0??\0	??SBzS??=P\0\0\0\0\0\0??b`00\0	??\0??\"J??h\0M4????????\Z??b`00\0	??\0??$DS#F??6S??$??????????L??i=O??-????????c<C??????\n\n??3??????????*2Z??????\".??$C$2??????r}??!??J??(????????z??????D_\r??????????o??A????Aucz ????????k??????c??????|??????????????f`n??+????\0g`??P$A??q4<??q??s??b??l3??????????U????w??<\n????_ij??5\Z??K??h??????4????gHpp9??&??{??	h@]4$????M????41??????5??????Y??????#e??????J????!????J??????,??a\06????F??,????M~??????+????????\ZW!????H-z*v\\\n??????????????%??F0,????6??????b????&M??n??\Z??9??\\f{?? e?? ??r????1$(*????4CF??c(????xD????????``??A2??wj??*????R????i??1!K^??????K??(??J??????B??UW??y??.????D??m!??(AIP??5n ????????Sc????r2PH??aF ????@????I????????=\Zl????H\0??\r????U??O??D??0??????B??9????3??c??6????Sj??{??????$??p????2c?? \Zml\r??`K3\Z??eLU)x????IbBr<??O??|????*\\?????????C@??????y\Z\\??K????v??????????????7??????????x??@@P??7O??g?????? ??????????????????????F??H??=??????E&????f:????????????????\Z????????\"????Z???? \rOq??????????????????Fc??X??0hlY???????????????[v??????eR????1\r??H??????????OT;????????+b??,``l0jE??\n????????F??????a????b??IN??%????Y%?????? ????????y>????p????6????}????[??%????2????k??????|????J#??r??????H??????Z??????+??p????`????????g????[??\Z??????\"??BITkL??[????=	3	????????????+??l????encx?? ??`S????P?? ax????	??????/TD????????5U????B	&/\n??,??J????P??]????????[?&im??Y??FHi????`u????{6\Zg??b??|y????????t??J\r????~G??:????C??????$????\\????????????d3??3??????s??C??`d2????HFY??h????????h????,??????v??O??@??/u#D??\nXcE!(??\"!\ZICI??BmI??dr????\"??????W??????\"??(??????????????}N??+(yf????8????????????????????????N????1X??A??EJ????j??`_a????????-????%EE\\??:J}????????????????????o??????C??????????xp??G0!e??Q??$\Z??)??rE8P??,??>3', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'Lnkl1638411617', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 00:20:17', '2021-12-02 00:20:17', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(12, 38, 'BZh91AY&SY??????\0*????P\0X???[??????????`=??\0\0??4????`Ld0\0??\0\0??4??&C\00L\0\0`Ld0\0??\0\0H??(z??&G??=Ch??CL??4\06??e$????F????	??\r\r????????4@??\ZhD????4??4????????M??\'????R@H??\'???????? .??\0??Eg??????eb??\n????????#o????????????P????\\????????R????5????7????????\"??m??u??gX1q??]X???? ??H,??\rq??????e??=????????????9????????????I\03??G0H??????5=#????1??i??o f??@??<Q??????<J????????j1.)??\ZB????3i??8??!??????T8??????>$??\0\r??B&????HA????n$F@??????\Z??????????fE??`??e>D??AA??\\2 C????????+??4L$????|??&]dY??????!0M??l\Z??^o??jI]??W!??|??????IEb??`??T????????*??1??V????h??E??????m	??Y??o ????????????????@A??J e?? ??r??????HPU\Z2h????l??QeD??????????\\??????R??e????????UQB????D??2????Q[ aIT??AR????????Z??,??U|??B????C??(??M??6??)*\0~m@????!????%AT????r0????pHi11??i??L&??6$??@????????????w$,??\0<????d????v:T??\r????C<??&mli??F%??????a??4??hgI3????U??;??U????????????E??i??y??\r.i??fgC??k*e&??$??\"??z|??#??:????????s??{?#@????Z8??[????????5-????????F??b??????\n??*????+^7??\nct???????1??v????????????y??????$t????????E\'\0??h:??\\????????\\CS??I????@??????-??DQQ\0Z>FF??????????????????t??0??????`?C??3??:,~??ym??`#\"a??J????f??H????>??????????ww??????k%b??,dd????`????????U0??>??????????I????_????IN????????%??????A????3????????5????????v??????5????(|??????J????????h????{????????	??p????H??w??B??????E??	9U??PH????|????Fv\r??v??gM??????v????U\Z??????A????????A????s:9??q??^??@0)??????????????C??T\' %????	????\"I??dOUFUd??P??I??????????????7??,@T*????R8kx????h??????i??CL??C#????Or????L??\'D??9\"????Ad??U??Yt????l&0??????????Uimh??????????-????q??C??``eaJ????`d(;????????8D;4??s??{????(??A??X??\n????????M1??1?? bmI(i0hM??7??9????????\n????k\Z??E??Q??B!u????`??????^??e3????????i??hmP1??0bz????pP\n??????%????\"??$h??????`_p????????5;??????]rDu????>??????JG??u??\n??\r??h ??`??????]??%??W??B??UU??&????Cp????)??????\07????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'mr7W1638411812', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 00:23:32', '2021-12-02 00:23:32', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0'),
(13, 38, 'BZh91AY&SY??t_D\0+????P\0X??;K??????????`=??@??@??????i????????\0&\0`??&??55M\0\0&`\0di??i????????\0&\0`??*LL??a0??????&#	??????b`00\0	??\0??$Db4#&??????????G??????g????????????R@$I????????1????\n????????4??????y??ab??\n????????#g??E??d????d??4>??.O??h??WE????RJ????????t+|??t??????????2????V7??$??g????????\ZL?#??1????7z??????Vx??`l??W??H??s??>??3??|O??c??A????4$<????O\\1??\0????u????Z??\rc_??pM\0????AF??1??U????????k+??x??KH??????$ ??l4$6&-????????\Z??f??????*??&ST$Pb??????2\n^jW*??I.??aU??????jfPBk??&B`??D l\Z??^o??fI\\F??W! ????????IE??????`??Sy????????YTc??kSA??????Aq6?????????? j(??iq??@A??(P????$??????I!ATb????\Z3??E????&????p??J	??????V??UE\n????L????\nZ????????0????\\ ??GRU????B??U_??????-??????D??m!??B\nJ????P6??hl	QT8??*u??n@hM&&1??4	?? bM??\r??i????????????1????;??K=J????G&WKI??R#,dPQ??)??l??&\"??UlP????(RlR????&f????`??&??Y<??????????????=????S????;??????K????#??????a??x`^<??????????2????????????fnUiU??1Z????????????6O??g???? ??????????~????????E$u??????E&????d:????oY??*u??????????1bT??k????????????05????\r??????d;????????Cb??>????????:??z??f????6@F??*????????4#??????2u????l??????yK??)??????*????UJ	{????Fy\r??%??????\n??$pa:??K????K??????A????????x????3??Ma6??????~??\n3????J??C_#\'m??3????Q????????x??G????-|??%??z/r]09!????????????{=}J??9??????f????a$??5??7????A??????????\0??????W1????????????????????????????????C????M????????????z??$????????????\nI1xP??09f??VE??\n??R??????h0??%??!e??????^??????????????Xi??????\Z??{c????????Y(48?????????|	m????$????????????????b3??f??/??????????x4??XR??#FB????????????\r????Yw????????y????\n????????M1??1?? bmI(i0hM??6??????????????U??Z??b??p??j(D/C??i&G>????+(x????2??\rZ??H????@??@X????x??N??@*jZ??????\"??d????z0/????????????????%EE\\??8????????<????#|Z355??????\n????]?? ??r??`??????????]????BB??}', 'Cash On Delivery', 'shipto', 'Azampur', '2', 282.5, NULL, NULL, 'HjTO1638411901', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 00:25:01', '2021-12-02 00:25:01', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0'),
(14, 38, 'BZh91AY&SYO&????\0(????P\0X??;K??????????`=??@\0?? \0????i????????\0&\0`??S??OT??@2\0\0\0\0\09??&\0\0\0\0??\0	??MID??@??\0\0d??9??&\0\0\0\0??\0	??D@??4 hS????)??????????????????R??!t$3N????D??(6d\0????<????????zb????-}#??????$????2C*i??\'????N????????PYq??????f??;??O??$A%cy??RI&??.??\rsX??????c??=??????1??7????=??????\0??gp????H????hv????????9??1n5????RC??T????m??3????T=e$a??k????:h????g??t??eHpp!??m+??x??KB??????$%??3q????????????45????k;??????K??44L??????AA??????\0??<eR????FF??a\06??????e93PBk????	????????j??y??i??????????BAk??S??????T????????Sy????????????????4E??MFj2??y????&??7d\rE??.3{\n e?? ??r??????HPU(??4l??Ez\'x??,????(&^n??[??U*^??M2&$)k????????%R??J:??????j??UU??????B????!????I&??????-((V????\n??b??\r??5???? ????????Z????RF??????????dl??!a ??4g????????????????&G??X??/\0??????????K??*!I??HP??)????????\ruT??.E????T??:d??K??	??????$ g#?????????q>G????R????????Q??6????????Ut??\r??u????????????pUiU??1Z????????????7O??g???? ??????????|O????????f??H??=??????E\'\0??h:??Xqi??*s????d#??b????????A????????0m53??\r????h??wK#<??!\r????C,??????????o-??t`??eR????2\rFH????????OG\\;????vS%??b??,`??`??a??????X??????$g????q3,5??????T)#??????????$??????????????????????6??????I??????p:??????G????B??y??????????w??%??	??p??z??>]????????????A????HIw????C0z??g????y??????r\rA????9??dm??$??5??;????????\"Ma????????+??l????gm??yA\0????.????hu0??Hw\n????	kd????????$????OEFUaP????????	S??n%hX????U.??H??Y-F??D????-8??44????0v|I??YXi????$e??????Cq??Y(5:E??????=d??cabI=????,??????\Zh??gbg/????sS????????eaJ??????\n????s????\r????Zzz???????Z>????/\Z????i*D??d??P??ai%\r&\r	??&??3????????K??U^????6\nE??Q??B!yKY4;:??????????v\Z??82??4??????2??fs??;????T??d[??(F??z??????????v??a???? ????????????\"??IO????x????????c}-??\Z????e??????~ @????\"??????j????\"??(H\'??j??\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'G5Ql1638412172', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', 'Alexandr Kuznetsov', 'Italy', NULL, '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, 'pending', '2021-12-02 00:29:32', '2021-12-02 00:29:32', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', 'Lazio', '0'),
(15, 38, 'BZh91AY&SY??w??6\0*????P\0X???[??????????`=??\0??????$#????\0??\0??0\0\0????I??&????h\r\0????\0\0`Ld0\0??\0\0B??\n=CF@cPzCC@\0??\0h`Ld0\0??\0\0H??SM????h????????{Tz??S@)????????s????9??????????????*2Z??F#o??????????2C4?y??\'??????U??F??????z????X??/????E??k\Z_????dV9??$??k????],@p8??????????????????k????\r????????????#?? ??????????????c??3??8*????7??pg????????,#Q??v&??i~`????M#4????P??5-??{??\'$\0F??M??????cc??\"0\ri??????p????????vd\\fL??S????\\ap??\0B??L??YX??a??5	??\r??^\"????3PBk????	??m`??\"??oRJ??\Z!\\????????????(??Z??J??????????U0*??????(?? ????Bd??f??J)(5J????p??yB????$.X????I\n\n??s&??h????e(??\"o`x??$????J	??????V??UE\n????DL??R????El\nJ????\n??u%]Z??!h??????_$????z??&Q$????c??i????????????$??48jh????vf??	Ia??????`??????B??????oFoo????Pq!????d??????????\"R??}??????j??(??g??aB??Y??b??b??????Qi1??(:??-&A??	????)G??i??????R%k\Z%????4J????	??????`{\ZF??????\"gP!??????????bI??????.C????????\r??z????g5V??Zc??D????}Ft?????U????2??a????k2#??9S	F/??#`o>%N??p??????%???? Z??>;PG_????8??????????????????????Z`??????????4??9????M????m&T??~??????d??]????x??????????|????????A??0`=O????F??#mTY??????????8????\Z??????B??81<K#=	.??Oq??a????????*k??????m????~????k??????????8??#??????Y^??\nfa??????\r2a????Pax{????????<????????E{????$????r??w??????r??????????C????f????U\Z??7????A??RM???P??qB??????}??????q??\nwt>????xw0??Hy??????	k|??????$????OZ????????B	&/\n??,??J????P??^??H??Z.#????.=????????????^????????O??????L??\r??????<w??J????Q|????????????????I??5??5????K`??FFx??s\"????????r???s#+\nT??g#!A??4??u ????As??w????o7??????????????Y??K3?? a\r\"??????#N????????}N??&????????????????E\"??(??????V??d????p/b????????m??????????n6P1??2fz??O ??4Z????EJ????j????/??g????1??O4??????????????Gi?Q?????\"R?C????Udo??????y??????????`??lG????????\Z\n??????.????p??!f????l', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'z0lC1638412591', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 00:36:31', '2021-12-02 00:36:31', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(16, 38, 'BZh91AY&SYUv????\0??_??P\0X???[??????????`??}\0\0(??\n????\nIB??`\0??0\0??L`??0\0L??\0L&	??0`??\0&L\0&??0??\0&\0	??a\0E	????!??????I????!????COD=CF??RA$??&??&$f????\r2zOD.????\r????~|??$??ZG??O ????&+[????0??k\n??;????XQ??????/\'??u??????2??????eL%????%????V??6??a\Z6v0??n??+7j??V85(????4;O??????`??????cd??Rw??????????l??_??gR??(??]??{????G??????????????W??????G??????????=g#??<??????(??v??R??r??R????????\'??v,??????Q????????MU\'2????Q??@??!????i??4e??gR??????2w????K??????a??*H??????I??*\rLNR??????u.????QIH????GVWubv)????????\'??Q????ij??5M??I-%R????????????????6,????(????????*F??,????????le%\'????Z(MVY\nP??????Wj??92??R-\Z????e??fc*??k??w-55h??)I0??u??eO??????fQA????fZ0??????????)??????)P??.??????z??????????]????????de????j??\r??lnmh<\r??????\"????Ea6a)??????h)??-????&EMWkMj2??K&\Z??a(R????????F????M\n]0??$,jE??????????#x??6C??P??????Q????J\"????,????????????X??)e????\nT????????*R??.P??z??T??????-??ERR??????T??J??)H)R??gG^k??s??$7??|eA????e????????L??:4\\??????????????????????N-??JTqh??????????h??eE7j\\??????K????R??Y????v????,qk8????(????\\??2??e????????y????????????????z????a????68??????????????????@=????????=N????xwa??_????t??wJ}????g4???????????????@??@6??p??2??{^????Hw0??ZTe??{_????????????\Z2gz??????????v????q??????C??Ng??d????eF????^Q??\')????;????{KI????N????ps\'??????&6?????????? ??0??3????????4??????u??;??6??YS)4?3q????r????????S????]????YMT??????a??l??Lhll?G????7R????????88&??hP >.???????? yF\\`????F%??P??????0??4n????????F??r>??9Sy??h??x??????????y????=??????a??????3????;V(????/1??.??j????????????????No$??O??X??????Oci??\n%HY\r????u??C0????????s??s????????(??*??????????????????????)w??6Q>/??)Gs??ph??v??????J??a????????????<e??M??\\|??????`????????bT????Yyw$??]??????????11,^^??m(b].??????:K??#Ia????Ol????Z??YC??N):??d????GTT????????~??bn??Ikx????????\'??dt6??.W@?????????z????J\ZK??>??????rj??RN??????eiGt??W9??=,6Z??\n\'	S+E??????0????k`K????????-??????5\Z??8??:????`Ol????$2,)		$T??)??B????YI)*??/:????????Yv????)????4????d??\\????????>f????G????A*lFH0\rS????????????????:E??Y4??\'??f{3t??lr??????fhqR}????????}??)??????????x??D??a,??<af?????????%??>\'??????q)OR??????8I`q??????y??B>B??/)????BAJ??????c??????\"??(H*??Dm\0', 'Cash On Delivery', 'shipto', 'Azampur', '2', 282.5, NULL, NULL, 'Y2wY1638413499', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Ford', 'Vietnam', NULL, '123456789', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, 'pending', '2021-12-02 00:51:39', '2021-12-02 00:51:39', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Ho Chi Minh City', '0'),
(17, 38, 'BZh91AY&SY??c|??\0??_??@\0??+????D????????P??<T????\0??????XI$????H??2z??=&??4??????\0=A$	????????????\0d\0\0=C@\nRP????#F??????4M4??\0\0\0\0\0\0\0\"@A`j????\ZH=M??R0??\"??????????????\Z\Z????????????51??#??6\Z`s????\Z??C????p??u????n??4E??????????????????????????v??i(????????????SI??T??A????????/??????@??\"c\n??O#????	4????????i????d????AcY??\Z????????5{????T`#	??????h????V&aa??????\"????\0??@??58??????v:????Q????+2$????????cC??\"YS\"??P??????????)??<??(??7??X??????\"??b?????? t??9F??+XM/??????f??S\"b????aJS????Jd??????2\nl????Z??V????iR??)rH_E??(@????3Hi??%??8T??IN??\Z??,-	??rkRBRA??XF??2R??????????????????j>I9??????s????RT??1\nMQ????\'????lA??[??9??&??\ra??50??????Q\\??????fM??Z??6??9??1(????Q|\ZF|??PT/N????????5??JJ????-??`Xt??????\nIJv\r??qD??????????????T6??m\Z????????????|B]f????|??????????&??\"7K??????????????t4w??????b5??9(0????e`&TD????#??????Dj????hlZ??\r39??\Z\n????\\??2??3??5????>??%??l;;wn??????P????6??Q??qZ????????4J\rqPd)????????ZK??	E??????3P??|??e??y??????q????\Z????[????.????A??G??H??;??5;??\"????????s??K????{??????H[??P??\"v0\Z??xxmV\'??[??n5w??$????X[??(H+tTg??#pKZ????5????y??[`{????	????w????????)P!?????????h$????l??????YRH??????????????:??-????@??g??????l??w<????1]!??????*5??????e??]~B????????oA??????4??(A??cD????a??9-c??&??d??B??????M%9??????\"	(:\r+??H ??\\????n5??????????????1????????????Y??????L )V??rX\Zj????????????)??.\"????W??????????P??????????????R????????F????????)&H??????c *bc.QBe??????!??E	??????2k??,X!??1????3??jZ??==:??????(??k????Ha\n??okD?? j??^??\'????????x????CAC??X????????N$#X??8??', 'Cash On Delivery', 'shipto', 'Azampur', '1', 72.5, NULL, NULL, 'SzHg1638422311', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 03:18:31', '2021-12-02 03:18:31', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '3.5'),
(18, 38, 'BZh91AY&SYtq??\0+????P\0X???[??????????`=??\0*??????[\0????`Ld0\0??\0\0J\0????????????@??PhOP??\0??4??&C\00L\0\0)P????4d5??44\0P????4??&C\00L\0\0??54??4????D	??????d\Z??\ZmM\0????S??z??????0;????????|S??????>??Qd(??????s??k.1??Q??X>??????L??n??V????????&??????/N??Bbe????5??F-T??=??D????e????\n??\Z????????A??g???????????Y??asN????i z??s??>GQ??|????c????q5 S;??l1??x????b6Kzh??????4??h????????????o3+??xK\0\Z??0??!????jHE??????45a??i-fmY??	??????(A1??X.@??,??????????6\'	??\0????-y]??(??^????Lh????y????)??\Z!X????^??????U+V\r??:??R??,B??????\Z\"????3MvcRe????)iJ??8????????????????R??????7!AD??Hh????X??+??;????Pw????\\????K{Z??	HFH????T????*??D??B$??`??????	+*??d,??>????H[????t??i$??(CN??\0??Nf%????SE????????5??JKDL??????\Z??(??\r??z3{}GZ????\r??????????$????N??c????;??k??GD??1??C*f??&!??U:J??????\nTu????L??q??S??9)LA????????4j\r\\??????:y????A??;??\"K=??????w??.??7\\??)????9??????h????l[U~??oTiQ??1V????@@L????????g??0cU??F;g????>gh????G??zS|????lM??7??????(p[???BH??=??2??????????@\Z??%??N??A????C??6??da??Cb??|??A????????n+????rP??%S??2\rFHb??G??.<????????l??WU&2??????????`????????T0??>$??y??\n??{T2r????%????????/3????\"????????????g??{BU?????????A??????????wH??7rZ????9\\r????a??o^????v<O0a??yQ^??????!????5??????o????X??Xj??3????`??????$IM????jY??H????????.+??l??????????????|??????hr ax??w\nd?????? ????j\"$K5r\\h2????d??$J-	??R????????Y?? (K??)????0??????-??(??\Ze??9??	v????4??????2??wG=????A????_1????Q????P??$}??}??vTih??????i??????f????}??????????B????F02??J??:\"{=??????}????0??|??????????1)??!J??,4??8??????????j??????x??????P????,FD??????????gS??z??T<????LJ??Y&??????@??@T????q????0(d????????&F??????????????>??????????K??BSSQe????K??}[????$??????&X????A????u??y??????y6#??m??????Ac??rE8P??tq??', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'B7kW1638422976', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Ford', 'Vietnam', NULL, '123456789', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, 'pending', '2021-12-02 03:29:36', '2021-12-02 03:29:36', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Ho Chi Minh City', '0'),
(19, 38, 'BZh91AY&SY????????\0+????P\0X??;K??????????`=??????J(\0h#??b`00\0	??\0??%4MSD??\04\0\r\r&??\0i????????\0&\0`??*LL??a0??????&#	??????b`00\0	??\0??$DM4#\'??zi??????\"6FI??=O????	A\"`c4f????   \r(??k??t??????(D&????0??U?? 6????????????)K?R2E????jyb??????l??>o??sk??r????????RI&pYn\Z??????????_??????g???????????????y??b??$????G@H????s3>??????????????g\rI??P????ig??3????????Ta??????b\\??@4????P\\????1??!??????9\Z??<??%??d??h??(J\r????RDn??4??????Z??wQU????bb??L??P??????????v3El??2a??6??????????e??A	??????	????????j??i??y1????h??b??EN??????S??`??Si??????`\\??1??sD]u5????????hL????l??\Z??(??????89??I#??????\\???? vr????,&8,??KbYa????????0??#\"??uj??SK;M??,??6??P???? ??i??9R??????+????U_??H\\W??D??m!??(AIP??5n ????????Sc????????????????bc??@??L!??lI????????5y??3??!^????\Z\r\'????!M\'??????V????DZ??kb3j??hA??j????3mhjB????)??B????????????s??9??????df????????????I?? Gt????=??????????????R??????q??3+??G??????????X3+??????X??f??????U??V????u??QC??n??????????A??????????????Ns??lq4??9??D????y??Q??4>EN????????B<??,J??\r(#????\0h{????\rLs????OB2????????Cb??>G??\0????????????n????????U+??????5#0??????2yz]_????????\Z??????????????@????\\?? g????q1.\Z??Pd*????|??BX??????Y}??ap??????????\Zhv????????5????P??????U:??ld????:??%??	??`????$}??????????yk??????[????????B??jL??=^????b??????????\rITk<m[\"??<??2	????????9????gf??7o8??6??w????-EBl??????????U$????\'??FU^??P??I??@??????????7??. *K??R8Q??????-v\\Q??\Ze?????R{??\r3??0F??????n9??%??1~??;??C??aq$??????W*4??G????????????fq;)|!??01XR??#FB????????????\r????????z.????~(????????\n????????M1??1?? bmI(i0hM??7????e??^	w\n????]q????X%\"????????#??s??z????\'C\\????H????@??@\\bc<????P??0X??1??????????^???????????>??????x%??BTTQe??\"??2??Q????BG????HQb7??????3????????xW????\\??????P????.????H??\n??????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'UZo31638423196', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 03:33:16', '2021-12-02 03:33:16', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0'),
(20, 38, 'BZh91AY&SY#????Z\0+????P\0X??;K??????????`=????!??????9??&\0\0\0\0??\0	??SA4E??\0\0\0@??\0??????\0L\0L\0`\0&	????????????2b0??L\09??&\0\0\0\0??\0	??D????\'??????????2b????&??=I\0??$&3@??n +\0????f??????8,????Bo????8??????P9??????X??????8h??,????G)????????j??????6??UXm;??1????1????\r\r????q??1????6??????????o??????R????????G H??????by??q??cf??7hH<??FP??w;????Oqe\rxK??h??????\Zs??0??87??E;????	4 2V??Aa2ffhHF`??????\Z????????sTf??F????OJLb??28??????????F????F????8	!??????F????A	????2R!`??\"????Y??\"??????;0b??????Kr??l]??I??.\"1??4a??C??????????3A??[*&????+%*????n\"lFG????H??,????,???? vr????,&80??KfYe????5??2e??FE????U??4??????%??!????\'T62&\Zl??7BJ????&B??QS??y??-????Y4??m!??(A9(??5n ??????????????????0??i????4??????4??&??D0M??6??6=????F:$+R\0<????)m??????Rq??\ZMirrI??m????f??n ??????50k????-Y ??hZ??????ro??kof????F????i??L??????6??????????z??S??????P????;OH??????}??c????????????bSA??????????????????*4??++\Z	??#9}F|??????%??????????|?????????????P????????h9????Tp????#??P??X\r$#??b????????b:9??G??i????~ ??????????T??/`??????????.??7??z??????????????Q+??ph2C??????d??uB??}^????????$F??????dI4\r??????????37??\rv(0????p[,??J??????EW????Aq??f??????????t??	Y??????\Z??p&|??????%>fZ??;6????r$M????J??\'??a!??????.KU??z/j\\??5C-=??3??????????????4tL??6????vd$????7????D??z0	~????????W!??~????l6????????u??$+????E??	?? ,d]0??F????:??\"??-$??An ??\ZP??\"s??3wF??8??m??????XnE??i????Zr??Iu????\Zg????|??G/3??bPhq??s????$??	=??XX??????0:??x??I??????&??|????>????)\nJA??2????Nl??*k??oU???????? ??/??B????d$??????Lih??B??J\ZL\ZjF????\\8B)??.??Qv??Xb(@A	\"??dB??:V??09t????X????r4??V??\\??F&??2??????q????`P??\\??G??(L-F\r{????????9??????????	MMEV??????I??G??q	GA5x????K??\Z??k??3????????B??.\\??????6(`??wrE8P??#????Z', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'fa3Z1638424264', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 03:51:04', '2021-12-02 03:51:04', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(21, 38, 'BZh91AY&SYe8??\0+????P\0X??;K??????????`=??\0q(+Ti????i????????\0&\0`????O??COHbh\0\r\r\0\r\0i????????\0&\0`??*!????F????2h\0\0\0\ri????????\0&\0`?? MF??\'??????3Hhhi??4??\r.??????xt??!??P`\n\n??????????????*2Z??????.??$#$3??????r|??!??J??(??????????M??X??/????????????????????Auc????????M`????5??bs??????>??_??|NYk????????I\03??????H????w\Z??#??z??????\\\r??q ??????\n??????x:????????l5????$??\r!o??i??8????????v????????	hB??0&????A????nH??\0??????\Z????????Uf????????SBT ????`??\0B2??\\????#\"??a\06??????e93PBk??L????\\??@??5X??????jI\\????W! ????????(????3/v\r??7????{L??*??`Y??-jn3q??]DhL??L????5s4????@A????(@????AR??????HPU??h????l??Qb????&??????LT????y????nTP??{Q4??????????Z??????K??(??J??????B??UW????I??????[(??M??6??)*\0??m??????????l??K??\r????@E\"????!????C????ic??7z??5??!a ??4M????(????9!??E(????!??\"????????????,(YKCX??????C????Z\\95Tu????C5??-JR??????B????Z????)\\??C??????80??CFs????0??????\\??s??zO??}f??????????jUvr.\Z????~????f??V??Y????????Lb????qC??8O??3??{??UbH??39??y????eL??l????d????????????????6=??N????????B<,????????#????\0l{????\r??O*4????????Cb??=???? ??????E??p??????V>&A??????????~??????????????????????A??0`0]??????R,a\\??????p8????\Z????4\nH??????BY????]h8F(0????????U????????Z??????????*^l??3??????t6??h????:I%??	??p????$~O0????V??aFW\"+??ajA??R??-????qv??????C????3 ????J??Z??z????$??\'????>??l????i????x????P@.????ni????D????AP????-k!q2??DI:,????*????P??I??????????????8??,@T*????R8Kq????h????????f????z????????2????L??J!L??????????1??????????????A??*??@????????????K??hyQ????????$_S????LB??1????*B3??d(:\r+???? ????.s????????G????????????H??%B??X??HD\n ????\r????4??4&????Fg=9B+??????U^????5  ??????\"??B??E??????G??????<????}\'Y&????????????????????EN??@*d??-G??(F??z??????}??~??3????????!**(??????????S??w>\"B??1??????\rL??\Z??????B????????C,h??\r@????????\"??(H2??S\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, '3XY31638428699', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Ford', 'Vietnam', NULL, '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, 'pending', '2021-12-02 05:04:59', '2021-12-02 05:04:59', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Ho Chi Minh City', '0'),
(22, 38, 'BZh91AY&SYe8??\0+????P\0X??;K??????????`=??\0q(+Ti????i????????\0&\0`????O??COHbh\0\r\r\0\r\0i????????\0&\0`??*!????F????2h\0\0\0\ri????????\0&\0`?? MF??\'??????3Hhhi??4??\r.??????xt??!??P`\n\n??????????????*2Z??????.??$#$3??????r|??!??J??(??????????M??X??/????????????????????Auc????????M`????5??bs??????>??_??|NYk????????I\03??????H????w\Z??#??z??????\\\r??q ??????\n??????x:????????l5????$??\r!o??i??8????????v????????	hB??0&????A????nH??\0??????\Z????????Uf????????SBT ????`??\0B2??\\????#\"??a\06??????e93PBk??L????\\??@??5X??????jI\\????W! ????????(????3/v\r??7????{L??*??`Y??-jn3q??]DhL??L????5s4????@A????(@????AR??????HPU??h????l??Qb????&??????LT????y????nTP??{Q4??????????Z??????K??(??J??????B??UW????I??????[(??M??6??)*\0??m??????????l??K??\r????@E\"????!????C????ic??7z??5??!a ??4M????(????9!??E(????!??\"????????????,(YKCX??????C????Z\\95Tu????C5??-JR??????B????Z????)\\??C??????80??CFs????0??????\\??s??zO??}f??????????jUvr.\Z????~????f??V??Y????????Lb????qC??8O??3??{??UbH??39??y????eL??l????d????????????????6=??N????????B<,????????#????\0l{????\r??O*4????????Cb??=???? ??????E??p??????V>&A??????????~??????????????????????A??0`0]??????R,a\\??????p8????\Z????4\nH??????BY????]h8F(0????????U????????Z??????????*^l??3??????t6??h????:I%??	??p????$~O0????V??aFW\"+??ajA??R??-????qv??????C????3 ????J??Z??z????$??\'????>??l????i????x????P@.????ni????D????AP????-k!q2??DI:,????*????P??I??????????????8??,@T*????R8Kq????h????????f????z????????2????L??J!L??????????1??????????????A??*??@????????????K??hyQ????????$_S????LB??1????*B3??d(:\r+???? ????.s????????G????????????H??%B??X??HD\n ????\r????4??4&????Fg=9B+??????U^????5  ??????\"??B??E??????G??????<????}\'Y&????????????????????EN??@*d??-G??(F??z??????}??~??3????????!**(??????????S??w>\"B??1??????\rL??\Z??????B????????C,h??\r@????????\"??(H2??S\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, '3XY31638428699', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Ford', 'Vietnam', NULL, '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, 'pending', '2021-12-02 05:05:00', '2021-12-02 05:05:00', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, 'Lazio', 'Ho Chi Minh City', '0'),
(23, 38, 'BZh91AY&SY??k~??\0*????P\0X???[??????????`=??\0??????$#????\0??\0??0\0\0????I??&????h\r\0????\0\0`Ld0\0??\0\0B??\n=CF@cPzCC@\0??\0h`Ld0\0??\0\0H??SM????M??????L??LG??G??????\nj:A??>G????????Nsw??????b??\n??????a??????\"????A????????e????????????tQ????f????????V(????jQiZ????????7????G??I$????u????K&=G????3???????????Ms??????y^????<??x??D????????i??;1ls8??3????z??|1??{??????_B??5??bh??????\r\Zt??3Hpq9??R????????r@??hA????\\??668#\0??????\Z????\n??\n??fE??d??e=????AA??\\0@??:S:V45??@H\r??^\"????3PBk??L????6????j??i??????%r4B??21??Ues(B??k0m*Zfj????T????DR??Z??????????m	??Y??q ????????????@A??(@????AR??????????72h????l??Qb????&??????LT????y????nTP??{Q4D????-z??V??0????\\ ??GRU????B??????b????.K??92??$??(CN??\0??Nf%????SE????????5??JKDL??????\Z??(??\r??z3{}GZ????m{$??X????L??????[????????[TaDK<\nR????wd????I??IA??i2N%??J<L????R??+X??.????q??U??L????s????6??7??:????????p??<4??L??g??pb??\\\r??n[????sUiU??1Z????@@P??\'??gC?? U^))??v]????S\"1\rC??0??b????????1????????T????\rh??Q???2??s????u??????`??r3??\Z>U<Q??wKC,\ZC??:??;??y??????@F	??U+????p#p|????=|a????????4XV(2??????2h??dm????9Z??#>??????_Z??p??RG\'??	dg??%?????? ??????3??yUMzSxM??{????????r:??3????$s????+??L??18??L1\n/tz??\'??0??<????{Y??????b\Z??U????????????S??8:P??r2A????J??Z??????(3??I??\'??(]W????????????\"??????N??????yo????1P??-o??????z??$??V	??Q??XT(A$????aBT??????	Z?? *K??)E??a??7%????[????4????0x??????ZXi??????4????????????T??????/????????@w??=	>??_#[??????dg??g2-????????(C??022????HFr2cJ??R9D;??}~??~??0??|??????????1)??!J??,4??8??????????j??????x??X??P????.??\n??mO????+(z????\Zh??F??ec&g??T??\nSE??aj>??T??a????????~?????????y??????]w\";I??????????????????U????????\r??H??K??F????????pCn??Dh(r??????)????????[????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'XnJN1638429093', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Alexandr Kuznetsov', 'Vietnam', NULL, '3423232', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, 'pending', '2021-12-02 05:11:33', '2021-12-02 05:11:33', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Lazio', '0'),
(24, 38, 'BZh91AY&SY??k~??\0*????P\0X???[??????????`=??\0??????$#????\0??\0??0\0\0????I??&????h\r\0????\0\0`Ld0\0??\0\0B??\n=CF@cPzCC@\0??\0h`Ld0\0??\0\0H??SM????M??????L??LG??G??????\nj:A??>G????????Nsw??????b??\n??????a??????\"????A????????e????????????tQ????f????????V(????jQiZ????????7????G??I$????u????K&=G????3???????????Ms??????y^????<??x??D????????i??;1ls8??3????z??|1??{??????_B??5??bh??????\r\Zt??3Hpq9??R????????r@??hA????\\??668#\0??????\Z????\n??\n??fE??d??e=????AA??\\0@??:S:V45??@H\r??^\"????3PBk??L????6????j??i??????%r4B??21??Ues(B??k0m*Zfj????T????DR??Z??????????m	??Y??q ????????????@A??(@????AR??????????72h????l??Qb????&??????LT????y????nTP??{Q4D????-z??V??0????\\ ??GRU????B??????b????.K??92??$??(CN??\0??Nf%????SE????????5??JKDL??????\Z??(??\r??z3{}GZ????m{$??X????L??????[????????[TaDK<\nR????wd????I??IA??i2N%??J<L????R??+X??.????q??U??L????s????6??7??:????????p??<4??L??g??pb??\\\r??n[????sUiU??1Z????@@P??\'??gC?? U^))??v]????S\"1\rC??0??b????????1????????T????\rh??Q???2??s????u??????`??r3??\Z>U<Q??wKC,\ZC??:??;??y??????@F	??U+????p#p|????=|a????????4XV(2??????2h??dm????9Z??#>??????_Z??p??RG\'??	dg??%?????? ??????3??yUMzSxM??{????????r:??3????$s????+??L??18??L1\n/tz??\'??0??<????{Y??????b\Z??U????????????S??8:P??r2A????J??Z??????(3??I??\'??(]W????????????\"??????N??????yo????1P??-o??????z??$??V	??Q??XT(A$????aBT??????	Z?? *K??)E??a??7%????[????4????0x??????ZXi??????4????????????T??????/????????@w??=	>??_#[??????dg??g2-????????(C??022????HFr2cJ??R9D;??}~??~??0??|??????????1)??!J??,4??8??????????j??????x??X??P????.??\n??mO????+(z????\Zh??F??ec&g??T??\nSE??aj>??T??a????????~?????????y??????]w\";I??????????????????U????????\r??H??K??F????????pCn??Dh(r??????)????????[????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'XnJN1638429093', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Alexandr Kuznetsov', 'Vietnam', NULL, '3423232', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, 'pending', '2021-12-02 05:11:34', '2021-12-02 05:11:34', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, 'Lazio', 'Lazio', '0'),
(25, 38, 'BZh91AY&SY??c????\0+????P\0X??;K??????????`=??@8??(????9??&\0\0\0\0??\0	??Q2hMP=C@\0\04\0\0??b`00\0	??\0????G??zM????1MI????\04=A??C??b`00\0	??\0??$D2??jf??6??=??\Z2??????<&????????H??$o??????U??????????:??_??????????-y??F??.??$c$2??????r}k!??J??(??????I??MmX??/????????????o????????Auc????????M ????k??????A????{c>5>N=??????gwS{T??+??	nr3??:^f????7????rC??T*y\Z??????*M}e??0??k??1.????\r!o??i??(????????z??R??\'????H??4??X??667$F????????\Z????????????????????22L??d??AA??????\0B????Q????????Y??lXDa??????\n??????????	????????j??y??q??%r\Z!\\??????????qE??????{??m)????????bYTc??kSq???????? ????Bd??f??????????????`A??P??.IK??$:	!ATd????\Z4??E????&????p??J	??????V??UE\n????L????\nZ????????0????\\ ??GRU????B*????+??????????peI??????p??%@????\r????\ZTM????N;-????,??*????	L??#??????B??????????????L????a????J(??2ng??#????????????_??/.(]K????Y????C$??[Pbj????j??J??^????H??????-3????ITg0b	\nk??Nc????>??r???????????\Z????????????u\r\n???a??2Z+~??????????Lb????qC??m?1??????0??????????S)??yxfz1-3??9f:1??b\\Y????????????????\Z??G??????S????t?? \rOa??????????????????Fc??X??0hlY??????????????-??????0????c??b?????????????l????Z-2l=??????AR??R????QUQ????R????H??3c????a????b??IN??%????Q%?????? ??????3????|??i??????????Y??????p:????????2??????????????I(??PM????????a#????????\\????vN????xs5??J??C3??J??6????????.????3????I????????P??U\Z??+??????????&a?p??h????r??????n????y;0??F]|??nS\n/??Bn????????????$????\'????*??T(A$????aBT????????,@T*??x??p,V??????[??|Q??\Ze??????????????????????wDv????e????s??_q????????????l,I\'??k????\Z[g????L??E??8????a~L??V????!??????4??uA??\\????????????\'????0????8????????IK%??U??V*Z??\r????4??4&????G,????????`????X??P????.??J??v-????????p/??YC????7??p1??4??\r??d????????*s\nS??`??$T??`??????????????????L2????K??BTTQu??C??????}|HH????D??C}m\Z??5??,??+.????????????????--LR????????N$2????8@', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'bm1n1638429863', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Alexandr Kuznetsov', 'Italy', NULL, '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, 'pending', '2021-12-02 05:24:23', '2021-12-02 05:24:23', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Lazio', '0'),
(26, 38, 'BZh91AY&SY=Ofg\0+????P\0X??;K??????????`=??\0??????10\0??\0??\0??\0L9??&\0\0\0\0??\0	??4????``\0\00B??=M2=&????M\0\0\Z\0??????10\0??\0??\0??\0L\"??????S??J??)????yM??M<????iOQ??z??M??S??????D~ @????>I??t~O????????*2Z??????\".??$c$2??????r}??!????]i????I??M????Q??m(????c????2????.??n9??$??H.????vX??????0??h??3??????????1??,??\r??????I\03????`??????????=??????1??i??????\Z??B??S????gp3??????????????`????b\\@4????pY??L??:C??y??Yp6??<H%??BSAb?? ??m5$F@??????\Z??????????Uf????&S2T ????`????!jW(??????`,????,\"0??qfPBk??L????\\??@??5X????????????\r??BAk??S??????T??????6????fm??1,??1??f??????????FUu\\M??2m3v@??Q??????0 ??????P??.IK??$:??!ATd????\Z4??E????&????p??J	??????V??UE\n????L????\nZ????????0????\\ ??GRU????B*??????!o_p????$??i(CN??\0??\'\n??????????????ah ??M`???? ????2????\n-gj????????(??P??????????????J????????P????u	??[,??$bY??????;Ff4??ZUX????%XY??x????D^??x??????????y??f52??????R????42????????zy??????????.T??????=?????c@??????y??]|????u????-????nUiU??1Z????????????m??????????A????????????O????L??T????{????R??M??????u60??????T??Y??|??G??????S??????;:????`l52??\Z?=H??wK&\r\r?? ??????C??????6E????????	??U+S??d??\\C???X????????w~??????X??????????a??????$g??????dXk??A????RG????????$????=????=??7\'??????????&??????o????????C?????????t6r3v??:I%??	??p??????$}????????????C????????6$0????????c??r??x????`j??????n2 ????J??Zez????$??\'??\Z??Z?S??????pl76??????????????\'{x8?? ??Ht	??????/TD????????U????B	&/\n??,??J????P??]????????Z???&ik??Y??FHi????`s????,l4????????uG?3i????Pjq????????$9??$????l??????-??????FC9??o\"??????a~,??V????!??????4??p ???? ?????g????\'????0??|??????????1)??!J??,4??5????????&????????????6??h(@A	F%????;V??fs??p/??YC????k????c??i\Z\Z????O????(LV!????|??R????3k????L??3????0??C??.A	QQE??$E%>????????????????????o??A??$\r????????????y????9yy????????,????H??\n????????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'Mtwk1638429952', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 05:25:52', '2021-12-02 05:25:52', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(27, 38, 'BZh91AY&SY????\0+????P\0X??;K??????????`=??h??????\0????i????????\0&\0`??L??U4??\0\0L??\0\0&\0??????\0L\0L\0`\0&????\Z#2hh\0\0??\0??????\0L\0L\0`\0&	??????????M????I<????h??T??\'?????T??\nZ.A??B??\r??@????<??????<m??TQ??;????????????;??2s????X????????*????O??1&??5??b??????E??k????A????Auc?? ????????k??????c??????????\'??_??wKL??j??-`T??b(??mL??c????A??q????$eB????y??????g??P;k??-Q????^????rM\0??????f??2????\'a????j[??yKB??T??n7#p41??????5??guY??q??FI??????(1X0 C??\Z????110X4??\0m????1??Y??T??????!0W\"6\rV/7??4$??CD+????Z??T??(????2/v\r??7????|LK*??`Y??-jl3a??[??.&????6???? j(??iq??@A??(P????$????????!ATd????\Z4??E????&????p??J	??????VB????Dy??EE(??`x????H??(;#??P??GRU????B*????????H\\W??D??m!??(AIP??j??A\r\r??*\n??????????@E\"????!????T??&??????????????d????@????k<%]????*??l29{??vs????c!??10(aLE0]????C%T[????T!Q????R)Is??????$??R??2????????K??L@??AMS??????9L??????$??s??{H??????????4*??9\r\n???y??2Z+~??????????Lb????aC??n??????????A??????????O???????F??H??>????E\'\0??f:????????????????\Z????G??????S????v?? \rOy??????????????????Fc??X??0hlY???????????????????????0????c??1\r??H?????????????^??YY????{??????????????????UF??I;??????&E????T????$pa:????C=d??_c??A????3????}ji??????????3????\rp9>G????eS????C7n3????Q??????\rh??G????-{??E??9Q]??f????-??V??>????gk;hv????<u	%Q??2??n????$??\'????/??s]??ggC+o8??:r<5????????7Z??B??e??????sX????*??T(A$????aBT????????Y?? *K??R8+a??????-??>(??\r2??????O??????L??Q????|w??\r??2??A????_??????????Hw??$????k????\Z[??3??????w??q\"??N??a~L??V????!??????4??r ??|As??~??U????????????1??5#D??\nXcE!(??\" ??ICI??BmI????????(Ex%??*??ak\Z\nE??Q??B!z??i3;??????VP??;??????qM#Cec#)??:??\0??????0Z??*P0Fm{W??????????hx????!**(??????????????|????????r$(??????A????XQ|Y??91#??c????A??????w$S??		1@????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'YVHw1638430598', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '123456789', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 05:36:38', '2021-12-02 05:36:38', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0'),
(28, 38, 'BZh91AY&SY????cp\0+????P\0X??;K??????????`=????!(\0h#??b`00\0	??\0??%4DP????\0\0h??\r\0i????????\0&\0`??*LL??a0??????&#	??????b`00\0	??\0??$DM4#&??????l??C mL??h??????	A\"`c4f????   \r(??k??}3????(D&????0????9??@m\'??!A????\Z)K?B4E??????yb????2????}_??????C??W??b??I3????`??]????????????c?????????p??<r/6r+??$\0????9??D\'3??????P??-????7??jHx\n????????w;??????_iuF\Z\r{??????&??i\\??????Lc*C??y??p4+??w??KB??????$ ??hjH??????45a??????(????????????SRT ????pdp????Q[>??l???? pCe??:??#%PBk??L????X??@??5X??????fI\\F??k??1r????%??\n6.??$????4a??B????????j3Q??[H,&????7L????	\Z????????ps??I#????(??L??????cdD????????-??e??????,??`????????V??????x??L????????]P???? ??i??r??IVW]B\n????????????????neI??????p??%@????q46??*??Fm7\04??????????`bM??\r??i??????????\n????????wJ????Rt??\r&????????????6??b3o??7n??????????5??CR??????a4-X??w??7??????7??}??#Tm??????m??D??A????vN??i??9NC????T????=g??zL??????????3*????????>????b??W~??????????Lb??????????????6O??g??|Fb??????????????????????????:??z??T????pn2MoC??T??Y\r$#??b??????iA}C??????????0h??T??#!??,X46,C??o0????A??????f??????eR????????$b????????hV????????6[??????!??????&??????????@????????b\\5??????T)#????????????$????=d=??7????{????M??????O????????C??v????T??i????????t??J#??b??????$}??qi??r]??????!%??????????Ay??I????????????S??j??????n1 ????$??F????????(3???? ????^P????????6ur1??i??^P@0)????????;Z$:\n????	k9	????\"I??^O\n??????P????????	S??l%d\\@T*??h??p,??????Z??[????\Ze??????R|????????#????????6K????S??????????????????\\I\'????+??\Z[#????FsL??E??7??T??????????)R??#!A??iX??A??????,??~k??>O??????1??????n	0i4??\ZC\Z&??????????????????i????.????K??U^????????\"??(????????????????????P??9????7??`??Ff??2????:\0??????/Y????*P/FM~????mF~|????????K??BTTQe??C??O??????!#????HQb7??????3????????????+??????????.??6\r??8]??????N$3??????\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'd2qK1638430670', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 05:37:50', '2021-12-02 05:37:50', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0');
INSERT INTO `orders` (`id`, `user_id`, `cart`, `method`, `shipping`, `pickup_location`, `totalQty`, `pay_amount`, `txnid`, `charge_id`, `order_number`, `payment_status`, `customer_email`, `customer_name`, `customer_country`, `customer_phone`, `customer_address`, `customer_city`, `customer_zip`, `shipping_name`, `shipping_country`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_city`, `shipping_zip`, `order_note`, `coupon_code`, `coupon_discount`, `status`, `created_at`, `updated_at`, `affilate_user`, `affilate_charge`, `currency_sign`, `currency_value`, `shipping_cost`, `packing_cost`, `tax`, `dp`, `pay_id`, `vendor_shipping_id`, `vendor_packing_id`, `wallet_price`, `shipping_title`, `packing_title`, `customer_state`, `shipping_state`, `weight`) VALUES
(29, 38, 'BZh91AY&SY`??\r??\0+????P\0X??;K??????????`=??\0??\0\0h#??b`00\0	??\0??54\'???S??\0\0\0\0\0\0\09??&\0\0\0\0??\0	??D??12i????2`FL????&\0i????????\0&\0`??Bd??????????zCFI<????i????4????????I\0??$&3@??n +\0????f????????????*2Z??????B.??$#$2??????r~k!??J??(????????z??Z??D_\r??????????o?? ???? ????????RI&p]m\Z????????a??????g??w??????1??-????%x??????G H??????3<??????????????f??\rI??P????igx3????U??????A??z????\r!k??4????l??87??\'B???????? .??\n??B\r??????????\Z??CW\Z??Y????????\\a????e5%B\nV??????r??LL????@\r??a??3??0*??_??d&\n??B????????????2J??4B??	??EOIE??????{??m)????????bYTc??kST3Q??]hL??L????5s4????  ??(@????AR??????HPU2h????????QaD??????????\\$????R??e????????UQB????D??\"bB????j+`)*??*Q????ukP????????z??H[????72??$??C`8P????????j??A\r\r??*\n????????SM??\r!??????1????0??C????ic??5y??3??!`????\Z\r\'t??????????a??????:s????g\Z??1??m\n ??????3s\" I\0??\0d??@4????<*\"B??*??f52??????R????42????????y|????|M??????.T????;??8????????????????????\\3+??????8??f??????r??J??1??????D????>\'??aN??Pv#??>??S????\Z??#????/????????q??u4a??\r??S??l\Z????????\"????J????@\Z??CS,??????S????????X??0hlY??????6=F??Am??`#a??J??????5#X????<=????????1X+c\0????a????R,0W>??????6??????\rv??6\n??$pa:??C=????^Gq$h??????????????hn=g????5????P??????U9??q6;n????????????????f{??>??H????????\0????{P????????LD ????????????????W)??5uP??7v??J??Y??z????I??\'??????:??!??????????\r????????N<N????@????!??T&??KY??\\L??QN????<*2??B??L^%LY????????P??]????????Z?????bZ????????\r2??_????J????L????Q??????9x??N????A????/????????$96$????i??????-??????#!????7??|????M0???C+\nT??e????Ps\ZW8A??\\????????no????G??1????P7????4??i??!??h@??ICI??BmI??dq????]??v\n??????????\"??(??????????????]????VP??9\Z????qM#3Uc#)??????????T??b,????(#c^?????????????#??;R????]qDP??)??^??>??B??!????????H\Z??????3????????B??.\\??????6(`??wrE8P??`??\r??', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'R3SM1638430901', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 05:41:41', '2021-12-02 05:41:41', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(30, 38, 'BZh91AY&SYC???\0+????P\0X??;K??????????`=????!(\0h#??b`00\0	??\0??%4#$Q4??\0\0??i????\0??????\0L\0L\0`\0&	????????????2b0??L\09??&\0\0\0\0??\0	??DD??B2jz??????l??F&????bh??????	A\"`c4f????   \r(??k??}/%`D&????K??zX????qI????P}??????\nY??:??+p????_Je????>????????!??+??????I$????e??k????Si??{1??????A??0????????????I\03????`??????f}??????????f??\rI??S????????g??P:????.????A????K??h????????t??2??87??GB???????? ,??\n??B\r??????????\Z??CV\Z??Y????????Xa????e5%B\nW??????X1??????mcn????????z??\"????????rd&\n??B??????????s2J??4CP??????????n????`????@??4TDW)????????!??f??????Q????????Aa6??????f????????????c??z??$q@??\n2@t??????\"%????P??k??V??Yx??,????????4??????e??!????\'5??\r??\r4T????*??????B??UW??????z??????Q$??Hl\nRT\0??Z????CC`J??????????a????pHi11??i??L&??6$??@????????????????H\0??\Z\r\'t??1NI????i5??????$Fs????!??|??????to????????????Z?? ??hZ??????Ro??k.oF????F??m??????i????6??$??????????r????1??(??c????<????f??????????U??????fWQ??#????????????*????+??\Z??\n??d????~g??a.??(;y??<????15RGY??_??J)7??!????????4>N????????B;??,J????????????4<??\rLs????O22????????Cb??>????\0??????\ZK??l????????U+??????5#??????d????B??]n????????H????XYI??&??????????>F??y??p??j??!P??????B??g????????w`@????<_J????????7r??|????[??y??z??S????#\'v????I(??PM??g??0????y????5??w??K??????K??Hbb!????&v????GR??NA??3????Y????????@??U\Z??V??????\"L??~??xmB??N+????????????????yA\0????.??@?? ah????*`%????,&Z????\'%y<*2????B??LZ%LY??????qP??]????????Z??>??Ik??YoF(i????^s??I????.\Zg????{???????????\\??\Z??E??????=????6????I=????\\??????db3??f??-??????????????????eaJ????q\n??J??6??9e????????????????????\n????????M1??1?? bmI(i0hM??6??????????????U??]q????X%\"????????#??c??zU??\'3\\????H????@??@\\bc<b??@??0X??1??EJ????????y0-????????~9????rJ????,??\"(q)????$x??	\n,F????f`@????^??????v??0Ar????&????C??????)????????????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'XS7P1638431280', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Alexandr Kuznetsov', 'Italy', NULL, '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, 'pending', '2021-12-02 05:48:00', '2021-12-02 05:48:00', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', 'Lazio', '0'),
(31, 38, 'BZh91AY&SYC???\0+????P\0X??;K??????????`=????!(\0h#??b`00\0	??\0??%4#$Q4??\0\0??i????\0??????\0L\0L\0`\0&	????????????2b0??L\09??&\0\0\0\0??\0	??DD??B2jz??????l??F&????bh??????	A\"`c4f????   \r(??k??}/%`D&????K??zX????qI????P}??????\nY??:??+p????_Je????>????????!??+??????I$????e??k????Si??{1??????A??0????????????I\03????`??????f}??????????f??\rI??S????????g??P:????.????A????K??h????????t??2??87??GB???????? ,??\n??B\r??????????\Z??CV\Z??Y????????Xa????e5%B\nW??????X1??????mcn????????z??\"????????rd&\n??B??????????s2J??4CP??????????n????`????@??4TDW)????????!??f??????Q????????Aa6??????f????????????c??z??$q@??\n2@t??????\"%????P??k??V??Yx??,????????4??????e??!????\'5??\r??\r4T????*??????B??UW??????z??????Q$??Hl\nRT\0??Z????CC`J??????????a????pHi11??i??L&??6$??@????????????????H\0??\Z\r\'t??1NI????i5??????$Fs????!??|??????to????????????Z?? ??hZ??????Ro??k.oF????F??m??????i????6??$??????????r????1??(??c????<????f??????????U??????fWQ??#????????????*????+??\Z??\n??d????~g??a.??(;y??<????15RGY??_??J)7??!????????4>N????????B;??,J????????????4<??\rLs????O22????????Cb??>????\0??????\ZK??l????????U+??????5#??????d????B??]n????????H????XYI??&??????????>F??y??p??j??!P??????B??g????????w`@????<_J????????7r??|????[??y??z??S????#\'v????I(??PM??g??0????y????5??w??K??????K??Hbb!????&v????GR??NA??3????Y????????@??U\Z??V??????\"L??~??xmB??N+????????????????yA\0????.??@?? ah????*`%????,&Z????\'%y<*2????B??LZ%LY??????qP??]????????Z??>??Ik??YoF(i????^s??I????.\Zg????{???????????\\??\Z??E??????=????6????I=????\\??????db3??f??-??????????????????eaJ????q\n??J??6??9e????????????????????\n????????M1??1?? bmI(i0hM??6??????????????U??]q????X%\"????????#??c??zU??\'3\\????H????@??@\\bc<b??@??0X??1??EJ????????y0-????????~9????rJ????,??\"(q)????$x??	\n,F????f`@????^??????v??0Ar????&????C??????)????????????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'XS7P1638431280', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', 'Alexandr Kuznetsov', 'Italy', NULL, '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, 'pending', '2021-12-02 05:48:00', '2021-12-02 05:48:00', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, 'Lazio', 'Lazio', '0'),
(32, 38, 'BZh91AY&SY??CQ7\0+????P\0X??;K??????????`=????!??\0\Z??????\0L\0L\0`\0&	ML??i5H???? \0i??A??4\09??&\0\0\0\0??\0	??D??12i????2`FL????&\0i????????\0&\0`??4????????????(????I??OR@$I????????1????\n????????4??????y????0Aq????C~r??Wr??H??\r????????>????????]g????	??M.??Q??e(????cpca??Y\\n=*I$??-??]w\Z??K??????1??????z??????x??^l??W??H??s??<N&g????w??C??\Z????A??!??*<\r!????x????????h5??C??????-r??????1????\r??Q??????q??A-&????????a????\"4??4????????Vt????6bb??MIP??????E????\n??r??[&JjL????$????Z????EA	????2b!`??b??o9??%q\Z!??Y??\'??????????y&????	3=;??9M??k??`\\??]LFj2??i????&????2????f??y????bH*X??????I\n\n????LpJ\rP????????Uzr??h????????????.????h????&E????8????????(??J????????UU??^)z??????Q$??Hl\nRT\0??m@????!????%AT????r0??i????4??????4??&\0??`??m l{M^l????HW??\0|????I??*??Qr??p??????????y??????????64 ??56????s3.??B??.??S:??M????5????lk??J3sm??-??P??l??????:????C????s??SK??#??yG????;??-#2??????`????????:F+5w????????*????+??\Z??\nd??{??????T??X??????????????c??????h??7????3????q??\\?? ????????????\Z??Gx????S????u?? \r??CS??????S??????d??1`??????????0??:??=???????? \"??a??J????0\rFH?????????<<??????????????4??\"J((??ABI??j??????8????????b\\5??????T)#????????????$????=d=??7????{????M??????O????????C??v????T??i????????t??J#??b??????H??<????????????%??BK????$11????????;OO????X?? ????C????bA????I*??g????dPg??&A?p??6??\'??l????cv??p??????`S??????v0??Ht	????r-TD????????Uz??B	&-\n??,??J????????U.??H??X-Fs$????,????4??T/9????????\r3??0F\r??????l8??%??}????;??C??aq$????L??Til??21??3y????uR??C??`b2????HF8????A??c??b????????????>??|????_P??p??I??I????????16??\r????4??4&????LNYp??Wr]????????\\f(@A	F????v-d????????^??r????????)??????35P1??????????(Lz??|??R??z2k????????g????????????%EE\\??8????????>gB????-??5}??g??q]??????\\??u	??lP??????.????p??!??????n', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'sFnc1638431373', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 05:49:33', '2021-12-02 05:49:33', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(33, 38, 'BZh91AY&SYo????\0+????P\0X??;K??????????`=????!??\0\Z??????\0L\0L\0`\0&	M????\0\0??A??\0??b`00\0	??\0??$J??&??L#&d??????a0\0??????\0L\0L\0`\0&	@M??????????J=????Rz??S??$D??H??????????J9??????;??D??	????1?????? s??D??}\"|HiR????3??f??????V(??_????XV??????????dWR??I3????p??m????????????c???Q????????????????$\0????:DG33????????\Z????A??!??*<M!????x????????????4\Z??!??rM\0????AsN????T??????hW???? ??????ARHA????????\ZC\Zhj??[??:QU????11L??????AA????????v??6}\Z-??m??????\Z????Q??YT????	????+????zL??e??\Z??v`??????n????`????@??4TDW??-????\"????????FUo ????Bd??3f@??Q??????/ ??????P??,IK??!AV6DK	????P??k??V??Yx??,????????4??????e??!????\'5??\r??\r4T????*??????B??UW??y$.+????I6???? ??????Z????CC`J??????????a????pHi11??i??L&??6$??@????????????????H\0????????U????$????\ZMip??$Fs????!??|??????to????????????Z?? ??hZ??????Ro??k.oF????F??m??????i????6??$????nC??q??G)??(??c??{O8??????????????fUvr,??????b??W~??????????Lb??????????????7O??g??|??b??,??d??>????????6??????????8%????\r??????????\r??S??d5??????????????v?? \r??y??????`????????FC??X??hlX??????`????Cyv????y0????q??????$b??????O/D*U????N????$????e??????X??h\Z?????? G????q1.\Z??Pd*????|??BX????Yy??????????S>4??&??????o??k????????;??t??u4????????u??J#??b??????H????\"??????x??k??????[????????B??rL??=~????b????????????ITk<m[\"??<??2	????????9????gf??7o8??6??zt????????6Z??B??e??????rW??????*??T(A$????aBT????????Y\n????)??????d????.(??\r2????????>??????L??????|t????e??A????_????????????????\\I\'????+??\Z[??#????FtL??E??8????????X????)R??#!A??iX??A????????{}u{?}??_P??p??I??I????????16??\r????4??4&??????M??????????U??.????P????,??\n????Z????????????j??????Sy??	??fj??c .11??qS??P\n??,??????EJ??????z??`[Q????B??s;????!**(????C??O??????!#??r$(??????A????W??|FxW????\\??????P????.????H??\nm???? ', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'F1mp1638431673', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 05:54:33', '2021-12-02 05:54:33', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(34, 38, 'BZh91AY&SY??4??^\0+????P\0X??;K??????????`=????!??\0\Z??????\0L\0L\0`\0&	M??5M??\0\0#A??4\09??&\0\0\0\0??\0	??D??12i????2`FL????&\0i????????\0&\0`??\0????????CF(????S4??4??$D??H??????????J9??????L\\??K????\"????????s??D??}b{@n??e,??H??cu??????c??e??k>k??????!??U??????I$??Aj??k????Saw??zc?????????o??,1.4??W??H????r??<??G????w??5????RC????T??ggp3????5????Ta????????????\r!k??4????cHpn:\r??e{????	h@Z??\n??B\r??I??41??????\Z??????Y??h????jJ??????????????d??`m2$6??????2??,A)????2q????j????n??2$??#C??????i??????e??????	3EDEr??.????????,??????eV??D??&????YQG4#??rH??(????\\????;9f6DK	????????Xx????????4????????{PY????????,??7??Xk??L4??9R??????U??P??z????r??H[????6????$??C`8P??????????\r????\ZTM??#??????\ZCI????cMa0??	??&??????????????T??r@????g;eZ??6-\'??????V????D^??kb3j??hA??j????3oxk!f??,??????f??????I????7sTkE????m9i??|&??\\??q????????????yJ*Z~????????=FA??ql|??????????????]G??s??J????6????????????5>&??????>C0W??s??s????~????&????#z??KA??7??????8??????:V#_??????*{????????d????\\fja??4}??z????J??\r\r??\0??????????????fl,??H????eR????????$b??????????????T??????????\Z????????????	&????????????3Cq??`??b??P??????2??g????????v??^@????x>u2??L??l????????????????????J??3>&.????3????Q????KC#??0????u??>K????<????	.wP????B??bL??=^????iN!??3????I????????0??U\Z??kj(3????????\\????????6tq0??a??^p@0)??y????u0??$9??????????????e??DI8??????Q??W* ??b??P??09f????K\n??R????z??a??1K^\"??r0CL????q????\'??_`??>????????9|????A????_????????????????XI\'????\ZZ\'??????????r7????????)R??!A??iZo ??dAi????E??????????1??????n	0i4??\ZC\Z&??????????????????a??????????K??U]????\nE??(????????????????????????P??9\Z??7????FF??2??	??9??\0??z??.Y??*P.F-{W????F~??????????K??BTTQj????????????|7????o$(??????A??yWQ{??xW????\\??????P????.????H??\n????+??', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'yDPk1638432758', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:12:38', '2021-12-02 06:12:38', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(35, 38, 'BZh91AY&SY??????\n\0+????P\0X??;K??????????`=????!??\0\Z??????\0L\0L\0`\0&	M??5M??\0\0#A??4\09??&\0\0\0\0??\0	??D??12i????2`FL????&\0i????????\0&\0`??4????????????H????3I??OR@$I????????1????\n????????4??????y??????$????M??!??q??Z:D@m\'??!A??????R??????????V7^??,V8f[6??????mB??????tRI&pYl\Z??????????_??????g??????}g??E????Ey$????G0H??????fx????????????f??\rI??P????igx3??P:????.????A??b????\r!k??4????eHpo:????{????	h@Y4$??\r\rI??41??????5??????Y????????jJ??????????????&L6?? pCa??????????!5??&B`??D l\Z??Zm??3$??#C??????i??????e??????	3EDEr??.????????.????????eV??	??&M??6d\rED????89??I#????,Qr??@????????,&8.??KbYa??????0??#\"??????Af??v??????d<<????a????A0??@??J:??????????,U{????B??????????I&????????\0???P6??hl	PU68??:??n\0i\r&&1??4	????\"&????H??W??#=R??\01????wJ????????W????9[????{?????????????????????????????????? ????????????&????????Q??Flm??????i??D??Ar??w??c??r??g9??(??c??zO??????}??????fUup,????~????b??W{????U??V????u??QC??l??????q??A????????????????>????lq4??9??bZ\r????????nA????????????\Z??HGx????S????u?? \ray??????`????????FC??X??hlX??????`WcCiv????y0????q??0\rFH?????????<<????Wg??9l5??s$Mc\rGA>F??y??p??j??!P??????B??g????????????`@????<_J????????7r??}~??[??????z??S????#\'v????I(??@M??g??a#??????Nk????<W??	.??????????B??RL??<??n??b????Pg]??q??n??$??5??6????A??$????????????W1??????????M????????N\\.????@????!??T&??KY??XL??QNJ??xTeU????$????(J????a+\"????T??E#??`??~????????????P??-P??????????X\\4??y??0??m??#a????(58?????????w????$????er??K`dy????i??????f????????{????*B1??d(:\r+ ??X????????wG????#??b????(??BL\ZM4?????????????? m$????????6????br????\"??????W??????1B??J0(D/??k&G>????????<Nf??M??&??????????????????x??N??@*`????c??????????^???????????Ne????v????!**(??????????????|w??????8X????h ??????????????<+????t.`????????M??b??qw$S??	?{????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'HIGo1638432847', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:14:07', '2021-12-02 06:14:07', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(36, 38, 'BZh91AY&SY]??????\0+????P\0X??;K??????????`=??\0r\04??9??&\0\0\0\0??\0	??SBzS??=P\0\0\0\0\0\0??b`00\0	??\0??\"J??h\0M4????????\Z??b`00\0	??\0??$D??524jbS5=??O)????y????)??=OR??)??\nh??3????=??\r??@????<S1????8??r??FK^C????E??d????d??t>??.O??d5??WE\Zy??\"oS[V(????}(????c+????3????.??p;????I??[??????@lt????x??3????S??ue??{????\n??$????#??	y????3??x#??????A??!??*<Ma????x??????????=??x??K??h????????t??7RN??????_????ZMI!??SbDj\ri??????o????EVo.4??3L??????AA??????\0??<eR????FF??0??b??F2????????!5??&B`??D l\Z??^o??hI\\????W! ??????+????T??????6????fo??2,??1??f????????????Ut\\M??2m3v@??Q??????0A????B\\??\n??,HtB????????D4if2??O7??<W`????????????p??????K??????D????-z??V??0????\\ ??GRU????BJ??????!q_`????$??i\r????B\nJ??????q46??*??H????????E??B1????bM??\r????????????d??????????k<%]??????O\r??xD)??????8??0??A??ShP@)6??G??!????H??&8??????????Q??T??2????t??R????C9,H@??g??????????|OQr?????????1??\Z????????U??????hWa??????h??????????J??1????????y??~??=????an??Pv????>#??????)#????????????????u5a??\rO??S??n\Z??????2????Z???? \rOa??Sc=????S????????Y??hlY??????d6???????[~????0????c??d???????????FO/D;????????K\n??X??????v??mH????s??H??#y??????????A??T)#????	f3??$????=D=??87??SN4??&??????????k????????=\'????N??^f??n3??I(????&????C??0????w^????x????$W????u ??)??%????-??@??t5??T:??d??BITkL??[?????$????????B??N????6t??3??A??_?? ????????;^$;??Bn????????????$??X\'??FUaP????????	S??o%n,@T*????R8Ka????????????????3CL??Co??\'??ea??~??H????????F??????Plu?????????x??????$??????????Kxn=??gjg/????????!????????????!??2??J??\":\"????z????|????<????^??F??*??\"??0??B QDB4??????????????????????\"????W??????\"??(??????\'b??M??oc??~????gi????????I??hl??c ,fg=qS??(L??A????????????????~X??g????1??????.a	QQE??4E????Q????!#??r$(????h ????????Q{F[??8o#??????(??\r@????????\"??(H.??h????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'GKzN1638433081', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:18:01', '2021-12-02 06:18:01', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(37, 38, 'BZh91AY&SY????c\0+????P\0X??;K??????????`=??\0????????9??&\0\0\0\0??\0	??Q2hMP=@\0\0@??\0??b`00\0	??\0??$J??&??L#&d??????a0\0??????\0L\0L\0`\0&	????????????0d????l??????3Jz??S??I\0??$&3@??n +\0????f????????????*2Z????????u??!??P??L???????R????4??f$??????V(????????X??????????\\dV7????I??[F??,@ju~G??c??n??>??t??3o\"????@??#??$A??q4<??????u??b??j3y????????T??6C????*e}????\n??????????\r!k??i??(????????u??\\\r????	h@`??\n??B\r????RDl??4??????????v??U??dd??MIP??????\0??<1??\\??????L ????????????A	??????	????????j??y??q??%r\Z!\\??????????????yS\"??`??Sy????????????????\"??????5U??Aq6??????????QG3K????????B????$.X????$??Q??&??h????eO??????L(&^n??[??U*^??M2&$)k??????\0??????p????IWV??X??????/4????~s(??M??6??)*\0V??m??????????lp9v4??\0??\ZLLc\Zh	??D0M??6??6>??W??#MR	\0Q????;??]Ey??s>????\\f??????(??x??qB??^%r??????&??????P??F[P??JTr??????E??^??)i??`??GzJ??9??0HS\\????s??&????p*\\??\0??i????@??????y\Z]|????u????-??vnUiU??1Z????????????6????g???? ??a??F??????<????fz1-3??9??:1??b\\Y????????}\n????1????B<F,????-????????6a??????????????Fc??X??0hlY??????v?ca??[n??????eR????1\rFH?????????????-????/d??@????T??T????TUTa+T????a??F??y??a????b??IN????g????????????b@??????<??J??o??????r??}??[??????{??S??????????????I(??`M????????a#??????k????=??	.????????BrL??=??Z??NA??3????a????????`I*??i????tPg??&a?????:??????????6u??2??Q??^??@0)????????;H^$:\n????	kI??????\"I??`O\n??????P????????	S??m%fX????U.??H??X??F??4????,????$4????09??r{??6\Zg??b??~}Q??????q,??\Z??E??????<	m????$????3????Khfz??????i??????????????B??!????*B2??d(:\r+?? ????.r????????G????#??????P7????4??i??!??h@??ICI??BmI??dr????\"??????W??????\"??(????????????????\\????????s5??p1??4??\rTd????????T????+??h>H??@??????^????3??s0??C??.A	QQE??$E%>????????????????????o??A??$\raE????\\Wk??s.]Bl0p??????\"??(HU???????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'KyIY1638433136', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', 'Lesnyaya, moscow', 'Ho Chi Minh City', '2508', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:18:56', '2021-12-02 06:18:56', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'russia', NULL, '0'),
(38, 38, 'BZh91AY&SY????c\0+????P\0X??;K??????????`=??\0????????9??&\0\0\0\0??\0	??Q2hMP=@\0\0@??\0??b`00\0	??\0??$J??&??L#&d??????a0\0??????\0L\0L\0`\0&	????????????0d????l??????3Jz??S??I\0??$&3@??n +\0????f????????????*2Z????????u??!??P??L???????R????4??f$??????V(????????X??????????\\dV7????I??[F??,@ju~G??c??n??>??t??3o\"????@??#??$A??q4<??????u??b??j3y????????T??6C????*e}????\n??????????\r!k??i??(????????u??\\\r????	h@`??\n??B\r????RDl??4??????????v??U??dd??MIP??????\0??<1??\\??????L ????????????A	??????	????????j??y??q??%r\Z!\\??????????????yS\"??`??Sy????????????????\"??????5U??Aq6??????????QG3K????????B????$.X????$??Q??&??h????eO??????L(&^n??[??U*^??M2&$)k??????\0??????p????IWV??X??????/4????~s(??M??6??)*\0V??m??????????lp9v4??\0??\ZLLc\Zh	??D0M??6??6>??W??#MR	\0Q????;??]Ey??s>????\\f??????(??x??qB??^%r??????&??????P??F[P??JTr??????E??^??)i??`??GzJ??9??0HS\\????s??&????p*\\??\0??i????@??????y\Z]|????u????-??vnUiU??1Z????????????6????g???? ??a??F??????<????fz1-3??9??:1??b\\Y????????}\n????1????B<F,????-????????6a??????????????Fc??X??0hlY??????v?ca??[n??????eR????1\rFH?????????????-????/d??@????T??T????TUTa+T????a??F??y??a????b??IN????g????????????b@??????<??J??o??????r??}??[??????{??S??????????????I(??`M????????a#??????k????=??	.????????BrL??=??Z??NA??3????a????????`I*??i????tPg??&a?????:??????????6u??2??Q??^??@0)????????;H^$:\n????	kI??????\"I??`O\n??????P????????	S??m%fX????U.??H??X??F??4????,????$4????09??r{??6\Zg??b??~}Q??????q,??\Z??E??????<	m????$????3????Khfz??????i??????????????B??!????*B2??d(:\r+?? ????.r????????G????#??????P7????4??i??!??h@??ICI??BmI??dr????\"??????W??????\"??(????????????????\\????????s5??p1??4??\rTd????????T????+??h>H??@??????^????3??s0??C??.A	QQE??$E%>????????????????????o??A??$\raE????\\Wk??s.]Bl0p??????\"??(HU???????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'KyIY1638433136', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', 'Lesnyaya, moscow', 'Ho Chi Minh City', '2508', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:18:56', '2021-12-02 06:18:56', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, NULL, NULL, 'russia', NULL, '0'),
(39, 38, 'BZh91AY&SYnG????\0*????P\0X???[??????????`=??\0j??	??4??&C\00L\0\0??d??i????z??=@4????????\0??\0??0\0\0??B??P????????????\0=@\Z????\0??\0??0\0\0\"????A2?MB=F??Q??yM\0????S??????D}???? ``??7~????Prb??????Q\r/\"TY??#8??????????????R????5??l????????j??|mJ-+X??????f?? ??????????$??X.??\Z??b????????????^^????t??;??w????I\03??G??$A??;MO????????`??-??gp TC????e??????@??????a\Z??K??4H[????:i??88??????a??oC??A9 \0??4 ??h.T??	??hcM\r\\k??g??\r????\"??2e2??q*Pe??!??????????????{??	??+??_??`??M}??????&??6\rR-6??\Z??????\Z!\\????b??????(??Z??J??????????U0*??????(?? ????Bd??f??H$jj??k??f??~\n2????T??bC??$(*??????!??[1??X??x????????????(&^n??[??U*^??M3!K^????)*??*Q????ukP????????????$.K??92??$??(CN??\0??Nf%????SE????????5??JKDL??????\Z??(??\r??z3{}GZ????????%W??73C#??????????????????-,(YKD??U????C$??Z??bj????Z??J??Z????H??X??*??????R????P3????	??h??1=\rCt????L????}??%??????%??X??f??<????!????o??r??????????U??V????k??C??p??a????a\"????I\'Y??g????dbZ??:c1??????????????????S????5??????S?? Z??>;PG_????8q??????????h??????F????-??hlY????\Zh??}??????m????????V?????p#p}??=|a????????4XV(2??????2h??dm????9Z??#>\'??????_j??p??RG\'??	dg?????????? ??????3??y~????????????x????????\rr:??u??????????E??0????:@??(E????=]??????TW??????Ha1\rg*??|??????W)????(t9 ??o	%Q??sz????$????.????l????i^{A\0????wC??yo????1P??-o??????z??$??V	??Q??XT(A$????aBT??????	Z?? *K??)E??a??7%????[????4????0x??	??ZXi??????4????????????T??????/????????@w??>????????????Z[??23??3??????vS??!????22????HFr2cJ??R9D;??}????~??????D>LG\n??????Y??????i??\\??	\ZtL????v??5u????u<e??j(@A	F??????????\'??k??{????=l??\r4M#q????????????3??*y\0??????0??r*P0????z/????????K??!**(????Dv????o3??%#??????#}??????7^??????;??b<????????????P?????w$S??	????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, '51fq1638434223', 'Pending', 'Alexandr_1227@outlook.com', 'Alexandr Kuznetsov', 'Italy', '123312312', 'Viale Gianluigi Bonelli, Rome, Metropolitan City of Rome, Italy', 'Roma', '00175', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:37:03', '2021-12-02 06:37:03', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Lazio', NULL, '0'),
(40, 38, 'BZh91AY&SY????\0+????P\0X??;K??????????`=??@\\J(??\n??????\0L\0L\0`\0&	D????5@??\0\0\0\r@\0i????????\0&\0`??*????21&????\0\r\0i????????\0&\0`??@M	=\Z????T??M????jl????\nz??S??K\0????R??t??!??????\n\n??>???s????????-y??F????????????????|??\\??j??kR????4????oS[V(????????X??????????\\dV8\" ??-F??,@n60????Q??g????????????]????-????X\0????????J3??E??9????/b??l3??????????Tk????X??g??P??&????^??\r??W??$??\r!m??i??(????????v??J????D??????h*I7\Z??#PhcM\r\\kugZ*??qq??FI??????(1X0 C??\Z????110X4??\0m????1??Y??T??????????+??????????W!????H-z*J??8??2/v\r??7????????K*??`Y??-jl3a??[??.&????6???? j(??iq??@A??(@????AR????\r????????2d??\r\ZY??????????{????I??????????????p??????K??????D????-z??V??RU.T????*??????U_??H\\W??82??$??C`8P????????j??A\r\r??*\n??????@??(??X0??#`X??J????m l{????????6HX$\0|????Y??*??+????????????????????4F??aDK??????R??+??v-??5??????*2??????R????????/B??!KL????;??U??????B??????C????4O????R????{OH??????????hUvr.\Z??~????d??V??Y??U??V????k???????????A??????0????I\Z??C??????}????????????????????!??qff??qS??T??,????????1dT????A????????0562??\Z>??=h??wK&\r\r?? ????CC??????57??????0&T??|??Ca??1v????~??????bKE????????*??8??*(??UJ??(eg??????dXk??A????RG??	d3??Iu??=????=??8\'??????i??M??????O??????C??x??U:????3v??:??%??	??p??????>????k??s^AG????????aH0JB????a??c????????p????3??C??p2 ????$??F????????(3????0????`????????t;9??[y??^??@0)????????w0??Hu	??????/TD????????UU????B	&/\n??,??J????P??^??????[?im??Y??FHi????`t??$????l4????????7??O3q??Y(6;E??????<I??????$??\rs????Kpfz??????????H????????B??!????*B2??d(:??+???? ??\\????????n??????G??1??jF??*??\"??0??B QDA??????????????y????>P????K??U^????4  ????????B??;????ft??p/??YC????m????c??i\Z(??OlT????+??h>h??@????????F????:e??????0????????????\"??iO????x??????9Y\r????hb@??\\??,????????1???????? ??	O??????)??????.????`', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'f8MK1638434300', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'THis is my shipping', NULL, NULL, 'pending', '2021-12-02 06:38:20', '2021-12-02 06:38:20', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0'),
(41, 38, 'BZh91AY&SY??jOK\0+????P\0X??;K??????????`=??\0??????)????i????????\0&\0`??M\ZT??OPdh\0\rP4\0\0??????\0L\0L\0`\0&	????????????2b0??L\09??&\0\0\0\0??\0	??DA524jf????z\Z??zL????c????	A\"`c4f????   \r(??k??~??X??B??%??!????????wY ??!??????????Y\rjU??F??l????????????\"??n??5??c??W????????I$??Au??k??????A????=????????????q??,??\r??????I\03??????H??????4<??????:F1n6????bC??T*x????????*U~%??0??k??????\r!m??i??(????????t??MJ??$??????h*I7\Z??#PhcM\r\\kugZ*??qq??FI??????(1X0 C??\Z????110X#4??\06????F??,????M????L????\r??U????????	+????S??)??????????E??????????3????eQ??4E??M??l2????????m	??i????jJ\rR??f????????\n e?? ??r????A$(*????4CFVc(????xD????????``??A2??wj??*????R????i??1!K^??????K??(??J??????B??UW????????\r????I6???? ??????\Z????CC`J??????????a????pHi11??i??L&??6$??@????\r??????6HX$\0}??Y??*j,dJ&7d??Z??????fw????(??g??aB??Y??b??b??????Qk1??(:??-fA??	????kW??i??????VE??F????\Z%??8??M????????5O????R????{??H??\Z??????????????\\4+????Nq????[??f??V??Zc??\n????~??>G??a????HL????A??\\cF!??gNyF/??#??\05>eN????????B<,????-h#????\0jx??\Z??h\r??OR3????????Cb??>g\0????????5:n????V>??!??????????~??????j5????h??(??DQ??\nU\n\n????%(??43????p2,5??????T)#??	????????$????=????=??7??\'??????)??M??u??o????????C??;??|??s5??f????s??J#??r??????H??;????j????E??BK??$11??????;??g????\\?? ????C????dA????I*??i????tPg??&a???`_??????F????FV??7????9q;??????b??7Z??B??e??????sX????*??T(A$????aBT????????Y?? *K??R8+a????f????????d????z??o??\'??ca??~F(??\Z??????i??D??????\'????&S??`????0??s??Q????3=H??gjg/????????????????eaJ??????\ncJ??:\"??????z??????y????\n????????M1??1?? bmI(i0hM??:??Y????Wz]????????????\\%??\"????????3????????????Gi??s????)??hl??c ,de=qS??P\n????C????\"??f????z0/??????????-????%EE\\??:??}????????????????????o??????C????????\\Wk??s.]Bl0p??????\"??(Ht5\'????', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'f9Mf1638434385', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:39:45', '2021-12-02 06:39:45', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0'),
(42, 38, 'BZh91AY&SY???? \0*????P\0X???[??????????`=??\0??????$#????\0??\0??0\0\0????I??&????h\r\0????\0\0`Ld0\0??\0\0B??\n=CF@d??\ZzCC@\0??\0h`Ld0\0??\0\0H??#SM??4$6P4\0??A??\Zd??\nj:A??>G????????Nsw????2??r??FK^????????E??d????2C?????\'????jU??F????3&??6????D_-iE??k????\\dV8*I$????F??X????o2??????o??9????6\Z??????I\03??G@H????u??????<??????Z??M????@??GCl1??y??????????4??Rh????????t??1Hpo8??B????????p@??hA????\\??557# hcM\r\\kugu\r????\"??0a2??I*Pe??????:c2????c\Zf????@m??????rd,????????????	??m`??b??n??????????\n?? ????_*????$????k0m*Zfj????T????DR??Z????????m	??Y??o ????????????????@A????(@????AR????\r????????62h????,??QeD??????????\\??????R??e????????UQB????D??2????Q[ aIT??AR????????Z??,??U}k??????/@????$??)@X??\Zt8??p??0??(\r\Z??,-????RXb\"d4`&@??????E??o??????????:??\0??Hck??&????D??dvH??????|Fgz????\n\"Y??XP????xX??X????$??ZLbJ????I??xBq-JQ??Ze??:????Z????tn??????8??e=??????????9??H????.??????????X??d??<????\"??nF????[??gV??Zc????????}r???\n???? e:????????*dF!??r??\"??^??F??@??{\n??????????????y??????????????9????????L????A????S??6??fa??Cb??~\' ??0??c??6????k??dL2??X????p????????????????;????????k%b??,dd????????a??????,af~????????F\r|??\r????IN??????\"K??C????2????????????i????Bm??????????2&st??d??c??e{??)????\"??\04????#A??????=]??????TW??????Ha1\rg*??????????S??79P??p0A????$??F??????tPg????`O??2\r??\\??p????????????????????N??G????????2??P??????????d&^????\'E??<??2??%B??L^%LY??????b??T??E#??f????>&????????gR0????z??GO??=??;\r3??3F??????????U(59????????? ;[\n??D??Y??y????ZZ??r03??g-????????C??``eaJ????`d(<????dp??.v????????????????>a??1+#	fbR$!??B??rX$i??p3????????j??????{??X??P????.??????k??????VP??;??q9????F??Uc\'??T??\nS5??d??b*P2F????k??????????gq??4<??J????.??d????????????H????????U????????\r??\'^??????;??b<????????????P?????w$S??	\0*8??\0', 'Cash On Delivery', 'shipto', 'Azampur', '1', 152.5, NULL, NULL, 'zAba1638434602', 'Pending', 'Alexandr_1227@outlook.com', 'Ford', 'Vietnam', '0333333333', '170 harmony', 'Ho Chi Minh City', '70000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pending', '2021-12-02 06:43:22', '2021-12-02 06:43:22', NULL, NULL, '$', 1, 0, 0, 0, 0, NULL, 0, 0, 0, 'Free Shipping', 'Default Packaging', 'Ho Chi Minh City', NULL, '0');

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
(134, 'OO42939gas', 'normal', NULL, 13, 4, NULL, NULL, NULL, 'Elite 24\'\' ELITE HD LED TV DN600D', 'elite-24-elite-hd-led-tv-dn600d-oo42939gas', '1570072567FiBwycha.png', '1570072567Cqr5iSzD.jpg', NULL, NULL, NULL, NULL, NULL, 300, 400, '<span style=\"color: rgb(0, 0, 0); font-family: Roboto, -apple-system, BlinkMacSystemFont, \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" sans-serif;\"=\"\"><font size=\"3\">TVs always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It???s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn???t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 992, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\"><font size=\"3\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</font></span><br>', 1, 36, 'tv,television', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=MIJBxqzazeM', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-25 00:33:22', '2019-10-12 06:20:27', 0, NULL, NULL, NULL, 1, 0, '0'),
(135, '3uZ9903ofs', 'normal', NULL, 13, 4, NULL, NULL, NULL, '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-3uz9903ofs', '1570072554QTCZrnNj.png', '1570072555mZv9XiNP.jpg', NULL, NULL, NULL, NULL, NULL, 300, 500, '<span style=\"color: rgb(0, 0, 0); font-family: calibri, sans-serif;\"><font size=\"4\">NAPCO TV always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It???s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn???t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 396, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>', 1, 80, 'lcd,tv,led', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-09-29 23:08:12', '2019-10-12 05:43:18', 0, NULL, NULL, NULL, 1, 0, '0'),
(144, 'vrX2915O5c', 'normal', NULL, 13, 4, NULL, NULL, NULL, '32 \'\'NAPCO D/GLASS ULTRA SLIM HD lED TV ES700E', '32-napco-dglass-ultra-slim-hd-led-tv-es700e-vrx2915o5c', '1570072918cZGfHP4L.jpg', '1570072918kGfglIIV.jpg', NULL, NULL, NULL, NULL, NULL, 300, 500, '<span style=\"color: rgb(0, 0, 0); font-family: calibri, sans-serif;\"><font size=\"4\">NAPCO TV always get the final say where the couch goes. We want to shake things up and give you the freedom to decorate the way you want to, not the way you have to. It???s fun, playful and unique, and it goes anywhere. It fits your lifestyle, not the other way around. Its smooth, clean design blends in anywhere, yet the playful color doesn???t get buried. Now, you have the freedom to tailor your TV to your own lifestyle. Finally, a TV that fits you. No messy wires. No unsightly air vents. Just one cord for a smooth back that looks great anywhere. This power consumption system will get 90% saving your electrical power.</font></span><br>', 396, '<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>', 1, 21, 'lcd,tv,led', NULL, NULL, 0, NULL, 0, NULL, NULL, 'https://www.youtube.com/watch?v=LIqQNG_q2us', 'Physical', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-02 21:21:58', '2019-10-07 23:20:46', 0, NULL, NULL, NULL, 0, 135, '0'),
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
(148, 17, 'Home D??cor', 'Home-D??cor', 1),
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
(243, 23, 'Kids??? Arts & Crafts', 'Kids???-Arts-&-Crafts', 1),
(244, 23, 'Kids??? Kitchens', 'Kids???-Kitchens', 1),
(245, 23, 'Kids??? Outdoor Toys & Play', 'Kids???-Outdoor-Toys-&-Play', 1),
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
