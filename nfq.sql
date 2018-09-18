-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 2018 m. Rgs 18 d. 20:08
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nfq`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Type` text,
  `Name` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `items`
--

INSERT INTO `items` (`ID`, `Type`, `Name`) VALUES
(1, 'Cpu', 'Intel i3 5005u'),
(2, 'Cpu', 'Intel i5 6100u'),
(3, 'Gpu', 'Nvidia GeForce 920m'),
(4, 'Gpu', 'Nvidia GeForce 320m'),
(5, 'Ram', '4GB'),
(6, 'Ram', '6GB'),
(7, 'Ram', '8GB'),
(8, 'Motherboard', 'Gigabyte GA-AX370-Gaming'),
(9, 'Motherboard', 'MSI Z370 SLI Plus'),
(10, 'Hdd', '256GB'),
(11, 'Hdd', '512GB'),
(12, 'Hdd', '1028GB'),
(13, 'CardReader', 'USB + DCIM + MicroSD'),
(14, 'CardReader', 'USB + MicroSD'),
(15, 'Cpu', 'Intel Core i7-8700K'),
(16, 'Cpu', 'AMD Ryzen Threadripper 1950X'),
(17, 'Cpu', 'AMD Ryzen 5 1600X'),
(18, 'Cpu', 'AMD Ryzen 3 1300X'),
(19, 'Cpu', 'Intel Core i5-7600K'),
(20, 'Cpu', 'AMD Ryzen 7 1800X'),
(21, 'Cpu', 'Intel Core i7-7820X'),
(22, 'Cpu', 'Intel Core i9-7980XE'),
(23, 'Cpu', 'Intel Pentium G4560'),
(24, 'Cpu', 'AMD Ryzen 5 2400G'),
(25, 'Gpu', 'Nvidia GeForce GTX 1060'),
(26, 'Gpu', 'Nvidia GeForce GTX 1080 Ti'),
(27, 'Gpu', 'Nvidia GeForce GTX 1070 Ti'),
(28, 'Gpu', 'AMD Radeon RX Vega 56'),
(29, 'Gpu', 'AMD Radeon RX Vega 64'),
(30, 'Gpu', 'Zotac GeForce GTX 1080 Ti Mini'),
(31, 'Gpu', 'Nvidia GeForce GTX 1050'),
(32, 'Gpu', 'Nvidia GeForce GTX 1050 Ti'),
(33, 'Ram', '12GB'),
(34, 'Ram', '16GB'),
(35, 'Motherboard', 'Gigabyte Z370 Aorus Gaming 7'),
(36, 'Motherboard', 'Gigabyte Aorus Z270X-Gaming 9'),
(37, 'Motherboard', 'Asus ROG Maximus IX Hero'),
(38, 'Motherboard', 'Biostar Racing Z270GT9'),
(39, 'Motherboard', 'MSI Z270 SLI Plus');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Cpu` int(10) DEFAULT NULL,
  `Gpu` int(10) DEFAULT NULL,
  `Ram` int(10) DEFAULT NULL,
  `Motherboard` int(10) DEFAULT NULL,
  `Hdd` int(10) DEFAULT NULL,
  `CardReader` int(10) DEFAULT NULL,
  `Customer` text,
  `Email` text,
  `Phone` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

--
-- Sukurta duomenų kopija lentelei `orders`
--

INSERT INTO `orders` (`ID`, `Cpu`, `Gpu`, `Ram`, `Motherboard`, `Hdd`, `CardReader`, `Customer`, `Email`, `Phone`) VALUES
(19, 1, 3, 5, 8, 11, 14, 'Mantas Kryževičius', 'mantas.ins@gmail.com', '860665617'),
(22, 1, 3, 5, 8, 10, 13, 'Tomas Gaubis', 'tomis697@gmail.com', '862634420'),
(23, 21, 27, 7, 36, 11, 13, 'Donatas Kryževičius', 'wp.gateway@gmail.com', '867095067'),
(24, 16, 29, 7, 8, 12, 13, 'Tomas Kaltanas', 'kaltanas.tomas@yahoo.com', '862562111'),
(25, 15, 26, 6, 35, 11, 14, 'Arnas Lisauskas', 'arnas.lisauskas@one.lt', '861156993'),
(26, 2, 29, 34, 35, 12, 13, 'Robertas Jankauskas', 'robertelisxxx@gmail.com', '863655432'),
(27, 1, 4, 5, 8, 10, 14, 'Mantas Matuzas', 'mantuxx3@gmail.com', '865366923'),
(28, 15, 4, 6, 9, 11, 13, 'Ignas Čyvas', 'cyvas@gmail.com', '864823670'),
(29, 24, 32, 34, 39, 12, 13, 'Tadas Gailevičius', 'tadas.gai@yahoo.com', '862033670'),
(30, 16, 28, 33, 38, 12, 13, 'Robertas Balčiūnas', 'robke3310@gmail.com', '862675233'),
(31, 22, 27, 33, 38, 12, 13, 'Gvidas Grigaliūnas', 'grigvidas@pastas.lt', '869902566'),
(32, 23, 31, 33, 38, 11, 13, 'Karolis Banys', 'karolis.banys@ktu.edu', '867966256'),
(33, 22, 30, 7, 37, 12, 14, 'Žilvinas Tomkevičius', 'tomkevicius.zilvis@gmail.com', '860685366'),
(34, 21, 29, 6, 36, 11, 14, 'Tomas Porakis', 'porkaaa2@yahoo.com', '865523699'),
(35, 20, 28, 6, 35, 12, 13, 'Justinas Laužaunikas', 'justlauzaun@one.lt', '865241238'),
(116, 17, 28, 33, 38, 11, 13, 'Tadas Kazanovas', 'tadas.k@gmail.com', '869195411'),
(117, 20, 32, 34, 9, 10, 14, 'Jurgis Klebonas', 'jugtisklebonas@yahoo.com', '864862426'),
(118, 19, 32, 6, 8, 11, 13, 'Tomas Kryževičius', 'tomas.kr@gmail.com', '868926322'),
(119, 1, 32, 33, 39, 11, 13, 'Antanas Kaminkretys', 'kaminkretys@one.lt', '864123488'),
(120, 15, 27, 6, 38, 10, 14, 'Juozas Kazlauskas', 'juozas.kaz@gmail.com', '869596423'),
(121, 16, 29, 6, 8, 11, 14, 'Simona Riukaitė', 'simonar@yahoo.com', '869874236'),
(122, 19, 32, 33, 36, 10, 14, 'Emilija Drupaitė', 'emilytx@gmail.com', '861808634'),
(123, 15, 30, 34, 36, 12, 13, 'Karolis Jankūnas', 'karolisjan@gmail.com', '863655528'),
(124, 20, 31, 6, 35, 12, 14, 'Emilis Ivaškevičius', 'ivaskevicius@splius.lt', '862644863'),
(125, 19, 32, 6, 38, 12, 13, 'Juozas Statkevičius', 'juozas.statkevicius@one.lt', '861214531'),
(126, 18, 3, 5, 37, 10, 13, 'Miglė Adomaitytė', 'migle.admomaityte@one.lt', '862615892'),
(127, 17, 29, 6, 8, 10, 14, 'Jūratė Bieliauskaitė', 'jurate.bieliauskaite@splius.lt', '863186189'),
(128, 23, 26, 6, 37, 12, 13, 'Tomas Vaišė', 'vaisetomas6@yahoo.com', '865154578'),
(129, 2, 27, 5, 36, 12, 14, 'Gintaras Katkus', 'gintaras.katkus5@gmail.com', '860482862'),
(130, 16, 27, 33, 36, 10, 13, 'Liudas Mikalauskas', 'liudas.mikalauskas@one.lt', '869742668'),
(131, 24, 29, 7, 8, 10, 14, 'Armandas Burba', 'armburba@gmail.com', '861865954'),
(132, 18, 30, 6, 38, 12, 13, 'Justina Kiseliovaitė', 'kiselio@one.lt', '861895215'),
(133, 17, 29, 34, 37, 11, 14, 'Algirdas Tumas', 'ratumontavimas@gmail.com', '862484654'),
(134, 22, 27, 5, 38, 12, 14, 'Giedrius Greičius', 'greiciusgiedrius@gmail.com', '868286827'),
(135, 19, 25, 7, 9, 12, 14, 'Justė Urbonavičiūtė', 'samp.zaideja@yahoo.com', '860808623'),
(136, 21, 31, 6, 9, 12, 14, 'Arvydas Šlekys', 'slekys@one.lt', '868651933'),
(137, 24, 25, 6, 35, 10, 13, 'Rokas Švambaris', 'svambar@gmail.com', '864841397'),
(138, 22, 27, 33, 37, 10, 13, 'Aurimas Žemaitis', 'aurimas.zemaitis@gmail.com', '864204799'),
(139, 16, 30, 7, 35, 11, 13, 'Greta Baranauskaitė', 'gretuliux3@yahoo.com', '864099941'),
(140, 17, 3, 33, 38, 11, 14, 'Tadas Vinckas', 'parduodu.vapepen@gmail.com', '861641655'),
(141, 18, 3, 7, 37, 10, 13, 'Jonas Urbonas', 'urbonjonas@gmail.com', '864898489'),
(142, 16, 25, 7, 37, 11, 14, 'Saulius Prūsaitis', 'prustaitis@gmail.com', '868615479'),
(143, 20, 27, 5, 35, 10, 13, 'Klaudijus Banys', 'klaudijus.banys@splius.lt', '861628658'),
(144, 17, 27, 34, 39, 12, 13, 'Nojus Gricius', 'nojasas@gmail.com', '861561856'),
(145, 17, 25, 7, 9, 10, 14, 'Irmantas Petrašiūnas', 'irmantas.petrasiunas@one.lt', '867621456'),
(146, 22, 27, 34, 9, 10, 13, 'Orestas Klimavičius', 'orestas.klim@one.lt', '862466296'),
(147, 19, 27, 7, 8, 10, 13, 'Deivydas Kivylius', 'deividas.kivylius@splius.lt', '861985489'),
(148, 22, 30, 33, 38, 10, 14, 'Mantas Klimašauskas', 'prohacker@yahoo.com', '861045694'),
(149, 23, 28, 5, 38, 11, 14, 'Gintaras Adomavičius', 'gintadomavic@gmail.com', '861616531'),
(150, 15, 31, 5, 38, 10, 13, 'Ovidijus Jankauskas', 'ovyda13@yahoo.com', '861889603'),
(151, 20, 31, 33, 36, 10, 14, 'Gintarė Kolomažnikovaitė', 'gintare.kolomaznikovaite@one.lt', '862116598'),
(152, 22, 28, 6, 35, 12, 13, 'Robertas Balčiūnas', 'balciovke69@gmail.com', '864526519'),
(153, 19, 27, 5, 9, 10, 13, 'Ina Katkuvienė', 'ina.katkuviene@one.lt', '860820896'),
(154, 20, 32, 34, 39, 12, 13, 'Mantas Vaitiekūnas', 'mantas.kryzevicius@ktu.edu', '860665617');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
