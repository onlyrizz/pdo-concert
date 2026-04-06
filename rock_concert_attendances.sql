-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2026 at 04:55 PM
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
-- Database: `concert_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `rock_concert_attendances`
--

CREATE TABLE `rock_concert_attendances` (
  `id` int(11) NOT NULL,
  `attendee_name` varchar(100) NOT NULL,
  `band_name` varchar(100) NOT NULL,
  `concert_date` date NOT NULL,
  `ticket_type` varchar(50) NOT NULL,
  `seat_number` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rock_concert_attendances`
--

INSERT INTO `rock_concert_attendances` (`id`, `attendee_name`, `band_name`, `concert_date`, `ticket_type`, `seat_number`, `created_at`) VALUES
(1, 'Rhys Garciano', 'Metallica', '2026-04-06', 'VIP', 'A12', '2026-04-06 14:52:23'),
(2, 'Jane Cruz', 'Slipknot', '2026-04-07', 'Regular', 'B25', '2026-04-06 14:52:28'),
(3, 'Mark Santos', 'Linkin Park', '2026-04-08', 'VIP', 'C10', '2026-04-06 14:52:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rock_concert_attendances`
--
ALTER TABLE `rock_concert_attendances`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
