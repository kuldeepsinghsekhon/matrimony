-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 23, 2017 at 09:59 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_matrimony`
--
CREATE DATABASE IF NOT EXISTS `db_matrimony` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_matrimony`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uid`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin1234');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE IF NOT EXISTS `contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `intrust`
--

CREATE TABLE IF NOT EXISTS `intrust` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `send_date` datetime DEFAULT NULL,
  `acceptence` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `intrust`
--

INSERT INTO `intrust` (`id`, `from_id`, `to_id`, `send_date`, `acceptence`) VALUES
(3, 2, 3, '2017-05-08 00:00:00', 'no'),
(4, 8, 3, '2017-05-13 05:45:56', 'yes'),
(5, 8, 4, '2017-05-13 05:46:30', NULL),
(6, 3, 6, '2017-05-13 05:49:11', 'no'),
(10, 3, 2, '2017-05-22 00:00:00', NULL),
(12, 3, 5, '2017-05-22 00:00:00', NULL),
(13, 3, 8, '2017-05-22 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(15) NOT NULL DEFAULT '',
  `last_name` varchar(15) DEFAULT NULL,
  `middle_name` varchar(15) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `father_name` varchar(30) DEFAULT 'Not Mentioned',
  `marital_status` varchar(15) DEFAULT 'Not Mentioned',
  `country` varchar(20) DEFAULT 'Not Mentioned',
  `state` varchar(20) DEFAULT 'Not Mentioned',
  `city` varchar(20) DEFAULT 'Not Mentioned',
  `address` varchar(250) DEFAULT 'Not Mentioned',
  `created_by` varchar(30) DEFAULT 'Not Mentioned',
  `reg_date` date DEFAULT NULL,
  `last_login_date` date DEFAULT NULL,
  `father_occupation` varchar(15) DEFAULT 'Not Mentioned',
  `mother_occupation` varchar(15) DEFAULT 'Not Mentioned',
  `brothers` varchar(5) DEFAULT 'n.a',
  `sisters` varchar(5) DEFAULT 'n.a',
  `occupation` varchar(30) DEFAULT 'Not Mentioned',
  `income` int(11) DEFAULT '0',
  `smoking` varchar(15) DEFAULT 'Not Mentioned',
  `drinking` varchar(15) DEFAULT 'Not Mentioned',
  `complextion` varchar(15) DEFAULT 'Not Mentioned',
  `height` int(11) DEFAULT '0',
  `weight` int(11) DEFAULT '0',
  `body_type` varchar(15) DEFAULT 'Not Mentioned',
  `physical_status` varchar(20) DEFAULT 'Not Specified',
  `blood_group` varchar(15) DEFAULT 'Not Mentioned',
  `diet` varchar(15) DEFAULT 'vegitarian',
  `gann` varchar(15) DEFAULT 'Not Mentioned',
  `birth_sign` varchar(15) DEFAULT 'Not Mentioned',
  `manglik` varchar(15) DEFAULT 'no',
  `birth_place` varchar(30) DEFAULT 'Not Mentioned',
  `birth_time` varchar(15) DEFAULT 'Not Mentioned',
  `cast` varchar(15) DEFAULT 'Not Mentioned',
  `sub_cast` varchar(20) DEFAULT 'Not Mentioned',
  `religion` varchar(15) DEFAULT 'Not Mentioned',
  `qualification` varchar(20) DEFAULT 'Not Mentioned',
  `education_detail` varchar(30) DEFAULT 'Not Mentioned',
  `language_known` varchar(50) DEFAULT 'Not Mentioned',
  `mother_tongue` varchar(15) DEFAULT 'Not Mentioned',
  `hobbies` varchar(100) DEFAULT 'Not Mentioned',
  `aboutme` text,
  `image1` varchar(250) DEFAULT 'default.jpg',
  `image2` varchar(250) DEFAULT 'default.jpg',
  `image3` varchar(250) DEFAULT 'default.jpg',
  `mobile_no` varchar(15) DEFAULT 'default.jpg',
  `admin_approve` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `middle_name`, `email`, `password`, `dob`, `gender`, `father_name`, `marital_status`, `country`, `state`, `city`, `address`, `created_by`, `reg_date`, `last_login_date`, `father_occupation`, `mother_occupation`, `brothers`, `sisters`, `occupation`, `income`, `smoking`, `drinking`, `complextion`, `height`, `weight`, `body_type`, `physical_status`, `blood_group`, `diet`, `gann`, `birth_sign`, `manglik`, `birth_place`, `birth_time`, `cast`, `sub_cast`, `religion`, `qualification`, `education_detail`, `language_known`, `mother_tongue`, `hobbies`, `aboutme`, `image1`, `image2`, `image3`, `mobile_no`, `admin_approve`) VALUES
