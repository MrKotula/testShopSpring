-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Час створення: Жов 01 2022 р., 18:30
-- Версія сервера: 5.7.24
-- Версія PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `spring_db`
--

-- --------------------------------------------------------

--
-- Структура таблиці `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(10);

-- --------------------------------------------------------

--
-- Структура таблиці `item`
--

CREATE TABLE `item` (
  `id` bigint(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL,
  `price` smallint(6) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `item`
--

INSERT INTO `item` (`id`, `image`, `info`, `price`, `title`) VALUES
(1, 'https://sklepmartes.pl/media/catalog/product/cache/44e5e6a5de13081f430826f494e7fd04/_/5/_5902786259724_-DIJON-french_blue-reflective-001_1.webp', 'New collection', 20, 'T-shirt blue'),
(2, 'https://sklepmartes.pl/media/catalog/product/cache/44e5e6a5de13081f430826f494e7fd04/_/4/_4064537858608_I_001-67176402-SNEAKER-GRAPHIC-TEE-PUMA-WHITE-white.webp', 'New collection', 35, 'T-shirt Puma white'),
(3, 'https://sklepmartes.pl/media/catalog/product/cache/44e5e6a5de13081f430826f494e7fd04/F/X/FX4166_1_FOOTWEAR_Photography_Side_Lateral_Center_View_white.webp', 'Old collection', 110, 'Shoe Adidas'),
(4, 'https://sklepmartes.pl/media/catalog/product/cache/44e5e6a5de13081f430826f494e7fd04/_/5/_5902786255269_-001-MANON-mood_indigo_1.webp', 'New collection Spring', 95, 'Sweeter MARTES ESSENTIALS');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `email`, `enabled`, `password`, `username`) VALUES
(6, 'race1001@ukr.net', b'1', '$2a$10$TThDDJnrOT364HybtQWynesD4L1iwEoXttv0tHi5KCGBzaUnKLFOq', 'Bodik'),
(7, 'Bodik@ukr.net', b'1', '$2a$10$CcgcH1dYNHglz.xz8bcqYOz4/vRWfx7DlrA0rUZTWsgyLko.HMRO2', 'Bodik1001'),
(8, 'race1111@ukr.ner', b'1', '$2a$10$RiYwSXvQT1f4ERfpot3Kb.OYpo.ytvgEImWonlHME6Far.SHXZZ/.', 'Bobby'),
(9, 'help@update.com', b'1', '$2a$10$htSennSpyPAOO7g0GO7CTe8uIjdKkSOpRlgvZdCU/1p4gdo6nki3m', 'Bodik1');

-- --------------------------------------------------------

--
-- Структура таблиці `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `roles` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `user_role`
--

INSERT INTO `user_role` (`user_id`, `roles`) VALUES
(6, 'USER'),
(7, 'USER'),
(8, 'USER'),
(9, 'ADMINISTRATOR');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `FKj345gk1bovqvfame88rcx7yyx` (`user_id`);

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FKj345gk1bovqvfame88rcx7yyx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
