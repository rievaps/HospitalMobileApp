-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 07, 2021 at 06:16 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mynewlife`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `doctor` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `first_name`, `last_name`, `email`, `doctor`, `date`, `type`, `user_id`) VALUES
(10, 'Jo ', 'Franky', 'jo@gmail.com', 'dr. Cut Nurul Hafifah, Sp. A (K)', '4 Desember 2021', 'Consult', 8),
(11, 'John', 'Doe', 'john@gmail.com', 'Dr. dr. Rini Sekartini, Sp.A(K)', '31 Desember 2021', 'Consult', 9),
(12, 'John', 'Doe', 'john@gmail.com', 'drg. Felinda Gunawan', '8 Desember 2021', 'Treatment', 9),
(13, 'Rieva', 'Putri', 'rievaps@gmail.com', 'drg. Felinda Gunawan', '11 Desember 2021', 'Treatment', 10),
(14, 'Kiky', 'Pije', 'kikypj@gmail.com', 'Dr. dr. Bob Wahyudin, SpA (K), IBCLC', '7 Januari 2022', 'Consult', 12);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `medicine` varchar(255) NOT NULL,
  `qty` int(11) DEFAULT 1,
  `total` int(11) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `medicine`, `qty`, `total`, `date`) VALUES
(1, 9, 'Amoxcillin', 5, 75000, '03 Dec 2021 09:31:47'),
(2, 9, 'Azithromycin', 1, 300000, '05 Dec 2021 21:30:33'),
(3, 9, 'Sanmol', 2, 6000, '05 Dec 2021 21:32:05'),
(4, 9, 'Amoxcillin', 1, 15000, '05 Dec 2021 21:36:23'),
(5, 11, 'Polysilane', 2, 70000, '07 Dec 2021 18:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(7, 'test', 'test', 'test@gmail.coom', 'cc03e747a6afbbcbf8be7668acfebee5'),
(8, 'Jo', 'Franky', 'jo@gmail.com', '54533eebc61004baa7a6f12b90785816'),
(9, 'John', 'Doe', 'john@gmail.com', '6e0b7076126a29d5dfcbd54835387b7b'),
(10, 'Rieva', 'Putri', 'rievaps@gmail.com', 'a150b87adbfbb084608ef2829f89f5b2'),
(11, 'Aisyah', 'Aprilia', 'aisyah@gmail.com', 'd5e2d4a88fc0820f143334cfcc79a885'),
(12, 'Rizky', 'Pije', 'kikypj@gmail.com', '5efc6c0c4600e8841a557337953d2008');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
