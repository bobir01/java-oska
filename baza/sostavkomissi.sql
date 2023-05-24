-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2014 at 12:36 PM
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
-- Table structure for table `sostavkomissi`
--

CREATE TABLE IF NOT EXISTS `sostavkomissi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `predpriyatie` int(11) NOT NULL,
  `doljnost` int(11) NOT NULL,
  `fio` int(11) NOT NULL,
  `idAkt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `sostavkomissi`
--

INSERT INTO `sostavkomissi` (`id`, `predpriyatie`, `doljnost`, `fio`, `idAkt`) VALUES
(1, 319, 6, 5, 76),
(2, 319, 7, 6, 79),
(3, 319, 7, 6, 79),
(4, 319, 9, 9, 78),
(5, 319, 7, 6, 77),
(6, 319, 6, 5, 80),
(7, 319, 7, 6, 80),
(8, 319, 5, 4, 80),
(9, 319, 6, 5, 76),
(10, 319, 7, 6, 76),
(11, 319, 9, 9, 82),
(12, 319, 7, 6, 84),
(13, 319, 9, 9, 84);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
