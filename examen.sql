-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-01-2022 a las 21:10:40
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primer_apellido` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `segundo_apellido` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salario_diario` double(8,2) NOT NULL,
  `id_estatus` bigint(20) UNSIGNED NOT NULL,
  `id_puesto` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `primer_apellido`, `segundo_apellido`, `email`, `salario_diario`, `id_estatus`, `id_puesto`, `created_at`, `updated_at`) VALUES
(1, 'Katelynn', 'Padberg', 'Wunsch', 'fannie98@example.org', 552.00, 2, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(2, 'Annamae', 'Abernathy', 'Schoen', 'darrion.bernier@example.org', 1384.00, 1, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(3, 'Oren', 'Johns', 'Pollich', 'judge.anderson@example.net', 1253.00, 1, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(4, 'Cameron', 'Abbott', 'Powlowski', 'summer.walter@example.net', 908.00, 1, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(5, 'Zena', 'Mohr', 'Cremin', 'carrie19@example.net', 1499.00, 2, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(6, 'Juvenal', 'Haag', 'Altenwerth', 'uriel31@example.net', 688.00, 1, 3, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(7, 'Eva', 'Raynor', 'Yundt', 'deonte.ruecker@example.org', 1258.00, 1, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(8, 'Royce', 'Bashirian', 'Blanda', 'deven.corkery@example.net', 997.00, 1, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(9, 'Dagmar', 'Larkin', 'Deckow', 'steuber.merle@example.org', 1324.00, 1, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(10, 'Talon', 'Gorczany', 'Rau', 'theresia61@example.org', 1426.00, 2, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(11, 'Dusty', 'Dietrich', 'Ortiz', 'ynikolaus@example.com', 654.00, 2, 3, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(12, 'Mafalda', 'Swaniawski', 'Mann', 'nathen67@example.com', 1116.00, 2, 3, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(13, 'Kameron', 'Moore', 'Larkin', 'evalyn68@example.org', 632.00, 1, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(14, 'Brown', 'O\'Reilly', 'Frami', 'apfannerstill@example.com', 641.00, 2, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(15, 'Caroline', 'Boyer', 'Padberg', 'jeffery.leuschke@example.net', 661.00, 2, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(16, 'Triston', 'Bergstrom', 'Kohler', 'gerda56@example.org', 1234.00, 1, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(17, 'Buck', 'Davis', 'Daniel', 'bpacocha@example.com', 1254.00, 1, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(18, 'Hailee', 'Walker', 'Jacobi', 'carter.euna@example.com', 933.00, 2, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(19, 'Ramiro', 'Schulist', 'Runte', 'iblanda@example.net', 539.00, 2, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(20, 'Hosea', 'Rice', 'Turcotte', 'dgreen@example.org', 785.00, 2, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(21, 'Kim', 'Collins', 'Schowalter', 'ava.gulgowski@example.com', 1303.00, 1, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(22, 'Tom', 'Schultz', 'Mohr', 'valerie.marks@example.com', 586.00, 2, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(23, 'Elisa', 'Mosciski', 'Hermann', 'carlo.kozey@example.net', 950.00, 2, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(24, 'Audra', 'Kuhlman', 'Mertz', 'vincenza.streich@example.com', 1489.00, 2, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(25, 'Doug', 'Douglas', 'Bogisich', 'pyost@example.org', 1366.00, 1, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(26, 'Harold', 'Medhurst', 'Schulist', 'catherine.huel@example.net', 591.00, 1, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(27, 'Marshall', 'Schaden', 'Wilderman', 'treutel.johanna@example.com', 1446.00, 1, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(28, 'Vita', 'Effertz', 'Kassulke', 'schultz.gunner@example.org', 624.00, 1, 3, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(29, 'Trycia', 'Hintz', 'Hammes', 'marta.lowe@example.org', 1474.00, 2, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(30, 'Oral', 'Gibson', 'Mosciski', 'diego16@example.net', 801.00, 2, 3, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(31, 'Hadley', 'Huels', 'Sauer', 'orempel@example.com', 567.00, 1, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(32, 'Jean', 'Mertz', 'Conroy', 'langosh.hanna@example.org', 553.00, 1, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(33, 'Wilhelmine', 'Schulist', 'Koelpin', 'uklein@example.com', 902.00, 2, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(34, 'Marcelle', 'Johnson', 'Ratke', 'jamarcus.nolan@example.net', 1059.00, 2, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(35, 'Christina', 'Streich', 'Fritsch', 'corkery.lexi@example.com', 1214.00, 2, 3, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(36, 'Ahmed', 'Harris', 'Sporer', 'tspinka@example.net', 1046.00, 1, 3, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(37, 'Ollie', 'Krajcik', 'Howell', 'murphy.vince@example.org', 1205.00, 1, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(38, 'Cayla', 'Schmidt', 'Stark', 'etha.cummerata@example.net', 1066.00, 1, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(39, 'Louvenia', 'Renner', 'Casper', 'wolff.claudie@example.com', 1044.00, 1, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(40, 'Desiree', 'Bayer', 'Connelly', 'opollich@example.com', 1152.00, 1, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(41, 'Donavon', 'Robel', 'Lindgren', 'stamm.kelsi@example.com', 1307.00, 1, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(42, 'Ubaldo', 'Bogan', 'Gutmann', 'zackery.gerhold@example.com', 1318.00, 1, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(43, 'Jacklyn', 'Russel', 'Trantow', 'tremblay.harold@example.com', 702.00, 1, 3, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(44, 'Madalyn', 'Yundt', 'Kuphal', 'qgoldner@example.com', 1192.00, 2, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(45, 'Christopher', 'Gerlach', 'Champlin', 'sebastian83@example.com', 810.00, 2, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(46, 'Christopher', 'Ritchie', 'Raynor', 'ferne00@example.org', 1168.00, 1, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(47, 'Gerson', 'Swift', 'Pouros', 'christina44@example.com', 1011.00, 2, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(48, 'Hal', 'McLaughlin', 'Simonis', 'burdette28@example.com', 870.00, 2, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(49, 'Rae', 'Hermann', 'West', 'zackery.schumm@example.org', 1068.00, 2, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(50, 'Anastacio', 'Cartwright', 'Labadie', 'ericka20@example.net', 678.00, 1, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(51, 'Jacklyn', 'Davis', 'Herman', 'farrell.damien@example.net', 1353.00, 2, 3, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(52, 'Dasia', 'Shields', 'Huel', 'jaida.pollich@example.net', 1086.00, 1, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(53, 'Genesis', 'Padberg', 'Schneider', 'wunsch.willy@example.com', 631.00, 2, 3, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(54, 'Carlotta', 'Roberts', 'Feeney', 'jennings80@example.org', 1088.00, 1, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(55, 'Emory', 'O\'Connell', 'Hodkiewicz', 'nayeli73@example.com', 654.00, 2, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(56, 'Adolfo', 'Goodwin', 'Olson', 'edwin.thiel@example.com', 1392.00, 2, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(57, 'Jada', 'Kilback', 'Yundt', 'koepp.ressie@example.org', 1468.00, 2, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(58, 'Jaren', 'Smith', 'Schuster', 'qkub@example.net', 1477.00, 2, 3, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(59, 'Pierre', 'Lemke', 'Fadel', 'ybruen@example.net', 625.00, 1, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(60, 'Keaton', 'Ratke', 'Schimmel', 'goyette.mona@example.com', 578.00, 2, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(61, 'Trystan', 'O\'Keefe', 'Swift', 'katherine.howe@example.com', 524.00, 2, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(62, 'Sigmund', 'Auer', 'Schneider', 'weimann.sarina@example.net', 897.00, 1, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(63, 'Eugenia', 'Kerluke', 'Pouros', 'tomas89@example.net', 678.00, 1, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(64, 'Vickie', 'Boehm', 'Buckridge', 'vjerde@example.com', 841.00, 1, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(65, 'Moises', 'Cummerata', 'Heaney', 'parisian.hazle@example.com', 1334.00, 2, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(66, 'Daren', 'Mraz', 'Krajcik', 'mcglynn.santina@example.net', 827.00, 1, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(67, 'Brooklyn', 'Boyle', 'Bayer', 'dlebsack@example.org', 813.00, 2, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(68, 'Dorris', 'Bayer', 'Davis', 'prosacco.broderick@example.org', 841.00, 2, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(69, 'Hyman', 'Hansen', 'Johnston', 'amitchell@example.com', 1221.00, 2, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(70, 'Rashawn', 'Fritsch', 'Langosh', 'vonrueden.eileen@example.org', 668.00, 2, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(71, 'Zachariah', 'Gerhold', 'Ledner', 'nwisozk@example.com', 1095.00, 1, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(72, 'Cleora', 'Bahringer', 'Romaguera', 'koch.bobby@example.com', 1304.00, 1, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(73, 'Karine', 'Mertz', 'Quigley', 'adrianna.schiller@example.org', 634.00, 2, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(74, 'Elinor', 'Kris', 'Fahey', 'dziemann@example.net', 653.00, 2, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(75, 'Stanton', 'Wolff', 'Schneider', 'bechtelar.curt@example.org', 966.00, 1, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(76, 'Dagmar', 'Harber', 'O\'Connell', 'adella05@example.com', 908.00, 2, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(77, 'Corene', 'Emmerich', 'Hoppe', 'hdubuque@example.net', 601.00, 2, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(78, 'Maximillia', 'Jaskolski', 'Ebert', 'smitham.rolando@example.net', 1165.00, 1, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(79, 'London', 'Cole', 'Runolfsdottir', 'rklocko@example.org', 1115.00, 2, 5, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(80, 'Kaycee', 'Kihn', 'Murray', 'xbotsford@example.org', 735.00, 1, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(81, 'Frederic', 'Beier', 'O\'Keefe', 'merritt55@example.com', 1214.00, 1, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(82, 'Gerard', 'Romaguera', 'Koss', 'kitty.schuppe@example.net', 743.00, 2, 3, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(83, 'Shana', 'Upton', 'Schimmel', 'yhegmann@example.net', 1024.00, 1, 1, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(84, 'Felipe', 'Lubowitz', 'Schmidt', 'adolphus.bogan@example.org', 1294.00, 1, 2, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(85, 'Charles', 'Schroeder', 'Ratke', 'bednar.lynn@example.org', 538.00, 2, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(86, 'Tracey', 'Grant', 'Renner', 'rosella10@example.net', 926.00, 1, 3, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(87, 'Alden', 'O\'Kon', 'Hane', 'pfannerstill.guido@example.org', 967.00, 1, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(88, 'Leilani', 'Gulgowski', 'Schowalter', 'qjacobs@example.com', 825.00, 2, 4, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(89, 'Pink', 'Wisozk', 'Cartwright', 'watsica.forrest@example.com', 900.00, 1, 3, '2022-01-13 02:09:33', '2022-01-13 02:09:33'),
(90, 'Hassie', 'Herman', 'Greenholt', 'tre.emmerich@example.net', 896.00, 2, 5, '2022-01-13 02:09:34', '2022-01-13 02:09:34'),
(91, 'Rodrigo', 'O\'Reilly', 'Daugherty', 'kiera56@example.net', 1298.00, 2, 4, '2022-01-13 02:09:34', '2022-01-13 02:09:34'),
(92, 'George', 'White', 'Friesen', 'hackett.madonna@example.net', 949.00, 1, 3, '2022-01-13 02:09:34', '2022-01-13 02:09:34'),
(93, 'Ethyl', 'Olson', 'Emard', 'satterfield.cloyd@example.net', 1016.00, 1, 4, '2022-01-13 02:09:34', '2022-01-13 02:09:34'),
(94, 'Twila', 'Osinski', 'Auer', 'fstracke@example.org', 677.00, 1, 4, '2022-01-13 02:09:34', '2022-01-13 02:09:34'),
(95, 'Brad', 'Koch', 'Yundt', 'jaylan04@example.net', 768.00, 1, 2, '2022-01-13 02:09:34', '2022-01-13 02:09:34'),
(96, 'Lucio', 'Heathcote', 'Hudson', 'ngraham@example.com', 1024.00, 2, 5, '2022-01-13 02:09:34', '2022-01-13 02:09:34'),
(97, 'Tiffany', 'Wuckert', 'Murphy', 'ffadel@example.com', 1303.00, 2, 5, '2022-01-13 02:09:34', '2022-01-13 02:09:34'),
(98, 'Michale', 'Konopelski', 'Dach', 'teagan.ohara@example.com', 878.00, 1, 2, '2022-01-13 02:09:34', '2022-01-13 02:09:34'),
(99, 'Garfield', 'Daniel', 'Bednar', 'vpaucek@example.com', 1097.00, 2, 3, '2022-01-13 02:09:34', '2022-01-13 02:09:34'),
(100, 'Keely', 'Adams', 'Murray', 'hlueilwitz@example.net', 642.00, 2, 4, '2022-01-13 02:09:34', '2022-01-13 02:09:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus`
--

CREATE TABLE `estatus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estatus`
--

INSERT INTO `estatus` (`id`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Activo', NULL, NULL),
(2, 'Inactivo', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_01_11_170445_create_estatus_table', 1),
(5, '2022_01_11_170534_create_puestos_table', 1),
(6, '2022_01_11_185659_create_empleados_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos`
--

CREATE TABLE `puestos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descripcion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `puestos`
--

INSERT INTO `puestos` (`id`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Programador JR', NULL, NULL),
(2, 'Programador SR', NULL, NULL),
(3, 'Analista JR', NULL, NULL),
(4, 'Analista SR', NULL, NULL),
(5, 'Lider de Proyecto', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'José Manuel Cordero Chavarria', 'jmcordero1994@gmail.com', '2022-01-13 02:09:34', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fa7bvzov44', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empleados_id_puesto_foreign` (`id_puesto`),
  ADD KEY `empleados_id_estatus_foreign` (`id_estatus`);

--
-- Indices de la tabla `estatus`
--
ALTER TABLE `estatus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `puestos`
--
ALTER TABLE `puestos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `estatus`
--
ALTER TABLE `estatus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `puestos`
--
ALTER TABLE `puestos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_id_estatus_foreign` FOREIGN KEY (`id_estatus`) REFERENCES `estatus` (`id`),
  ADD CONSTRAINT `empleados_id_puesto_foreign` FOREIGN KEY (`id_puesto`) REFERENCES `puestos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
