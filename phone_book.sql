-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2020 at 02:30 PM
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
-- Database: `phone_book`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(3000) NOT NULL,
  `last_login_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `password`, `name`, `last_login_time`) VALUES
('admin', '1234', 'Ali', '2020-09-16 05:36:50'),
('admin1', '1234', 'asa', NULL),
('test', '1234', 'test', '2020-09-15 04:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `address` varchar(2000) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=male, 2=female'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `name`, `address`, `phone_no`, `email`, `gender`) VALUES
(1, 'Ali', 'No2, Jalan 123, Bandar Alam, 50000 Kuala Lumpur', '0112223333', 'example@aaa.com', 1),
(2, 'Abu', 'No 3, Jalan 222, Bandar Baru, 52000 Kuala Lumpur ', '0113333555', 'example2@bbb.com', 1),
(4, 'test', 'bc', '011-9999999', 'test@aaa.com', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
