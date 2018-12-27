-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2018 at 10:07 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_p`
--

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `lab_id` int(11) NOT NULL,
  `lab_name` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_group`
--

CREATE TABLE `sms_group` (
  `g_id` int(11) NOT NULL,
  `g_name` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_log`
--

CREATE TABLE `sms_log` (
  `log_id` int(22) NOT NULL,
  `log_name` varchar(222) NOT NULL,
  `log_email` varchar(222) NOT NULL,
  `log_mobile` bigint(10) NOT NULL,
  `log_pass` varchar(222) NOT NULL,
  `lstatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_log`
--

INSERT INTO `sms_log` (`log_id`, `log_name`, `log_email`, `log_mobile`, `log_pass`, `lstatus`) VALUES
(1, 'pooja', 'pooja@gmail.com', 9090909090, '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 0),
(4, 'pooja', 'shelkepoojap@gmail.com', 9090909090, '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sms_msg`
--

CREATE TABLE `sms_msg` (
  `msg_id` int(11) NOT NULL,
  `msg_text` varchar(222) NOT NULL,
  `msg_lid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms_per_contact`
--

CREATE TABLE `sms_per_contact` (
  `per_id` int(11) NOT NULL,
  `per_name` varchar(222) NOT NULL,
  `per_mobile` varchar(222) NOT NULL,
  `per_gid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`lab_id`);

--
-- Indexes for table `sms_group`
--
ALTER TABLE `sms_group`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `sms_log`
--
ALTER TABLE `sms_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `sms_msg`
--
ALTER TABLE `sms_msg`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `sms_per_contact`
--
ALTER TABLE `sms_per_contact`
  ADD PRIMARY KEY (`per_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `lab_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_group`
--
ALTER TABLE `sms_group`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_log`
--
ALTER TABLE `sms_log`
  MODIFY `log_id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sms_msg`
--
ALTER TABLE `sms_msg`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_per_contact`
--
ALTER TABLE `sms_per_contact`
  MODIFY `per_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
