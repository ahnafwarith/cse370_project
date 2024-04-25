-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2024 at 10:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_register`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `itemname` varchar(20) NOT NULL,
  `picture` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `management_staff`
--

CREATE TABLE `management_staff` (
  `M_ID` varchar(10) NOT NULL,
  `PICTURE` varchar(40) DEFAULT NULL,
  `NAME` varchar(40) DEFAULT NULL,
  `SPECIALITY` varchar(40) DEFAULT NULL,
  `POSITION` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `management_staff`
--

INSERT INTO `management_staff` (`M_ID`, `PICTURE`, `NAME`, `SPECIALITY`, `POSITION`) VALUES
('22101802', 'https://pbs.twimg.com/profile_images/771', 'mafhr', 'aa', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(11, 'Mahrin', 'ilovewwais'),
(12, 'ahnaf.warid@g.bracu.ac.bd', '1234'),
(13, 'ahnaf.warid@g.bracu.ac.bd', '1234'),
(14, 'ahnaf.warid@g.bracu.ac.bd', '1234'),
(15, 'ahnaf.warid@g.bracu.ac.bd', '1234'),
(16, '2322374', '1234'),
(17, '2322374', '1234'),
(18, 'aaa', '123'),
(19, 'op', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `management_staff`
--
ALTER TABLE `management_staff`
  ADD PRIMARY KEY (`M_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
