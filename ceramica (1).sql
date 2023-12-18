-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 05:34 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ceramica`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`) VALUES
(140, 10, 12, 3, '2023-12-05 07:57:57'),
(166, 8, 24, 1, '2023-12-15 15:53:05'),
(182, 8, 27, 1, '2023-12-16 13:52:43'),
(183, 8, 31, 6, '2023-12-17 14:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`) VALUES
(6, 'Farfurii si platouri', 'farfurii', 'dsadsa', 1, 0, '1701340988.png', 'sadsa', 'saddsdf', 'dsfsdfadsfads', '2023-11-30 10:43:08'),
(7, 'Pahare si cani', 'pahare cani', 'Para si cani pt tine', 1, 0, '1701425161.png', 'pahare cani', 'cani pahare cesti cescute', 'cani pahare cesti cescute', '2023-12-01 10:06:01'),
(8, 'Decoratiuni', 'decor', 'decoratiuni speciale pentru casa ta', 1, 0, '1701425209.png', 'DECO', 'decoratiuni decoratii decor', 'decoratiuni decoratii decor', '2023-12-01 10:06:49');

-- --------------------------------------------------------

--
-- Table structure for table `cupoane`
--

CREATE TABLE `cupoane` (
  `id` int(11) NOT NULL,
  `cupon` varchar(30) NOT NULL,
  `valoare` int(4) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cupoane`
--

INSERT INTO `cupoane` (`id`, `cupon`, `valoare`, `status`) VALUES
(4, 'iarna15', 15, 1),
(5, 'reducere10', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_letter`
--

CREATE TABLE `news_letter` (
  `id` int(11) NOT NULL,
  `email` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news_letter`
--

INSERT INTO `news_letter` (`id`, `email`) VALUES
(1, ''),
(2, 'ssdsadd@fff'),
(3, 'dddd'),
(4, 'sdfffff'),
(5, 'sdfffff@maidff'),
(6, 'dfsdds@rfgfd'),
(7, 'miau@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `tracking_no` varchar(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `adress` mediumtext NOT NULL,
  `pincode` int(191) NOT NULL,
  `total_price` int(191) NOT NULL,
  `payment_mode` varchar(191) NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `comments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `tracking_no`, `user_id`, `name`, `email`, `phone`, `adress`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `comments`, `created_at`) VALUES
(1, 'comanda241sfdsfd', 8, 'ddsd', 'fdsfds', 'fdsfdsfd', 'fds', 0, 40, 'COD', '', 1, NULL, '2023-12-01 18:41:18'),
(2, 'comanda253fdsf', 8, 'f', 'ddsfdf', 'dsfdsf', 'dssdf', 0, 40, '', '', 0, NULL, '2023-12-01 18:51:29'),
(3, 'comanda740fgf', 8, 'gfdgdgfdg', 'denisa@gmail.com', 'fdfgf', 'fdgfdg', 0, 40, 'COD', '', 0, NULL, '2023-12-01 18:51:51'),
(4, 'comanda979hgfh', 8, 'hhfg', 'miau@miau.com', 'gfhgfh', 'gfhgf', 0, 40, 'COD', '', 1, NULL, '2023-12-01 18:54:35'),
(5, 'comanda333dsa', 8, 'dsadas', 'denisa@gmail.com', 'sadsa', 'sdasd', 0, 40, 'COD', '', 0, NULL, '2023-12-01 18:55:11'),
(6, 'comanda476sdsad', 8, 'asdasd', 'asdsad@asdsadsa', 'dasdsad', 'sadsadsddssdfds', 0, 200, 'COD', '', 0, NULL, '2023-12-02 09:26:46'),
(7, 'comanda852f', 8, 'dfsdf', 'admin@2mail', 'dsf', 'dsfds', 0, 160, 'COD', '', 0, NULL, '2023-12-02 09:28:22'),
(8, 'comanda9352526', 8, 'ion popescu', 'ion@popescu', '332526', 'dsa ffd grfgfd ', 369, 180, 'COD', '', 0, NULL, '2023-12-02 10:51:17'),
(9, '307659', 8, 'ion popescu', 'ionpopescu@mail.com', '23659', 'ssa sdd asd sasda ', 222, 95, 'COD', '', 1, NULL, '2023-12-02 13:15:04'),
(10, '467215963', 8, 'Ion Popescu', 'ionpopescu@mail.com', ' 7215963', 'Str amurgului', 963, 204, 'cash', '', 0, NULL, '2023-12-12 18:54:36'),
(11, '540215963', 8, 'Ion Popescu', 'ionpopescu@mail.com', ' 7215963', 'Str amurgului', 963, 35, 'card', '', 0, NULL, '2023-12-12 18:55:20'),
(12, '310215963', 8, 'Ion Popescu', 'ionpopescu@mail.com', ' 7215963', 'Str amurgului', 963, 35, 'card', '', 0, NULL, '2023-12-12 18:56:01'),
(13, '658215963', 8, 'Ion Popescu', 'ionpopescu@mail.com', ' 7215963', 'Str amurgului', 963, 100, 'cash', '', 0, NULL, '2023-12-15 13:06:40'),
(14, '257215963', 8, 'Ion Popescu', 'ionpopescu@mail.com', ' 7215963', 'Str amurgului', 963, 179, 'cash', '', 1, 'vreau sa fie impachetata frumos', '2023-12-15 15:27:10'),
(15, '315215963', 11, ' Danciu  Denisa', 'danciudenisa12@gmail.com', ' 7215963', 'Timisoara, Timis, str Dropiei, nr 7', 98563, 48, '', '', 0, NULL, '2023-12-16 09:48:52'),
(16, '256215963', 11, ' Danciu  Denisa', 'danciudenisa12@gmail.com', ' 7215963', 'Timisoara, Timis, str Dropiei, nr 7', 98563, 171, 'cash', '', 0, NULL, '2023-12-16 10:27:44'),
(17, '839215963', 11, ' Danciu  Denisa', 'danciudenisa12@gmail.com', ' 7215963', 'Timisoara, Timis, str Dropiei, nr 7', 98563, 25, 'cash', '', 0, NULL, '2023-12-16 12:05:12'),
(18, '420215963', 11, ' Danciu  Denisa', 'danciudenisa12@gmail.com', ' 7215963', 'Timisoara, Timis, str Dropiei, nr 7', 98563, 16, 'cash', '', 0, NULL, '2023-12-16 12:11:58'),
(19, '503215963', 11, ' Danciu  Denisa', 'danciudenisa12@gmail.com', ' 7215963', 'Timisoara, Timis, str Dropiei, nr 7', 98563, 35, 'cash', '', 0, NULL, '2023-12-16 12:52:03'),
(20, '966215963', 11, ' Danciu  Denisa', 'danciudenisa12@gmail.com', ' 7215963', 'Timisoara, Timis, str Dropiei, nr 7', 98563, 35, 'cash', '', 0, NULL, '2023-12-16 12:56:02'),
(21, '700215963', 11, ' Danciu  Denisa', 'danciudenisa12@gmail.com', ' 7215963', 'Timisoara, Timis, str Dropiei, nr 7', 98563, 35, 'cash', '', 0, NULL, '2023-12-16 13:02:15'),
(22, '778215963', 11, ' Danciu  Denisa', 'danciudenisa12@gmail.com', ' 7215963', 'Timisoara, Timis, str Dropiei, nr 7', 98563, 10, 'cash', '', 0, NULL, '2023-12-16 13:05:10'),
(23, '265215963', 11, ' Danciu  Denisa', 'danciudenisa12@gmail.com', ' 7215963', 'Timisoara, Timis, str Dropiei, nr 7', 98563, 35, 'cash', '', 0, NULL, '2023-12-16 13:05:40'),
(24, '425215963', 11, ' Danciu  Denisa', 'danciudenisa12@gmail.com', ' 7215963', 'Timisoara, Timis, str Dropiei, nr 7', 98563, 24, 'cash', '', 0, NULL, '2023-12-16 13:08:50'),
(25, '778215963', 11, ' Danciu  Denisa', 'danciudenisa12@gmail.com', ' 7215963', 'Timisoara, Timis, str Dropiei, nr 7', 98563, 16, 'cash', '', 0, NULL, '2023-12-16 13:09:54'),
(26, '720215963', 11, ' Danciu  Denisa', 'danciudenisa12@gmail.com', ' 7215963', 'Timisoara, Timis, str Dropiei, nr 7', 98563, 35, 'cash', '', 0, NULL, '2023-12-16 13:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(191) NOT NULL,
  `prod_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` int(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`) VALUES
(1, 1, 12, 1, 40, '2023-12-01 18:41:18'),
(2, 2, 12, 1, 40, '2023-12-01 18:51:29'),
(3, 3, 12, 1, 40, '2023-12-01 18:51:51'),
(4, 4, 12, 1, 40, '2023-12-01 18:54:35'),
(5, 5, 12, 1, 40, '2023-12-01 18:55:11'),
(6, 6, 12, 5, 40, '2023-12-02 09:26:46'),
(7, 6, 12, 5, 40, '2023-12-02 09:26:46'),
(8, 7, 12, 4, 40, '2023-12-02 09:28:22'),
(9, 8, 12, 3, 40, '2023-12-02 10:51:17'),
(10, 8, 13, 1, 60, '2023-12-02 10:51:17'),
(11, 9, 13, 1, 60, '2023-12-02 13:15:04'),
(12, 9, 14, 1, 35, '2023-12-02 13:15:04'),
(13, 10, 12, 3, 40, '2023-12-12 18:54:36'),
(14, 10, 13, 1, 60, '2023-12-12 18:54:36'),
(15, 10, 16, 1, 24, '2023-12-12 18:54:36'),
(16, 11, 14, 1, 35, '2023-12-12 18:55:20'),
(17, 12, 14, 1, 35, '2023-12-12 18:56:01'),
(18, 13, 26, 1, 16, '2023-12-15 13:06:40'),
(19, 13, 16, 1, 24, '2023-12-15 13:06:40'),
(20, 13, 13, 1, 60, '2023-12-15 13:06:40'),
(21, 14, 24, 3, 15, '2023-12-15 15:27:10'),
(22, 14, 27, 1, 35, '2023-12-15 15:27:10'),
(23, 14, 26, 4, 16, '2023-12-15 15:27:10'),
(24, 14, 14, 1, 35, '2023-12-15 15:27:10'),
(25, 15, 26, 3, 16, '2023-12-16 09:48:52'),
(26, 16, 20, 1, 30, '2023-12-16 10:27:44'),
(27, 16, 19, 1, 90, '2023-12-16 10:27:44'),
(28, 16, 18, 1, 35, '2023-12-16 10:27:44'),
(29, 16, 26, 1, 16, '2023-12-16 10:27:44'),
(30, 17, 21, 1, 25, '2023-12-16 12:05:12'),
(31, 18, 26, 1, 16, '2023-12-16 12:11:58'),
(32, 19, 14, 1, 35, '2023-12-16 12:52:03'),
(33, 20, 18, 1, 35, '2023-12-16 12:56:02'),
(34, 21, 27, 1, 35, '2023-12-16 13:02:15'),
(35, 22, 29, 1, 10, '2023-12-16 13:05:10'),
(36, 23, 14, 1, 35, '2023-12-16 13:05:40'),
(37, 24, 16, 1, 24, '2023-12-16 13:08:50'),
(38, 25, 26, 1, 16, '2023-12-16 13:09:54'),
(39, 26, 27, 1, 35, '2023-12-16 13:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `selling_price` int(11) NOT NULL,
  `image` varchar(191) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `small_description`, `description`, `selling_price`, `image`, `qty`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`) VALUES
(13, 6, 'Farfurie frunze', 'farfurii-2', 'Farfuriile roșii strălucesc cu o eleganță aparte, conturând imagini rafinate și culori vii. Picturile delicate aduc un farmec aparte oricărei mese și adaugă o notă de rafinament în orice interior.', 'Farfuriile roșii strălucesc cu o eleganță aparte, conturând imagini rafinate și culori vii. Picturile delicate aduc un farmec aparte oricărei mese și adaugă o notă de rafinament în orice interior.\r\nDiametru: 25 cm', 60, '1701514210.png', 60, 1, 0, 'Farfurii2', 'farfurie,farfurii,frunze,minimalist,', 'Farfuriile roșii strălucesc cu o eleganță aparte, conturând imagini rafinate și culori vii. Picturile delicate aduc un farmec aparte oricărei mese și adaugă o notă de rafinament în orice interior.', '2023-12-02 10:50:10'),
(14, 6, 'Cana ', 'cana-vintage', 'Experimentați eleganța clasică cu această cană vintage albă și maro. Designul său simplu, dar rafinat, combină albul curat cu accentele de maro, aducând o notă de distincție la fiecare băutură.', 'Experimentați eleganța clasică cu această cană vintage albă și maro. Designul său simplu, dar rafinat, combină albul curat cu accentele de maro, aducând o notă de distincție la fiecare băutură.', 35, '1701517739.png', 80, 1, 0, 'Cana maro', 'cana,ceai,cafea,cani, ceasca, set', 'Experimentați eleganța clasică cu această cană vintage albă și maro. Designul său simplu, dar rafinat, combină albul curat cu accentele de maro, aducând o notă de distincție la fiecare băutură.', '2023-12-02 11:48:59'),
(15, 8, 'Suport Lumanare Craciun', 'Suport Lumanare Craciun casuta bookstore', 'Îmbrățișați magia sărbătorilor cu suportul nostru de lumânare în formă de casă de cărți, un element distinctiv ce aduce farmecul Crăciunului în orice colț al casei dumneavoastră. Această casetă artistică, decorată cu detalii de carte și ornamente festive, reprezintă o reinterpretare captivantă a atmosferei călduroase a sărbătorilor.', 'Îmbrățișați magia sărbătorilor cu suportul nostru de lumânare în formă de casă de cărți, un element distinctiv ce aduce farmecul Crăciunului în orice colț al casei dumneavoastră. Această casetă artistică, decorată cu detalii de carte și ornamente festive, reprezintă o reinterpretare captivantă a atmosferei călduroase a sărbătorilor.\r\nÎnălțime: 14 cm\r\nLățime: 10 cm', 30, '1701518484.png', 35, 1, 1, 'Suport Lumanare Craciun casuta bookstore', 'craciun,mos,cadou,suport,lumanare,casuta,casa', 'Îmbrățișați magia sărbătorilor cu suportul nostru de lumânare în formă de casă de cărți, un element distinctiv ce aduce farmecul Crăciunului în orice colț al casei dumneavoastră. Această casetă artistică, decorată cu detalii de carte și ornamente festive, reprezintă o reinterpretare captivantă a atmosferei călduroase a sărbătorilor.', '2023-12-02 12:01:24'),
(16, 8, 'Suport lumanare', 'Suport Lumanare casuta de la tara ', 'Suportul nostru de lumânare, sub formă de casă de la țară, este un tribut adus frumuseții simplificării și naturaleții. Realizată cu atenție la detalii și conturată de linii curate, această casă aduce un aer plin de autenticitate, completând atmosfera relaxată și confortabilă a unei case de la țară.', 'Suportul nostru de lumânare, sub formă de casă de la țară, este un tribut adus frumuseții simplificării și naturaleții. Realizată cu atenție la detalii și conturată de linii curate, această casă aduce un aer plin de autenticitate, completând atmosfera relaxată și confortabilă a unei case de la țară.\r\nÎnălțime: 14 cm\r\nLățime : 15 cm', 24, '1701518582.png', 16, 1, 1, 'Suport Lumanare casuta de la tara ', 'Suport Lumanare casuta de la tara decor, casa lumanare,suport, casa', 'Suportul nostru de lumânare, sub formă de casă de la țară, este un tribut adus frumuseții simplificării și naturaleții. Realizată cu atenție la detalii și conturată de linii curate, această casă aduce un aer plin de autenticitate, completând atmosfera relaxată și confortabilă a unei case de la țară.', '2023-12-02 12:03:02'),
(18, 6, 'Farfurie vintage', 'farfurie vintage 1', ' O farfurie vintage albastru cu detalii albe încântătoare și desene distincte este o piesă de ceramică rafinată, cu o aură clasică și farmec nostalgic. Fondul albastru închis, decorat cu modele subtile sau intricate în alb, adaugă eleganță și un aspect distinct fiecărei farfurii. Această combinație de culori poate evoca o atmosferă fermecătoare și poate oferi o notă de rafinament unei mese sau chiar unei colecții de obiecte vintage.', ' O farfurie vintage albastru cu detalii albe încântătoare și desene distincte este o piesă de ceramică rafinată, cu o aură clasică și farmec nostalgic. Fondul albastru închis, decorat cu modele subtile sau intricate în alb, adaugă eleganță și un aspect distinct fiecărei farfurii. Această combinație de culori poate evoca o atmosferă fermecătoare și poate oferi o notă de rafinament unei mese sau chiar unei colecții de obiecte vintage.\r\nDiametru: 20 cm', 35, '1701542994.png', 9, 1, 0, 'Farfurie vintage', 'farfurie,vintage,platou,pictura, verde,alb,farfurii,', ' O farfurie vintage albastru cu detalii albe încântătoare și desene distincte este o piesă de ceramică rafinată, cu o aură clasică și farmec nostalgic. Fondul albastru închis, decorat cu modele subtile sau intricate în alb, adaugă eleganță și un aspect distinct fiecărei farfurii. Această combinație de culori poate evoca o atmosferă fermecătoare și poate oferi o notă de rafinament unei mese sau chiar unei colecții de obiecte vintage.', '2023-12-02 18:49:54'),
(19, 6, 'Farfurie', 'farfurie90', 'Farfurie foarte veche din portelan Maling Newcastle-on-Tyne anii 1920, bogat ornamentata absolut superba cu incandescenta.\r\nDiametrul 28,5 cm.', 'Farfurie foarte veche din portelan Maling Newcastle-on-Tyne anii 1920, bogat ornamentata absolut superba cu incandescenta.\r\nDiametrul 28,5 cm.', 60, '1702538903.png', 25, 1, 1, 'farfurie90', 'farfurie,platou,pictura,farfurie cu pictura, portelan englezesc, farfurii, pictura, pictata, farfurie pictata,platouri', 'Farfurie foarte veche din portelan Maling Newcastle-on-Tyne anii 1920, bogat ornamentata absolut superba cu incandescenta.\r\nDiametrul 28,5 cm.', '2023-12-14 07:28:23'),
(20, 6, 'Platou Brad', 'platou-brad', 'Platoul în formă de brad aduce o notă festivă cu designul său alb imaculat, conturat de o margine verde vibrantă, dispunând de trei compartimente generoase perfecte pentru a organiza și prezenta cu eleganță gustările festive sau aperitivele preferate într-un mod atrăgător și organizat.', 'Platoul în formă de brad aduce o notă festivă cu designul său alb imaculat, conturat de o margine verde vibrantă, dispunând de trei compartimente generoase perfecte pentru a organiza și prezenta cu eleganță gustările festive sau aperitivele preferate într-un mod atrăgător și organizat.\r\nLungime: 27 cm', 30, '1702540363.png', 45, 1, 0, 'Platou brad', 'brad,platou,farfurie,compartiment,compartimente,farfurii,platouri, 3 compartimente,craciun,cadou,decoratiune,pom craciun,sarbatoare,sarbatori,platou de sarbatori,farfurie de sarbatori, Craciun', 'Platoul în formă de brad aduce o notă festivă cu designul său alb imaculat, conturat de o margine verde vibrantă, dispunând de trei compartimente generoase perfecte pentru a organiza și prezenta cu eleganță gustările festive sau aperitivele preferate într-un mod atrăgător și organizat.', '2023-12-14 07:52:43'),
(21, 6, 'Bol festiv', 'bol-urs-festiv', 'Bolul de Crăciun este o bucurie vizuală, decorat cu motive festive și adorabilul ursuleț în centrul său, aducând atmosfera magică a sărbătorilor în fiecare moment. Este o combinație perfectă între utilitate și farmec, pregătit să găzduiască deliciile sezonului într-un stil plin de căldură și veselie.', 'Bolul de Crăciun este o bucurie vizuală, decorat cu motive festive și adorabilul ursuleț în centrul său, aducând atmosfera magică a sărbătorilor în fiecare moment. Este o combinație perfectă între utilitate și farmec, pregătit să găzduiască deliciile sezonului într-un stil plin de căldură și veselie.\r\nLatime: 23 cm', 25, '1702540778.png', 49, 1, 0, 'bol ursu festiv', 'bol,craciun,cadou,platou,bol adanc, urs,ursulet,copii,copil,copiii,copilasi, surpriza,magic,magie', 'Bolul de Crăciun este o bucurie vizuală, decorat cu motive festive și adorabilul ursuleț în centrul său, aducând atmosfera magică a sărbătorilor în fiecare moment. Este o combinație perfectă între utilitate și farmec, pregătit să găzduiască deliciile sezonului într-un stil plin de căldură și veselie.\r\nLatime: 23 cm', '2023-12-14 07:59:38'),
(22, 6, 'Farfurie Crăciun', 'farfurie-mos-craciun', 'Farfuria cu Moș Crăciun, purtând un sac plin de daruri în spate, aduce un farmec aparte, ilustrând scena magică în care Moșul colindă străzile, aducând bucurie și zâmbete copiilor în așteptarea Crăciunului. Un design captivant ce îmbină tradiția festivă cu povestea generozității, creând o atmosferă magică la fiecare masă.', 'Farfuria cu Moș Crăciun, purtând un sac plin de daruri în spate, aduce un farmec aparte, ilustrând scena magică în care Moșul colindă străzile, aducând bucurie și zâmbete copiilor în așteptarea Crăciunului. Un design captivant ce îmbină tradiția festivă cu povestea generozității, creând o atmosferă magică la fiecare masă.\r\nDiametru: 29 cm', 20, '1702540977.png', 80, 1, 0, 'farfurie mos craciun', 'craciun,mos, farfurie,cadou,copil,copii,platou,farfurii,festiv,magic,magie,desen,inger,', 'Farfuria cu Moș Crăciun, purtând un sac plin de daruri în spate, aduce un farmec aparte, ilustrând scena magică în care Moșul colindă străzile, aducând bucurie și zâmbete copiilor în așteptarea Crăciunului. Un design captivant ce îmbină tradiția festivă cu povestea generozității, creând o atmosferă magică la fiecare masă.', '2023-12-14 08:02:57'),
(23, 6, 'Farfurie pisicute', 'farfurie-pisicute-jucause', 'Farfuria albă din porțelan englezesc aduce un farmec aparte în orice masă, ilustrând jocul jucaș al pisicuțelor cu ghemul de ață roșie într-un mod adorabil și captivant. Este o combinație perfectă între eleganță și simplitate, aducând un zâmbet și o notă ludică în fiecare moment.', 'Farfuria albă din porțelan englezesc aduce un farmec aparte în orice masă, ilustrând jocul jucaș al pisicuțelor cu ghemul de ață roșie într-un mod adorabil și captivant. Este o combinație perfectă între eleganță și simplitate, aducând un zâmbet și o notă ludică în fiecare moment.\r\nDiametru: 30 cm', 24, '1702541352.png', 42, 1, 0, 'Farfurie pisicute jucause', 'pisica,pisici,pisicuta, cat,farfurie,platou,copii,cadou,magie,copil,copilas,copilasi,', 'Farfuria albă din porțelan englezesc aduce un farmec aparte în orice masă, ilustrând jocul jucaș al pisicuțelor cu ghemul de ață roșie într-un mod adorabil și captivant. Este o combinație perfectă între eleganță și simplitate, aducând un zâmbet și o notă ludică în fiecare moment.', '2023-12-14 08:09:12'),
(24, 8, 'Îngeraș', 'decoratiune-inger-alb', 'Decoratiunea cu un îngeraș alb emană o aură de delicatețe și pace, având o prezență subtilă, însuflețită de aripile sale gingașe și de expresia blândă a feței. Este o simbolizare a purității și a bucuriei, aducând o atmosferă caldă și reconfortantă în încăpere.', 'Decoratiunea cu un îngeraș alb emană o aură de delicatețe și pace, având o prezență subtilă, însuflețită de aripile sale gingașe și de expresia blândă a feței. Este o simbolizare a purității și a bucuriei, aducând o atmosferă caldă și reconfortantă în încăpere.\r\nÎnăltime: 10 cm', 15, '1702541718.png', 17, 1, 0, 'decoratiune ingeras', 'infger,decoratiune,magic,magie, pace, craciun,cadou', 'Decoratiunea cu un îngeraș alb emană o aură de delicatețe și pace, având o prezență subtilă, însuflețită de aripile sale gingașe și de expresia blândă a feței. Este o simbolizare a purității și a bucuriei, aducând o atmosferă caldă și reconfortantă în încăpere.', '2023-12-14 08:15:18'),
(25, 0, 'Farfurie Crăciun', 'farfurie-brad-craciun-mos-craciun', 'Pe farfuria fermecătoare se desfășoară o scenă festivă - un brad impunător înconjurat de cadouri strălucitoare și de Moș Crăciun, iar un copil bucuros contemplă această scenă magică. Este o îmbinare perfectă între elementele tradiționale de Crăciun, capturând bucuria și entuziasmul acestei sărbători într-o imagine plină de farmec.', 'Pe farfuria fermecătoare se desfășoară o scenă festivă - un brad impunător înconjurat de cadouri strălucitoare și de Moș Crăciun, iar un copil bucuros contemplă această scenă magică. Este o îmbinare perfectă între elementele tradiționale de Crăciun, capturând bucuria și entuziasmul acestei sărbători într-o imagine plină de farmec.\r\nDiametru: 27 cm', 26, '1702541963.png', 20, 1, 0, 'farfurie-brad-craciun-mos-craciun', 'copiii,craciun,cadou,mos,magic,magie,farfurie,platou,farfurii', 'Pe farfuria fermecătoare se desfășoară o scenă festivă - un brad impunător înconjurat de cadouri strălucitoare și de Moș Crăciun, iar un copil bucuros contemplă această scenă magică. Este o îmbinare perfectă între elementele tradiționale de Crăciun, capturând bucuria și entuziasmul acestei sărbători într-o imagine plină de farmec.', '2023-12-14 08:19:23'),
(26, 7, 'Cana jucarii', 'cana-jucarii-craciun', 'Cana încântătoare este decorată cu jucării de Crăciun, aducând spiritul festiv chiar în timpul unei pauze pentru cafea sau ceai. Înconjurată de globuri strălucitoare, clopoței jucauși și alte ornamente, cana aduce o notă plină de bucurie și emoție în fiecare înghițitură.', 'Cana încântătoare este decorată cu jucării de Crăciun, aducând spiritul festiv chiar în timpul unei pauze pentru cafea sau ceai. Înconjurată de globuri strălucitoare, clopoței jucauși și alte ornamente, cana aduce o notă plină de bucurie și emoție în fiecare înghițitură.\r\nÎnălțime: 12 cm', 16, '1702542112.png', 1, 1, 0, 'cana-jucarii-craciun', 'copil,copiii,craciun,jucarii,jucarie,cadou,cana,ceai,cafea,cani,magie,magic,', 'Cana încântătoare este decorată cu jucării de Crăciun, aducând spiritul festiv chiar în timpul unei pauze pentru cafea sau ceai. Înconjurată de globuri strălucitoare, clopoței jucauși și alte ornamente, cana aduce o notă plină de bucurie și emoție în fiecare înghițitură.', '2023-12-14 08:21:52'),
(27, 7, 'Halbă porțelan', 'halba-portelan1', 'Halba din portelan englezesc albastru și alb este o capodoperă de artă cu o pictură ce redă în detaliu o moară de vânt olandeză, capturând frumusețea și farmecul peisajului rural într-un mod elegant și rafinat. Este o combinație între tradiția portelanului de calitate și frumusețea unei scene pitorești, aducând atmosfera de poveste în fiecare înghițitură savurată.', 'Halba din portelan englezesc albastru și alb este o capodoperă de artă cu o pictură ce redă în detaliu o moară de vânt olandeză, capturând frumusețea și farmecul peisajului rural într-un mod elegant și rafinat. Este o combinație între tradiția portelanului de calitate și frumusețea unei scene pitorești, aducând atmosfera de poveste în fiecare înghițitură savurată.\r\nInaltime: 24 cm', 35, '1702542267.png', 7, 1, 0, 'halba-albastra', 'halba,bere,portelan,', 'Halba din portelan englezesc albastru și alb este o capodoperă de artă cu o pictură ce redă în detaliu o moară de vânt olandeză, capturând frumusețea și farmecul peisajului rural într-un mod elegant și rafinat. Este o combinație între tradiția portelanului de calitate și frumusețea unei scene pitorești, aducând atmosfera de poveste în fiecare înghițitură savurată.``', '2023-12-14 08:24:27'),
(28, 6, 'Set bol portelan', 'bol-portelan1', 'Bolul de portelan alb, elegant și funcțional pentru supă, vine cu manere subtile și o margine în nuanțe calde de maro, aducând un accent rafinat și practicitate în timpul servirii. Farfuria asortată completează perfect setul, păstrând aceeași estetică și oferind o prezentare armonioasă a delicioaselor tale preparate.', 'Bolul de portelan alb, elegant și funcțional pentru supă, vine cu manere subtile și o margine în nuanțe calde de maro, aducând un accent rafinat și practicitate în timpul servirii. Farfuria asortată completează perfect setul, păstrând aceeași estetică și oferind o prezentare armonioasă a delicioaselor tale preparate.\r\nDiametru bol: 14 cm\r\nDiametru farfurie: 20 cm', 43, '1702542395.png', 16, 1, 0, 'bol-farfurie', 'bol,farfurie,supa,ciorba,boluri,set,', 'Bolul de portelan alb, elegant și funcțional pentru supă, vine cu manere subtile și o margine în nuanțe calde de maro, aducând un accent rafinat și practicitate în timpul servirii. Farfuria asortată completează perfect setul, păstrând aceeași estetică și oferind o prezentare armonioasă a delicioaselor tale preparate.', '2023-12-14 08:26:35'),
(29, 8, 'Suport lumanare', 'suport-lumanare-inger', 'Suportul de lumânare în formă de îngeraș emană o delicatețe aparte, sculptat cu atenție la detalii pentru a crea o prezență plină de grație și seninătate în decor. Este o piesă fermecătoare ce aduce o notă angelică și liniștitoare în orice încăpere.', 'Suportul de lumânare în formă de îngeraș emană o delicatețe aparte, sculptat cu atenție la detalii pentru a crea o prezență plină de grație și seninătate în decor. Este o piesă fermecătoare ce aduce o notă angelică și liniștitoare în orice încăpere.\r\nÎnălțime: 10 cm', 10, '1702544558.png', 9, 1, 0, 'suport lumanare inger', 'lumanare,suport,ingeras,inger,cadou,lumanari,', 'Suportul de lumânare în formă de îngeraș emană o delicatețe aparte, sculptat cu atenție la detalii pentru a crea o prezență plină de grație și seninătate în decor. Este o piesă fermecătoare ce aduce o notă angelică și liniștitoare în orice încăpere.', '2023-12-14 09:02:38'),
(30, 0, 'Ananas auriu', 'ananas-auriu', 'Întruchipează un farmec rustic și o eleganță atemporală cu acest ananas miniatural realizat din metal. Cu o muncă meticuloasă și o atenție deosebită pentru detaliu, acest decor îmbină aspectul robust al metalului cu contururi și texturi fine, aducând un element de farmec și caracter în decorul tău. Plasat pe rafturi, pe birou sau ca parte a unui ansamblu decorativ, acest ananas aduce o notă de prospețime și originalitate în orice spațiu.', 'Întruchipează un farmec rustic și o eleganță atemporală cu acest ananas miniatural realizat din metal. Cu o muncă meticuloasă și o atenție deosebită pentru detaliu, acest decor îmbină aspectul robust al metalului cu contururi și texturi fine, aducând un element de farmec și caracter în decorul tău. Plasat pe rafturi, pe birou sau ca parte a unui ansamblu decorativ, acest ananas aduce o notă de prospețime și originalitate în orice spațiu.\r\nÎnălțime: 5 cm', 30, '1702820252.png', 36, 1, 0, 'ananas auriu', 'ananas,auriu,aurie,aur,decor,decoratiuni,', 'Întruchipează un farmec rustic și o eleganță atemporală cu acest ananas miniatural realizat din metal. Cu o muncă meticuloasă și o atenție deosebită pentru detaliu, acest decor îmbină aspectul robust al metalului cu contururi și texturi fine, aducând un element de farmec și caracter în decorul tău. Plasat pe rafturi, pe birou sau ca parte a unui ansamblu decorativ, acest ananas aduce o notă de prospețime și originalitate în orice spațiu.', '2023-12-17 13:37:32'),
(31, 7, 'Latieră', 'ulcior-rosu', 'Latieră albă cu accente roșii este o piesă simplă, dar fermecătoare pentru bucătăria ta. Cu o formă clasică și detalii roșii subtile, acest ulcior adaugă o notă de farmec rustic. Ideal pentru a păstra sosuri sau lichide esențiale, acesta aduce un strop de culoare și caracter pe rafturi. Mânerul său comod și designul compact îl fac o alegere practică și estetică pentru servirea băuturilor sau pentru adăugarea unei nuanțe colorate în decor.', 'Latieră albă cu accente roșii este o piesă simplă, dar fermecătoare pentru bucătăria ta. Cu o formă clasică și detalii roșii subtile, acest ulcior adaugă o notă de farmec rustic. Ideal pentru a păstra sosuri sau lichide esențiale, acesta aduce un strop de culoare și caracter pe rafturi. Mânerul său comod și designul compact îl fac o alegere practică și estetică pentru servirea băuturilor sau pentru adăugarea unei nuanțe colorate în decor.\r\nÎnălțime: 14 cm\r\n', 27, '1702821004.png', 40, 1, 0, 'ulcior rosu', 'ulcior,rosu,apa,lapte,latiera,cafea,decor,rosu,alb', 'ulcior rosu alb ', '2023-12-17 13:50:04'),
(32, 7, 'Cana plante', 'cana-plante-abstracte', '\"Descoperă frumusețea pură a naturii reinterpretată într-un mod abstract cu această cană decorativă cu plante abstracte. Designul său unic combină liniile și forme geometrice pentru a crea un tablou vizual impresionant de culori și texturi. Fiecare detaliu al acestei cani este o exprimare artistică, aducând o notă de eleganță și mister în orice spațiu. O piesă captivantă, perfectă pentru a-ți îmbogăți colțurile casei sau pentru a completa colecția ta de obiecte decorative.\"\r\nÎnălțime: 14 cm\r\nLățime : 7 cm', 'Descoperă frumusețea pură a naturii reinterpretată într-un mod abstract cu această cană decorativă cu plante abstracte. Designul său unic combină liniile și forme geometrice pentru a crea un tablou vizual impresionant de culori și texturi. Fiecare detaliu al acestei cani este o exprimare artistică, aducând o notă de eleganță și mister în orice spațiu. O piesă captivantă, perfectă pentru a-ți îmbogăți colțurile casei sau pentru a completa colecția ta de obiecte decorative.\r\nÎnălțime: 14 cm\r\nLățime : 7 cm', 12, '1702822246.png', 30, 1, 1, 'cana abstracta plante', 'cana,plante,ceai,cafea, abstract,cani', '\"Descoperă frumusețea pură a naturii reinterpretată într-un mod abstract cu această cană decorativă cu plante abstracte. Designul său unic combină liniile și forme geometrice pentru a crea un tablou vizual impresionant de culori și texturi. Fiecare detaliu al acestei cani este o exprimare artistică, aducând o notă de eleganță și mister în orice spațiu. O piesă captivantă, perfectă pentru a-ți îmbogăți colțurile casei sau pentru a completa colecția ta de obiecte decorative.\"\r\nÎnălțime: 14 cm\r\nLățime : 7 cm', '2023-12-17 14:10:46'),
(33, 8, 'Ghiveci alb-rosu', 'Ghiveci alb-rosu', 'Descoperă eleganța subtilă a acestui ghiveci alb-rosu, o piesă deosebită care aduce un strop de rafinament în decorul tău interior. Tonurile sale contrastante, de alb pur și roșu vibrant, creează un echilibru vizual plăcut, evidențiind frumusețea plantelor îngrijite înăuntru. Cu o formă clasică și linii fluide, acest ghiveci devine un element de focalizare, adăugând o notă de prospețime și eleganță atât în spațiile contemporane, cât și în cele mai tradiționale.', 'Descoperă eleganța subtilă a acestui ghiveci alb-rosu, o piesă deosebită care aduce un strop de rafinament în decorul tău interior. Tonurile sale contrastante, de alb pur și roșu vibrant, creează un echilibru vizual plăcut, evidențiind frumusețea plantelor îngrijite înăuntru. Cu o formă clasică și linii fluide, acest ghiveci devine un element de focalizare, adăugând o notă de prospețime și eleganță atât în spațiile contemporane, cât și în cele mai tradiționale.\r\nÎnălțime: 20 cm\r\nLățime : 15 cm', 25, '1702822417.png', 35, 1, 0, 'ghiveci alb rosu', 'ghiveci,floare,planta,plante,ghivece, decoratiune,decor,exterior,flori', 'ghiveci alb rosu', '2023-12-17 14:13:37'),
(34, 7, 'Cana Starbucks', 'cana-starbucks', 'Cana albă de cafea sau ceai de la Starbucks este emblematică pentru simplitatea și eleganța sa. Cu un design curat și minimalist, cana oferă un fundal perfect pentru logo-ul iconic al Starbucks, permițându-i să strălucească și să devină punctul focal al atenției. Simplitatea albă permite brandului să-și etaleze logo-ul verde și alb, facilitând recunoașterea imediată a mărcii.', 'Cana albă de cafea sau ceai de la Starbucks este emblematică pentru simplitatea și eleganța sa. Cu un design curat și minimalist, cana oferă un fundal perfect pentru logo-ul iconic al Starbucks, permițându-i să strălucească și să devină punctul focal al atenției. Simplitatea albă permite brandului să-și etaleze logo-ul verde și alb, facilitând recunoașterea imediată a mărcii.', 17, '1702899034.png', 30, 1, 0, 'cana stabucks', 'cana,cafea,ceai,cadou,starbucks,', 'Cana albă de cafea sau ceai de la Starbucks este emblematică pentru simplitatea și eleganța sa. Cu un design curat și minimalist, cana oferă un fundal perfect pentru logo-ul iconic al Starbucks, permițându-i să strălucească și să devină punctul focal al atenției. Simplitatea albă permite brandului să-și etaleze logo-ul verde și alb, facilitând recunoașterea imediată a mărcii.', '2023-12-18 11:30:34'),
(35, 8, 'Vaza albastra', 'vaza-albastra1', 'Oferind o combinație vibrantă între eleganță și modernitate, această vază captivantă îmbină perfect estetica clasică a unei forme tradiționale de vază cu un model contemporan și culori îndrăznețe. Cu o înălțime de 40 de centimetri, devine punctul central al oricărui decor interior, adăugând o notă rafinată și proaspătă în spațiul dvs.', 'Oferind o combinație vibrantă între eleganță și modernitate, această vază captivantă îmbină perfect estetica clasică a unei forme tradiționale de vază cu un model contemporan și culori îndrăznețe. Cu o înălțime de 40 de centimetri, devine punctul central al oricărui decor interior, adăugând o notă rafinată și proaspătă în spațiul dvs.\r\nÎnălțimeȘ 40 cm', 35, '1702899299.png', 10, 1, 0, 'vaza albastra', 'vaza,albastru,albastra,decor,flori,plante,veze', 'Oferind o combinație vibrantă între eleganță și modernitate, această vază captivantă îmbină perfect estetica clasică a unei forme tradiționale de vază cu un model contemporan și culori îndrăznețe. Cu o înălțime de 40 de centimetri, devine punctul central al oricărui decor interior, adăugând o notă rafinată și proaspătă în spațiul dvs.', '2023-12-18 11:34:59'),
(36, 8, 'Decoratiune pom', 'vrabie aurie', ' O decoratiune de brad de Crăciun aurie în forma de vrăbiuță cu caiuță emană o eleganță distinctă. Culoarea aurie strălucitoare adaugă un farmec luxuriant și o notă festivă în orice decor festiv de Crăciun. Această nuanță vibrantă aduce o aură de sofisticare și rafinament în împrejurimile bradului, aducând un contrast plăcut și un accent plin de strălucire în întreaga atmosferă festivă.', ' O decoratiune de brad de Crăciun aurie în forma de vrăbiuță cu caiuță emană o eleganță distinctă. Culoarea aurie strălucitoare adaugă un farmec luxuriant și o notă festivă în orice decor festiv de Crăciun. Această nuanță vibrantă aduce o aură de sofisticare și rafinament în împrejurimile bradului, aducând un contrast plăcut și un accent plin de strălucire în întreaga atmosferă festivă.\r\nÎnălțime: 4 cm', 10, '1702899433.png', 24, 1, 1, 'vrabie aurie', 'vrabie,vrabiuta,cadou,craciun,cadouri,pom, decoratiune,decor', ' O decoratiune de brad de Crăciun aurie în forma de vrăbiuță cu caiuță emană o eleganță distinctă. Culoarea aurie strălucitoare adaugă un farmec luxuriant și o notă festivă în orice decor festiv de Crăciun. Această nuanță vibrantă aduce o aură de sofisticare și rafinament în împrejurimile bradului, aducând un contrast plăcut și un accent plin de strălucire în întreaga atmosferă festivă.', '2023-12-18 11:37:13'),
(37, 8, 'Vaza neagra', 'vaza neagra', 'Datorită bazei grase, vaza oferă stabilitate și siguranță pentru orice aranjament floral. Forma sa specifică, cu o gură îngustă, permite aranjamentelor să fie prezentate și expuse în mod distinct, permițând o focalizare eficientă asupra detaliilor acestora și oferind un impact vizual puternic în spațiul în care este amplasată.', 'Datorită bazei grase, vaza oferă stabilitate și siguranță pentru orice aranjament floral. Forma sa specifică, cu o gură îngustă, permite aranjamentelor să fie prezentate și expuse în mod distinct, permițând o focalizare eficientă asupra detaliilor acestora și oferind un impact vizual puternic în spațiul în care este amplasată.\r\nÎnălțime: 43 cm\r\nLălțime: 30 cm', 35, '1702899564.png', 32, 1, 0, 'vaza neagra', 'vaza,negru,neagra,flori,floral,suport,decor,decoratiune', 'vaza neagra', '2023-12-18 11:39:24'),
(38, 7, 'Cana craciun', 'cana-craciun12', 'Cana cu imaginea lui Moș Crăciun pe sanie, dăruind un cadou copilului, este mai mult decât un obiect de uz zilnic - este o fereastră către lumea magică a sărbătorilor. Această imagine aduce în prim-plan emoții precum bucuria, anticiparea și generozitatea. Fiecare sorbitură din această cană devine o experiență plină de încântare și speranță, oferind o pauză plină de magie chiar și în cele mai obișnuite momente ale zilei.', 'Cana cu imaginea lui Moș Crăciun pe sanie, dăruind un cadou copilului, este mai mult decât un obiect de uz zilnic - este o fereastră către lumea magică a sărbătorilor. Această imagine aduce în prim-plan emoții precum bucuria, anticiparea și generozitatea. Fiecare sorbitură din această cană devine o experiență plină de încântare și speranță, oferind o pauză plină de magie chiar și în cele mai obișnuite momente ale zilei.', 28, '1702899777.png', 30, 1, 1, 'canca mos craciun ', 'cana,craciun,mos,cadouri,cadou,ceai,cafea', 'Cana cu imaginea lui Moș Crăciun pe sanie, dăruind un cadou copilului, este mai mult decât un obiect de uz zilnic - este o fereastră către lumea magică a sărbătorilor. Această imagine aduce în prim-plan emoții precum bucuria, anticiparea și generozitatea. Fiecare sorbitură din această cană devine o experiență plină de încântare și speranță, oferind o pauză plină de magie chiar și în cele mai obișnuite momente ale zilei.', '2023-12-18 11:42:57'),
(39, 8, 'Decoratiune pom', 'glob-mos-craciun', 'Imaginea lui Moș Crăciun cu sacul în spate este adesea asociată cu generozitatea și bucuria sărbătorilor de iarnă. Un glob în această formă poate inspira aceste sentimente, reprezentând spiritul dăruirii și al momentelor pline de fericire și entuziasm care însoțesc sărbătorile de Crăciun.', 'Imaginea lui Moș Crăciun cu sacul în spate este adesea asociată cu generozitatea și bucuria sărbătorilor de iarnă. Un glob în această formă poate inspira aceste sentimente, reprezentând spiritul dăruirii și al momentelor pline de fericire și entuziasm care însoțesc sărbătorile de Crăciun.', 20, '1702899913.png', 40, 1, 1, 'mos craciun glob', 'mos,craiun glob iarna pom decoratiune decor', 'Imaginea lui Moș Crăciun cu sacul în spate este adesea asociată cu generozitatea și bucuria sărbătorilor de iarnă. Un glob în această formă poate inspira aceste sentimente, reprezentând spiritul dăruirii și al momentelor pline de fericire și entuziasm care însoțesc sărbătorile de Crăciun.', '2023-12-18 11:45:13'),
(40, 7, 'Set cana si farfurie', 'cana cafea gasca', 'Setul de farfurii și cană de cafea cu o gâscă mică desenată pe ele aduc un aer delicat și jucaus în orice încăpere. Prezența gâștei și a șorțulețului său colorat adaugă un element de veselie și caldețe în design, creând o atmosferă prietenoasă și plină de farmec în timp ce servești sau savurezi o băutură.', 'Setul de farfurii și cană de cafea cu o gâscă mică desenată pe ele aduc un aer delicat și jucaus în orice încăpere. Prezența gâștei și a șorțulețului său colorat adaugă un element de veselie și caldețe în design, creând o atmosferă prietenoasă și plină de farmec în timp ce servești sau savurezi o băutură.', 30, '1702900177.png', 120, 1, 1, 'cana cafea gasca', 'cafea, gasca ,cana ,set,farfurie,farfurioara,ceasca,', 'Setul de farfurii și cană de cafea cu o gâscă mică desenată pe ele aduc un aer delicat și jucaus în orice încăpere. Prezența gâștei și a șorțulețului său colorat adaugă un element de veselie și caldețe în design, creând o atmosferă prietenoasă și plină de farmec în timp ce servești sau savurezi o băutură.', '2023-12-18 11:49:37'),
(41, 6, 'Farfurie turcoaz', 'farfurie.model.abstract,turcoaz', 'Farfuria este o explozie de culori și modele, folosind turcoaz, alb și verde pentru a crea un design abstract plin de viață. Această combinație îndrăzneață și jucăușă de culori se împletește într-un model neconvențional, oferind un aspect distinct și captivant.', 'Farfuria este o explozie de culori și modele, folosind turcoaz, alb și verde pentru a crea un design abstract plin de viață. Această combinație îndrăzneață și jucăușă de culori se împletește într-un model neconvențional, oferind un aspect distinct și captivant.\r\nDiametru: 20 cm', 25, '1702902360.png', 27, 1, 0, 'farfruie turcoaz', 'farfurie farfurii turcoaz platou, macare ', 'farfurie farfurii turcoaz platou, macare ', '2023-12-18 12:26:00'),
(42, 6, 'Farfrurie flori albastre', 'farfurieflori albastre', 'Farfuria bogată în culori prezintă flori albastre vibrante care adaugă un accent vibrant și plin de viață. Aceste flori creează o atmosferă încântătoare și plină de energie, captând atenția și oferind un aspect distinct și atrăgător farfuriei', 'Farfuria bogată în culori prezintă flori albastre vibrante care adaugă un accent vibrant și plin de viață. Aceste flori creează o atmosferă încântătoare și plină de energie, captând atenția și oferind un aspect distinct și atrăgător farfuriei.\r\nDiametru: 24 cm', 15, '1702902482.png', 30, 1, 0, 'farfurie albastra', 'farfurie farfurii platou mancare supa portelan ', 'Farfuria bogată în culori prezintă flori albastre vibrante care adaugă un accent vibrant și plin de viață. Aceste flori creează o atmosferă încântătoare și plină de energie, captând atenția și oferind un aspect distinct și atrăgător farfuriei', '2023-12-18 12:28:02'),
(43, 6, 'Farfurie peisaj', 'farfuriepeisajcopaci', 'Farfuria albă cu un desen minimalist, constând într-un peisaj cu doi copaci în nuanțe de maro, emană o eleganță simplă. Contrastul dintre fondul alb și detaliile discrete ale peisajului adaugă un farmec subtil și rafinament, oferind o senzație de echilibru și liniște.', 'Farfuria albă cu un desen minimalist, constând într-un peisaj cu doi copaci în nuanțe de maro, emană o eleganță simplă. Contrastul dintre fondul alb și detaliile discrete ale peisajului adaugă un farmec subtil și rafinament, oferind o senzație de echilibru și liniște.\r\nDiametru: 27 cm', 24, '1702902603.png', 70, 1, 0, 'farfuriepeisajmaro', 'farfurie peisaj farfurii ', 'Farfuria albă cu un desen minimalist, constând într-un peisaj cu doi copaci în nuanțe de maro, emană o eleganță simplă. Contrastul dintre fondul alb și detaliile discrete ale peisajului adaugă un farmec subtil și rafinament, oferind o senzație de echilibru și liniște.', '2023-12-18 12:30:03'),
(44, 7, 'Set ceasca si farfurie', 'set.canafarfurie.verde', ' Setul de cești și farfurioare este încântător și captivant, evidențiind un desen în nuanțe de verde care reprezintă un castel înconjurat de natură. Imaginea unui castel în mijlocul peisajului natural transmite o senzație de eleganță și conexiune cu frumusețea naturală a lumii.', ' Setul de cești și farfurioare este încântător și captivant, evidențiind un desen în nuanțe de verde care reprezintă un castel înconjurat de natură. Imaginea unui castel în mijlocul peisajului natural transmite o senzație de eleganță și conexiune cu frumusețea naturală a lumii.', 30, '1702902780.png', 30, 1, 0, 'set ceasca farfurie verde', 'ceasca cana cafea ceai cesi set farfurioara ', ' Setul de cești și farfurioare este încântător și captivant, evidențiind un desen în nuanțe de verde care reprezintă un castel înconjurat de natură. Imaginea unui castel în mijlocul peisajului natural transmite o senzație de eleganță și conexiune cu frumusețea naturală a lumii.', '2023-12-18 12:33:00'),
(45, 8, 'Vaza rosie', 'vaza-rosie-model-negru', 'Vaza roșie oferă un fundal vibrant și distinctiv pentru floarea neagră abstractă. Contrastul dintre culoarea puternică a vazei și tonurile închise, enigmatice ale florii creează un impact vizual profund și o senzație de mister. Această combinație de nuanțe vibrante și culori intense oferă o estetică abstractă, captivantă și plină de dramatism, atrăgând privirea și provocând contemplare.', 'Vaza roșie oferă un fundal vibrant și distinctiv pentru floarea neagră abstractă. Contrastul dintre culoarea puternică a vazei și tonurile închise, enigmatice ale florii creează un impact vizual profund și o senzație de mister. Această combinație de nuanțe vibrante și culori intense oferă o estetică abstractă, captivantă și plină de dramatism, atrăgând privirea și provocând contemplare.\r\nÎnălțime: 28 cm\r\nLălțime:  15 cm', 45, '1702903039.png', 6, 1, 0, 'vaza rosie ', 'ceramic vaza rosu rosie floare flori decor ', 'Înălțime: 43 cm\r\nLălțime:', '2023-12-18 12:37:19');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` varchar(191) NOT NULL,
  `parere` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `created_at`, `parere`) VALUES
(2, 'Andreaa', '2023-12-13 18:47:58', 'Produsele sunt exact ca in imagini! Impachetarea a fost foarte bine facuta!'),
(3, 'Marian', '2023-12-15 18:42:20', 'Foarte frumoase produsele'),
(4, 'Andrei', '2023-12-17 13:42:45', 'Produse foarte frumoase!'),
(7, 'Maria M', '2023-12-17 15:14:41', 'Imi plac produsele foarte mult!'),
(8, 'Maria M', '2023-12-17 15:15:43', 'Imi plac produsele foarte mult!'),
(9, 'Vlad', '2023-12-17 15:16:19', 'Super echipa!'),
(10, 'Florin', '2023-12-17 16:22:47', 'Un loc de unde puteti achizitiona produse de craciun foarte frumoase!');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `prenume` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `phone` int(191) NOT NULL,
  `adress` varchar(191) NOT NULL,
  `pincode` int(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `prenume`, `email`, `password`, `role_as`, `phone`, `adress`, `pincode`) VALUES
(7, '', 'denisa', 'denisa@gmail.com', '1234', 1, 0, '', 0),
(8, 'Ion', 'Popescu', 'ionpopescu@mail.com', '1234', 0, 7215963, 'Arad, Arad, Strada Soarelui, nr 40', 963),
(9, 'ionescu', 'andrei', 'andrei@ionescu.com', '1234', 0, 0, '', 0),
(10, '  vlad', '  popescu', 'vlad@mail.com', '1234', 0, 7215963, '', 963),
(11, ' Danciu', ' Denisa', 'danciudenisa12@gmail.com', '1234', 0, 7215963, 'Timisoara, Timis, str Dropiei, nr 7', 98563),
(12, 'om', 'miau', 'miau@miau.com', '12345678', 0, 0, '', 0),
(13, 'mig', 'as', 'admin111@mail', '12345678', 0, 0, '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cupoane`
--
ALTER TABLE `cupoane`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_letter`
--
ALTER TABLE `news_letter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cupoane`
--
ALTER TABLE `cupoane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `news_letter`
--
ALTER TABLE `news_letter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
