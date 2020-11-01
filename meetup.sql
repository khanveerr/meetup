-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 10:36 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meetup`
--

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
(3, '2020_10_31_183037_create_participants_table', 2),
(4, '2020_10_31_185215_adds_api_token_to_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profession` enum('Employed','Student') COLLATE utf8mb4_unicode_ci NOT NULL,
  `locality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_guests` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `name`, `age`, `dob`, `profession`, `locality`, `no_of_guests`, `address`, `created_at`, `updated_at`) VALUES
(3, 'Liam Paucek', 69, '2020-10-31', 'Employed', 'Hudsonburgh', 1, '27455 Collins Harbor Suite 324\nMarquardtview, CO 60740', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(4, 'Mr. Russell Swaniawski', 42, '2020-10-31', 'Employed', 'Davistown', 0, '20292 Ethyl Throughway Apt. 028\nSouth Rita, MD 50473-4891', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(5, 'Kari Von III', 41, '2020-10-31', 'Student', 'Abnerville', 2, '8870 Hahn Overpass Suite 936\nPort Grady, IL 55787-4406', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(6, 'Eveline Hills', 48, '2020-10-31', 'Employed', 'East Akeem', 0, '85236 Corwin Coves Suite 164\nNorth Jany, DE 76354-3590', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(7, 'Avis Erdman', 29, '2020-10-31', 'Employed', 'Guadalupefurt', 2, '1063 Felix River Apt. 875\nJordynton, AR 36539', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(8, 'Eda Shields', 69, '2020-10-31', 'Student', 'West Jazmyne', 0, '29705 Berge Avenue Apt. 460\nPort Nathanielhaven, TN 40739-2359', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(9, 'Dr. Edna Maggio Sr.', 89, '2020-10-31', 'Employed', 'Smithamberg', 1, '1525 Blick Walks\nLeslyside, WI 70274', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(10, 'Christiana Daugherty', 29, '2020-10-31', 'Employed', 'Metzhaven', 1, '16795 Moses Points\nSouth Alyciaton, ND 34639-2794', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(11, 'Dejuan Auer', 60, '2020-10-31', 'Employed', 'Terryborough', 0, '78506 Rutherford Extensions\nPort Juleschester, LA 02492-3708', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(12, 'Wilmer Reichel Jr.', 51, '2020-10-31', 'Employed', 'Ritchieside', 1, '362 Kiera Drive Apt. 170\nAdolphhaven, IL 52203-3868', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(13, 'Miss Arielle Mante', 51, '2020-10-31', 'Student', 'Jerrybury', 2, '662 Dickens Views\nNew Lisandrochester, NV 46691', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(14, 'Dr. Marvin Lang DVM', 84, '2020-10-31', 'Employed', 'North Jesse', 1, '75487 Onie Fall\nEast Jalyn, FL 69275', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(15, 'Dr. Albert King', 27, '2020-10-31', 'Employed', 'East Damien', 0, '60396 Wilson Greens\nLehnerland, NE 39905', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(16, 'Reagan Marquardt', 31, '2020-10-31', 'Employed', 'Lake Hortense', 1, '23762 Rhianna Cove Apt. 101\nWest Haileechester, TN 56373', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(17, 'Name Bogisich DVM', 82, '2020-10-31', 'Student', 'West Elvera', 0, '40934 Jennyfer Point\nStammhaven, RI 90888', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(18, 'Tremaine Green', 70, '2020-10-31', 'Student', 'South Ulises', 1, '1606 King Square\nWest Kyler, WI 16074', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(19, 'Mr. Devonte Turner DDS', 29, '2020-10-31', 'Student', 'Jamiltown', 0, '879 Dare Rest\nWest Josie, CO 31087-9760', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(20, 'Dr. Helena Boyer', 92, '2020-10-31', 'Student', 'Greenholttown', 1, '8884 Bret Oval\nHeathcoteport, CO 94435', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(21, 'Harmony Volkman', 58, '2020-10-31', 'Student', 'Joesphtown', 2, '80907 Eliezer Dale Apt. 707\nNew Fannyfort, LA 46590', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(22, 'Susanna Kuhic', 42, '2020-10-31', 'Employed', 'South Darryl', 0, '22363 Hauck Ford Suite 567\nPacochafort, WA 36800', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(23, 'Mae Dare I', 61, '2020-10-31', 'Student', 'South Carmenton', 1, '9229 Lela Fords Suite 051\nSchummburgh, TN 57810', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(24, 'Prof. Elva Shields', 54, '2020-10-31', 'Employed', 'Boylefort', 1, '748 Fadel Mission Apt. 126\nLake Auroreberg, TX 99221-1319', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(25, 'Shanny Barton', 15, '2020-10-31', 'Student', 'Rafaelashire', 1, '794 Kling Groves\nWest Noemie, UT 15474-5777', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(26, 'Jessika Waelchi', 16, '2020-10-31', 'Student', 'South Jackelineville', 1, '4988 Marley Haven\nPort Eldon, ID 61947', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(27, 'Esperanza Von', 38, '2020-10-31', 'Student', 'South Amya', 2, '83115 Mante Route Apt. 289\nLake Tony, FL 01438-9587', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(28, 'Kyra Herman', 52, '2020-10-31', 'Student', 'Port Allene', 2, '39841 Carter Camp Suite 653\nBartonside, DE 51080', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(29, 'Prof. Earl Runte DVM', 13, '2020-10-31', 'Employed', 'Bashirianhaven', 1, '236 Talon Pines Apt. 814\nKozeyfurt, ND 23502', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(30, 'Porter Farrell', 17, '2020-10-31', 'Student', 'Port Harold', 2, '1335 Arnulfo Extension\nNew Willard, NV 18705', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(31, 'Mr. Oral Cruickshank MD', 97, '2020-10-31', 'Student', 'South Izaiahmouth', 1, '7644 Name Forest\nWest Jenningsburgh, KS 20732', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(32, 'Lilyan Bailey', 81, '2020-10-31', 'Student', 'West Josue', 0, '2646 Beryl Run\nSouth Queen, KY 59221', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(33, 'Alberta Wisozk', 50, '2020-10-31', 'Employed', 'Diegoview', 1, '501 Christop Bypass Suite 843\nSouth Rodrickhaven, MI 60055-2606', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(34, 'Dr. Perry Jacobson', 15, '2020-10-31', 'Student', 'Farrellborough', 1, '853 Elody Walks\nBodemouth, SC 76753', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(35, 'Shawna Kautzer', 51, '2020-10-31', 'Student', 'North Magdalenaland', 2, '1686 Batz Squares\nNorth Marcelle, AK 49538-9010', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(36, 'Davin Hackett', 82, '2020-10-31', 'Student', 'Hermistonton', 1, '566 Kallie Path\nLake Esperanzahaven, OR 74961', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(37, 'Antonia Breitenberg', 62, '2020-10-31', 'Student', 'East Serenity', 2, '472 Schroeder Neck Suite 542\nMillschester, MA 41813', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(38, 'Gilda Wyman Sr.', 50, '2020-10-31', 'Student', 'South Desireeside', 2, '1704 Stanley Expressway\nEast Elbert, MD 77520', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(39, 'Marcellus Huel', 3, '2020-10-31', 'Student', 'Schillermouth', 1, '1299 Tony Grove Suite 837\nSouth Aurelie, AR 46678', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(40, 'Mr. Brice Wiegand', 59, '2020-10-31', 'Employed', 'Harveyfurt', 2, '76336 Gleichner Trail Suite 910\nAraceliport, NV 39975-9285', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(41, 'Kariane Predovic', 7, '2020-10-31', 'Employed', 'Laylabury', 0, '5665 Douglas Corner\nLoraton, MD 84546', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(42, 'Dr. Easton Langosh I', 61, '2020-10-31', 'Employed', 'South Princessbury', 2, '277 Boyle Valleys Apt. 266\nWest Dalton, TN 68809', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(43, 'Damion Aufderhar Jr.', 32, '2020-10-31', 'Employed', 'Daphneebury', 2, '1937 Schuster Point Apt. 492\nWest Damianhaven, TN 53944', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(44, 'Dr. Damon Lesch V', 27, '2020-10-31', 'Employed', 'Port Salvatore', 2, '76850 Lucy Roads\nBauchville, NH 91753', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(45, 'Estevan Stamm', 41, '2020-10-31', 'Student', 'Runolfsdottirview', 1, '94109 Virgie Viaduct\nSchmidtside, AL 27641-7859', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(46, 'Carmine Skiles III', 96, '2020-10-31', 'Student', 'Port Brandotown', 2, '97268 Botsford Junctions Apt. 307\nHerzogfort, NE 98658', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(47, 'Dr. Johann Jerde', 91, '2020-10-31', 'Employed', 'Nolaport', 2, '167 Damion Ports\nLake Raquelside, FL 04780', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(48, 'Kaycee Ratke', 24, '2020-10-31', 'Student', 'Port Chanel', 2, '177 Maribel Port Suite 806\nMertztown, NM 58002', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(49, 'Dr. Henry Lemke II', 16, '2020-10-31', 'Employed', 'Amarishire', 2, '1921 Miller Mills\nSouth Cassandratown, ND 52890-5003', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(50, 'Kenya Gerlach', 71, '2020-10-31', 'Student', 'East Luther', 0, '6109 Flavie Land Apt. 349\nAdamsmouth, KS 11224-7537', '2020-10-31 13:15:16', '2020-10-31 13:15:16'),
(51, 'Tanveer', 31, '1989-05-18', 'Employed', 'Mumbai', 1, 'Andheri East', '2020-10-31 23:52:58', '2020-10-31 23:52:58'),
(52, 'Tanveer', 31, '1989-05-18', 'Employed', 'Mumbai', 1, 'Andheri East', '2020-10-31 23:53:23', '2020-10-31 23:53:23'),
(53, 'Tanveer', 31, '1989-05-18', 'Employed', 'Mumbai', 7, 'Andheri East', '2020-10-31 23:55:31', '2020-10-31 23:55:31'),
(54, 'Tanveer', 31, '1989-05-18', 'Employed', 'Mumbai', 7, 'Andheri East', '2020-10-31 23:56:31', '2020-10-31 23:56:31'),
(55, 'Tanveer', 31, '1989-05-18', 'Employed', 'Mumbai', 7, 'Andheri East', '2020-10-31 23:57:58', '2020-10-31 23:57:58'),
(56, 'Tanveer', 31, '1989-05-18', 'Employed', 'Mumbai', 2, 'Andheri East', '2020-10-31 23:58:44', '2020-10-31 23:58:44'),
(57, 'Tanveer', 31, '1989-05-18', 'Employed', 'Mumbai', 2, 'Andheri East', '2020-11-01 03:25:51', '2020-11-01 03:25:51');

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
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `api_token`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$hjvx9TygfaS4SmliuQvEYOI/JB0VHl0Mk1U3KKAe6bCVhLv9tYsWe', 'M7EQbdRUbuTCrDXQKGrQoU4XTzFNJIsQXEVxC7B89gxzT6tSczLrF3eM4mZ4', '2020-10-31 13:15:16', '2020-11-01 03:25:36', 'jM90PRvXr2nFPxgoUWGYJHjYb29bCp2XdVm3yVxoTvwfolYfWSXD1U32lXb7'),
(2, 'John', 'john.doe@meetup.com', NULL, '$2y$10$DN/Wqgd5SehVxKiJcgtaSO0BXlf00L1qC/mM9nbCTWYMz5/KAD/8u', NULL, '2020-10-31 13:47:31', '2020-10-31 13:47:31', 'x4WgTuw9v1DY7LPgcmv4L5rZ4zc5UZhRFOiDzNol2HowCzWb7yMaXlsa0Mwp'),
(4, 'John', 'jane.doe@meetup.com', NULL, '$2y$10$5xHqCLhbxVozLMl6W/mpOO6o6f41Ko6pD4o0cKjQq8Jup6fbGGkDq', NULL, '2020-10-31 23:30:53', '2020-10-31 23:30:53', 'z5ELoG1K6bxpswKxIfrXJzhR1q8Hgfa6naoDVanVvsbb57JGv7oF9ZYOMuUd'),
(5, 'John', 'josh.doe@meetup.com', NULL, '$2y$10$NdwAVpql0u2sZxJ2Xm5CT.OPVHqPsFf1WFwmrzEDqZ4YFMWVOqxMm', NULL, '2020-10-31 23:33:01', '2020-10-31 23:33:01', 'kTdZ2un1YLZ1EINdyYVBJiJWn86vidXG2VAQO2n1jlO84ICZ2tV8uKuNLBVk'),
(7, 'John', 'joshua.doe@meetup.com', NULL, '$2y$10$Va/d9NMOMAgUngLqcKaW6.uBcerRIz07daxsPgvG3as5s2/Z8YfHy', NULL, '2020-10-31 23:35:49', '2020-10-31 23:35:49', 'jIQQ0n2knSpXWMiIxFQVxTkD3tfLUXONTkNv05vxROYJqJXraFPz5F2pmsLR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
