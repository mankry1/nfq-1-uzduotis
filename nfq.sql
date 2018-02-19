-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018 m. Vas 19 d. 02:00
-- Server version: 5.5.56-MariaDB
-- PHP Version: 7.0.27

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

CREATE TABLE `items` (
  `ID` int(10) NOT NULL,
  `Type` text,
  `Name` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

CREATE TABLE `orders` (
  `ID` int(10) NOT NULL,
  `Cpu` int(10) DEFAULT NULL,
  `Gpu` int(10) DEFAULT NULL,
  `Ram` int(10) DEFAULT NULL,
  `Motherboard` int(10) DEFAULT NULL,
  `Hdd` int(10) DEFAULT NULL,
  `CardReader` int(10) DEFAULT NULL,
  `Customer` text,
  `Email` text,
  `Phone` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(116, 17, 28, 33, 38, 11, 13, 'Tadas Kazanovas', '869195411', 'tadas.k@gmail.com'),
(117, 20, 32, 34, 9, 10, 14, 'Jurgis Klebonas', '864862426', 'jugtisklebonas@yahoo.com'),
(118, 19, 32, 6, 8, 11, 13, 'Tomas Kryževičius', '868926322', 'tomas.kr@gmail.com'),
(119, 1, 32, 33, 39, 11, 13, 'Antanas Kaminkretys', '864123488', 'kaminkretys@one.lt'),
(120, 15, 27, 6, 38, 10, 14, 'Juozas Kazlauskas', '869596423', 'juozas.kaz@gmail.com'),
(121, 16, 29, 6, 8, 11, 14, 'Simona Riukaitė', '869874236', 'simonar@yahoo.com'),
(122, 19, 32, 33, 36, 10, 14, 'Emilija Drupaitė', '861808634', 'emilytx@gmail.com'),
(123, 15, 30, 34, 36, 12, 13, 'Karolis Jankūnas', '863655528', 'karolisjan@gmail.com'),
(124, 20, 31, 6, 35, 12, 14, 'Emilis Ivaškevičius', '862644863', 'ivaskevicius@splius.lt'),
(125, 19, 32, 6, 38, 12, 13, 'Juozas Statkevičius', '861214531', 'juozas.statkevicius@one.lt'),
(126, 18, 3, 5, 37, 10, 13, 'Miglė Adomaitytė', '862615892', 'migle.admomaityte@one.lt'),
(127, 17, 29, 6, 8, 10, 14, 'Jūratė Bieliauskaitė', '863186189', 'jurate.bieliauskaite@splius.lt'),
(128, 23, 26, 6, 37, 12, 13, 'Tomas Vaišė', '865154578', 'vaisetomas6@yahoo.com'),
(129, 2, 27, 5, 36, 12, 14, 'Gintaras Katkus', '860482862', 'gintaras.katkus5@gmail.com'),
(130, 16, 27, 33, 36, 10, 13, 'Liudas Mikalauskas', '869742668', 'liudas.mikalauskas@one.lt'),
(131, 24, 29, 7, 8, 10, 14, 'Armandas Burba', '861865954', 'armburba@gmail.com'),
(132, 18, 30, 6, 38, 12, 13, 'Justina Kiseliovaitė', '861895215', 'kiselio@one.lt'),
(133, 17, 29, 34, 37, 11, 14, 'Algirdas Tumas', '862484654', 'ratumontavimas@gmail.com'),
(134, 22, 27, 5, 38, 12, 14, 'Giedrius Greičius', '868286827', 'greiciusgiedrius@gmail.com'),
(135, 19, 25, 7, 9, 12, 14, 'Justė Urbonavičiūtė', '860808623', 'samp.zaideja@yahoo.com'),
(136, 21, 31, 6, 9, 12, 14, 'Arvydas Šlekys', '868651933', 'slekys@one.lt'),
(137, 24, 25, 6, 35, 10, 13, 'Rokas Švambaris', '864841397', 'svambar@gmail.com'),
(138, 22, 27, 33, 37, 10, 13, 'Aurimas Žemaitis', '864204799', 'aurimas.zemaitis@gmail.com'),
(139, 16, 30, 7, 35, 11, 13, 'Greta Baranauskaitė', '864099941', 'gretuliux3@yahoo.com'),
(140, 17, 3, 33, 38, 11, 14, 'Tadas Vinckas', '861641655', 'parduodu.vapepen@gmail.com'),
(141, 18, 3, 7, 37, 10, 13, 'Jonas Urbonas', '864898489', 'urbonjonas@gmail.com'),
(142, 16, 25, 7, 37, 11, 14, 'Saulius Prūsaitis', '868615479', 'prustaitis@gmail.com'),
(143, 20, 27, 5, 35, 10, 13, 'Klaudijus Banys', '861628658', 'klaudijus.banys@splius.lt'),
(144, 17, 27, 34, 39, 12, 13, 'Nojus Gricius', '861561856', 'nojasas@gmail.com'),
(145, 17, 25, 7, 9, 10, 14, 'Irmantas Petrašiūnas', '867621456', 'irmantas.petrasiunas@one.lt'),
(146, 22, 27, 34, 9, 10, 13, 'Orestas Klimavičius', '862466296', 'orestas.klim@one.lt'),
(147, 19, 27, 7, 8, 10, 13, 'Deivydas Kivylius', '861985489', 'deividas.kivylius@splius.lt'),
(148, 22, 30, 33, 38, 10, 14, 'Mantas Klimašauskas', '861045694', 'prohacker@yahoo.com'),
(149, 23, 28, 5, 38, 11, 14, 'Gintaras Adomavičius', '861616531', 'gintadomavic@gmail.com'),
(150, 15, 31, 5, 38, 10, 13, 'Ovidijus Jankauskas', '861889603', 'ovyda13@yahoo.com'),
(151, 20, 31, 33, 36, 10, 14, 'Gintarė Kolomažnikovaitė', '862116598', 'gintare.kolomaznikovaite@one.lt'),
(152, 22, 28, 6, 35, 12, 13, 'Robertas Balčiūnas', '864526519', 'balciovke69@gmail.com'),
(153, 19, 27, 5, 9, 10, 13, 'Ina Katkuvienė', '860820896', 'ina.katkuviene@one.lt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
