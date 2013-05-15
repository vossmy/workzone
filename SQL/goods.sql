-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 30 2013 г., 16:39
-- Версия сервера: 5.5.25
-- Версия PHP: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `vossmydb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `ava` int(11) NOT NULL DEFAULT '1',
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=30 ;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `category`, `name`, `code`, `description`, `text`, `price`, `ava`, `date`) VALUES
(4, 'refrigerator', 'Nord', '32423423', 'Холодильник высотой', 'fd s asfasfas faf\r\nas f\r\nasf asf asf asf asfas f as\r\nf asf as fasfas\r\nf \r\nas\r\nf as\r\nf as', 34234, 1, '0000-00-00'),
(9, 'refrigerator', 'Wirhpol', '343', 'df sdf sd', 'f sdf sdf sdf s', 3421, 3, '0000-00-00'),
(8, 'refrigerator', 'BOSH', '434', 'df sf sf', 'sdf sdf sdf sdf', 43223, 1, '0000-00-00'),
(7, 'tv', 'siemens', '43423', 'sdfdsfsd', 'sf sdf sd sd', 3432, 1, '0000-00-00'),
(11, 'refrigerator', 'Indesid', '2323', 'dfsdfd', 'sdfsdfsdfsdfsdf', 3423, 2, '0000-00-00'),
(12, 'tv', 'Orion', '4423', 'fsdfsd', 'f sfs fsd fsd', 34234, 2, '0000-00-00'),
(1, 'refrigerator', 'sansung', '334234', 'fsdfds', 'fsdfdsfds', 32223, 2, '0000-00-00'),
(2, 'refrigerator', 'Siemens', '34234', 'fdfds', 'fsdfsdfdsf', 34221, 2, '0000-00-00'),
(3, 'refrigerator', 'LG', '34325', 'bbdffd', 'gdgdf', 3432, 2, '0000-00-00'),
(5, 'tv', 'sansung', '334234', 'fsdfds', 'fsdfdsfds', 32223, 2, '0000-00-00'),
(10, 'tv', 'Siemens', '34234', 'fdfds', 'fsdfsdfdsf', 34221, 2, '0000-00-00'),
(13, 'tv', 'LG', '34325', 'bbdffd', 'gdgdf', 3432, 2, '0000-00-00'),
(14, 'tv', 'Saturn', '23123', 'ada sdasd as', 'd wq eqwe qw asda', 4325, 2, '0000-00-00'),
(6, 'tv', 'Star', '3423', 'sdfsdfsdfsdfds', 'dfsdfsd', 523523, 3, '0000-00-00'),
(21, 'tv', 'dfsdfsdf', '34234', 'fsdfsd', 'fsdfsdfsdf', 432, 322, '2013-04-30');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
