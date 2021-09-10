-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2021 at 02:19 AM
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
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `BlogID` int(255) NOT NULL,
  `UserID` varchar(300) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `PictureUrl` varchar(700) NOT NULL,
  `blogContent` varchar(1000) NOT NULL,
  `countStar` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`BlogID`, `UserID`, `Name`, `PictureUrl`, `blogContent`, `countStar`) VALUES
(16, '789', 'Jaqob Stance', 'https://i.ibb.co/fGN80XL/Pensive-teenage-boy-looking-at-the-camera-posing-with-his-school-lockers-in-the-background.jpg', 'My first time, blogging.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `CommentID` varchar(300) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `PictureUrl` varchar(700) NOT NULL,
  `BlogID` varchar(300) NOT NULL,
  `UserID` varchar(300) NOT NULL,
  `Comment` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
('321', 'Rosie Miranda', 'I love to go on trips. I also, love make-up.', 'https://i.ibb.co/W6D0X9V/teenGirl.jpg', 'ash', 'Female', 'Senior', '$2a$08$oFPcXU2VzFEXqjBiCwFQI.sKzGH3SaoDo1/lDomlEQRlfuGlkFYfC'),
('456', 'Angela Heart', 'I love Dolls. I play with them everyday.', 'https://i.ibb.co/7Kf1wDq/girl.jpg', 'Montana', 'Female', 'Toddler', '$2a$08$hIjZT91FG3pKz.7EBev59uC4JkRL79NXfxu0810/p3azy7hTloKFW'),
('789', 'Jaqob Stance', 'I love music. I am currently liking Ariana Grande.', 'https://i.ibb.co/fGN80XL/Pensive-teenage-boy-looking-at-the-camera-posing-with-his-school-lockers-in-the-background.jpg', 'Aligator', 'male', 'Senior', '$2a$08$4aw8LLSUGrOCATy7.G1LquNjGrMSohiksij9d44NPqV6i0JBjuVgK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`BlogID`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`CommentID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `BlogID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
