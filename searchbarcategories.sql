-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Giu 01, 2022 alle 15:38
-- Versione del server: 10.4.22-MariaDB
-- Versione PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `searchbarcategories`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `category1`
--

CREATE TABLE `category1` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `category1`
--

INSERT INTO `category1` (`id`, `title`, `description`) VALUES
(1, 'mi', 'adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl'),
(2, 'mi', 'Pellentesque tincidunt'),
(3, 'arcu', 'Integer in magna.'),
(4, 'massa.', 'dui lectus rutrum urna, nec luctus felis purus'),
(5, 'leo.', 'ut odio');

-- --------------------------------------------------------

--
-- Struttura della tabella `category2`
--

CREATE TABLE `category2` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `category2`
--

INSERT INTO `category2` (`id`, `title`, `description`) VALUES
(1, 'dui,', 'dignissim tempor arcu. Vestibulum ut eros non'),
(2, 'Aliquam', 'nibh. Aliquam ornare,'),
(3, 'ultrices', 'sed orci lobortis augue'),
(4, 'Aenean', 'augue porttitor'),
(5, 'neque', 'tempor augue');

-- --------------------------------------------------------

--
-- Struttura della tabella `category3`
--

CREATE TABLE `category3` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `category3`
--

INSERT INTO `category3` (`id`, `title`, `description`) VALUES
(1, 'at', 'Morbi non sapien molestie orci tincidunt'),
(2, 'fringilla', 'metus sit amet ante. Vivamus non'),
(3, 'Cras', 'gravida molestie arcu. Sed eu nibh vulputate'),
(4, 'sit', 'malesuada ut,'),
(5, 'magnis', 'Integer aliquam adipiscing lacus.');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `category1`
--
ALTER TABLE `category1`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `category2`
--
ALTER TABLE `category2`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `category3`
--
ALTER TABLE `category3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `category1`
--
ALTER TABLE `category1`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `category2`
--
ALTER TABLE `category2`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `category3`
--
ALTER TABLE `category3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
