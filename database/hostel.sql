-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2021 at 02:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'anuj.lpu1@gmail.com', 'Test@1234', '2016-04-04 20:31:45', '2016-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'B.Tech', 'Bachelor  of Technology', '2020-07-04 19:31:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2020-07-04 19:31:42'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2020-07-04 19:31:42'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2020-07-04 19:31:42'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2020-07-04 19:31:42'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2020-07-04 19:31:42'),
(7, 'BE765', 'BE', 'Bachelor of Engineering', '2020-07-04 19:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `que1` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`que1`) VALUES
('Water Issue'),
('Furniture Issue'),
('Food Issue'),
('Neighbour Issue'),
('Hygiene Issue'),
('Health Realted Issue'),
('WIFI Issue'),
('Others'),
('Electricity Issue');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `querry` varchar(2000) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(2000) CHARACTER SET latin1 DEFAULT NULL,
  `id` int(11) NOT NULL,
  `room_no` int(11) DEFAULT NULL,
  `posting_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`querry`, `description`, `id`, `room_no`, `posting_date`) VALUES
('Furniture Issue', 'no table', 10, 899, '2021-10-20'),
('Neighbour Issue', 'loud voices', 11, 1223, '2021-10-21'),
('Electricity Issue', 'no current', 12, 56, '2021-11-26'),
('Neighbour Issue', 'Noise issue', 13, 23, '2021-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) DEFAULT NULL,
  `seater` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `foodstatus` int(11) DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) DEFAULT NULL,
  `fees` int(255) DEFAULT NULL,
  `health` mediumtext CHARACTER SET latin2 COLLATE latin2_general_nopad_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`, `fees`, `health`) VALUES
