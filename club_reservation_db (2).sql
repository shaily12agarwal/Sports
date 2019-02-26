-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2018 at 12:22 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `club_reservation_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `clubid` int(11) NOT NULL,
  `clubname` varchar(20) DEFAULT NULL,
  `opening_time` varchar(20) DEFAULT NULL,
  `closing_time` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`clubid`, `clubname`, `opening_time`, `closing_time`, `address`, `image`) VALUES
(8, 'The Yacht Club', '8Am', '7Pm', 'Hyderabad', 'logo.jpg'),
(11, 'Kananook SportClub', '7Am', '9Pm', 'Nagpur', 'Kananook-Sports.jpg'),
(13, 'Wii SportClub', '7Am', '8Pm', 'Pune', 'wii_sports_club.jpg'),
(14, 'City SpotsClub', '7Am', '8Pm', 'Mumbai', 'images (4).jpg'),
(15, 'Pauls Club', '6Am', '8Pm', 'Indore', 's-l300.jpg'),
(38, 'Rudra', '12', '12', 'chawani gpo', 'e2f350eb6c518fabe2455db74a4c58c9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `clubname` text NOT NULL,
  `name` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `clubname`, `name`, `comment`) VALUES
(9, 'Tiger Club', 'RItesh', 'Great way to keep your training motivation and curiosity up by trying new ways of exercising. Great offer of alternatives such as yoga, martial arts, bouldering, dancing etc. App works super smooth. Only your imagination sets the limits. Being a gym buff with 10-15 visits/month, I personally signed up to one of the cheap Berlin gyms close to where I live and combine that with a USC Mid package where I can try out new things every month without ever becoming bored. Haven\'t felt so motivated around exercise in a long time! One small improvement point: being able to book more sessions direct through the app and not by contacting the place directly, but surely that is a feature that will arrive'),
(14, 'Pauls Club', 'AAsh', 'I like the concept but I faced often the problem that the courses showed in the app did not take place when I wanted to sign up. So sometimes I showed up in a gym and was told that their plans have changed or when I wanted to sign up for a course I learned it on the respective website'),
(15, 'Tiger Club', 'Jack', 'I just love USC. A great way to include so many different sports!'),
(16, 'Pauls Club', 'Varun', 'this is good sports club'),
(18, 'Wii SportClub', 'Isha', 'this is nice club to convey all activity'),
(19, 'Tiger Club', 'Rahul', 'This club is best club for play and in joy our vaccation'),
(20, 'Wii SportClub', 'akash', 'really a good aap'),
(21, 'Tiger Club', 'Jack', 'jhjh');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `id` int(11) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `clubforeignid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE `sport` (
  `sportid` int(11) NOT NULL,
  `sportname` varchar(20) DEFAULT NULL,
  `sportfees` int(11) DEFAULT NULL,
  `playtime` text NOT NULL,
  `trainer` text NOT NULL,
  `image` text NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`sportid`, `sportname`, `sportfees`, `playtime`, `trainer`, `image`, `about`) VALUES
(1, 'Cricket', 500, '10Am to 1Pm', 'gfhgf', 'test.jpg', 'mhghjm');

-- --------------------------------------------------------

--
-- Table structure for table `sport_membership`
--

CREATE TABLE `sport_membership` (
  `sportmid` int(11) NOT NULL,
  `monthly_fees` int(11) DEFAULT NULL,
  `yearly_fess` int(11) DEFAULT NULL,
  `sportidforeign` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `photo` text NOT NULL,
  `email` text NOT NULL,
  `status` text NOT NULL,
  `otp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `phone`, `age`, `address`, `city`, `username`, `password`, `gender`, `photo`, `email`, `status`, `otp`) VALUES
(6, 'RItesh', '888888888', 12, 'Mp colony', 'Sagar', 'RItesh', 'test', 'Male', 'm.jpg', '', '', ''),
(11, 'AAsh', '12345667', 28, 'Mp colony', 'Pune', 'AAsh', '12234', 'Male', 'as.jpg', '', '', ''),
(13, 'Jack', '1234566', 23, 'Mp colony', 'Kolkata', 'Jack', '123445', 'Male', 'n.jpg', '', '', ''),
(18, 'Varun', '98776654', 28, 'Mp colony', 'Rajkot', 'Varun', '1234567', 'Male', 'v.jpg', '', '', ''),
(20, 'Isha', '123455', 23, 'mp nagar', '', 'Isha', '2345667', 'Male', 'w.jpg', '', '', ''),
(47, 'rahul', '9617244515', 21, 'sagar', 'Sagar', 'rahul1', 'rahul123', 'Male', 'as.jpg', 'jainr8369@gmail.com', 'true', '3TVK2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`clubid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clubforeignid` (`clubforeignid`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`sportid`);

--
-- Indexes for table `sport_membership`
--
ALTER TABLE `sport_membership`
  ADD PRIMARY KEY (`sportmid`),
  ADD KEY `sportidforeign` (`sportidforeign`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `clubid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`clubforeignid`) REFERENCES `club` (`clubid`);

--
-- Constraints for table `sport_membership`
--
ALTER TABLE `sport_membership`
  ADD CONSTRAINT `sport_membership_ibfk_1` FOREIGN KEY (`sportidforeign`) REFERENCES `sport` (`sportid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
