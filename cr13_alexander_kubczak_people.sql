-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 28. Sep 2019 um 16:45
-- Server-Version: 10.3.16-MariaDB
-- PHP-Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr13_alexander_kubczak_people`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `relationships`
--

CREATE TABLE `relationships` (
  `user_id_a` int(11) NOT NULL,
  `user_id_b` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `relationships`
--

INSERT INTO `relationships` (`user_id_a`, `user_id_b`) VALUES
(0, 6),
(1, 2),
(1, 5),
(4, 1),
(6, 1),
(8, 2),
(8, 5),
(10, 7),
(11, 1),
(11, 4),
(11, 5),
(11, 8),
(11, 9);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(128) NOT NULL,
  `user_status` varchar(1) NOT NULL DEFAULT 'P',
  `user_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_status`, `user_img`) VALUES
(1, 'John Doe', 'john@doe.com', '123456', 'A', ''),
(2, 'Jane Doe', 'jane@doe.com', '123456', 'A', ''),
(3, 'Josh Doe', 'josh@doe.com', '123456', 'A', ''),
(4, 'Joy Doe', 'joy@doe.com', '123456', 'A', ''),
(5, 'Jasmine Doe', 'jasmine@doe', '123456', 'A', ''),
(6, 'Jake Doe', 'jake@doe', '123456', 'A', ''),
(7, 'Johan Doe', 'johan@doe', '123456', 'A', ''),
(8, 'Alexander Kubczak', 'alex.kubczak@gmail.com', 'ef5cba799ae6e785a4c07876b6a81358c8fc3ca74b6343ffe20ff5036514687a', 'P', ''),
(9, 'tester testington', 'test@gmail.com', 'ef5cba799ae6e785a4c07876b6a81358c8fc3ca74b6343ffe20ff5036514687a', 'P', ''),
(10, 'Yes Sir', 'yes@gmail.com', 'ef5cba799ae6e785a4c07876b6a81358c8fc3ca74b6343ffe20ff5036514687a', 'P', ''),
(11, 'Yasemin Gezgin', 'dadi@gmail.com', 'ef5cba799ae6e785a4c07876b6a81358c8fc3ca74b6343ffe20ff5036514687a', 'P', '');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`user_id_a`,`user_id_b`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD KEY `user_name` (`user_name`),
  ADD KEY `user_status` (`user_status`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
