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
-- Table structure for table `klassifikator`
--

CREATE TABLE IF NOT EXISTS `klassifikator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nameStansiya` varchar(255) NOT NULL,
  `pch` varchar(16) NOT NULL,
  `shch` varchar(16) NOT NULL,
  `ech` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=261 ;

--
-- Dumping data for table `klassifikator`
--

INSERT INTO `klassifikator` (`id`, `nameStansiya`, `pch`, `shch`, `ech`) VALUES
(1, 'Чукурсай', 'ПЧ-1', 'ШЧ-1', 'ЭЧ-1'),
(2, 'Келес', 'ПЧ-1', 'ШЧ-1', 'ЭЧ-1'),
(3, 'Салар', 'ПЧ-1', 'ШЧ-1', 'ЭЧ-1'),
(4, 'Ташкент Товарная', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(5, 'Хамза', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(6, 'Назарбек', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(7, 'Далагузар', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(8, 'Тукимачи', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(9, 'Рахимова', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(10, 'Урта - Аул', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(11, 'Ташкент - Пассажир', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(12, 'Узбекистан', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(13, 'Янгиюль', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(14, 'Пахта', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(15, 'Алмазар', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(16, 'Чиназ', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(17, 'Новый Чиназ', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(18, 'Сырдарьинская', 'ПЧ-4', 'ШЧ-3', 'ЭЧ-2'),
(19, 'Бахт', 'ПЧ-4', 'ШЧ-3', 'ЭЧ-2'),
(20, 'Акалтын', 'ПЧ-4', 'ШЧ-3', 'ЭЧ-2'),
(21, 'Гулистан', 'ПЧ-4', 'ШЧ-3', 'ЭЧ-2'),
(22, 'Баяут', 'ПЧ-4', 'ШЧ-3', 'ЭЧ-2'),
(23, 'Янгиер', 'ПЧ-4', 'ШЧ-3', 'ЭЧ-2'),
(24, 'Хаваст', 'ПЧ-4', 'ШЧ-3', 'ЭЧ-2'),
(25, 'Рзд 3', 'ПЧ-5', 'ШЧ-3', 'ЭЧ-2'),
(26, 'Даштобод', 'ПЧ-5', 'ШЧ-3', 'ЭЧ-2'),
(27, 'Зарбдор', 'ПЧ-5', 'ШЧ-3', 'ЭЧ-2'),
(28, 'Рзд 9', 'ПЧ-5', 'ШЧ-3', 'ЭЧ-2'),
(29, 'Рзд 10', 'ПЧ-5', 'ШЧ-3', 'ЭЧ-2'),
(30, 'Джизак', 'ПЧ-5', 'ШЧ-3', 'ЭЧ-2'),
(31, 'Ирджарская', 'ПЧ-5', 'ШЧ-3', 'ЭЧ-2'),
(32, 'Дустлик', 'ПЧ-5', 'ШЧ-3', 'ЭЧ-2'),
(33, 'Пахтакор', 'ПЧ-5', 'ШЧ-3', 'ЭЧ-2'),
(34, 'Рзд 205', 'ПЧ-5', 'ШЧ-3', 'ЭЧ-2'),
(35, 'Байтаг', 'ПЧ-5', 'ШЧ-3', 'ЭЧ-2'),
(36, 'Чимкурган', 'ПЧ-5', 'ШЧ-3', 'ЭЧ-2'),
(37, 'Ялангач', 'ПЧ-1', 'ШЧ-1', 'ЭЧ-1'),
(38, 'Кадырья', 'ПЧ-1', 'ШЧ-1', 'ЭЧ-1'),
(39, 'Аккавак', 'ПЧ-1', 'ШЧ-1', 'ЭЧ-1'),
(40, 'Бозсу', 'ПЧ-1', 'ШЧ-1', 'ЭЧ-1'),
(41, 'Чирчик', 'ПЧ-1', 'ШЧ-1', 'ЭЧ-1'),
(42, 'Аранчи', 'ПЧ-1', 'ШЧ-1', 'ЭЧ-1'),
(43, 'Барраж', 'ПЧ-1', 'ШЧ-1', 'ЭЧ-1'),
(44, 'Ангрен', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(45, 'Аблык', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(46, 'Акча', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(47, 'Ходжикент', 'ПЧ-1', 'ШЧ-1', 'ЭЧ-1'),
(48, 'Ахангаран', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(49, 'Озодлик', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(50, 'Тойтепа', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(51, 'Жалоир', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(52, 'Сергели', 'ПЧ-2', 'ШЧ-1', 'ЭЧ-1'),
(53, 'Карасу', 'ПЧ-6', 'ШЧ-1', 'ЭЧ-3'),
(54, 'Мехнатабад', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(55, 'Какир', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(56, 'Фуркат', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(57, 'Алтыарык', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(58, 'Маргилан', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(59, 'Киргили', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(60, 'Фергана 2', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(61, 'Кувасай', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(62, 'Ахунбабаева', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(63, 'Акбарабад', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(64, 'Кува', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(65, 'Ассаке', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(66, 'Шахрихан', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(67, 'Андижан 1', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(68, 'Грунчмазар', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(69, 'Савай', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(70, 'Ханабад', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(71, 'Файзабад', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(72, 'Коканд', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(73, 'Суванабад', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(74, 'Рапкан', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(75, 'Яйпан', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(76, 'Арыкбаши', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(77, 'Бувайда', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(78, 'Пап', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(79, 'Чуст', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(80, 'Туракурган', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(81, 'Раустан', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(82, 'Наманган', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(83, 'Чартак', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(84, 'Уйчи', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(85, 'Учкурган', 'ПЧ-6', 'ШЧ-4', 'ЭЧ-3'),
(86, 'Хаккулабад', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(87, 'Пайтуг', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(88, 'П.Куйган-ЯР', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(89, 'Андижан 2', 'ПЧ-7', 'ШЧ-4', 'ЭЧ-3'),
(90, 'Муборек', 'ПЧ-14', 'ШЧ-8', 'ЭЧ-5'),
(91, 'Серный завод', 'ПЧ-14', 'ШЧ-8', 'ЭЧ-5'),
(92, 'Рзд 148', 'ПЧ-14', 'ШЧ-8', 'ЭЧ-5'),
(93, 'Касан', 'ПЧ-14', 'ШЧ-8', 'ЭЧ-5'),
(94, 'Карши', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(95, 'Раз 151', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(96, 'Рзд 154', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(97, 'Рзд 165', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(98, 'Кашкадарья', 'ПЧ-14', 'ШЧ-8', 'ЭЧ-5'),
(99, 'Рзд 149', 'ПЧ-14', 'ШЧ-8', 'ЭЧ-5'),
(100, 'Алатун', 'ПЧ-14', 'ШЧ-8', 'ЭЧ-5'),
(101, 'Некуз', 'ПЧ-14', 'ШЧ-8', 'ЭЧ-5'),
(102, 'Айрытам', 'ПЧ-14', 'ШЧ-8', 'ЭЧ-5'),
(103, 'Дашт', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(104, 'Шуртан', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(105, 'Гузар', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(106, 'Камаши', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(107, 'Яккабаг', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(108, 'Танхоз', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(109, 'Китаб', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(110, 'Пролетарабад', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(111, 'Рзд 145', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(112, 'Рзд 146', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(113, 'Рзд 144', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(114, 'Тошгузар', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(115, 'Кайирма', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(116, 'Бузахур', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(117, 'Джаркудук', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(118, 'Дехканабад', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(119, 'Карадахна', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(120, 'Чашмаихафизон', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(121, 'Окработ', 'ПЧ-12', 'ШЧ-8', 'ЭЧ-5'),
(122, 'Болдырь', 'ПЧ-13', 'ШЧ-9', 'ЭЧ-7'),
(123, 'Шерабад', 'ПЧ-13', 'ШЧ-9', 'ЭЧ-7'),
(124, 'Наушахар', 'ПЧ-13', 'ШЧ-9', 'ЭЧ-7'),
(125, 'Учкизил', 'ПЧ-13', 'ШЧ-9', 'ЭЧ-7'),
(126, 'Термез', 'ПЧ-13', 'ШЧ-9', 'ЭЧ-7'),
(127, 'Бактрия', 'ПЧ-13', 'ШЧ-9', 'ЭЧ-7'),
(128, 'Джаркурган', 'ПЧ-13', 'ШЧ-9', 'ЭЧ-7'),
(129, 'Сурханы', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(130, 'Кумкурган', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(131, 'Эльбаян', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(132, 'Шурчи', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(133, 'Хайрабад', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(134, 'Денау', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(135, 'Сарыасия', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(136, 'Кудукли', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(137, 'Галаба', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(138, 'Окназар', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(139, 'Шураб', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(140, 'Дарбанд', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(141, 'Бойсун', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(142, 'Пульхаким', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(143, 'Тангимуш', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(144, 'Окжар', 'ПЧ-15', 'ШЧ-9', 'ЭЧ-7'),
(145, 'Каракалпакстан', 'ПЧ-26', 'ШЧ-11', 'ЭЧ-10'),
(146, 'Жаслык', 'ПЧ-26', 'ШЧ-11', 'ЭЧ-10'),
(147, 'Бердах', 'ПЧ-26', 'ШЧ-11', 'ЭЧ-10'),
(148, 'Бостан', 'ПЧ-26', 'ШЧ-11', 'ЭЧ-10'),
(149, 'Актобе', 'ПЧ-26', 'ШЧ-11', 'ЭЧ-10'),
(150, 'Кийк - Сай', 'ПЧ-26', 'ШЧ-11', 'ЭЧ-10'),
(151, 'Аяпберган', 'ПЧ-26', 'ШЧ-11', 'ЭЧ-10'),
(152, 'Кырк-Киз', 'ПЧ-26', 'ШЧ-11', 'ЭЧ-10'),
(153, 'Ажинияз', 'ПЧ-26', 'ШЧ-11', 'ЭЧ-10'),
(154, 'Абадан', 'ПЧ-26', 'ШЧ-11', 'ЭЧ-10'),
(155, 'Куаныш', 'ПЧ-26', 'ШЧ-11', 'ЭЧ-10'),
(156, 'Кунград', 'ПЧ-25', 'ШЧ-11', 'ЭЧ-10'),
(157, 'Раушан', 'ПЧ-25', 'ШЧ-11', 'ЭЧ-10'),
(158, 'Кунходжа', 'ПЧ-26', 'ШЧ-11', 'ЭЧ-10'),
(159, 'Барса - Келмес', 'ПЧ-26', 'ШЧ-11', 'ЭЧ-10'),
(160, 'Караозек', 'ПЧ-25', 'ШЧ-11', 'ЭЧ-10'),
(161, 'Элли - Кала', 'ПЧ-25', 'ШЧ-10', 'ЭЧ-9'),
(162, 'Беруний', 'ПЧ-25', 'ШЧ-10', 'ЭЧ-9'),
(163, 'Алтынкуль', 'ПЧ-25', 'ШЧ-11', 'ЭЧ-10'),
(164, 'Шуманай', 'ПЧ-25', 'ШЧ-11', 'ЭЧ-10'),
(165, 'Хатеп', 'ПЧ-25', 'ШЧ-11', 'ЭЧ-10'),
(166, 'Ходжейли', 'ПЧ-25', 'ШЧ-11', 'ЭЧ-10'),
(167, 'Найманкуль', 'ПЧ-25', 'ШЧ-11', 'ЭЧ-10'),
(168, 'Шават', 'ПЧ-18', 'ШЧ-10', 'ЭЧ-9'),
(169, 'Ургенч', 'ПЧ-18', 'ШЧ-10', 'ЭЧ-9'),
(170, 'Ханки', 'ПЧ-18', 'ШЧ-10', 'ЭЧ-9'),
(171, 'Багат', 'ПЧ-18', 'ШЧ-10', 'ЭЧ-9'),
(172, 'Хазарасп', 'ПЧ-18', 'ШЧ-10', 'ЭЧ-9'),
(173, 'Питнек', 'ПЧ-18', 'ШЧ-10', 'ЭЧ-9'),
(174, 'Тахиаташ - ПРИС', 'ПЧ-25', 'ШЧ-11', 'ЭЧ-10'),
(175, 'Нукус', 'ПЧ-25', 'ШЧ-11', 'ЭЧ-10'),
(176, 'Тахиркуль', 'ПЧ-25', 'ШЧ-11', 'ЭЧ-10'),
(177, 'Кумшунгуль', 'ПЧ-25', 'ШЧ-11', 'ЭЧ-10'),
(178, 'Чимбай', 'ПЧ-25', 'ШЧ-11', 'ЭЧ-10'),
(179, 'Назархан', 'ПЧ-25', 'ШЧ-11', 'ЭЧ-10'),
(180, 'Турткуль', 'ПЧ-25', 'ШЧ-10', 'ЭЧ-9'),
(181, 'Кайбаклы', 'ПЧ-25', 'ШЧ-11', 'ЭЧ-10'),
(182, 'Мискен', 'ПЧ-18', 'ШЧ-10', 'ЭЧ-9'),
(183, 'Истиклол', 'ПЧ-18', 'ШЧ-10', 'ЭЧ-9'),
(184, 'Бадай', 'ПЧ-18', 'ШЧ-10', 'ЭЧ-9'),
(185, 'Рзд 180', 'ПЧ-18', 'ШЧ-11', 'ЭЧ-9'),
(186, 'Газоджак', 'ПЧ-18', 'ШЧ-11', 'ЭЧ-9'),
(187, 'Тахиа - Таш', 'ПЧ-18', 'ШЧ-11', 'ЭЧ-9'),
(188, 'Кайбакли', 'ПЧ-18', 'ШЧ-11', 'ЭЧ-9'),
(189, 'Султаниадаг', 'ПЧ-18', 'ШЧ-11', 'ЭЧ-9'),
(190, 'Дунгулюк', 'ПЧ-18', 'ШЧ-11', 'ЭЧ-9'),
(191, 'Каскатау', 'ПЧ-18', 'ШЧ-11', 'ЭЧ-9'),
(192, 'Бургутли', 'ПЧ-18', 'ШЧ-11', 'ЭЧ-9'),
(194, 'Галляарал', 'ПЧ-8', 'ШЧ-5', 'ЭЧ-6'),
(195, 'Маржанбулак', 'ПЧ-8', 'ШЧ-5', 'ЭЧ-6'),
(196, 'Булунгур', 'ПЧ-8', 'ШЧ-5', 'ЭЧ-6'),
(197, 'Джамбай', 'ПЧ-8', 'ШЧ-5', 'ЭЧ-6'),
(198, 'Зарафшан', 'ПЧ-8', 'ШЧ-5', 'ЭЧ-6'),
(199, 'Самарканд', 'ПЧ-8', 'ШЧ-5', 'ЭЧ-6'),
(200, 'Улугбек', 'ПЧ-8', 'ШЧ-5', 'ЭЧ-6'),
(201, 'Мароканд', 'ПЧ-8', 'ШЧ-5', 'ЭЧ-6'),
(202, 'Джума', 'ПЧ-8', 'ШЧ-5', 'ЭЧ-6'),
(203, 'Рзд 24', 'ПЧ-8', 'ШЧ-5', 'ЭЧ-6'),
(204, 'Нурбулок', 'ПЧ-11', 'ШЧ-5', 'ЭЧ-6'),
(205, 'Каттакурган', 'ПЧ-11', 'ШЧ-5', 'ЭЧ-6'),
(206, 'Рзд 28', 'ПЧ-11', 'ШЧ-5', 'ЭЧ-6'),
(207, 'Рзд 29', 'ПЧ-11', 'ШЧ-5', 'ЭЧ-6'),
(208, 'Зирабулак', 'ПЧ-11', 'ШЧ-5', 'ЭЧ-6'),
(209, 'Рзд 30', 'ПЧ-11', 'ШЧ-5', 'ЭЧ-6'),
(210, 'Рзд 31', 'ПЧ-11', 'ШЧ-5', 'ЭЧ-6'),
(211, 'Зиевуддин', 'ПЧ-11', 'ШЧ-5', 'ЭЧ-6'),
(212, 'Рзд 33', 'ПЧ-11', 'ШЧ-5', 'ЭЧ-6'),
(213, 'Навои', 'ПЧ-11', 'ШЧ-6', 'ЭЧ-4'),
(214, 'Бинокор', 'ПЧ-11', 'ШЧ-6', 'ЭЧ-4'),
(215, 'Малик', 'ПЧ-11', 'ШЧ-7', 'ЭЧ-4'),
(216, 'Рзд 38', 'ПЧ-11', 'ШЧ-7', 'ЭЧ-4'),
(217, 'Кызылтепа', 'ПЧ-11', 'ШЧ-7', 'ЭЧ-4'),
(218, 'Рзд 39', 'ПЧ-11', 'ШЧ-7', 'ЭЧ-4'),
(219, 'Куюмазар', 'ПЧ-10', 'ШЧ-7', 'ЭЧ-4'),
(220, 'Рзд 40', 'ПЧ-10', 'ШЧ-7', 'ЭЧ-4'),
(221, 'Рзд 41', 'ПЧ-10', 'ШЧ-7', 'ЭЧ-4'),
(222, 'Рзд 42', 'ПЧ-10', 'ШЧ-7', 'ЭЧ-4'),
(223, 'Бухара 2', 'ПЧ-10', 'ШЧ-7', 'ЭЧ-4'),
(224, 'Рзд 43', 'ПЧ-10', 'ШЧ-7', 'ЭЧ-4'),
(225, 'Мургак', 'ПЧ-10', 'ШЧ-7', 'ЭЧ-4'),
(226, 'Якатут', 'ПЧ-10', 'ШЧ-7', 'ЭЧ-4'),
(227, 'Каракуль', 'ПЧ-10', 'ШЧ-7', 'ЭЧ-4'),
(228, 'Алат', 'ПЧ-10', 'ШЧ-7', 'ЭЧ-4'),
(229, 'Ходжадавлет', 'ПЧ-10', 'ШЧ-7', 'ЭЧ-4'),
(230, 'Бухара 1', 'ПЧ-10', 'ШЧ-7', 'ЭЧ-4'),
(231, 'Каган', 'ПЧ-10', 'ШЧ-7', 'ЭЧ-4'),
(232, 'Рзд 143', 'ПЧ-10', 'ШЧ-7', 'ЭЧ-4'),
(233, 'Караулбазар', 'ПЧ-10', 'ШЧ-7', 'ЭЧ-4'),
(234, 'Тинчлик', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(235, 'Кармана', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(236, 'Рзд 137', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(237, 'Канимех', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(238, 'Рзд 303', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(239, 'Зафарабад', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(240, 'Рзд 304', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(241, 'Рзд 139', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(242, 'Рзд 305', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(243, 'Каракатта', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(244, 'Тошкура', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(245, 'Рзд 306', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(246, 'Мустакиллик', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(247, 'Рзд 307', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(248, 'Аджибугут', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(249, 'Рзд 311', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(250, 'Рзд 308', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(251, 'Кызылкудук', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(252, 'Янги - Зарафшан', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(253, 'Рзд 309', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(254, 'Рзд 142', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(255, 'Учкудук - 2', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(256, 'Учкудук - 1', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(257, 'Майлисай', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(258, 'Куралы', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(259, 'Бузаубай', 'ПЧ-9', 'ШЧ-6', 'ЭЧ-4'),
(260, '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
