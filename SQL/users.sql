-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 13 2013 г., 14:39
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
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip` text COLLATE utf8_unicode_ci NOT NULL,
  `age` tinyint(4) NOT NULL DEFAULT '25',
  `date` date NOT NULL,
  `active` tinyint(11) NOT NULL DEFAULT '0',
  `accesslevel` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=36 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `email`, `hash`, `ip`, `age`, `date`, `active`, `accesslevel`) VALUES
(1, 'vossmy', 'test1234', '', 'hstFQ08Iri13I', '127.0.0.1', 100, '2013-04-25', 0, 0),
(2, '', '', '', 'hstFQ08Iri13I', '', 25, '0000-00-00', 0, 0),
(17, 'dsdsd', 'sadsadasdsa', 'artem@nail.ru', 'hstFQ08Iri13I', '', 25, '0000-00-00', 0, 0),
(4, '', '', '', 'hstFQ08Iri13I', '', 9, '0000-00-00', 0, 0),
(7, '', '123', 'inpost@list.ru', 'hstFQ08Iri13I', '', 2, '0000-00-00', 0, 0),
(11, '', '', '', 'hstFQ08Iri13I', '', 27, '0000-00-00', 0, 0),
(14, '', '', '', 'hstFQ08Iri13I', '', 24, '0000-00-00', 0, 0),
(15, '', '', '', 'hstFQ08Iri13I', '', 26, '0000-00-00', 0, 0),
(16, '', '', '', 'hstFQ08Iri13I', '', 35, '0000-00-00', 0, 0),
(19, 'Артем', 'gfhjkm123', 'artem@nail.ru', 'hstFQ08Iri13I', '', 25, '0000-00-00', 0, 0),
(20, 'Чашка', 'парооль', 'dfgfd@mail.ru', 'hstFQ08Iri13I', '', 25, '0000-00-00', 0, 0),
(21, 'gdfgdfgdfgdf', 'hsCNqPVOepg8M', 'artem@nail.ru', 'hstFQ08Iri13I', '', 25, '0000-00-00', 0, 0),
(22, 'Артем', 'hscKXuwb7mp5w', 'fds@fdfd.com', 'hstFQ08Iri13I', '', 25, '0000-00-00', 0, 0),
(23, 'фарет2', 'hsfzBB7zdsVyY', 'dfgfd@mail.ru', 'hstFQ08Iri13I', '', 25, '0000-00-00', 0, 0),
(24, 'artem32', 'hsUDzu0ifZkrM', 'fds@fdfd.com', 'hstFQ08Iri13I', '', 0, '0000-00-00', 0, 0),
(25, 'artem43', 'hs2iDPm9Qz3Qc', 'dfgfd@mail.ru', 'hstFQ08Iri13I', '', 21, '0000-00-00', 0, 0),
(26, 'artem43', 'hs2iDPm9Qz3Qc', 'dfgfd@mail.ru', 'hstFQ08Iri13I', '', 21, '0000-00-00', 0, 0),
(27, 'artem54', 'hseIqpTj45pl2', 'artem@nail.ru', 'hstFQ08Iri13I', '', 23, '0000-00-00', 0, 0),
(28, 'artem101', 'hs/EIJZhLJqOU', 'artem@nail.ru', 'hstFQ08Iri13I', '', 33, '0000-00-00', 0, 0),
(29, 'artem97', 'hsID.P8tYpyzo', 'dfgfd@mail.ru', 'hstFQ08Iri13I', '', 32, '2013-05-03', 1, 0),
(30, 'Артем123', 'hsln8XP5HeKRo', 'art2em@nail.ru', 'hstFQ08Iri13I', '', 22, '2013-05-03', 1, 0),
(31, 'artem', 'hsU6ur1qKsGU.', 'artem@mail.ru', 'hstFQ08Iri13I', '', 33, '2013-05-03', 1, 2),
(32, 'artemtest', 'hsmmg34jusVec', 'vossmy@gmail.com', 'hstFQ08Iri13I', '', 23, '2013-05-03', 1, 2),
(33, 'access1', 'hsmmg34jusVec', 'test1@maail.ru', 'hstFQ08Iri13I', '', 22, '2013-05-08', 1, 1),
(34, 'access2', 'hsmmg34jusVec', 'test2@maail.ru', 'hstFQ08Iri13I', '', 22, '2013-05-08', 1, 2),
(35, 'access5', 'hsmmg34jusVec', 'test5@maail.ru', 'hstFQ08Iri13I', '', 22, '2013-05-08', 1, 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
