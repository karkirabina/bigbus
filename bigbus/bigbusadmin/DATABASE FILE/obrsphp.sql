-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 17, 2023 at 07:43 AM
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
(1, 1, '202206248407', 'Lily', 2, 1, '2022-06-25 21:43:13'),
(2, 4, '202206252673', 'Jyoti', 2, 0, '2022-06-25 17:10:27'),
(3, 2, '202206251496', 'Roman', 3, 1, '2022-06-25 23:21:55'),
(4, 4, '202206254769', 'Amita', 1, 1, '2022-06-25 20:02:23'),
(5, 7, '202206257753', 'Abhinav', 34, 0, '2022-06-25 20:04:20'),
(6, 5, '20220625746', 'Krishna', 3, 1, '2022-06-25 23:19:45'),
(7, 9, '202206252201', 'Lila', 1, 0, '2022-06-25 23:23:51');

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
(1, 'Volvo', 'ADG4455', 1, '2022-06-24 18:59:55'),
(2, 'Volvo', 'ADG7782', 1, '2022-06-24 19:00:21'),
(3, 'Volvo', 'ADG6657', 1, '2022-06-24 19:00:37'),
(4, 'Volvo', 'ADG1769', 1, '2022-06-24 19:00:51'),
(5, 'Ashok Leyland', 'SFH2587', 1, '2022-06-24 19:01:13'),
(6, 'Ashok Leyland', 'SFH7777', 1, '2022-06-24 19:01:18'),
(7, 'Kpn Travels', 'QWE8787', 1, '2022-06-24 19:01:38'),
(8, 'Kpn Travels', 'ERE2585', 1, '2022-06-24 19:01:54'),
(9, 'Hans Travels', 'TWE8969', 1, '2022-06-24 19:02:14'),
(10, 'Hans Travels', 'TTY5874', 1, '2022-06-24 19:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `username`, `email`, `password`) VALUES
(1, 'riz', 'riz@gmail.com', '47bce5c74f589f4867dbd57e9ca9f808');

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
(1, 'Sudurpaschim', 'Godawari', 'P One', 1, '2022-06-24 19:10:58'),
(2, 'Gandaki', 'Pokhara', 'P Two', 1, '2022-06-24 19:12:12'),
(3, 'Karnali', 'Biratnagar', 'P Four', 1, '2022-06-24 19:13:08'),
(4, 'Bara', 'Malaya', 'P Two', 1, '2022-06-24 19:13:35'),
(5, 'Rautahat', 'Gaur', 'P Two', 1, '2022-06-24 19:12:49'),
(6, 'Sindhuli', 'Kamalamai', 'P Three', 1, '2022-06-24 19:14:05'),
(7, 'Dhading', 'Nilkantha', 'P Three', 1, '2022-06-24 19:13:51'),
(8, 'Rasuwa', 'Dhunche', 'P Three', 1, '2022-06-24 19:13:18'),
(9, 'Parasi', 'Ramgram', 'P Five', 1, '2022-06-24 19:09:37'),
(10, 'Rolpa', 'Lawing', 'P Five', 1, '2022-06-24 19:14:25');

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
(1, 3, '2023-05-17 05:42:16'),
(2, 3, '2023-05-17 05:43:18');

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
(1, 11, 1, 5, '2022-06-25 15:00:00', '2022-06-25 20:00:00', 1, 25, '500', '2022-06-25 17:27:08'),
(2, 6, 1, 4, '2022-06-25 20:00:00', '2022-06-25 01:00:00', 1, 30, '400', '2022-06-25 09:09:20'),
(3, 1, 3, 9, '2022-06-26 10:00:00', '2022-06-26 16:00:00', 1, 32, '530', '2022-06-25 09:10:46'),
(4, 9, 4, 1, '2022-06-26 08:00:00', '2022-06-26 19:00:00', 1, 30, '650', '2022-06-25 09:11:55'),
(5, 7, 8, 10, '2022-06-27 10:00:00', '2022-06-27 19:00:00', 1, 33, '450', '2022-06-25 09:13:02'),
(6, 4, 7, 6, '2022-06-26 11:00:00', '2022-06-25 13:00:00', 1, 35, '600', '2022-06-25 09:17:10'),
(7, 8, 9, 4, '2022-06-27 15:00:00', '2022-06-27 23:00:00', 1, 34, '750', '2022-06-25 09:18:08'),
(8, 3, 6, 2, '2022-06-27 12:00:00', '2022-06-25 17:00:00', 1, 31, '680', '2022-06-25 09:20:35'),
(9, 10, 11, 12, '2022-06-26 10:00:00', '2022-06-26 13:00:00', 1, 38, '650', '2022-06-25 17:36:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
