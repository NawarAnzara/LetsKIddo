-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2021 at 10:53 AM
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
-- Database: `kidsblog_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` varchar(300) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `DescribeYourself` varchar(300) NOT NULL,
  `PictureUrl` varchar(300) NOT NULL,
  `AvatarName` varchar(300) NOT NULL,
  `sex` varchar(300) NOT NULL,
  `AgeGroup` varchar(300) NOT NULL,
  `Password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Name`, `DescribeYourself`, `PictureUrl`, `AvatarName`, `sex`, `AgeGroup`, `Password`) VALUES
('123', 'Haron Samber', 'I like to play football.', 'https://i.ibb.co/M5Pcnw6/Kids.png', 'Cosmos', 'male', 'Toddler', '$2a$08$xM1gkcAIpRKpveQ0cT43bexzy8kLMxSjaHcT1YR8POJu8YQnqnMXq'),
('bla', 'bla bla', 'bla bla bla', 'bla bla bla', 'ok', 'Female', 'Young', '$2a$08$W2L3Vop7s1mA0RtrogYMkOxzag8uQe/AsFBwPZHXTwqZWEKXMJ0SC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
