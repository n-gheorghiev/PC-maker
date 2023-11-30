-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 29 2020 г., 00:24
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pc_maker`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cooler`
--

CREATE TABLE `cooler` (
  `cool_id` int(11) NOT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `socket` varchar(35) DEFAULT NULL,
  `cool_height` int(10) UNSIGNED DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `cooler`
--

INSERT INTO `cooler` (`cool_id`, `producer`, `model`, `socket`, `cool_height`, `price`) VALUES
(1, 'DeepCool', 'LuciferV2', 'LGA1151, LGA1151v2, AM4', 164, 872),
(2, 'DeepCool', 'Gammaxx400v2', 'LGA1151, LGA1151v2, LGA1200, AM4', 156, 545),
(3, 'DeepCool', 'IceEdgeMiniFSv2', 'LGA1151', 131, 267),
(4, 'Arctic', 'Alpine', 'LGA1151', 78, 287);

-- --------------------------------------------------------

--
-- Структура таблицы `cpu`
--

CREATE TABLE `cpu` (
  `cpu_id` int(11) NOT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `socket` varchar(10) DEFAULT NULL,
  `gpu_module` tinyint(1) DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `cpu`
--

INSERT INTO `cpu` (`cpu_id`, `producer`, `model`, `socket`, `gpu_module`, `price`) VALUES
(1, 'Intel', 'Pentium_G4560', 'LGA1151', 1, 1292),
(2, 'Intel', 'CoreI3-10100F', 'LGA1200', 0, 2139),
(3, 'Intel', 'CoreI3-9100', 'LGA1151v2', 1, 2762),
(4, 'Intel', 'CoreI5-9600K', 'LGA1151v2', 1, 4972),
(5, 'Intel', 'CoreI5-9600KF', 'LGA1151v2', 0, 4141),
(6, 'Intel', 'CoreI7-9700K', 'LGA1151v2', 1, 7306),
(7, 'Intel', 'CoreI7-9700F', 'LGA1151v2', 0, 5970),
(8, 'Intel', 'CoreI9-9900K', 'LGA1151v2', 1, 9623),
(9, 'AMD', 'Ryzen3-3100', 'AM4', 0, 2504),
(10, 'AMD', 'Ryzen5-2600', 'AM4', 0, 2798),
(11, 'AMD', 'Ryzen5-3600X', 'AM4', 0, 4491),
(12, 'AMD', 'Ryzen7-3700X', 'AM4', 0, 7003),
(13, 'AMD', 'Ryzen9-3900X', 'AM4', 0, 10514);

-- --------------------------------------------------------

--
-- Структура таблицы `createt`
--

CREATE TABLE `createt` (
  `id` int(50) NOT NULL,
  `cpu` varchar(50) NOT NULL,
  `cooler` varchar(50) NOT NULL,
  `board` varchar(50) NOT NULL,
  `gpu` varchar(50) NOT NULL,
  `pccase` varchar(50) NOT NULL,
  `ram` int(50) NOT NULL,
  `powers` varchar(50) NOT NULL,
  `sd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `createt`
--

INSERT INTO `createt` (`id`, `cpu`, `cooler`, `board`, `gpu`, `pccase`, `ram`, `powers`, `sd`) VALUES
(4, 'Pentium_G4560', 'LuciferV2', 'PrimeH270-Plus', 'GTX1050TI', 'Tesseract_SW-RD', 4, 'GPF-350P', 'HDD_1Tb'),
(5, 'CoreI7-9700K', 'LuciferV2', 'Z390-GamingX', 'RTX2060', 'Matrexx55MeshRGB', 32, 'SSR-750TR', 'SSD_960Gb'),
(6, 'Ryzen5-3600X', 'LuciferV2', 'Z390-MPG_Gaming-Plus', 'GTX1660TI', 'KendomenT1', 32, 'TPS-700S', 'SSD_512Gb'),
(7, 'CoreI9-9900K', 'LuciferV2', 'TUF-GamingZ490-Plus', 'RTX3090', 'Matrexx55MeshRGB', 32, 'GPS-1250C', 'SSD_960Gb');

-- --------------------------------------------------------

--
-- Структура таблицы `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `contact_name` varchar(40) NOT NULL,
  `contact_phone` int(11) UNSIGNED NOT NULL,
  `contact_message` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `customer`
--

INSERT INTO `customer` (`customer_id`, `contact_name`, `contact_phone`, `contact_message`, `id`) VALUES
(1, 'Alex', 1435153616, 'srtjstjs', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `cust_order`
--

CREATE TABLE `cust_order` (
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `frequency`
--

CREATE TABLE `frequency` (
  `board_id` int(11) NOT NULL,
  `ram_id` int(11) NOT NULL,
  `frequency_id_connect` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `frequency`
--

INSERT INTO `frequency` (`board_id`, `ram_id`, `frequency_id_connect`) VALUES
(1, 7, 1),
(3, 1, 2),
(10, 8, 3),
(11, 8, 4),
(8, 8, 5),
(15, 2, 6),
(4, 8, 7),
(9, 3, 8),
(12, 5, 9),
(6, 4, 10),
(12, 4, 11),
(6, 5, 12),
(7, 5, 13),
(14, 5, 14),
(6, 6, 15),
(7, 2, 16),
(14, 6, 17),
(2, 6, 18),
(13, 5, 19),
(5, 5, 20);

-- --------------------------------------------------------

--
-- Структура таблицы `gpu`
--

CREATE TABLE `gpu` (
  `gpu_id` int(11) NOT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `power` int(10) UNSIGNED DEFAULT NULL,
  `memory_size` int(10) UNSIGNED DEFAULT NULL,
  `graphic_chip` varchar(10) DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `gpu`
--

INSERT INTO `gpu` (`gpu_id`, `producer`, `model`, `power`, `memory_size`, `graphic_chip`, `price`) VALUES
(1, 'MSI', '4GT', 450, 4, 'GTX1050TI', 3279),
(2, 'Gigabyte', 'WindForce', 450, 4, 'GTX1650', 3542),
(3, 'Zotac', 'TwinFan', 500, 4, 'GTX1650SUP', 4135),
(4, 'Asus', 'TUF-Gaming', 600, 6, 'GTX1660TI', 6458),
(5, 'Asus', 'DualMINI', 600, 6, 'RTX2060', 7854),
(6, 'Gigabyte', 'Gaming', 900, 24, 'RTX3090', 38890),
(7, 'MSI', 'Armor', 550, 8, 'RX570', 4633),
(8, 'MSI', 'MECH', 550, 6, 'RX5600XT', 7217),
(9, 'Asus', 'DualEVO', 550, 8, 'RX5500XT', 5614),
(10, 'NONE', 'NONE', 300, 0, 'NONE', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `height`
--

CREATE TABLE `height` (
  `cool_id` int(10) NOT NULL,
  `case_id` int(10) NOT NULL,
  `cool_id_connect` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `height`
--

INSERT INTO `height` (`cool_id`, `case_id`, `cool_id_connect`) VALUES
(3, 4, 1),
(4, 4, 2),
(4, 3, 3),
(3, 3, 4),
(2, 3, 5),
(1, 1, 6),
(2, 1, 7),
(3, 1, 8),
(4, 1, 9),
(1, 2, 10),
(2, 2, 11),
(3, 2, 12),
(4, 2, 13),
(1, 5, 14),
(2, 5, 15),
(3, 5, 16),
(4, 5, 17),
(1, 6, 18),
(2, 6, 19),
(3, 6, 20),
(4, 6, 21),
(1, 7, 22),
(2, 7, 23),
(3, 7, 24),
(4, 7, 25),
(1, 8, 26),
(2, 8, 27),
(3, 8, 28),
(4, 8, 29);

-- --------------------------------------------------------

--
-- Структура таблицы `int_gpu`
--

CREATE TABLE `int_gpu` (
  `gpu_id` int(11) NOT NULL,
  `cpu_id` int(11) NOT NULL,
  `intgpu_id_connect` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `int_gpu`
--

INSERT INTO `int_gpu` (`gpu_id`, `cpu_id`, `intgpu_id_connect`) VALUES
(10, 1, 1),
(10, 3, 2),
(10, 4, 3),
(10, 6, 4),
(10, 8, 5),
(1, 2, 6),
(2, 2, 7),
(1, 3, 8),
(2, 3, 9),
(3, 4, 10),
(7, 4, 11),
(3, 5, 12),
(7, 5, 13),
(8, 6, 14),
(5, 6, 15),
(8, 7, 16),
(5, 7, 17),
(6, 8, 18),
(6, 13, 19),
(6, 10, 20),
(6, 11, 21),
(9, 10, 22),
(9, 11, 23),
(2, 9, 24),
(3, 9, 25),
(5, 12, 26),
(8, 12, 27);

-- --------------------------------------------------------

--
-- Структура таблицы `motherboard`
--

CREATE TABLE `motherboard` (
  `board_id` int(11) NOT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `socket` varchar(10) DEFAULT NULL,
  `form_factor` varchar(15) DEFAULT NULL,
  `memory_type` varchar(7) DEFAULT NULL,
  `memory_frequency` varchar(5) DEFAULT NULL,
  `storage_device_form` varchar(10) DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `motherboard`
--

INSERT INTO `motherboard` (`board_id`, `producer`, `model`, `socket`, `form_factor`, `memory_type`, `memory_frequency`, `storage_device_form`, `price`) VALUES
(1, 'Asus', 'PrimeH270-Plus', 'LGA1151', 'ATX', 'DDR4', '2400', 'M2+SATA', 1865),
(2, 'Asus', 'PrimeZ390-A', 'LGA1151v2', 'ATX', 'DDR4', '4266', 'M2+SATA', 4117),
(3, 'Asus', 'PrimeB365M-A', 'LGA1151v2', 'Micro-ATX', 'DDR4', '2666', 'M2+SATA', 1747),
(4, 'Asus', 'TUF-GamingB460M-Plus', 'LGA1200', 'Micro-ATX', 'DDR4', '2933', 'M2+SATA', 2766),
(5, 'Asus', 'TUF-GamingZ490-Plus', 'LGA1200', 'ATX', 'DDR4', '4600', 'M2+SATA', 4494),
(6, 'Asus', 'TUF-GamingB550-Plus', 'AM4', 'ATX', 'DDR4', '4600', 'M2+SATA', 3154),
(7, 'Gigabyte', 'Z390-GamingX', 'LGA1151v2', 'ATX', 'DDR4', '4000', 'M2+SATA', 3190),
(8, 'Gigabyte', 'B460M-AorusPro', 'LGA1200', 'Micro-ATX', 'DDR4', '2933', 'M2+SATA', 2299),
(9, 'Gigabyte', 'Z490-1.0', 'LGA1200', 'Micro-ATX', 'DDR4', '4400', 'M2+SATA', 2937),
(10, 'Gigabyte', 'A520M-DS3H-1.0', 'AM4', 'Micro-ATX', 'DDR4', '4733', 'M2+SATA', 1594),
(11, 'Gigabyte', 'B550M-AorusElite', 'AM4', 'Micro-ATX', 'DDR4', '4733', 'M2+SATA', 2299),
(12, 'MSI', 'Z390-MPG_Gaming-Plus', 'LGA1151v2', 'ATX', 'DDR4', '4400', 'M2+SATA', 3154),
(13, 'MSI', 'X570-MPG_Gaming-Plus', 'AM4', 'ATX', 'DDR4', '4400', 'M2+SATA', 4188),
(14, 'ASRock', 'Z490-Extreme4', 'LGA1200', 'ATX', 'DDR4', '4266', 'M2+SATA', 4035),
(15, 'Biostar', 'X570GT', 'AM4', 'Micro-ATX', 'DDR4', '4000', 'M2+SATA', 2638);

-- --------------------------------------------------------

--
-- Структура таблицы `order_pc`
--

CREATE TABLE `order_pc` (
  `order_id` int(11) NOT NULL,
  `cpu_id` int(11) NOT NULL,
  `gpu_id` int(11) NOT NULL,
  `cool_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `case_id` int(11) NOT NULL,
  `power_id` int(11) NOT NULL,
  `ram_id` int(11) NOT NULL,
  `sd_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `pc_case`
--

CREATE TABLE `pc_case` (
  `case_id` int(11) NOT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `cool_height` int(10) UNSIGNED DEFAULT NULL,
  `form_factor` varchar(15) DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `pc_case`
--

INSERT INTO `pc_case` (`case_id`, `producer`, `model`, `cool_height`, `form_factor`, `price`) VALUES
(1, 'DeepCool', 'Tesseract_SW-RD', 164, 'ATX', 872),
(2, 'DeepCool', 'Matrexx55MeshRGB', 164, 'ATX', 1258),
(3, 'DeepCool', 'Smarter_Led', 156, 'Micro-ATX', 596),
(4, 'DeepCool', 'Matrexx30Black', 131, 'Micro-ATX', 545),
(5, 'DeepCool', 'KendomenT1', 164, 'ATX', 965),
(6, 'Zalman', 'T6', 164, 'Micro-ATX', 596),
(7, 'NZXT', 'H510_BlackFans', 164, 'ATX', 1773),
(8, 'Chieftec', 'ATX', 164, 'ATX', 1754);

-- --------------------------------------------------------

--
-- Структура таблицы `power`
--

CREATE TABLE `power` (
  `power_id` int(11) NOT NULL,
  `gpu_id` int(11) NOT NULL,
  `power_id_connect` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `power`
--

INSERT INTO `power` (`power_id`, `gpu_id`, `power_id_connect`) VALUES
(1, 10, 1),
(3, 10, 2),
(2, 1, 3),
(2, 2, 4),
(3, 1, 5),
(3, 2, 6),
(4, 3, 7),
(5, 3, 8),
(6, 4, 9),
(7, 4, 10),
(8, 4, 11),
(9, 4, 12),
(6, 5, 13),
(7, 5, 14),
(8, 5, 15),
(9, 5, 16),
(10, 6, 17),
(11, 6, 18),
(5, 7, 19),
(6, 7, 20),
(7, 7, 21),
(8, 7, 22),
(5, 8, 23),
(6, 8, 24),
(7, 8, 25),
(8, 8, 26),
(5, 9, 27),
(6, 9, 28),
(7, 9, 29),
(8, 9, 30),
(12, 5, 31),
(12, 8, 32);

-- --------------------------------------------------------

--
-- Структура таблицы `power_supply`
--

CREATE TABLE `power_supply` (
  `power_id` int(11) NOT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `power` int(10) UNSIGNED DEFAULT NULL,
  `certificate` varchar(12) DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `power_supply`
--

INSERT INTO `power_supply` (`power_id`, `producer`, `model`, `power`, `certificate`, `price`) VALUES
(1, 'Chieftec', 'GPF-350P', 300, 'Bronze', 889),
(2, 'Chieftec', 'CTB-450S', 450, 'None', 818),
(3, 'DeepCool', 'DN450', 450, '80Plus', 755),
(4, 'Chieftec', 'GPS-500A8', 500, '80Plus', 940),
(5, 'Chieftec', 'CTG-550C', 550, '85Plus', 1274),
(6, 'DeepCool', 'DA600', 600, 'Bronze', 1200),
(7, 'Seasonic', 'SSR-650PX', 650, 'Platinum', 3243),
(8, 'Seasonic', 'SSR-650LC', 650, 'Gold', 2068),
(9, 'Chieftec', 'TPS-700S', 700, 'Bronze', 1330),
(10, 'Chieftec', 'APS-1000CB', 1000, 'Bronze', 2360),
(11, 'Chieftec', 'GPS-1250C', 1250, 'Gold', 3407),
(12, 'Seasonic', 'SSR-750TR', 750, 'Titanium', 5647);

-- --------------------------------------------------------

--
-- Структура таблицы `ram`
--

CREATE TABLE `ram` (
  `ram_id` int(11) NOT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `memory_type` varchar(7) DEFAULT NULL,
  `memory_fraequency` varchar(5) DEFAULT NULL,
  `memory_size` int(10) UNSIGNED DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `ram`
--

INSERT INTO `ram` (`ram_id`, `producer`, `model`, `memory_type`, `memory_fraequency`, `memory_size`, `price`) VALUES
(1, 'Kingston', 'HyperX_Fury', 'DDR4', '2666', 4, 528),
(2, 'Kingston', 'HyperX_Fury_Kit', 'DDR4', '3200', 8, 1057),
(3, 'Kingston', 'HyperX_Fury_Kit', 'DDR4', '3000', 16, 1628),
(4, 'Kingston', 'HyperX_Predator_Kit', 'DDR4', '3000', 32, 3707),
(5, 'Corsair', 'VengeanceLPX_Kit', 'DDR4', '3200', 32, 3379),
(6, 'G.Skill', 'Aegis_Kit', 'DDR4', '3000', 16, 1732),
(7, 'Goodram', 'one', 'DDR4', '2400', 4, 478),
(8, 'Goodram', 'one', 'DDR4', '2666', 8, 747);

-- --------------------------------------------------------

--
-- Структура таблицы `socket`
--

CREATE TABLE `socket` (
  `cpu_id` int(11) NOT NULL,
  `board_id` int(11) NOT NULL,
  `cool_id` int(11) NOT NULL,
  `socket_id_connect` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `socket`
--

INSERT INTO `socket` (`cpu_id`, `board_id`, `cool_id`, `socket_id_connect`) VALUES
(1, 1, 3, 1),
(1, 1, 4, 2),
(2, 4, 2, 3),
(2, 5, 2, 4),
(2, 9, 2, 5),
(2, 14, 2, 6),
(2, 8, 2, 7),
(3, 3, 2, 8),
(4, 7, 2, 9),
(4, 12, 2, 10),
(5, 12, 2, 11),
(5, 7, 2, 12),
(7, 2, 1, 13),
(6, 2, 1, 14),
(8, 2, 1, 15),
(9, 10, 2, 16),
(10, 10, 2, 17),
(11, 15, 1, 18),
(11, 11, 1, 19),
(12, 6, 1, 20),
(13, 13, 1, 21);

-- --------------------------------------------------------

--
-- Структура таблицы `storage_device`
--

CREATE TABLE `storage_device` (
  `sd_id` int(11) NOT NULL,
  `producer` varchar(30) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `storage_device_fullname` varchar(10) DEFAULT NULL,
  `storage_device_type` varchar(12) DEFAULT NULL,
  `storage_volume` int(10) UNSIGNED DEFAULT NULL,
  `price` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `storage_device`
--

INSERT INTO `storage_device` (`sd_id`, `producer`, `model`, `storage_device_fullname`, `storage_device_type`, `storage_volume`, `price`) VALUES
(1, 'WesternDigital', 'CaviarBlue', 'HDD_1Tb', 'HDD', 1000, 881),
(2, 'Seagate', 'BarraCuda', 'HDD_2Tb', 'HDD', 2000, 1250),
(3, 'Samsung', '970EVO', 'SSD_500Gb', 'SSD', 500, 2121),
(4, 'WesternDigital', 'Green', 'SSD_120Gb', 'SSD', 120, 537),
(5, 'Kingston', 'A400', 'SSD_480Gb', 'SSD', 480, 1359),
(6, 'Kingston', 'HyperXFury3D', 'SSD_240Gb', 'SSD', 240, 881),
(7, 'Kingston', 'SSDNowKC600', 'SSD_512Gb', 'SSD', 512, 1560),
(8, 'Kingston', 'A400', 'SSD_960Gb', 'SSD', 960, 2228);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cooler`
--
ALTER TABLE `cooler`
  ADD PRIMARY KEY (`cool_id`);

--
-- Индексы таблицы `cpu`
--
ALTER TABLE `cpu`
  ADD PRIMARY KEY (`cpu_id`);

--
-- Индексы таблицы `createt`
--
ALTER TABLE `createt`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `cust_order`
--
ALTER TABLE `cust_order`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `frequency`
--
ALTER TABLE `frequency`
  ADD PRIMARY KEY (`frequency_id_connect`),
  ADD KEY `board_id` (`board_id`),
  ADD KEY `ram_id` (`ram_id`);

--
-- Индексы таблицы `gpu`
--
ALTER TABLE `gpu`
  ADD PRIMARY KEY (`gpu_id`);

--
-- Индексы таблицы `height`
--
ALTER TABLE `height`
  ADD PRIMARY KEY (`cool_id_connect`),
  ADD KEY `case_id` (`case_id`),
  ADD KEY `cool_id` (`cool_id`);

--
-- Индексы таблицы `int_gpu`
--
ALTER TABLE `int_gpu`
  ADD PRIMARY KEY (`intgpu_id_connect`),
  ADD KEY `cpu_id` (`cpu_id`),
  ADD KEY `gpu_id` (`gpu_id`);

--
-- Индексы таблицы `motherboard`
--
ALTER TABLE `motherboard`
  ADD PRIMARY KEY (`board_id`);

--
-- Индексы таблицы `order_pc`
--
ALTER TABLE `order_pc`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `board_id` (`board_id`),
  ADD KEY `case_id` (`case_id`),
  ADD KEY `cool_id` (`cool_id`),
  ADD KEY `cpu_id` (`cpu_id`),
  ADD KEY `gpu_id` (`gpu_id`),
  ADD KEY `power_id` (`power_id`),
  ADD KEY `ram_id` (`ram_id`),
  ADD KEY `sd_id` (`sd_id`);

--
-- Индексы таблицы `pc_case`
--
ALTER TABLE `pc_case`
  ADD PRIMARY KEY (`case_id`);

--
-- Индексы таблицы `power`
--
ALTER TABLE `power`
  ADD PRIMARY KEY (`power_id_connect`),
  ADD KEY `gpu_id` (`gpu_id`),
  ADD KEY `power_id` (`power_id`);

--
-- Индексы таблицы `power_supply`
--
ALTER TABLE `power_supply`
  ADD PRIMARY KEY (`power_id`);

--
-- Индексы таблицы `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`ram_id`);

--
-- Индексы таблицы `socket`
--
ALTER TABLE `socket`
  ADD PRIMARY KEY (`socket_id_connect`),
  ADD KEY `board_id` (`board_id`),
  ADD KEY `cool_id` (`cool_id`),
  ADD KEY `cpu_id` (`cpu_id`);

--
-- Индексы таблицы `storage_device`
--
ALTER TABLE `storage_device`
  ADD PRIMARY KEY (`sd_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cooler`
--
ALTER TABLE `cooler`
  MODIFY `cool_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `cpu`
--
ALTER TABLE `cpu`
  MODIFY `cpu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `createt`
--
ALTER TABLE `createt`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `frequency`
--
ALTER TABLE `frequency`
  MODIFY `frequency_id_connect` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `gpu`
--
ALTER TABLE `gpu`
  MODIFY `gpu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `height`
--
ALTER TABLE `height`
  MODIFY `cool_id_connect` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `int_gpu`
--
ALTER TABLE `int_gpu`
  MODIFY `intgpu_id_connect` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `motherboard`
--
ALTER TABLE `motherboard`
  MODIFY `board_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `order_pc`
--
ALTER TABLE `order_pc`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pc_case`
--
ALTER TABLE `pc_case`
  MODIFY `case_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `power`
--
ALTER TABLE `power`
  MODIFY `power_id_connect` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `power_supply`
--
ALTER TABLE `power_supply`
  MODIFY `power_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `ram`
--
ALTER TABLE `ram`
  MODIFY `ram_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `socket`
--
ALTER TABLE `socket`
  MODIFY `socket_id_connect` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `storage_device`
--
ALTER TABLE `storage_device`
  MODIFY `sd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id`) REFERENCES `createt` (`id`);

--
-- Ограничения внешнего ключа таблицы `cust_order`
--
ALTER TABLE `cust_order`
  ADD CONSTRAINT `cust_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `cust_order_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order_pc` (`order_id`);

--
-- Ограничения внешнего ключа таблицы `frequency`
--
ALTER TABLE `frequency`
  ADD CONSTRAINT `frequency_ibfk_1` FOREIGN KEY (`board_id`) REFERENCES `motherboard` (`board_id`),
  ADD CONSTRAINT `frequency_ibfk_2` FOREIGN KEY (`ram_id`) REFERENCES `ram` (`ram_id`);

--
-- Ограничения внешнего ключа таблицы `height`
--
ALTER TABLE `height`
  ADD CONSTRAINT `height_ibfk_1` FOREIGN KEY (`case_id`) REFERENCES `pc_case` (`case_id`),
  ADD CONSTRAINT `height_ibfk_2` FOREIGN KEY (`cool_id`) REFERENCES `cooler` (`cool_id`);

--
-- Ограничения внешнего ключа таблицы `int_gpu`
--
ALTER TABLE `int_gpu`
  ADD CONSTRAINT `int_gpu_ibfk_1` FOREIGN KEY (`cpu_id`) REFERENCES `cpu` (`cpu_id`),
  ADD CONSTRAINT `int_gpu_ibfk_2` FOREIGN KEY (`gpu_id`) REFERENCES `gpu` (`gpu_id`);

--
-- Ограничения внешнего ключа таблицы `order_pc`
--
ALTER TABLE `order_pc`
  ADD CONSTRAINT `order_pc_ibfk_1` FOREIGN KEY (`board_id`) REFERENCES `motherboard` (`board_id`),
  ADD CONSTRAINT `order_pc_ibfk_2` FOREIGN KEY (`case_id`) REFERENCES `pc_case` (`case_id`),
  ADD CONSTRAINT `order_pc_ibfk_3` FOREIGN KEY (`cool_id`) REFERENCES `cooler` (`cool_id`),
  ADD CONSTRAINT `order_pc_ibfk_4` FOREIGN KEY (`cpu_id`) REFERENCES `cpu` (`cpu_id`),
  ADD CONSTRAINT `order_pc_ibfk_5` FOREIGN KEY (`gpu_id`) REFERENCES `gpu` (`gpu_id`),
  ADD CONSTRAINT `order_pc_ibfk_6` FOREIGN KEY (`power_id`) REFERENCES `power_supply` (`power_id`),
  ADD CONSTRAINT `order_pc_ibfk_7` FOREIGN KEY (`ram_id`) REFERENCES `ram` (`ram_id`),
  ADD CONSTRAINT `order_pc_ibfk_8` FOREIGN KEY (`sd_id`) REFERENCES `storage_device` (`sd_id`);

--
-- Ограничения внешнего ключа таблицы `power`
--
ALTER TABLE `power`
  ADD CONSTRAINT `power_ibfk_1` FOREIGN KEY (`gpu_id`) REFERENCES `gpu` (`gpu_id`),
  ADD CONSTRAINT `power_ibfk_2` FOREIGN KEY (`power_id`) REFERENCES `power_supply` (`power_id`);

--
-- Ограничения внешнего ключа таблицы `socket`
--
ALTER TABLE `socket`
  ADD CONSTRAINT `socket_ibfk_1` FOREIGN KEY (`board_id`) REFERENCES `motherboard` (`board_id`),
  ADD CONSTRAINT `socket_ibfk_2` FOREIGN KEY (`cool_id`) REFERENCES `cooler` (`cool_id`),
  ADD CONSTRAINT `socket_ibfk_3` FOREIGN KEY (`cpu_id`) REFERENCES `cpu` (`cpu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
