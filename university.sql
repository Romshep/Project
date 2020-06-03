-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 03 2020 г., 21:02
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `university`
--

-- --------------------------------------------------------

--
-- Структура таблицы `curse`
--

CREATE TABLE `curse` (
  `id` int(11) NOT NULL,
  `coursename` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `curse`
--

INSERT INTO `curse` (`id`, `coursename`, `description`) VALUES
(1, 'wefwf', 'wrfwdwe'),
(2, 'wlefm', 'sdlfmsdkv;sldv;lds;vds'),
(3, 'welfkmwkl', 'wlfjwelfk');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`) VALUES
(1, 'sdc', 'dcf', 'sdc', 'ef@j', 'fe'),
(2, 'sdc', 'dcf', 'sdc', 'ef@j', 'fe'),
(3, 'sdc', 'dcf', 'sdc', 'ef@j', 'fe'),
(4, 'sdv', 'fvg', 'sdv', 'f@g', 'qwe'),
(5, 'fdv', 'vf', 'sd', 'f@f', 'q'),
(6, 'fdv', 'vf', 'sd', 'f@f', 'q'),
(7, 'fv', 'we', 'dsc', 'd@f', 'fe'),
(8, 'sdc', 'dc', 'dc', 'd@d', 'de'),
(9, 'sdf', 'sdf', 'ef', 'e@r', 'ed'),
(10, 'sdf', 'sdf', 'ef', 'e@r', 'ed'),
(11, 'sikjd', 'fsfs', 'sffs', 'f@f', 'f');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `curse`
--
ALTER TABLE `curse`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `curse`
--
ALTER TABLE `curse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
