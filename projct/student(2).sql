-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2014 at 01:59 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `student`
--
CREATE DATABASE IF NOT EXISTS `student` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `student`;

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE IF NOT EXISTS `admission` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `fathername` text NOT NULL,
  `dob` text NOT NULL,
  `cnic` text NOT NULL,
  `religion` text NOT NULL,
  `domicile` text NOT NULL,
  `address` text NOT NULL,
  `department` text NOT NULL,
  `degree` text NOT NULL,
  `shift` text NOT NULL,
  `degreeP` text NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`uid`, `username`, `fathername`, `dob`, `cnic`, `religion`, `domicile`, `address`, `department`, `degree`, `shift`, `degreeP`, `status`) VALUES
(1, 'Hassan Nasir', 'Manzoor Javaid', '1-11985', '36103', 'Islam', 'Khanewal', 'Lahore More', 'Computer', 'BS-IT', 'Morning', 'Metric:::Govt. Public School:::2001:::481...FA:::Private:::2004:::749...', 'unapproved'),
(2, 'Zahid Iqbal', 'Muhammad Iqbal', '1-11991', '36103', 'Islam', 'Multan', 'No', 'Computer', 'BS-IT', 'Morning', 'Metric:::Govt. Public School:::2004:::749...FA:::Private:::2007:::481...', 'unapproved');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `value` text NOT NULL,
  `auto` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `value`, `auto`) VALUES
(2, 'institute_name', 'Roshni Institute', ''),
(3, 'institute_address', 'Multan', ''),
(4, 'institute_phone', '065', ''),
(5, 'institute_email', 'support@edu.pk', ''),
(6, 'institute_website', 'free.edu.pk', ''),
(7, 'institute_logo', '1397691059Jellyfish.jpg', ''),
(8, 'reg_code', '1', ''),
(9, 'admission_quota', 'Sports,Overseas,Staff Children,Hafiz', ''),
(10, 'academic_type', 'Regular, Distance, Weekend', ''),
(11, 'institute_department', 'Computer, Commerce, Education, English', ''),
(12, 'institute_fee', 'Registration Fee, Admission Fee', ''),
(13, 'institute_programm', 'Computer:BS-IT:60__2,2,2,2,:::Computer:MS-IT:50__2,2,2,2,', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