(3, 100, 5, 8000, 0, '2021-10-15', 12, 'Bachelor of Engineering', 2147483647, 'Navyashri', '', 'Karanth', 'female', 8792579652, 'navyashrikarant2000@gmail.com', 71458965214, 'Manoj', 'Friend', 8792579652, 'Dharwad\r\nKarnataka', 'Dharwad', 'Karnataka', 580008, 'Dharwad\r\nKarnataka', 'Dharwad', 'Karnataka', 580008, '2021-10-13 07:53:35', NULL, NULL, NULL),
(6, 132, 0, 0, 0, '2021-11-23', 3, 'Bachelor  of Technology', 2, 'Manoj', 'N', 'Mahale', 'male', 9898985623, 'manojmahale@gmail.com', 96565645874, 'Sunita', 'Mother', 9874565654, 'R.K Nagar', 'Dharwad', 'Karnataka', 580003, 'R.K Nagar', 'Dharwad', 'Karnataka', 580003, '2021-11-26 09:18:59', NULL, 250000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(3, 2, 200, 6000, '2020-04-12 01:30:58'),
(4, 3, 112, 4000, '2020-04-12 01:31:07'),
(5, 5, 132, 2000, '2020-04-12 01:31:15'),
(6, 1, 103, 0, '2021-10-15 11:53:43'),
(7, 9, 230, 0, '2021-10-16 10:10:25'),
(8, 2, 69, 1234, '2021-10-16 10:17:54'),
(9, 2, 89, 21212, '2021-10-16 10:22:04'),
(10, 1, 333, 4545, '2021-10-16 10:27:32'),
(11, 2, 233, 21212, '2021-11-26 10:54:17');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Andaman and Nicobar Island (UT)'),
(2, 'Andhra Pradesh'),
(3, 'Arunachal Pradesh'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Chandigarh (UT)'),
(7, 'Chhattisgarh'),
(8, 'Dadra and Nagar Haveli (UT)'),
(9, 'Daman and Diu (UT)'),
(10, 'Delhi (NCT)'),
(11, 'Goa'),
(12, 'Gujarat'),
(13, 'Haryana'),
(14, 'Himachal Pradesh'),
(15, 'Jammu and Kashmir'),
(16, 'Jharkhand'),
(17, 'Karnataka'),
(18, 'Kerala'),
(19, 'Lakshadweep (UT)'),
(20, 'Madhya Pradesh'),
(21, 'Maharashtra'),
(22, 'Manipur'),
(23, 'Meghalaya'),
(24, 'Mizoram'),
(25, 'Nagaland'),
(26, 'Odisha'),
(27, 'Puducherry (UT)'),
(28, 'Punjab'),
(29, 'Rajastha'),
(30, 'Sikkim'),
(31, 'Tamil Nadu'),
(32, 'Telangana'),
(33, 'Tripura'),
(34, 'Uttarakhand'),
(35, 'Uttar Pradesh'),
(36, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_details`
--

CREATE TABLE `student_fees_details` (
  `student_fees_details` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `years` varchar(200) NOT NULL,
  `fees` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_fees_details`
--

INSERT INTO `student_fees_details` (`student_fees_details`, `student_id`, `years`, `fees`) VALUES
(1, 3, '1st Year', 80000);

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_paid`
--

CREATE TABLE `student_fees_paid` (
  `student_fees_paid_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fees_paid_amount` int(11) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `transaction_type` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `dat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_fees_paid`
--

INSERT INTO `student_fees_paid` (`student_fees_paid_id`, `student_id`, `fees_paid_amount`, `transaction_id`, `transaction_type`, `description`, `dat`) VALUES
(1, 4, 10000, '2356', 'Cheque', 'ascsb', '2021-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(6, 3, '10806121', 0x3a3a31, '', '', '2020-07-20 14:56:45'),
(7, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-13 07:57:49'),
(8, 6, 'manojmahale@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-13 08:46:54'),
(9, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-15 10:49:57'),
(10, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-15 11:25:08'),
(11, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-16 10:07:45'),
(12, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-16 10:07:45'),
(13, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-16 10:52:34'),
(14, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-16 11:17:06'),
(15, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-16 11:22:09'),
(16, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-16 11:27:17'),
(17, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-16 11:55:50'),
(18, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-16 11:59:27'),
(19, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-16 12:06:03'),
(20, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-18 14:04:37'),
(21, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-20 03:22:18'),
(22, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-21 08:28:30'),
(23, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-21 08:32:57'),
(24, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-21 08:49:11'),
(25, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-28 12:29:12'),
(26, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-31 09:37:40'),
(27, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-31 10:45:27'),
(28, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-31 10:47:25'),
(29, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-10-31 10:58:02'),
(30, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-11-01 06:41:02'),
(31, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-11-21 10:35:09'),
(32, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-11-22 06:13:23'),
(33, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-11-22 12:47:54'),
(34, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-11-26 08:33:05'),
(35, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-11-26 08:51:48'),
(36, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-11-26 10:23:19'),
(37, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-11-26 10:27:14'),
(38, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-11-26 10:43:50'),
(39, 5, 'navyashrikaranth@klsvdit.edu.in', 0x3a3a31, '', '', '2021-12-10 10:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(3, '10806121', 'Anuj', '', 'kumar', 'male', 1234567890, 'test@gmail.com', 'Test@123', '2020-07-20 14:56:18', NULL, NULL),
(4, '20180722896', 'Navyashri', '', 'Karanth', 'female', 8792579652, 'navyashrikarant2000@gmail.com', '8792579652', '2021-10-13 07:53:35', NULL, NULL),
(6, '1234', 'manoj', '', 'mahale', 'male', 8956587459, 'manojmahale@klsvdit.edu.in', 'manoj', '2021-10-13 08:46:23', NULL, NULL),
(7, '2VD18CS022', 'Manoj', 'N', 'Mahale', 'male', 8978745784, 'mahalemanoj196@gmail.com', 'navya', '2021-11-26 08:53:15', NULL, NULL),
(8, '2VD18CS023', 'Manoj', 'N', 'Mahale', 'male', 9898985623, 'manojmahale@gmail.com', '9898985623', '2021-11-26 09:18:59', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees_details`
--
ALTER TABLE `student_fees_details`
  ADD PRIMARY KEY (`student_fees_details`);

--
-- Indexes for table `student_fees_paid`
--
ALTER TABLE `student_fees_paid`
  ADD PRIMARY KEY (`student_fees_paid_id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `student_fees_details`
--
ALTER TABLE `student_fees_details`
  MODIFY `student_fees_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_fees_paid`
--
ALTER TABLE `student_fees_paid`
  MODIFY `student_fees_paid_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
