-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2014 at 12:38 PM
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
-- Table structure for table `texsredstv`
--

CREATE TABLE IF NOT EXISTS `texsredstv` (
  `idTexsredstv` int(11) NOT NULL,
  `nameTexsredstv` varchar(255) NOT NULL,
  PRIMARY KEY (`idTexsredstv`),
  UNIQUE KEY `nameTexsredstv` (`nameTexsredstv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `texsredstv`
--

INSERT INTO `texsredstv` (`idTexsredstv`, `nameTexsredstv`) VALUES
(6, 'Вагонное хозяйство'),
(7, 'Грузовое хозяйство '),
(5, 'Пассажирское хозяйство'),
(8, 'Сортировочных горок'),
(2, 'Хозяйства пути'),
(3, 'Хозяйства сигнализации и связи'),
(1, 'Хозяйство перевозок'),
(4, 'Хозяйство электроснабжения');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
