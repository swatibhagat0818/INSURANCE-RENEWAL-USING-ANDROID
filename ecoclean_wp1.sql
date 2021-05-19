-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 19, 2021 at 09:59 PM
-- Server version: 5.7.33-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecoclean_wp1`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agent_id` varchar(50) NOT NULL,
  `agent_password` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_id`, `agent_password`, `name`, `branch`, `phone`) VALUES
('1', '1', '212', '21', '1232323'),
('111', '222', 'Pantho Sorkar', 'Mirpur', '01598745682'),
('987', 'Admin', 'Khu', 'Munbai', '9876543208'),
('admin', 'admin', 'Abcd', 'Mumbai', '988899999998');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` varchar(200) NOT NULL,
  `client_password` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `birth_date` varchar(20) NOT NULL,
  `marital_status` varchar(20) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `policy_id` varchar(50) NOT NULL,
  `agent_id` varchar(20) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `client_password`, `name`, `sex`, `birth_date`, `marital_status`, `nid`, `phone`, `address`, `policy_id`, `agent_id`, `image`) VALUES
('123', '1', 'Nikhil ', 'Male', '31Aug ', 'Married ', 'Indian', '992085511', 'Thane', '1234567880', 'Kaushal ', 'IMG-20210518-WA0008.jpg'),
('1234', '123', 'Nurvi', 'Female', '01/01/1994', 'Single', '0987654321', '9920800857', 'Kalyan', '1', '2', 'FB_IMG_1505093575433.jpg'),
('1621436911', 'Password', 'Pk', 'Male', '21-04-2000', 'UNMARRIED', '987', '0987657789', 'Thane', '12', 'Admin', 'VID-20210519-WA0074.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `nominee`
--

CREATE TABLE `nominee` (
  `nominee_id` varchar(200) NOT NULL,
  `client_id` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `birth_date` varchar(50) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `relationship` varchar(20) NOT NULL,
  `priority` varchar(20) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nominee`
--

INSERT INTO `nominee` (`nominee_id`, `client_id`, `name`, `sex`, `birth_date`, `nid`, `relationship`, `priority`, `phone`) VALUES
('1621436911-1823911834', '1621436911', 'Honda', 'City S', 'Mh057896', '58', '06-03-2021', 'Owner', '12-01-2021');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `recipt_no` varchar(20) NOT NULL,
  `client_id` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `due` varchar(50) NOT NULL,
  `fine` varchar(50) NOT NULL,
  `agent_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`recipt_no`, `client_id`, `month`, `amount`, `due`, `fine`, `agent_id`) VALUES
('1621437089_113631401', 'Kp', 'April', '100', '0', '50', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE `policy` (
  `policy_id` varchar(50) NOT NULL,
  `term` varchar(50) NOT NULL,
  `health_status` varchar(50) NOT NULL,
  `system` varchar(50) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `coverage` varchar(50) NOT NULL,
  `age_limit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`agent_id`),
  ADD UNIQUE KEY `agent_id` (`agent_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `client_id` (`client_id`);

--
-- Indexes for table `nominee`
--
ALTER TABLE `nominee`
  ADD PRIMARY KEY (`nominee_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`recipt_no`),
  ADD UNIQUE KEY `recipt_no` (`recipt_no`);

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`policy_id`),
  ADD UNIQUE KEY `policy_id` (`policy_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