(2, 'lovpreet', '', 'kaur', 'luccy@gmail.com', '1234', '1983-05-09', 'female', 'jaskaran singh', 'single', 'India', 'himachal', 'amritsar', '10 new sant avenue', 'Parents', NULL, NULL, 'doctor', 'doctor', '2', '2', 'teacher', 5, 'no', 'no', 'fair', 100, 0, 'Slim', 'Fit', 'ab+', 'Non-Vegetarian', 'dev', 'Pices', 'No', 'asr', NULL, 'Dhiman', 'Sandhu', 'Sikh', 'M.A', 'B.ED from G.N.D.U', NULL, '', NULL, 'i am very caring sweat spoken girl', '', '', '', '943489489', NULL),
(3, 'kuldeep', 'sekhon', 'singh', 'mca.kuldeep.sekhon@gmail.com', '1234', '1998-11-24', 'null', 'hssekhon', 'widowed', 'India', 'punjab', 'amritsar', '10, new sdant ave nue g.t road', 'Self', '2017-05-02', '2017-05-09', 'Retired', 'Home Mother', '2', '0', 'java developer', 2000000, 'yes', 'yes', 'wheatish', 170, 70, 'Slim', 'Fit', 'B+', 'Vegetarian', 'rakshas', 'virgo', 'Yes', 'Amritsar', NULL, 'ramgarhia', 'Sekhon', 'Hindu', 'M.C.A', 'M.C.A from ptu India', 'Hindi,Punjabi,English', 'punjabi', 'computer', 'kljslkflkdjfadsjklfdslkj', 'artie-navy-readymade-georgette-kurti.jpg', 'artie-navy-readymade-georgette-kurti1.jpg', 'chiffon-floral-print-bohemian-style-blouses.jpg', '9803242155', 1),
(5, 'manpreet', 'manhas', 'kaur', 'manpreet@gmail.com', '1234', '1993-05-11', 'female', 'jaskaran singh', 'single', 'India', 'punjab', 'amritsar', 'ranjeet  avenue b block', 'Parents', NULL, NULL, 'doctor', 'doctor', '1', '1', 'Engineer', 1, 'no', 'no', 'fair', 110, 41, 'Slim', 'Fit', 'ab+', 'Non-Vegetarian', 'rakshas', 'torus', 'No', 'asr', NULL, 'Dhiman', 'nanrah', 'Sikh', 'M.A', 'B techfrom G.N.D.U', NULL, '', NULL, 'i am only beutiful', NULL, NULL, NULL, '984843848', NULL),
(6, 'Ashma', 'Kaur', 'jeet', 'ashmajeet@gmail.com', 'Ashma', '1993-05-01', 'female', 'karam singh', 'single', 'India', 'punjab', 'amritsar', 'meera chack,amritsar', 'Self', NULL, NULL, 'farmer', 'housemaker', '2', '0', 'Software Developer', 1, 'no', 'no', 'wheatish', 105, 47, 'Slim', 'Fit', 'o+', 'Vegetarian', '', 'Virgo', 'No', 'daduana', NULL, 'Dhiman', 'nanrah', 'Sikh', 'M.sc', 'I did my study from global ins', NULL, 'Hindi', NULL, 'My name is Ashma. I completed MCA from Global Institute Batala road. I like listen music.', NULL, NULL, NULL, '98555455555', NULL),
(8, 'rubina', 'salhotra', 'ruby', 'rubina@gmail.com', 'ruby', '2000-05-03', 'female', 'suresh kumar', 'single', 'Canada', 'punjab', 'batala', 'gandhi chowk batala', 'Self', NULL, NULL, 'shopkeeper', 'housemaker', '2', '0', 'Software Developer', 5, 'no', 'no', 'wheatish', 116, 60, 'Slim', 'Fit', 'A+', 'Vegetarian', '', 'Virgo', 'No', 'batala', NULL, 'Sharma', 'Sandhu', 'Hindu', 'M.sc', 'MCA', NULL, 'Hindi', NULL, 'MCA', NULL, NULL, NULL, '8872256421', NULL),
(9, 'daljit', 'sandhu', 'singh', 'jeet@yahoo.com', 'JEET', '1992-05-02', 'male', 'kamal', 'single', 'India', 'punjab', 'amritsar', 'hathi gate amritsar', 'Self', NULL, NULL, 'businessman', 'housemaker', '1', '1', 'Doctor', 10, 'no', 'no', 'wheatish', 122, 75, 'Slim', 'Fit', 'A+', 'Vegetarian', '', 'torus', 'No', 'amritsar', NULL, 'Dhiman', 'Sandhu', 'Hindu', 'P.hd', 'ACET COLLEGE', NULL, 'Hindi', NULL, 'I AM GOOD LOOKING PERSON.', NULL, NULL, NULL, '4582361548', NULL),
(10, 'Simran', 'singh', 'jeet', 'singh@gmail.com', 'singh', '1991-05-02', 'male', 'mehtab singh', 'single', 'India', 'punjab', 'amritsar', 'khanna', 'Self', NULL, NULL, 'government job', 'housemaker', '1', '2', 'Engineer', 5, 'no', 'no', 'wheatish', 112, 79, 'Slim', 'Fit', 'o', 'Vegetarian', '', 'Pices', 'No', 'gurdaspur', NULL, 'Dhiman', 'sekhon', 'Sikh', 'M.sc', 'satyam college', NULL, 'French', NULL, 'I AM CHARMING AND CARING PERSON.', NULL, NULL, NULL, '8887565445', NULL),
(12, 'reena', 'Singh', 'kumari', 'reena@gmail.com', '1234', '1983-04-11', 'female', 'balraj chaudri', 'single', 'India', 'himachal', 'amritsar', 'fdgsfdg', 'Self', NULL, NULL, 'doctor', 'doctor', '1', '1', 'Software Developer', 5, 'no', 'no', 'wheatish', 120, 41, 'Slim', 'Fit', 'b+tv', 'Vegetarian', 'dev', 'Pices', 'Yes', 'asr', NULL, 'Ramgariah', 'nanrah', 'Sikh', 'B.A', 'dfds', NULL, '', NULL, 'qweqw', NULL, NULL, NULL, '34324', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
