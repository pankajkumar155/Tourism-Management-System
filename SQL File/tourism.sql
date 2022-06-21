-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2021 at 12:33 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--
create database tourism;
use tourism;
CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `permission` varchar(255) CHARACTER SET latin1 NOT NULL,
  `createuser` varchar(255) DEFAULT NULL,
  `deleteuser` varchar(255) DEFAULT NULL,
  `createbid` varchar(255) DEFAULT NULL,
  `updatebid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission`, `createuser`, `deleteuser`, `createbid`, `updatebid`) VALUES
(1, 'Superuser', NULL, '1', '1', '1'),
(2, 'Admin', '1', NULL, '1', '1'),
(3, 'User', NULL, NULL, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `Staffid` varchar(255) DEFAULT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `Photo` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'avatar15.jpg',
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `Staffid`, `AdminName`, `UserName`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Status`, `Photo`, `Password`, `AdminRegdate`) VALUES
(2, '10002', 'Admin', 'admin', 'Yogesh', 'Sankhyan  ', 770546590, 'yogesh@gmail.com', 1, 'face19.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2022-06-21 10:18:39'),
(9, '10003', 'Admin', 'Pankaj', 'Pankaj', 'Kumar ', 757537271, 'pankaj@gmail.com', 1, 'face27.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2022-06-21 07:08:48'),
(29, 'U002', 'User', 'Shrey', 'shrey', 'sharma', 770546590, 'shrey@gmail.com', 1, 'avatar15.jpg', '81dc9bdb52d04dc20036dbd8313ed055', '2022-07-21 14:26:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(13, 5, 'yogesh@gmail.com', '2022-12-11', '2022-12-11', 'Real i need to tour that place', '2022-12-11 12:13:17', 1, '', '2022-01-14 18:35:06'),
(14, 2, 'shrey@gmail.com', '2022-01-12', '2022-01-15', 'kk', '2022-01-12 19:49:39', 2, 'u', '2022-01-14 11:20:42'),
(15, 4, 'pankaj@gmail.com', '2022-01-14', '2022-01-16', 'tour', '2022-01-14 08:19:44', 2, 'u', '2022-02-15 08:56:58'),
(16, 2, 'himanshu@gmail.com', '2022-03-26', '2022-03-31', 'I Really need to visit that place', '2022-03-24 22:48:36', 0, NULL, NULL),
(17, 6, 'admin@gmail.com', '2022-07-28', '2022-07-30', 'Test', '2022-07-24 09:51:52', 2, 'a', '2022-07-24 10:04:22'),
(18, 1, 'shrey@gmail.com', '2022-07-24', '2022-07-26', 'smart travel test', '2022-07-24 09:59:34', 1, NULL, '2022-07-24 10:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `id` int(11) NOT NULL,
  `regno` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `companyname` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `companyemail` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `country` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `companyphone` int(10) NOT NULL,
  `companyaddress` varchar(255) CHARACTER SET latin1 NOT NULL,
  `companylogo` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'avatar15.jpg',
  `status` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `developer` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`id`, `regno`, `companyname`, `companyemail`, `country`, `companyphone`, `companyaddress`, `companylogo`, `status`, `developer`, `creationdate`) VALUES
(4, '1005', 'Chitkara University', 'shrey@gmail.com', 'Himachal Pradesh', 770546590, 'Kyebando', 'church.jpg', '1', 'shrey', '2022-06-020 12:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Manali Trip ', 'General', 'Kullu Manali India', 100, 'Air Conditioning ,Balcony / Terrace,Cable / Satellite / Pay TV available,Ceiling Fan,Hairdryer', '\"Manali is a high-altitude Himalayan resort town in India’s northern Himachal Pradesh state. It has a reputation as a backpacking center and honeymoon destination. Set on the Beas River, it’s a gateway for skiing in the Solang Valley and trekking in Parvati Valley. It is also a jumping-off point for paragliding, rafting and mountaineering in the Pir Panjal mountains, home to 4,000m-high Rohtang Pass.', 'Manali.jpg', '2022-07-13 14:23:44', '2022-01-18 17:51:01'),
(2, 'Kasol ', 'Adventure', 'Himachal Pradesh', 5433, 'The hill-hamlet of Kasol stands at over 1,580 meters above sea level, in Himachal Pradesh, and flaunts raw natural beauty with lush conifer forests, snow-capped Himalayan mountains and winding rivers. ', ' Trek from Kheerganga back to Kasol - 12 km ; Day 3 Quick Facts ; Trek Distance, 12KM ; Trek Time, 5-6 hours ; Meals included, Breakfast, Hi-Tea & Dinner', 'kasol.jpg', '2022-07-13 15:24:26', '2022-07-16 17:51:57'),
(3, 'Dauladhar Range', 'Trek', 'Kangra', 1000, 'Dauladhar Range','The Dhauladhar range (The White Range) is part of a lesser Himalayan chain of mountains. It rises from the Indian plains to the north of Kangra and Mandi. The Dhauladhar range is also known as the Outer Himalayas or Lesser Himalayas. They begin from near Dalhousie at the northwest end of Himachal Pradesh and pass through the state to the vicinity of the bank of the Beas River in the Kullu district of Himachal Pradesh. While they end near Badrinath in Garhwal, they lie almost entirely in Himachal Pradesh. They are distinctive in their typical dark granite rocky formations with a remarkably steep rise culminating in sharp streaks of snow and ice at the top of their crested peaks. This distinctive profile is best seen from the Kangra Valley from where they seem to shoot up almost vertically. The elevation of the Dhauladhar ranges varies from 3,500 m to nearly 6,000 m. From the banks of the Beas river in Kullu, the range curves towards the town of Mandi, Himachal Pradesh, India. Then, running north, it passes through Bara Bhangal, joins the Pir Panjal range and moves into Kangra, Himachal Pradesh.', 'download (2).jpg', '2017-05-13 16:00:58', '2019-07-20 20:12:41'),
(4, 'Kamrunag', 'Historical Temple', 'Mandi', 2000,'Kamrunag Dev',' The yaksha could not resist and he had to offer what the Lord had asked for, his head. He gave away his head and asked the Lord to keep it alive until the Great War was over. The Lord immediately agreed and blessed him with the same, his head was brought to the Kamru Hill and today it is known as Kamrunag Temple.', 'kamrunag.jpg', '2017-05-13 22:39:37', '0000-00-00 00:00:00'),
(5, 'Malana', 'Informational', 'Himachal Pradesh', 3000,'Malana The Historical Village',' Malana is an ancient Indian village in the state of Himachal Pradesh. This solitary village in the Malana Nala, a side valley of the Parvati Valley to the north-east of Kullu Valley, is isolated from the rest of the world. The peaks of Chanderkhani and Deo Tibba shadow the village.','malana.jpg', '2017-05-13 22:42:10', '0000-00-00 00:00:00'),
(6, 'Spiti Valley', 'Bike Ride', 'Himachal Pradesh', 5000, 'Free wifi, pickup and drop etc', ' Spiti Valley pronounced as Piti in Bhoti Language is a cold desert mountain valley located high in the Himalayas in the north-eastern part of the northern Indian state of Himachal Pradesh. The name Spiti means The middle land is the land between Tibet and India.The local population follows Vajrayana Buddhism similar to that found in the nearby Tibet and Ladakh regions. The valley and surrounding region are among the least populated regions in India. Spiti valley is a gateway to the northernmost reaches of the nation. Spiti forms part of the Lahaul and Spiti district. The sub-divisional headquarters (capital) is Kaza, Himachal Pradesh which is situated on the Spiti River at an elevation of about 12,500 feet (3,800 m) above mean sea level.', 'spiti valley.jpg', '2017-05-14 08:01:08', '2017-05-14 08:01:27');


-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(14, 'Yogesh', '0770546590', 'yogesh@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2022-01-15 14:00:35', '2022-07-24 09:49:44'),
(16, 'Pankaj', '0770546590', 'pankaj@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2022-07-24 08:34:08', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
