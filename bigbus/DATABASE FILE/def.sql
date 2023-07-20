-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 19, 2023 at 06:44 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `def`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(30) NOT NULL,
  `schedule_id` int(30) NOT NULL,
  `ref_no` text NOT NULL,
  `name` varchar(250) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '1=Paid, 0- Unpaid',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`id`, `schedule_id`, `ref_no`, `name`, `qty`, `status`, `date_updated`) VALUES
(1, 1, '202206248407', 'Leala', 2, 1, '2022-06-25 21:43:13'),
(2, 4, '202206252673', 'ram', 2, 0, '2023-05-19 10:04:49'),
(3, 2, '202206251496', 'hari', 3, 1, '2023-05-19 10:04:49'),
(4, 4, '202206254769', 'anup', 1, 1, '2023-05-19 10:04:49'),
(5, 7, '202206257753', 'Maya', 34, 0, '2023-05-19 10:04:49'),
(6, 5, '20220625746', 'anu', 3, 1, '2023-05-19 10:04:49'),
(7, 9, '202206252201', 'samita', 1, 0, '2023-05-19 10:04:49'),
(8, 1, '202305197208', 'samita', 4, 0, '2023-05-19 10:25:49'),
(9, 1, '202305192709', 'neat', 3, 0, '2023-05-19 10:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `bus_number` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = inactive, 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `name`, `bus_number`, `status`, `date_updated`) VALUES
(1, 'Ashok Leyland', 'ADG4455', 1, '2023-05-19 10:07:42'),
(2, 'BharatBenz', 'ADG7782', 1, '2023-05-19 10:07:42'),
(3, 'BharatBenz', 'ADG6657', 1, '2023-05-19 10:07:42'),
(4, 'Volvo Buses', 'ADG1769', 1, '2023-05-19 10:07:42'),
(5, 'Volvo Buses', 'SFH2587', 1, '2023-05-19 10:07:42'),
(6, 'Volvo Buses', 'SFH7777', 1, '2023-05-19 10:07:42'),
(7, 'Ashok Leyland', 'QWE8787', 1, '2023-05-19 10:07:42'),
(8, 'Ashok Leyland', 'ERE2585', 1, '2023-05-19 10:07:42'),
(9, 'Kpn Travels', 'TWE8969', 1, '2023-05-19 10:07:42'),
(10, 'Kpn Travels', 'TTY5874', 1, '2023-05-19 10:07:42'),
(11, 'Kpn Travels', 'TWE1258', 1, '2023-05-19 10:07:42');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `username`, `email`, `password`, `create_datetime`) VALUES
(1, 'ash', 'abcd@gmail.com', 'f970e2767d0cfe75876ea857f92e319b', '0000-00-00 00:00:00'),
(2, 'yyy', 'ashimnpe@gmail.com', 'c483f6ce851c9ecd9fb835ff7551737c', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(30) NOT NULL,
  `terminal_name` text NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0= inactive , 1= active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `terminal_name`, `city`, `state`, `status`, `date_updated`) VALUES
(1, 'Bharatpur', 'Jhapa', 'Koshi Province', 1, '2023-05-19 10:28:53'),
(2, 'Bharatpur', 'Chitwan', 'Bagmati', 1, '2023-05-19 10:28:53'),
(3, 'Bhojpur', 'Bhojpur', 'koshi p', 1, '2023-05-19 10:28:53'),
(4, 'Biratnagar', 'orang', 'Koshi Province', 1, '2023-05-19 10:28:53'),
(5, 'Jomsom', 'mustang', 'Gandaki', 1, '2023-05-19 10:28:53'),
(6, 'Kamal Bazar, Achham', 'ascham', 'sudarpaschim', 1, '2023-05-19 10:28:53'),
(7, 'Langtang', 'rasuwa', 'basmati', 1, '2023-05-19 10:28:53'),
(8, 'Jiri', 'dolkha', 'bagmati ', 1, '2023-05-19 10:28:53'),
(9, 'Pokhara', 'Kaski', 'Gandaki', 1, '2023-05-19 10:28:53'),
(10, 'Rajbiraj', 'Saptari', 'Madhesh Province', 1, '2023-05-19 10:28:53'),
(11, 'Rolpa', 'rolpa', 'lumina', 1, '2023-05-19 10:28:53'),
(12, 'tikapur', 'kailali', 'sudarpaschim', 1, '2023-05-19 10:28:53');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `php` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `php`, `timestamp`) VALUES
(1, 3, '2023-05-18 07:00:20'),
(2, 2, '2023-05-19 04:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_list`
--

CREATE TABLE `schedule_list` (
  `id` int(30) NOT NULL,
  `bus_id` int(30) NOT NULL,
  `from_location` int(30) NOT NULL,
  `to_location` int(30) NOT NULL,
  `departure_time` datetime NOT NULL,
  `eta` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `availability` int(11) NOT NULL,
  `price` text NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `bus_id`, `from_location`, `to_location`, `departure_time`, `eta`, `status`, `availability`, `price`, `date_updated`) VALUES
(1, 11, 1, 1, '2022-06-25 15:00:00', '2022-06-25 20:00:00', 1, 24, '49', '2023-05-18 07:09:35'),
(2, 6, 1, 4, '2022-06-25 20:00:00', '2022-06-25 01:00:00', 1, 30, '26', '2022-06-25 09:09:20'),
(3, 1, 3, 9, '2022-06-26 10:00:00', '2022-06-26 16:00:00', 1, 32, '33', '2022-06-25 09:10:46'),
(4, 9, 4, 1, '2022-06-26 08:00:00', '2022-06-26 19:00:00', 1, 30, '65', '2022-06-25 09:11:55'),
(5, 7, 8, 10, '2022-06-27 10:00:00', '2022-06-27 19:00:00', 1, 33, '80', '2022-06-25 09:13:02'),
(6, 4, 7, 6, '2022-06-26 11:00:00', '2022-06-25 13:00:00', 1, 35, '43', '2022-06-25 09:17:10'),
(7, 8, 9, 4, '2022-06-27 15:00:00', '2022-06-27 23:00:00', 1, 34, '75', '2022-06-25 09:18:08'),
(8, 3, 6, 2, '2022-06-27 12:00:00', '2022-06-25 17:00:00', 1, 31, '68', '2022-06-25 09:20:35'),
(9, 10, 11, 12, '2022-06-26 10:00:00', '2022-06-26 13:00:00', 1, 38, '65', '2022-06-25 17:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1,
  `username` varchar(25) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`) VALUES
(1, 'Administrator', 1, 'admin', '47bce5c74f589f4867dbd57e9ca9f808', 1, '2023-05-19 10:01:43'),
(3, 'AdminWilly', 2, 'willy', 'f2d0ff370380124029c2b807a924156c', 1, '2022-06-25 20:14:01'),
(4, 'AdminLea', 1, 'leadmin', '21232f297a57a5a743894a0e4a801fc3', 1, '2023-05-18 12:12:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedule_list`
--
ALTER TABLE `schedule_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
