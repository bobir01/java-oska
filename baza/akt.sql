-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2014 at 12:29 PM
-- Server version: 5.5.25
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbaskmo`
--

-- --------------------------------------------------------

--
-- Table structure for table `akt`
--

CREATE TABLE IF NOT EXISTS `akt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameStansiya` int(11) DEFAULT NULL,
  `predsedatel` int(11) NOT NULL,
  `nachaloProved` date NOT NULL,
  `okonchaniyaProved` date NOT NULL,
  `tipOsmotr` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `akt`
--

INSERT INTO `akt` (`id`, `nameStansiya`, `predsedatel`, `nachaloProved`, `okonchaniyaProved`, `tipOsmotr`) VALUES
(76, 1, 2, '2014-01-05', '2014-01-07', 1),
(77, 1, 2, '2014-02-04', '2014-02-06', 1),
(78, 1, 3, '2014-03-05', '2014-03-08', 1),
(79, 1, 1, '2014-04-04', '2014-04-06', 1),
(80, 1, 2, '2014-05-05', '2014-05-07', 1),
(81, 1, 1, '2015-05-20', '2014-05-07', 1),
(82, 1, 1, '2015-05-20', '2014-05-07', 1),
(83, 1, 2, '2014-06-09', '2014-06-15', 1),
(84, 45, 49, '2014-01-05', '2014-01-07', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
