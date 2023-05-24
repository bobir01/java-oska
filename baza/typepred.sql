-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2014 at 12:40 PM
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
-- Table structure for table `typepred`
--

CREATE TABLE IF NOT EXISTS `typepred` (
  `id` int(11) NOT NULL,
  `typePredpriyatie` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `typePredpriyatie` (`typePredpriyatie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `typepred`
--

INSERT INTO `typepred` (`id`, `typePredpriyatie`) VALUES
(5, 'ВЧД'),
(6, 'Грузовое хозяйство'),
(2, 'ПЧ'),
(1, 'Станция'),
(3, 'ШЧ'),
(4, 'ЭЧ');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
