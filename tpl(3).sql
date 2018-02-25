-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2017 at 03:35 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`name`, `email`, `phone`, `message`) VALUES
('Rishav Ranjan', 'rishavbits2016@gmail.com', '', 'test csi'),
('Rishav Ranjan', 'rishav2015ranjan@gmail.com', '8506866790', 'test done'),
('Rahul Kumar', '500059999@stu.upes.ac.in', '1234567890', 'afdtsgdhfhf');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sapid` varchar(10) NOT NULL,
  `year` varchar(4) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`name`, `email`, `password`, `sapid`, `year`, `branch`, `phone`, `category`) VALUES
('Rishav Ranjan', 'asdfgh@gmail.com', '123456', '500053020', '1', 'CSE-CCVT', '8506866790', 'Coding'),
('Final ', 'final1@mail.com', '123456', '500061589', '1', 'CSE-CCVT', '8506866790', 'photo,app,'),
('Final check', 'final@mail.com', '123456', '500053020', '1', 'CSE-CCVT', '8506866790', 'coding,photo,app,deb'),
('lastcheck', 'lastcheck@mail.com', '123456', '500061583', '1', 'CSE-CCVT', '8506866790', 'coding,photo,app,debate,'),
('Rishav Ranjan', 'rishavdropdown@mail.com', '123456', '500053020', '1', 'CSE-CCVT', '8506866790', 'Photography');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`email`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
