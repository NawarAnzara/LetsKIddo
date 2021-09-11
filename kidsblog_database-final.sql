-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2021 at 10:19 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kidsblog_database-final`
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
(16, '789', 'Jaqob Stance', 'https://i.ibb.co/fGN80XL/Pensive-teenage-boy-looking-at-the-camera-posing-with-his-school-lockers-in-the-background.jpg', 'My first time, blogging.', 0),
(17, '123', 'Haron Samber', 'https://i.ibb.co/M5Pcnw6/Kids.png', 'Hi, Good Morning Everyone...', 0);

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
-- Table structure for table `horoscope`
--

CREATE TABLE `horoscope` (
  `serialNo` int(11) NOT NULL,
  `horoscopeType` varchar(1000) NOT NULL,
  `horoscopeDes` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `horoscope`
--

INSERT INTO `horoscope` (`serialNo`, `horoscopeType`, `horoscopeDes`) VALUES
(2, 'January 20 - February 18', 'You are Aquarius : You might feel a bit rough around the edges today, Aquarius. There is a bite to the day that could leave you feeling upset and unnerved. It may seem as if no one understands you. By opening up to others, you will allow them to open up to you. People will be anxious to learn the inner workings of your mind. You have a great deal of personal wisdom to share...'),
(3, 'February 19 - March 20', 'You are Pisces : Your thoughts are emotionally charged, Pisces, but you will find that this can be used to your advantage. You have a great deal of knowledge at your disposal, and you are not afraid to throw in a little drama just for the fun of it. Your dramatic flair will take you far on a day like today. Do not hesitate to get exactly what you want.'),
(4, 'March 21 - April 19', 'You are Aries : You might feel a bit rough around the edges today, Aries. There is a bite to the day that could leave you feeling upset and unnerved. It may seem as if no one understands you. By opening up to others, you will allow them to open up to you. People will be anxious to learn the inner workings of your mind. You have a great deal of personal wisdom to share.'),
(8, 'May 21 - June 20', 'You are Gemini : Tempers could be short in a group with which you are affiliated, Gemini. What started as a meeting could end with disagreements. You might be tempted to chastise everyone, but that is not a good idea. You would not stop the battle, and everyone involved will resent whatever you do. The best solution is to leave. The group probably would not accomplish anything positive anyway.'),
(9, 'April 20 - May 20', 'You are Taurus : While you are on a crusade for peace and diplomacy, Taurus, you may find that other people seem to be on a crusade for war. Do your best under the prevailing trends. You may find that other people are words are charged with a great deal of passion that will be hard to ignore. You have your work cut out for you today if you plan on maintaining a serene and calm disposition '),
(22, 'October 23 - November 21', 'You are Scorpio : Your mind is going to be sharp today, and you should be certain of all your words, Scorpio. Take pride in who you are and what you believe. This self-confidence will radiate from you. Use your keen mental powers to move things along in your favor. This is too good of an opportunity to waste passively. Take control of the situation and lead the charge. Full steam ahead!'),
(44, 'July 23 - August 22', 'You are Leo : Old emotions could well up from your unconscious today, Leo. Your nerves could be on edge. You might even lose your temper on occasion. Stop and take a look at why you are upset. Consider what is coming up from the past and then release it. You will be amazed at how quickly you return to normal. You might be able to get some work done!\r\n '),
(55, 'November 22 - December 21', 'You are Sagittarius : Much of your focus is internal, but today it would behoove you to turn some of that energy outward, Sagittarius. Take this opportunity to make a leap of faith in the right direction. You have a great deal of bite behind your words. Do not underestimate your power and bravery. Just be careful that you do not start arguments over petty issues that are not worth losing friends over.\r\n'),
(65, 'September 23 - October 22', 'You are Libra : Be a bit selfish today, Libra. You have every right to look out for number one. Sensitivity to other people are emotions and issues is noble, but it may leave you emotionally drained. Think rationally about your emotions and have the courage to say no to people once in a while. You are a giver and a saint. This is the perfect day to do some giving back - to yourself. '),
(67, 'December 22 - January 19', 'You are Capricorn : There is no need to walk around with a frown on a day like this, Capricorn. You have a special spark in your eye and spring in your step that you should make great use of today. Jump into action with vigor and communicate your thoughts to other people. Change is important and necessary now. It might be smart to wipe the slate clean and start anew.\r\n '),
(87, 'June 21 - July 22', 'You are Cancer : Be yourself and you can do no wrong, Cancer. This is one of those days when you barely need to make any effort to go a long distance. You will find power at your disposal and confidence in yourself. Feel free to grab the microphone and express your opinions. Your words and thoughts are highly charged.');

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
-- Indexes for table `horoscope`
--
ALTER TABLE `horoscope`
  ADD PRIMARY KEY (`serialNo`);

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
  MODIFY `BlogID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
