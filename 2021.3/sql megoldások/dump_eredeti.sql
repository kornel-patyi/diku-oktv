-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Már 09. 18:30
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `uszovilagbajnoksag`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `bajnoksag`
--

CREATE TABLE `bajnoksag` (
  `ev` int(4) DEFAULT NULL,
  `varos` varchar(9) DEFAULT NULL,
  `orszag` varchar(13) DEFAULT NULL,
  `nemzetek_szama` int(3) DEFAULT NULL,
  `sportolok_szama` int(4) DEFAULT NULL,
  `versenyszamok` int(2) DEFAULT NULL,
  `legtobb_erem` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `bajnoksag`
--

INSERT INTO `bajnoksag` (`ev`, `varos`, `orszag`, `nemzetek_szama`, `sportolok_szama`, `versenyszamok`, `legtobb_erem`) VALUES
(1973, 'Belgrád', 'Jugoszlávia', 47, 686, 37, 'Amerikai Egyesült Államok'),
(1975, 'Cali', 'Kolumbia', 39, 682, 37, 'Amerikai Egyesült Államok'),
(1978, 'Berlin', 'NSZK', 49, 828, 37, 'Amerikai Egyesült Államok'),
(1982, 'Guayaquil', 'Ecuador', 52, 848, 37, 'Amerikai Egyesült Államok'),
(1986, 'Madrid', 'Spanyolország', 34, 1119, 41, 'NDK'),
(1991, 'Perth', 'Ausztrália', 60, 1142, 45, 'Amerikai Egyesült Államok'),
(1994, 'Róma', 'Olaszország', 102, 1400, 45, 'Kína'),
(1998, 'Perth', 'Ausztrália', 121, 1371, 51, 'Amerikai Egyesült Államok'),
(2001, 'Fukuoka', 'Japán', 134, 1498, 61, 'Ausztrália'),
(2003, 'Barcelona', 'Spanyolország', 157, 2015, 62, 'Amerikai Egyesült Államok'),
(2005, 'Montréal', 'Kanada', 144, 1784, 62, 'Amerikai Egyesült Államok'),
(2007, 'Melbourne', 'Ausztrália', 167, 2158, 65, 'Amerikai Egyesült Államok'),
(2009, 'Róma', 'Olaszország', 185, 2556, 65, 'Amerikai Egyesült Államok'),
(2011, 'Sanghaj', 'Kína', 181, 2220, 66, 'Amerikai Egyesült Államok'),
(2013, 'Barcelona', 'Spanyolország', 181, 2293, 68, 'Amerikai Egyesült Államok'),
(2015, 'Kazán', 'Oroszország', 190, 2651, 75, 'Kína'),
(2017, 'Budapest', 'Magyarország', 181, 2000, 75, 'Amerikai Egyesült Államok'),
(2019, 'Kvangdzsu', 'Dél-Korea', 193, 2623, 76, 'Kína');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eremtablazat`
--

CREATE TABLE `eremtablazat` (
  `helyezes` int(2) DEFAULT NULL,
  `orszag` varchar(25) DEFAULT NULL,
  `arany` int(3) DEFAULT NULL,
  `ezust` int(3) DEFAULT NULL,
  `bronz` int(3) DEFAULT NULL,
  `osszesen` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `eremtablazat`
--

INSERT INTO `eremtablazat` (`helyezes`, `orszag`, `arany`, `ezust`, `bronz`, `osszesen`) VALUES
(1, 'Amerikai Egyesült Államok', 263, 203, 148, 614),
(2, 'Kína', 146, 108, 72, 326),
(3, 'Oroszország', 118, 100, 89, 307),
(4, 'Ausztrália', 90, 97, 75, 262),
(5, 'NDK', 51, 44, 27, 122),
(6, 'Németország', 43, 64, 76, 183),
(7, 'Magyarország', 38, 29, 30, 97),
(8, 'Olaszország', 37, 38, 58, 133),
(9, 'Franciaország', 26, 26, 27, 79),
(10, 'Egyesült Királyság', 29, 24, 45, 98),
(11, 'Kanada', 23, 45, 54, 122),
(12, 'Hollandia', 17, 35, 29, 81),
(13, 'Svédország', 15, 19, 16, 50),
(14, 'Brazília', 15, 14, 15, 44),
(15, 'Dél-afrikai Köztársaság', 13, 6, 15, 34),
(16, 'Japán', 12, 38, 70, 120),
(17, 'Ukrajna', 10, 11, 25, 46),
(18, 'Spanyolország', 9, 35, 26, 70),
(19, 'Lengyelország', 6, 9, 8, 23),
(20, 'Szerbia', 5, 3, 3, 11),
(21, 'Dánia', 4, 8, 8, 20),
(22, 'Görögország', 4, 5, 5, 14),
(23, 'Zimbabwe', 4, 5, 0, 9),
(24, 'Finnország', 3, 2, 2, 7),
(25, 'Horvátország', 2, 3, 4, 9),
(26, 'Tunézia', 2, 2, 4, 8),
(27, 'Románia', 2, 1, 7, 10),
(28, 'Fehéroroszország', 2, 1, 3, 6),
(28, 'Jugoszlávia', 2, 1, 3, 6),
(30, 'Dél-Korea', 2, 0, 2, 4),
(31, 'Mexikó', 1, 8, 13, 22),
(32, 'Svájc', 1, 5, 1, 7),
(33, 'Litvánia', 1, 2, 2, 5),
(34, 'Norvégia', 1, 2, 1, 4),
(35, 'Bulgária', 1, 1, 4, 6),
(35, 'Malajzia', 1, 1, 4, 6),
(37, 'Belgium', 1, 1, 2, 4),
(37, 'Costa Rica', 1, 1, 2, 4),
(37, 'Észak-Korea', 1, 1, 2, 4),
(40, 'Kolumbia', 1, 0, 0, 1),
(40, 'Suriname', 1, 0, 0, 1),
(42, 'Új-Zéland', 0, 5, 6, 11),
(43, 'Csehország', 0, 4, 1, 5),
(44, 'Ausztria', 0, 3, 3, 6),
(45, 'Szlovákia', 0, 3, 2, 5),
(46, 'Izland', 0, 1, 1, 2),
(46, 'Jamaica', 0, 1, 1, 2),
(46, 'Kuba', 0, 1, 1, 2),
(49, 'Ecuador', 0, 1, 0, 1),
(49, 'Montenegró', 0, 1, 0, 1),
(51, 'Egyiptom', 0, 0, 3, 3),
(52, 'Argentína', 0, 0, 2, 2),
(52, 'Szingapúr', 0, 0, 2, 2),
(54, 'Puerto Rico', 0, 0, 1, 1),
(54, 'Trinidad és Tobago', 0, 0, 1, 1),
(54, 'Venezuela', 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kodok`
--

CREATE TABLE `kodok` (
  `orszag_azon` int(11) NOT NULL,
  `orszag` varchar(37) DEFAULT NULL,
  `kod` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `kodok`
--

INSERT INTO `kodok` (`orszag_azon`, `orszag`, `kod`) VALUES
(1, 'Afganisztán', 'AFG'),
(2, 'Albánia', 'ALB'),
(3, 'Algéria', 'ALG'),
(4, 'Amerikai Egyesült Államok', 'USA'),
(5, 'Amerikai Szamoa', 'ASA'),
(6, 'Amerikai Virgin-szigetek', 'ISV'),
(7, 'Andorra', 'AND'),
(8, 'Angola', 'ANG'),
(9, 'Antigua és Barbuda', 'ANT'),
(10, 'Argentína', 'ARG'),
(11, 'Aruba', 'ARU'),
(12, 'Ausztrálázsia', 'ANZ'),
(13, 'Ausztrália', 'AUS'),
(14, 'Ausztria', 'AUT'),
(15, 'Azerbajdzsán', 'AZE'),
(16, 'Bahama-szigetek', 'BAH'),
(17, 'Bahrein', 'BRN'),
(18, 'Banglades', 'BAN'),
(19, 'Barbados', 'BAR'),
(20, 'Belgium', 'BEL'),
(21, 'Belize', 'BIZ'),
(22, 'Benin', 'BEN'),
(23, 'Bermuda', 'BER'),
(24, 'Bhután', 'BHU'),
(25, 'Bissau-Guinea', 'GBS'),
(26, 'Bolívia', 'BOL'),
(27, 'Bosznia-Hercegovina', 'BIH'),
(28, 'Botswana', 'BOT'),
(29, 'Brazília', 'BRA'),
(30, 'Brit Honduras', 'HBR'),
(31, 'Brit Nyugat-India', 'BWI'),
(32, 'Brit Virgin-szigetek', 'IVB'),
(33, 'Brunei', 'BRU'),
(34, 'Bulgária', 'BUL'),
(35, 'Burkina Faso', 'BUR'),
(36, 'Burma', 'BIR'),
(37, 'Burundi', 'BDI'),
(38, 'Chile', 'CHI'),
(39, 'Ciprus', 'CYP'),
(40, 'Comore-szigetek', 'COM'),
(41, 'Cook-szigetek', 'COK'),
(42, 'Costa Rica', 'CRC'),
(43, 'Csád', 'CHA'),
(44, 'Cseh Királyság', 'BOH'),
(45, 'Csehország', 'CZE'),
(46, 'Csehszlovákia', 'TCH'),
(47, 'Dahomey', 'DAH'),
(48, 'Dánia', 'DEN'),
(49, 'Dél-afrikai Köztársaság', 'RSA'),
(50, 'Dél-Jemen', 'YMD'),
(51, 'Dél-Korea', 'KOR'),
(52, 'Dél-Rhodézia', 'RHS'),
(53, 'Dél-Szudán', 'SSD'),
(54, 'Dominikai Közösség', 'DMA'),
(55, 'Dominikai Köztársaság', 'DOM'),
(56, 'Dzsibuti', 'DJI'),
(57, 'Ecuador', 'ECU'),
(58, 'Egyenlítői-Guinea', 'GEQ'),
(59, 'Egyesült Arab Emírségek', 'UAE'),
(60, 'Egyesült Arab Köztársaság', 'RAU'),
(61, 'Egyesült Királyság', 'GBR'),
(62, 'Egyiptom', 'EGY'),
(63, 'Elefántcsontpart', 'CIV'),
(64, 'Eritrea', 'ERI'),
(65, 'Észak-Borneó', 'BOR'),
(66, 'Észak-Jemen', 'YAR'),
(67, 'Észak-Korea', 'PRK'),
(68, 'Észak-Rodézia', 'NRH'),
(69, 'Észtország', 'EST'),
(70, 'Etiópia', 'ETH'),
(71, 'Fehéroroszország', 'BLR'),
(72, 'Felső-Volta', 'VOL'),
(73, 'Fidzsi-szigetek', 'FIJ'),
(74, 'Finnország', 'FIN'),
(75, 'Franciaország', 'FRA'),
(76, 'Fülöp-szigetek', 'PHI'),
(77, 'Gabon', 'GAB'),
(78, 'Gambia', 'GAM'),
(79, 'Ghána', 'GHA'),
(80, 'Görögország', 'GRE'),
(81, 'Grenada', 'GRN'),
(82, 'Grúzia', 'GEO'),
(83, 'Guam', 'GUM'),
(84, 'Guatemala', 'GUA'),
(85, 'Guinea', 'GUI'),
(86, 'Guyana', 'GUY'),
(87, 'Haiti', 'HAI'),
(88, 'Holland Antillák', 'AHO'),
(89, 'Hollandia', 'NED'),
(90, 'Honduras', 'HON'),
(91, 'Hongkong', 'HKG'),
(92, 'Horvátország', 'CRO'),
(93, 'India', 'IND'),
(94, 'Indonézia', 'INA'),
(95, 'Irak', 'IRQ'),
(96, 'Irán', 'IRI'),
(97, 'Írország', 'IRL'),
(98, 'Izland', 'ISL'),
(99, 'Izrael', 'ISR'),
(100, 'Jamaica', 'JAM'),
(101, 'Japán', 'JPN'),
(102, 'Jemen', 'YEM'),
(103, 'Jordánia', 'JOR'),
(104, 'Jugoszlávia', 'YUG'),
(105, 'Kajmán-szigetek', 'CAY'),
(106, 'Kambodzsa', 'CAM'),
(107, 'Kamerun', 'CMR'),
(108, 'Kanada', 'CAN'),
(109, 'Katar', 'QAT'),
(110, 'Kazahsztán', 'KAZ'),
(111, 'Kelet-Timor', 'TLS'),
(112, 'Kenya', 'KEN'),
(113, 'Kína', 'CHN'),
(114, 'Kínai Köztársaság', 'ROC'),
(115, 'Kirgizisztán', 'KGZ'),
(116, 'Kiribati', 'KIR'),
(117, 'Kolumbia', 'COL'),
(118, 'Kongói Demokratikus Köztársaság', 'COD'),
(119, 'Kongói Köztársaság', 'CGO'),
(120, 'Koszovó', 'KOS'),
(121, 'Közép-afrikai Köztársaság', 'CAF'),
(122, 'Kuba', 'CUB'),
(123, 'Kuvait', 'KUW'),
(124, 'Laosz', 'LAO'),
(125, 'Lengyelország', 'POL'),
(126, 'Lesotho', 'LES'),
(127, 'Lettország', 'LAT'),
(128, 'Libanon', 'LIB'),
(129, 'Libéria', 'LBR'),
(130, 'Líbia', 'LBA'),
(131, 'Liechtenstein', 'LIE'),
(132, 'Litvánia', 'LTU'),
(133, 'Luxemburg', 'LUX'),
(134, 'Macedónia', 'MKD'),
(135, 'Madagaszkár', 'MAD'),
(136, 'Magyarország', 'HUN'),
(137, 'Malajzia', 'MAL'),
(138, 'Malawi', 'MAW'),
(139, 'Maldív-szigetek', 'MDV'),
(140, 'Mali', 'MLI'),
(141, 'Málta', 'MLT'),
(142, 'Marokkó', 'MAR'),
(143, 'Marshall-szigetek', 'MHL'),
(144, 'Mauritánia', 'MTN'),
(145, 'Mauritius', 'MRI'),
(146, 'Mexikó', 'MEX'),
(147, 'Mianmar', 'MYA'),
(148, 'Mikronézia', 'FSM'),
(149, 'Moldova', 'MDA'),
(150, 'Monaco', 'MON'),
(151, 'Mongólia', 'MGL'),
(152, 'Montenegró', 'MNE'),
(153, 'Mozambik', 'MOZ'),
(154, 'Namíbia', 'NAM'),
(155, 'Nauru', 'NRU'),
(156, 'NDK', 'GDR'),
(157, 'Németország', 'GER'),
(158, 'Nepál', 'NEP'),
(159, 'Nicaragua', 'NCA'),
(160, 'Niger', 'NIG'),
(161, 'Nigéria', 'NGR'),
(162, 'Norvégia', 'NOR'),
(163, 'NSZK', 'FRG'),
(164, 'Olaszország', 'ITA'),
(165, 'Omán', 'OMA'),
(166, 'Oroszország', 'RUS'),
(167, 'Örményország', 'ARM'),
(168, 'Pakisztán', 'PAK'),
(169, 'Palau', 'PLW'),
(170, 'Palesztina', 'PLE'),
(171, 'Panama', 'PAN'),
(172, 'Pápua Új-Guinea', 'PNG'),
(173, 'Paraguay', 'PAR'),
(174, 'Peru', 'PER'),
(175, 'Portugália', 'POR'),
(176, 'Puerto Rico', 'PUR'),
(177, 'Rodézia', 'RHO'),
(178, 'Románia', 'ROU'),
(179, 'Ruanda', 'RWA'),
(180, 'Saar-vidék', 'SAA'),
(181, 'Saint Kitts és Nevis', 'SKN'),
(182, 'Saint Lucia', 'LCA'),
(183, 'Saint Vincent és a Grenadine-szigetek', 'VIN'),
(184, 'Salamon-szigetek', 'SOL'),
(185, 'Salvador', 'ESA'),
(186, 'San Marino', 'SMR'),
(187, 'Sao Tomé és Príncipe', 'STP'),
(188, 'Seychelle-szigetek', 'SEY'),
(189, 'Sierra Leone', 'SLE'),
(190, 'Spanyolország', 'ESP'),
(191, 'Srí Lanka', 'SRI'),
(192, 'Suriname', 'SUR'),
(193, 'Svájc', 'SUI'),
(194, 'Svédország', 'SWE'),
(195, 'Szamoa', 'SAM'),
(196, 'Szaúd-Arábia', 'KSA'),
(197, 'Szenegál', 'SEN'),
(198, 'Szerbia', 'SRB'),
(199, 'Szerbia és Montenegró', 'SCG'),
(200, 'Szingapúr', 'SGP'),
(201, 'Szíria', 'SYR'),
(202, 'Szlovákia', 'SVK'),
(203, 'Szlovénia', 'SLO'),
(204, 'Szomália', 'SOM'),
(205, 'Szovjetunió', 'URS'),
(206, 'Szudán', 'SUD'),
(207, 'Szváziföld', 'SWZ'),
(208, 'Tádzsikisztán', 'TJK'),
(209, 'Tajvan', 'TPE'),
(210, 'Tanzánia', 'TAN'),
(211, 'Thaiföld', 'THA'),
(212, 'Togo', 'TOG'),
(213, 'Tonga', 'TGA'),
(214, 'Törökország', 'TUR'),
(215, 'Trinidad és Tobago', 'TTO'),
(216, 'Tunézia', 'TUN'),
(217, 'Tuvalu', 'TUV'),
(218, 'Türkmenisztán', 'TKM'),
(219, 'Uganda', 'UGA'),
(220, 'Új-Zéland', 'NZL'),
(221, 'Ukrajna', 'UKR'),
(222, 'Uruguay', 'URU'),
(223, 'Üzbegisztán', 'UZB'),
(224, 'Vanuatu', 'VAN'),
(225, 'Venezuela', 'VEN'),
(226, 'Vietnám', 'VIE'),
(227, 'Zaire', 'ZAI'),
(228, 'Zambia', 'ZAM'),
(229, 'Zimbabwe', 'ZIM'),
(230, 'Zöld-foki Köztársaság', 'CPV');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `uszok`
--

CREATE TABLE `uszok` (
  `helyezes` int(2) DEFAULT NULL,
  `sportolo` varchar(22) DEFAULT NULL,
  `szarmazas` varchar(25) DEFAULT NULL,
  `szarmazas_azon` int(11) NOT NULL,
  `nem` varchar(5) DEFAULT NULL,
  `sportag` varchar(13) DEFAULT NULL,
  `mettol` int(4) DEFAULT NULL,
  `meddig` int(4) DEFAULT NULL,
  `arany` int(2) DEFAULT NULL,
  `ezust` int(1) DEFAULT NULL,
  `bronz` int(1) DEFAULT NULL,
  `osszes` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `uszok`
--

INSERT INTO `uszok` (`helyezes`, `sportolo`, `szarmazas`, `szarmazas_azon`, `nem`, `sportag`, `mettol`, `meddig`, `arany`, `ezust`, `bronz`, `osszes`) VALUES
(1, 'Michael Phelps', 'Amerikai Egyesült Államok', 4, 'Férfi', 'Úszás', 2001, 2011, 26, 6, 1, 33),
(2, 'Svetlana Romashina', 'Oroszország', 166, 'Nő', 'Szinkronúszás', 2005, 2019, 21, 0, 0, 21),
(3, 'Natalia Ishchenko', 'Oroszország', 166, 'Nő', 'Szinkronúszás', 2005, 2015, 19, 2, 0, 21),
(4, 'Ryan Lochte', 'Amerikai Egyesült Államok', 4, 'Férfi', 'Úszás', 2005, 2015, 18, 5, 4, 27),
(5, 'Svetlana Kolesnichenko', 'Oroszország', 166, 'Nő', 'Szinkronúszás', 2011, 2019, 16, 0, 0, 16),
(6, 'Katie Ledecky', 'Amerikai Egyesült Államok', 4, 'Nő', 'Úszás', 2013, 2019, 15, 3, 0, 18),
(7, 'Alla Shishkina', 'Oroszország', 166, 'Nő', 'Szinkronúszás', 2009, 2019, 14, 0, 0, 14),
(8, 'Caeleb Dressel', 'Amerikai Egyesült Államok', 4, 'Férfi', 'Úszás', 2017, 2019, 13, 2, 0, 15),
(9, 'Anastasia Davydova', 'Oroszország', 166, 'Nő', 'Szinkronúszás', 2001, 2011, 13, 1, 0, 14),
(10, 'Alexandra Patskevich', 'Oroszország', 166, 'Nő', 'Szinkronúszás', 2009, 2017, 13, 0, 0, 13);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `kodok`
--
ALTER TABLE `kodok`
  ADD PRIMARY KEY (`orszag_azon`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `kodok`
--
ALTER TABLE `kodok`
  MODIFY `orszag_azon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
