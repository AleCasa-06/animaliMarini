-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Feb 07, 2025 alle 10:15
-- Versione del server: 10.4.28-MariaDB
-- Versione PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studiomarino`
--
CREATE DATABASE IF NOT EXISTS `studiomarino` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `studiomarino`;

-- --------------------------------------------------------

--
-- Struttura della tabella `animalimarini`
--

CREATE TABLE `animalimarini` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Latitudine` decimal(10,7) NOT NULL,
  `Longitudine` decimal(10,7) NOT NULL,
  `Specie` varchar(100) NOT NULL,
  `Descrizione` text DEFAULT NULL,
  `DataAvvistamento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `animalimarini`
--

INSERT INTO `animalimarini` (`id`, `Nome`, `Latitudine`, `Longitudine`, `Specie`, `Descrizione`, `DataAvvistamento`) VALUES
(1, 'Delfino Giacomo', 40.1234567, 14.9876543, 'Delphinus delphis', 'Avvistato a largo delle coste di Sorrento.', '2025-01-01'),
(2, 'Squalo Bianco', 42.0000000, 16.5000000, 'Carcharodon carcharias', 'Avvistamento raro in zona costiera.', '2025-01-10'),
(5, 'Delfino Gianni', 40.1200000, 7.3400000, 'Delphinus delphis', 'Delfino allegro e curioso.', '2025-01-05'),
(6, 'Delfino Paola', 41.2300000, 8.4500000, 'Delphinus delphis', 'Avvistata in branco numeroso.', '2025-02-10'),
(7, 'Delfino Orlando', 42.3400000, 9.5600000, 'Delphinus delphis', 'Molto socievole con le imbarcazioni.', '2025-03-15'),
(8, 'Delfino Maria', 43.4500000, 10.6700000, 'Delphinus delphis', 'Delfino in ottima salute.', '2025-04-20'),
(9, 'Delfino Bruno', 44.5600000, 11.7800000, 'Delphinus delphis', 'Curioso e giocoso.', '2025-05-25'),
(10, 'Orca Luisa', 45.6700000, 12.8900000, 'Orcinus orca', 'Orca socievole e protettiva.', '2025-06-01'),
(11, 'Orca Fabiana', 46.7800000, 13.9000000, 'Orcinus orca', 'Avvistata con un cucciolo al seguito.', '2025-06-15'),
(12, 'Orca Mario', 47.8900000, 14.0100000, 'Orcinus orca', 'Molto attiva durante la caccia.', '2025-07-01'),
(13, 'Orca Serenella', 48.9000000, 14.1200000, 'Orcinus orca', 'Esemplare robusto, in buone condizioni.', '2025-07-15'),
(14, 'Orca Paolo', 49.1100000, 14.2300000, 'Orcinus orca', 'Ama seguire le barche turistiche.', '2025-08-05'),
(15, 'Squalo Matteo', 34.2200000, 12.4500000, 'Carcharodon carcharias', 'Squalo bianco di grandi dimensioni.', '2025-01-10'),
(16, 'Squalo Ginevra', 35.3300000, 11.5500000, 'Carcharodon carcharias', 'Esemplare giovane e molto veloce.', '2025-02-14'),
(17, 'Squalo Fabrizio', 36.4400000, 10.6600000, 'Carcharodon carcharias', 'Avvistato in acque meno profonde.', '2025-03-18'),
(18, 'Squalo Lucia', 37.5500000, 9.7700000, 'Carcharodon carcharias', 'Segnalato vicino a banchi di tonni.', '2025-04-22'),
(19, 'Squalo Domenico', 38.6600000, 8.8800000, 'Carcharodon carcharias', 'Possibile esemplare dominante.', '2025-05-26'),
(20, 'Balena Carla', 39.7700000, 7.9900000, 'Balaenoptera musculus', 'Balena azzurra di notevoli proporzioni.', '2025-06-03'),
(21, 'Balena Lorenzo', 40.8800000, 7.0100000, 'Balaenoptera musculus', 'Spesso avvistato in superficie.', '2025-07-07'),
(22, 'Balena Sabrina', 41.9900000, 6.1100000, 'Balaenoptera musculus', 'Esemplare docile, interagisce con delfini.', '2025-08-11'),
(23, 'Balena Fabio', 42.1000000, 5.2200000, 'Balaenoptera musculus', 'Gruppo avvistato in migrazione.', '2025-09-15'),
(24, 'Balena Michela', 43.2100000, 4.3300000, 'Balaenoptera musculus', 'Molto attiva nelle prime ore del mattino.', '2025-10-20'),
(25, 'Foca Raffaele', 44.3200000, 3.4400000, 'Halichoerus grypus', 'Foca grigia intenta a pescare.', '2025-11-05'),
(26, 'Foca Anna', 45.4300000, 2.5500000, 'Halichoerus grypus', 'Avvistata riposare sugli scogli.', '2025-12-10'),
(27, 'Foca Simone', 46.5400000, 1.6600000, 'Halichoerus grypus', 'Esemplare curioso verso i subacquei.', '2025-12-15'),
(28, 'Foca Lucia', 47.6500000, 0.7700000, 'Halichoerus grypus', 'Pare in buono stato di salute.', '2025-09-20'),
(29, 'Foca Veronica', 48.7600000, 13.8800000, 'Halichoerus grypus', 'Avvistata mentre nuotava con altre foche.', '2025-10-25'),
(30, 'Tartaruga Serena', 49.8700000, 12.9900000, 'Caretta caretta', 'Tartaruga molto tranquilla e lenta.', '2025-11-30'),
(31, 'Tartaruga Gennaro', 39.9800000, 3.1000000, 'Caretta caretta', 'Esemplare giovanissimo, prime migrazioni.', '2025-08-08'),
(32, 'Tartaruga Marika', 38.8700000, 2.2100000, 'Caretta caretta', 'Ritrovata vicino a barriere coralline.', '2025-08-22'),
(33, 'Tartaruga Alessandro', 37.7600000, 1.3200000, 'Caretta caretta', 'Probabile segnale di nidificazione.', '2025-09-25'),
(34, 'Tartaruga Giada', 36.6500000, 0.4300000, 'Caretta caretta', 'In buone condizioni, scortata dalla Guardia.', '2025-10-08'),
(35, 'Medusa Gennaro', 35.5400000, 14.5400000, 'Aurelia aurita', 'Medusa traslucida, innocua per i bagnanti.', '2025-04-14'),
(36, 'Medusa Teresa', 34.4300000, 13.6500000, 'Aurelia aurita', 'Osservata in un branco di numerosi esemplari.', '2025-05-18'),
(37, 'Medusa Rocco', 33.3200000, 12.7600000, 'Aurelia aurita', 'Spesso alla deriva vicino la costa.', '2025-06-22'),
(38, 'Medusa Maria', 32.2100000, 11.8700000, 'Aurelia aurita', 'Si sposta con le correnti superficiali.', '2025-07-26'),
(39, 'Medusa Valentina', 31.1000000, 10.9800000, 'Aurelia aurita', 'Esemplare di medusa lunare di grandi dimensioni.', '2025-08-30'),
(40, 'Polpo Riccardo', 30.9900000, 9.0900000, 'Octopus vulgaris', 'Polpo curioso, si mimetizza con l\'ambiente.', '2025-03-05'),
(41, 'Polpo Francesca', 49.5000000, 10.1000000, 'Octopus vulgaris', 'Avvistato di notte, molto vivace.', '2025-05-09'),
(42, 'Polpo Alfredo', 48.4000000, 11.2000000, 'Octopus vulgaris', 'Esemplare di grossa taglia, in caccia.', '2025-06-13'),
(43, 'Polpo Giulia', 47.3000000, 12.3000000, 'Octopus vulgaris', 'Si nasconde tra le rocce, timoroso.', '2025-07-17'),
(44, 'Polpo Stefano', 46.2000000, 13.4000000, 'Octopus vulgaris', 'Cambio frequente di colore, grande abilità.', '2025-08-21'),
(45, 'Cavalluccio Marino Paolo', 35.6700000, 15.0000000, 'Hippocampus', 'Esemplare colorato, vicino alle alghe.', '2025-09-02'),
(46, 'Cavalluccio Marino Giuseppina', 36.7800000, 8.5600000, 'Hippocampus', 'Avvistato in acqua poco profonda.', '2025-09-16'),
(47, 'Cavalluccio Marino Luca', 37.8900000, 9.6700000, 'Hippocampus', 'Molto piccolo, difficile da individuare.', '2025-10-20'),
(48, 'Cavalluccio Marino Eleonora', 38.9000000, 5.1200000, 'Hippocampus', 'Restio a spostarsi, ancorato a un corallo.', '2025-11-24'),
(49, 'Cavalluccio Marino Claudio', 39.0100000, 6.2300000, 'Hippocampus', 'Fortemente mimetizzato col fondale.', '2025-12-28'),
(50, 'Stella Marina Marta', 30.1200000, 10.4500000, 'Asterias rubens', 'Stella marina a cinque braccia.', '2025-01-12'),
(51, 'Stella Marina Giulio', 31.2300000, 11.5600000, 'Asterias rubens', 'Ritrovata su un fondale roccioso.', '2025-02-16'),
(52, 'Stella Marina Paola', 32.3400000, 12.6700000, 'Asterias rubens', 'Campione di notevoli dimensioni.', '2025-03-20'),
(53, 'Stella Marina Rosario', 33.4500000, 13.7800000, 'Asterias rubens', 'Colorazione arancione intensa.', '2025-04-24'),
(54, 'Stella Marina Beatrice', 34.5600000, 14.8900000, 'Asterias rubens', 'Esemplare in perfetta salute.', '2025-05-28');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `animalimarini`
--
ALTER TABLE `animalimarini`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `animalimarini`
--
ALTER TABLE `animalimarini`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
