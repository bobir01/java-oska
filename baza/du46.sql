-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2014 at 12:30 PM
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
-- Table structure for table `du46`
--

CREATE TABLE IF NOT EXISTS `du46` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomer` int(11) NOT NULL,
  `texSredstv` int(11) NOT NULL,
  `commentexsr` text,
  `neispravnosti` int(11) NOT NULL,
  `commentneis` text,
  `srokUstranenie` date NOT NULL,
  `prinyatieMeri` int(11) DEFAULT NULL,
  `commentpm` text,
  `otvetsvennie` int(11) NOT NULL,
  `dataUstranenie` date DEFAULT NULL,
  `sposobUstranenie` text,
  `otvetstvenniySotrudnik` int(11) DEFAULT NULL,
  `proverkaOUstranenie` int(11) DEFAULT NULL,
  `idAkt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `du46`
--

INSERT INTO `du46` (`id`, `nomer`, `texSredstv`, `commentexsr`, `neispravnosti`, `commentneis`, `srokUstranenie`, `prinyatieMeri`, `commentpm`, `otvetsvennie`, `dataUstranenie`, `sposobUstranenie`, `otvetstvenniySotrudnik`, `proverkaOUstranenie`, `idAkt`) VALUES
(3, 1, 1, 'null', 1, 'null', '2014-01-01', 1, 'null', 320, NULL, NULL, NULL, NULL, 76),
(4, 2, 1, 'null', 2, 'null', '2014-01-01', 1, 'null', 319, NULL, NULL, NULL, NULL, 76),
(5, 1, 3, 'null', 4, 'null', '2014-01-02', 1, 'null', 319, NULL, NULL, NULL, NULL, 84);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
