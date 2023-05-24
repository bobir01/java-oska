-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2014 at 12:31 PM
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
-- Table structure for table `meri`
--

CREATE TABLE IF NOT EXISTS `meri` (
  `idMeri` int(11) NOT NULL,
  `nameMeri` varchar(255) NOT NULL,
  PRIMARY KEY (`idMeri`),
  UNIQUE KEY `nameMeri` (`nameMeri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meri`
--

INSERT INTO `meri` (`idMeri`, `nameMeri`) VALUES
(1, ''),
(2, 'Закрытие движения'),
(3, 'Скорость 25 км/час'),
(4, 'Скорость 40 км/час'),
(5, 'Скорость 50 км/час'),
(6, 'Скорость 55 км/час'),
(7, 'Скорость 60 км/час'),
(8, 'Скорость 65 км/час'),
(9, 'Скорость 70 км/час'),
(10, 'Скорость 75 км/час');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
