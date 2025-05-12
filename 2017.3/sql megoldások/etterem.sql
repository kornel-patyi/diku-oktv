-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2025 at 12:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `etterem`
--

-- --------------------------------------------------------

--
-- Table structure for table `alap`
--

CREATE TABLE `alap` (
  `alap_id` varchar(3) NOT NULL,
  `nev` varchar(24) DEFAULT NULL,
  `ar` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `alap`
--

INSERT INTO `alap` (`alap_id`, `nev`, `ar`) VALUES
('A01', 'Olívaolajos alap', 850),
('A02', 'Paradicsomos alap', 800),
('A03', 'Fokhagymás-tejfölös alap', 900),
('A04', 'Pestos alap', 900),
('A05', 'Barbecue alap', 850);

-- --------------------------------------------------------

--
-- Table structure for table `extra`
--

CREATE TABLE `extra` (
  `rendeles_id` varchar(6) NOT NULL,
  `tetel_rend_id` int(1) NOT NULL,
  `feltet_id` varchar(3) NOT NULL,
  `szimpla_vagy_dupla` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `extra`
--

INSERT INTO `extra` (`rendeles_id`, `tetel_rend_id`, `feltet_id`, `szimpla_vagy_dupla`) VALUES
('R12345', 1, 'F12', 1),
('R12345', 1, 'F56', 1),
('R12345', 2, 'F13', 2),
('R12345', 3, 'F01', 1),
('R12345', 3, 'F04', 1),
('R12346', 1, 'F06', 1),
('R12346', 1, 'F55', 1),
('R12347', 1, 'F01', 1),
('R12347', 1, 'F04', 1),
('R12347', 1, 'F34', 1),
('R12347', 3, 'F04', 2),
('R12347', 3, 'F05', 1),
('R12349', 1, 'F01', 2),
('R12349', 2, 'F02', 1),
('R12349', 2, 'F33', 2),
('R12349', 3, 'F07', 1),
('R12349', 3, 'F33', 1),
('R12349', 4, 'F03', 1),
('R12349', 4, 'F54', 1),
('R12350', 1, 'F33', 1),
('R12350', 1, 'F52', 1),
('R12350', 1, 'F54', 1),
('R12350', 1, 'F66', 1),
('R12351', 1, 'F02', 2),
('R12351', 1, 'F32', 1),
('R12351', 2, 'F08', 1),
('R12351', 2, 'F34', 1),
('R12351', 3, 'F08', 1),
('R12352', 1, 'F14', 1),
('R12352', 1, 'F61', 1),
('R12352', 2, 'F13', 1),
('R12352', 2, 'F15', 1),
('R12353', 1, 'F21', 1),
('R12353', 1, 'F33', 2),
('R12353', 2, 'F12', 1),
('R12353', 2, 'F51', 1),
('R12353', 2, 'F53', 1),
('R12353', 3, 'F03', 1),
('R12353', 3, 'F33', 1),
('R12353', 4, 'F61', 1),
('R12353', 4, 'F62', 1),
('R12353', 4, 'F64', 1),
('R12353', 5, 'F08', 1),
('R12353', 5, 'F53', 1),
('R12353', 6, 'F06', 1),
('R12353', 6, 'F55', 1),
('R12354', 1, 'F08', 1),
('R12354', 1, 'F31', 1),
('R12354', 1, 'F56', 1),
('R12354', 1, 'F59', 1),
('R12355', 1, 'F11', 1),
('R12355', 1, 'F52', 1),
('R12355', 2, 'F06', 1),
('R12355', 2, 'F31', 2),
('R12356', 1, 'F33', 1),
('R12356', 1, 'F51', 1),
('R12356', 1, 'F52', 1),
('R12356', 2, 'F06', 1),
('R12356', 2, 'F07', 1),
('R12356', 2, 'F33', 1),
('R12356', 3, 'F33', 2),
('R12356', 3, 'F65', 1),
('R12357', 1, 'F11', 1),
('R12358', 2, 'F65', 1),
('R12359', 1, 'F12', 1),
('R12359', 1, 'F56', 1),
('R12359', 2, 'F14', 1),
('R12359', 2, 'F61', 1),
('R12360', 1, 'F06', 2),
('R12360', 1, 'F31', 1),
('R12360', 2, 'F01', 1),
('R12360', 2, 'F04', 1),
('R12360', 2, 'F34', 1),
('R12361', 1, 'F21', 1),
('R12361', 1, 'F33', 1),
('R12362', 1, 'F06', 1),
('R12362', 1, 'F55', 1),
('R12362', 2, 'F06', 1),
('R12362', 2, 'F07', 1),
('R12362', 2, 'F33', 1),
('R12363', 1, 'F33', 1),
('R12363', 1, 'F52', 1),
('R12363', 1, 'F54', 1),
('R12363', 1, 'F66', 1),
('R12363', 2, 'F33', 1),
('R12363', 2, 'F65', 1),
('R12364', 1, 'F08', 1),
('R12364', 1, 'F31', 1),
('R12364', 1, 'F56', 1),
('R12364', 1, 'F59', 1),
('R12365', 1, 'F03', 2),
('R12365', 1, 'F54', 1),
('R12366', 1, 'F13', 1),
('R12366', 1, 'F15', 1),
('R12366', 2, 'F11', 1),
('R12366', 2, 'F52', 1),
('R12367', 1, 'F01', 1),
('R12367', 1, 'F04', 1),
('R12368', 1, 'F04', 1),
('R12368', 1, 'F05', 1),
('R12368', 2, 'F02', 1),
('R12368', 2, 'F32', 1),
('R12369', 1, 'F61', 1),
('R12369', 1, 'F62', 1),
('R12369', 1, 'F64', 1),
('R12370', 1, 'F08', 2),
('R12370', 1, 'F53', 1),
('R12370', 2, 'F07', 1),
('R12370', 2, 'F33', 1),
('R12371', 1, 'F33', 1),
('R12371', 1, 'F51', 1),
('R12371', 1, 'F52', 1),
('R12372', 1, 'F03', 1),
('R12372', 1, 'F33', 1),
('R12372', 2, 'F08', 1),
('R12372', 2, 'F34', 1),
('R12373', 1, 'F02', 1),
('R12373', 1, 'F33', 1),
('R12373', 2, 'F12', 1),
('R12373', 2, 'F51', 1),
('R12373', 2, 'F53', 1),
('R12374', 1, 'F11', 1),
('R12374', 2, 'F13', 1),
('R12374', 3, 'F01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feltet`
--

CREATE TABLE `feltet` (
  `feltet_id` varchar(3) NOT NULL,
  `feltet_nev` varchar(19) DEFAULT NULL,
  `ar` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `feltet`
--

INSERT INTO `feltet` (`feltet_id`, `feltet_nev`, `ar`) VALUES
('F01', 'Sonka', 200),
('F02', 'Pármai sonka', 250),
('F03', 'Szalámi', 200),
('F04', 'Bacon', 180),
('F05', 'Tarja', 190),
('F06', 'Kolbász', 190),
('F07', 'Salsiccia', 210),
('F08', 'Csirkemell', 180),
('F11', 'Lazacfilé', 250),
('F12', 'Szardínia', 220),
('F13', 'Tenger gyümölcsei', 240),
('F14', 'Tonhal', 200),
('F15', 'Rák', 220),
('F21', 'Tojás', 150),
('F31', 'Trappista sajt', 140),
('F32', 'Parmezán', 150),
('F33', 'Mozzarella', 160),
('F34', 'Gorgonzola', 170),
('F35', 'Ricotta', 160),
('F51', 'Kukorica', 120),
('F52', 'Paradicsom', 120),
('F53', 'Kaliforniai paprika', 130),
('F54', 'Pepperoni', 130),
('F55', 'Chili', 110),
('F56', 'Olívabogyó', 140),
('F57', 'Kígyóuborka', 110),
('F58', 'Jalapeno', 130),
('F59', 'Lilahagyma', 100),
('F60', 'Póréhagyma', 100),
('F61', 'Ruccola', 130),
('F62', 'Bazsalikom', 100),
('F63', 'Brokkoli', 120),
('F64', 'Spenót', 110),
('F65', 'Ananász', 150),
('F66', 'Gomba', 150),
('F67', 'Kapribogyó', 160);

-- --------------------------------------------------------

--
-- Table structure for table `meret`
--

CREATE TABLE `meret` (
  `meret_id` varchar(1) NOT NULL,
  `nev` varchar(15) DEFAULT NULL,
  `ar_szazalek` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `meret`
--

INSERT INTO `meret` (`meret_id`, `nev`, `ar_szazalek`) VALUES
('L', 'Családi (45 cm)', 180),
('M', 'Normál (32 cm)', 100),
('S', 'Kicsi (28 cm)', 75);

-- --------------------------------------------------------

--
-- Table structure for table `rendeles`
--

CREATE TABLE `rendeles` (
  `rendeles_id` varchar(6) NOT NULL,
  `rendeles_datum` date DEFAULT NULL,
  `rendeles_ido` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rendeles`
--

INSERT INTO `rendeles` (`rendeles_id`, `rendeles_datum`, `rendeles_ido`) VALUES
('R12345', '2018-02-21', '11:01:00'),
('R12346', '2018-02-21', '11:04:00'),
('R12347', '2018-02-21', '11:07:00'),
('R12348', '2018-02-21', '11:10:00'),
('R12349', '2018-02-21', '11:13:00'),
('R12350', '2018-02-21', '11:17:00'),
('R12351', '2018-02-21', '11:18:00'),
('R12352', '2018-02-21', '11:21:00'),
('R12353', '2018-02-21', '11:25:00'),
('R12354', '2018-02-21', '11:30:00'),
('R12355', '2018-02-21', '11:33:00'),
('R12356', '2018-02-21', '11:37:00'),
('R12357', '2018-02-21', '11:42:00'),
('R12358', '2018-02-21', '11:44:00'),
('R12359', '2018-02-21', '11:46:00'),
('R12360', '2018-02-21', '11:47:00'),
('R12361', '2018-02-21', '11:48:00'),
('R12362', '2018-02-21', '11:50:00'),
('R12363', '2018-02-21', '11:53:00'),
('R12364', '2018-02-21', '11:55:00'),
('R12365', '2018-02-21', '11:56:00'),
('R12366', '2018-02-21', '11:57:00'),
('R12367', '2018-02-21', '11:59:00'),
('R12368', '2018-02-21', '12:01:00'),
('R12369', '2018-02-21', '12:04:00'),
('R12370', '2018-02-21', '12:10:00'),
('R12371', '2018-02-21', '12:16:00'),
('R12372', '2018-02-21', '12:20:00'),
('R12373', '2018-02-21', '12:31:00'),
('R12374', '2018-02-21', '12:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `tetel`
--

CREATE TABLE `tetel` (
  `rendeles_id` varchar(6) NOT NULL,
  `tetel_rend_id` int(1) NOT NULL,
  `alap_id` varchar(3) DEFAULT NULL,
  `meret_id` varchar(1) DEFAULT NULL,
  `darabszam` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tetel`
--

INSERT INTO `tetel` (`rendeles_id`, `tetel_rend_id`, `alap_id`, `meret_id`, `darabszam`) VALUES
('R12345', 1, 'A01', 'M', 2.0),
('R12345', 2, 'A01', 'L', 0.5),
('R12345', 3, 'A02', 'L', 0.5),
('R12346', 1, 'A05', 'S', 3.0),
('R12347', 1, 'A03', 'M', 3.5),
('R12347', 2, 'A03', 'M', 1.5),
('R12347', 3, 'A02', 'L', 2.0),
('R12348', 1, 'A02', 'S', 2.0),
('R12349', 1, 'A02', 'M', 1.0),
('R12349', 2, 'A03', 'S', 2.0),
('R12349', 3, 'A04', 'L', 2.0),
('R12349', 4, 'A05', 'M', 1.0),
('R12350', 1, 'A02', 'L', 2.0),
('R12351', 1, 'A02', 'M', 2.0),
('R12351', 2, 'A03', 'M', 2.0),
('R12351', 3, 'A04', 'M', 1.0),
('R12352', 1, 'A01', 'L', 1.5),
('R12352', 2, 'A01', 'L', 0.5),
('R12353', 1, 'A04', 'M', 1.5),
('R12353', 2, 'A04', 'M', 2.5),
('R12353', 3, 'A02', 'S', 1.0),
('R12353', 4, 'A03', 'S', 2.0),
('R12353', 5, 'A04', 'S', 1.0),
('R12353', 6, 'A05', 'L', 3.0),
('R12354', 1, 'A05', 'L', 3.0),
('R12355', 1, 'A01', 'M', 2.0),
('R12355', 2, 'A02', 'M', 2.0),
('R12356', 1, 'A01', 'M', 3.0),
('R12356', 2, 'A02', 'S', 1.0),
('R12356', 3, 'A03', 'L', 1.0),
('R12357', 1, 'A01', 'L', 2.0),
('R12358', 1, 'A02', 'M', 1.0),
('R12358', 2, 'A03', 'M', 1.0),
('R12359', 1, 'A01', 'L', 0.5),
('R12359', 2, 'A01', 'L', 0.5),
('R12360', 1, 'A02', 'M', 2.0),
('R12360', 2, 'A03', 'M', 1.0),
('R12361', 1, 'A04', 'L', 2.0),
('R12362', 1, 'A05', 'M', 1.0),
('R12362', 2, 'A01', 'L', 1.0),
('R12363', 1, 'A02', 'M', 1.0),
('R12363', 2, 'A03', 'L', 1.0),
('R12364', 1, 'A05', 'L', 2.0),
('R12365', 1, 'A05', 'M', 2.0),
('R12366', 1, 'A01', 'L', 1.5),
('R12366', 2, 'A01', 'L', 0.5),
('R12367', 1, 'A02', 'M', 1.0),
('R12368', 1, 'A02', 'S', 1.0),
('R12368', 2, 'A02', 'S', 1.0),
('R12369', 1, 'A03', 'L', 1.0),
('R12370', 1, 'A04', 'M', 1.0),
('R12370', 2, 'A04', 'L', 2.0),
('R12371', 1, 'A01', 'L', 2.0),
('R12372', 1, 'A02', 'L', 6.0),
('R12372', 2, 'A03', 'L', 4.0),
('R12373', 1, 'A03', 'L', 1.0),
('R12373', 2, 'A04', 'M', 2.0),
('R12374', 1, 'A01', 'M', 1.0),
('R12374', 2, 'A01', 'M', 1.0),
('R12374', 3, 'A02', 'M', 1.0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alap`
--
ALTER TABLE `alap`
  ADD PRIMARY KEY (`alap_id`);

--
-- Indexes for table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`rendeles_id`,`tetel_rend_id`,`feltet_id`),
  ADD KEY `feltet_id` (`feltet_id`);

--
-- Indexes for table `feltet`
--
ALTER TABLE `feltet`
  ADD PRIMARY KEY (`feltet_id`);

--
-- Indexes for table `meret`
--
ALTER TABLE `meret`
  ADD PRIMARY KEY (`meret_id`);

--
-- Indexes for table `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`rendeles_id`);

--
-- Indexes for table `tetel`
--
ALTER TABLE `tetel`
  ADD PRIMARY KEY (`rendeles_id`,`tetel_rend_id`),
  ADD KEY `alap_id` (`alap_id`),
  ADD KEY `meret_id` (`meret_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `extra`
--
ALTER TABLE `extra`
  ADD CONSTRAINT `extra_ibfk_1` FOREIGN KEY (`rendeles_id`,`tetel_rend_id`) REFERENCES `tetel` (`rendeles_id`, `tetel_rend_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `extra_ibfk_2` FOREIGN KEY (`feltet_id`) REFERENCES `feltet` (`feltet_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tetel`
--
ALTER TABLE `tetel`
  ADD CONSTRAINT `tetel_ibfk_1` FOREIGN KEY (`rendeles_id`) REFERENCES `rendeles` (`rendeles_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tetel_ibfk_2` FOREIGN KEY (`alap_id`) REFERENCES `alap` (`alap_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tetel_ibfk_3` FOREIGN KEY (`meret_id`) REFERENCES `meret` (`meret_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
