-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2024 at 12:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seng`
--

-- --------------------------------------------------------

--
-- Table structure for table `assessment`
--

CREATE TABLE `assessment` (
  `id` int(11) NOT NULL,
  `courseID` int(11) DEFAULT NULL,
  `assName` varchar(255) DEFAULT NULL,
  `total` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assessment`
--

INSERT INTO `assessment` (`id`, `courseID`, `assName`, `total`) VALUES
(1, 1, 'Project-1', '20.00'),
(2, 1, 'Project-2', '20.00'),
(3, 3, 'mid-exam-1', '10.00'),
(4, 3, 'final-exam', '50.00');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `year` int(50) NOT NULL,
  `semester` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `year`, `semester`) VALUES
(1, 'Web Design and Programming', 2, 2),
(2, 'Object Oriented Programming', 3, 1),
(3, 'Advanced Programming', 3, 2),
(4, 'Artificial Intelligence', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `docs`
--

CREATE TABLE `docs` (
  `id` int(11) NOT NULL,
  `doc_name` varchar(255) NOT NULL,
  `doc_link` varchar(255) NOT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `docs`
--

INSERT INTO `docs` (`id`, `doc_name`, `doc_link`, `course_id`) VALUES
(1, 'All chapters.zip', 'all.zip', 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `status` int(50) NOT NULL DEFAULT 1,
  `year` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `status`, `year`) VALUES
(3, 'Final Exam', '2023-11-18', 0, 3),
(4, 'Presentation', '2023-11-15', 0, 3),
(5, 'Final Exam', '2023-11-18', 1, 2),
(6, 'Presentation', '2023-11-15', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `newstudents`
--

CREATE TABLE `newstudents` (
  `id` int(50) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `idNumber` varchar(50) NOT NULL,
  `commType` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newstudents`
--

INSERT INTO `newstudents` (`id`, `fullName`, `idNumber`, `commType`, `phone`, `email`) VALUES
(1, 'Kaleb Melaku', 'R/1234/56', 'WhatsApp', '+251953565269', 'kalebmelaku97@outlook.com'),
(2, 'Abdihakim mohamed hassen ', 'R/5414/14', 'WhatsApp', '+251915443871', ''),
(3, 'Abdikadir Sakariye Mahamoud ', 'R/5450/14', 'WhatsApp', '+251901375553', ''),
(4, 'Abdiladif Ahmed Daud', 'R/3328/14', 'WhatsApp', '+252634557779', ''),
(5, 'Abdinasir bashir', 'R/0168/14', 'WhatsApp', '+251918080114', ''),
(6, 'Abdirizaq Mohamed Abdi', 'R/5049/14', 'WhatsApp', '+251948631011', ''),
(7, 'Abenezer ayalew tesfaye', 'R/0373/14', 'WhatsApp', '+251995261760', ''),
(8, 'Absalew Alamiraw Enyew', 'R/3544/14', 'WhatsApp', '+251924348114', ''),
(9, 'ABUBAKAR HASSAN MUHUMED ', 'R/4948/14', 'WhatsApp', '+251966209599', ''),
(10, 'ADNA ABDILAHI ', 'R/3557/14', 'WhatsApp', '+251963024916', ''),
(11, 'Ahmed Mahamed Somane', 'R/5803/14', 'WhatsApp', '+251902276248', ''),
(12, 'Ahmedshafi Mohamed Iman', 'R/3583/14', 'WhatsApp', '+251914975856', ''),
(13, 'Ali Abdi Muhumed', 'R/5710/14', 'WhatsApp', '+251915250888', ''),
(14, 'Ambiya  muhumed ahmed ', 'R/0583/14', 'WhatsApp', '+251910727164', ''),
(15, 'Amin Bashir Husein', 'R/0595/14', 'WhatsApp', '+251940377320', ''),
(16, 'AMIN DAHIR MOHAMED', 'R/3607/14', 'WhatsApp', '+251942249991', ''),
(17, 'Asma  mahamed olad', 'R/3651/14', 'WhatsApp', '+251925652106', ''),
(18, 'Asma Feti Abdi', 'R/4019/13', 'WhatsApp', '+251941119611', ''),
(19, 'Ayan muhumed ahmed', 'R/3676/14', 'WhatsApp', '+251915239933', ''),
(20, 'Aymen Mohammed Bekri ', 'R/4893/14', 'WhatsApp', '+251915054308', ''),
(21, 'Bereket gidi deco', 'R/3695/14', 'WhatsApp', '+251905619088', ''),
(22, 'Biruk Kasahun Workineh', 'R/7067/13', 'WhatsApp', '+251934220096', ''),
(23, 'Biruk Tamirat Belayneh ', 'R/3699/14', 'WhatsApp', '+251941124113', ''),
(24, 'Biruk Wendesen', 'R/0883/14', 'WhatsApp', '+251951112323', ''),
(25, 'Dek keydsane hasan ', 'R/5019/14', 'WhatsApp', '+251915720454', ''),
(26, 'EYUEL ADISU AGITO', 'R/1178/14', 'WhatsApp', '+251704500026', ''),
(27, 'Eyuel wondeson Bekele', 'R/3744/14', 'WhatsApp', '+251937074667', ''),
(28, 'Firomsa Edris tesfay ', 'R/4918/14', 'WhatsApp', '+251907787367', ''),
(29, 'Halima Abdirahman Abdilahi ', 'R/4970/14', 'WhatsApp', '+251948683475', ''),
(30, 'Hanan yusuf ', 'R/3869/14', 'WhatsApp', '+251910131496', ''),
(31, 'Idil Abdi Osman', 'R/3307/14', 'WhatsApp', '+251904749097', ''),
(32, 'Kaleab endale afework', 'R/4887/14', 'WhatsApp', '+251904014227', ''),
(33, 'Mabruka abdinour abdullahi', 'R/4034/14', 'WhatsApp', '+251915729045', ''),
(34, 'Mahamed muktar sheikh', 'R/2028/14', 'WhatsApp', '+251915190004', ''),
(35, 'Mashud Mahamed idris ', 'R/2101/14', 'WhatsApp', '+251963881883', ''),
(36, 'Mohamed Abdillahi Hassan ', 'R/2218/14', 'WhatsApp', '+251915211025', ''),
(37, 'Mohamed Abdulahi Ibrahim ', 'R/4088/14', 'WhatsApp', '+251929398467', ''),
(38, 'Mohamed osman buh', 'R/2033/14', 'WhatsApp', '+251940867287', ''),
(39, 'Mohammed Ferhan Hamza', 'R/4103/14', 'WhatsApp', '+251943906527', ''),
(40, 'MUSHTAK MAHAMED AHMED', 'R/4135/14', 'WhatsApp', '+251908309472', ''),
(41, 'Mustafe muhumed Dinbel', 'R/5030/14', 'WhatsApp', '+251915448955', ''),
(42, 'Nimo Abdirezak awale', 'R/4208/14', 'WhatsApp', '+251915776380', ''),
(43, 'Nura Abdirahman sharif', 'R/2557/14', 'WhatsApp', '+251926436504', ''),
(44, 'Sad ahmed muhumed', 'R/5420/14', 'WhatsApp', '+251910209211', ''),
(45, 'Salah Abdi ismail', 'R/4304/14', 'WhatsApp', '+251954305272', ''),
(46, 'Seid Nurhussen ', 'R/4324/14', 'WhatsApp', '+251977711666', ''),
(47, 'Shueb Ahmed', 'R/4983/14', 'WhatsApp', '+251991868812', ''),
(48, 'SHUGRI ABDI KAFI HASSAN ', 'R/2881/14', 'WhatsApp', '+251910406002', ''),
(49, 'Suad Ahmed abdi', 'R/4346/14', 'WhatsApp', '+251936109913', ''),
(50, 'Sultan siraj mohamed', 'R/5455/14', 'WhatsApp', '+251925519051', ''),
(51, 'SUMAYA ABDIRAHMAN ABDIQANI', 'R/4363/14', 'WhatsApp', '+251915731236', ''),
(52, 'Yacqub Mohamed Abdi', 'R/4411/14', 'WhatsApp', '+251919072005', ''),
(53, 'Yasir  muhumed muse', 'R/3177/14', 'WhatsApp', '+251914999194', '');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(50) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` int(50) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `date`, `status`) VALUES
(1, '2023-12-24', 1),
(2, '2023-12-24', 1),
(3, '2023-12-25', 1),
(4, '2023-12-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `rn` int(50) NOT NULL,
  `id` varchar(50) NOT NULL,
  `otp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`rn`, `id`, `otp`) VALUES
(26, 'R/1234/56', '28996');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `id` int(50) NOT NULL,
  `std_id` varchar(50) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(50) NOT NULL,
  `idNumber` varchar(50) NOT NULL,
  `totalMark` int(50) NOT NULL,
  `grade` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `idNumber`, `totalMark`, `grade`) VALUES
(1, 'R/1234/56', 82, '');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `stdId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `crsId` int(11) DEFAULT NULL,
  `assId` int(11) DEFAULT NULL,
  `score` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `stdId`, `crsId`, `assId`, `score`) VALUES
(1, 'R/0016/13', 1, 1, '13.00');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` varchar(50) NOT NULL,
  `rn` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(31) DEFAULT NULL,
  `year` int(50) NOT NULL,
  `status` int(50) NOT NULL DEFAULT 0,
  `has_acc` int(11) DEFAULT NULL,
  `profilePicture` varchar(255) NOT NULL,
  `otp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `rn`, `email`, `password`, `name`, `year`, `status`, `has_acc`, `profilePicture`, `otp`) VALUES
('R/0016/13', 2, '', '', 'ABDI ABDILLAHI MOHAMED', 3, 0, 0, '', ''),
('R/0025/13', 3, '', '', 'ABDI BIRANU TOLASA', 3, 0, 0, '', ''),
('R/0074/13', 7, '', '', 'ABDISA ALEMAYEHU NIGUSE', 3, 0, NULL, '', ''),
('R/0080/13', 8, '', '', 'ABDISHAKUR AHMED MAHAMED', 3, 0, NULL, '', ''),
('R/0174/13', 10, '', '', 'ABENEZER GENA GELETA', 3, 0, NULL, '', ''),
('R/0617/13', 18, '', '', 'BEAMLAK TESFAYE TESEMA', 3, 0, NULL, '', ''),
('R/0865/13', 21, '', '', 'DANDI TAKILU KEBEDE', 3, 0, NULL, '', ''),
('R/1168/13', 24, '', '', 'FARHAN MOHAMMED ABAS', 3, 0, NULL, '', ''),
('R/1197/13', 25, '', '', 'FEHIMA AHMED RABI', 3, 0, NULL, '', ''),
('R/1234/56', 1, 'student@mail.com', '123', 'STUDENT FULL NAME', 3, 1, 1, 'undefined-1700472694036.jpg', ''),
('R/1240/13', 28, '', '', 'FIROMSA AHMED USMAN', 3, 0, NULL, '', ''),
('R/1258/13', 29, '', '', 'FUAD BULLO BEYERA', 3, 0, NULL, '', ''),
('R/1368/13', 30, '', '', 'GIRMA BAHIRU GIZACHEW', 3, 0, NULL, '', ''),
('R/1495/13', 32, '', '', 'HASSAN BASHIR ABDIKAREM', 3, 0, NULL, '', ''),
('R/1601/13', 33, '', '', 'HUZEYFA AHMED ABDU', 3, 0, NULL, '', ''),
('R/1618/13', 34, '', '', 'IDOSA TARIKU BEKELE', 3, 0, NULL, '', ''),
('R/1682/13', 35, '', '', 'JEMAL USMAEL MUMED', 3, 0, NULL, '', ''),
('R/1696/13', 36, '', '', 'KADAR ABDIRAHMAN MUHUMED', 3, 0, NULL, '', ''),
('R/1748/13', 39, '', '', 'KEDIR ABDOSH ALIYE', 3, 0, NULL, '', ''),
('R/1776/13', 41, 'dnafkot590@gmail.com', '1234', 'KIDUS GEBREMEDHIN TEKLEHAYMANOT', 3, 1, 1, '', ''),
('R/1889/13', 43, 'kalebmelaku97@gmail.com', '1234', 'MAHAMED AHMED MAHAMED', 3, 1, 0, '', ''),
('R/2045/13', 44, '', '', 'MERERA GAROMA WAKUMA', 3, 0, NULL, '', ''),
('R/2079/13', 45, '', '', 'METASEBIYA MERKIN CHIRBO', 3, 0, NULL, '', ''),
('R/2183/13', 46, '', '', 'MOHAMMED JEMAL KEDIR', 3, 0, NULL, '', ''),
('R/2282/13', 47, '', '', 'NABIL MOHAMMED SHAM', 3, 0, NULL, '', ''),
('R/2317/13', 48, '', '', 'NASRA ABDULAHI HASHI', 3, 0, NULL, '', ''),
('R/2388/13', 50, '', '', 'NOAH TADESSE GELALCHA', 3, 0, NULL, '', ''),
('R/2421/13', 51, '', '', 'OMER REMEDAN ABDULLAHI', 3, 0, NULL, '', ''),
('R/2490/13', 54, '', '', 'RUKYA MOHAMMED ADEM', 3, 0, NULL, '', ''),
('R/2511/13', 55, '', '', 'SALAHADIN ABDELLA MOHAMMED', 3, 0, NULL, '', ''),
('R/2582/13', 56, '', '', 'SELAMAWIT TATEK BELAY', 3, 0, NULL, '', ''),
('R/2669/13', 57, '', '', 'SOFONEYAS MEKONNEN SEMAW', 3, 0, NULL, '', ''),
('R/2884/13', 63, '', '', 'UMALKHEYRAT SALAHADIN MOHAMMED', 3, 0, NULL, '', ''),
('R/2934/13', 64, '', '', 'YADI GAJEA OFGAHA', 3, 0, NULL, '', ''),
('R/3031/13', 66, '', '', 'YONATHAN WONDWESEN ZEWGE', 3, 0, NULL, '', ''),
('R/3036/13', 67, '', '', 'YORDANOS ASMARE TADELE', 3, 0, NULL, '', ''),
('R/3109/13', 20, '', '', 'DAHABA ALI OSMAN', 3, 0, NULL, '', ''),
('R/3111/13', 53, '', '', 'ROWDA MOHAMED ISHAK', 3, 0, NULL, '', ''),
('R/3114/13', 9, '', '', 'ABDULLAHI ABDIRAHMAN OMER', 3, 0, NULL, '', ''),
('R/3120/13', 4, '', '', 'ABDIAKANI SALEBAN ABDILLE', 3, 0, 1, '', ''),
('R/3190/13', 1, 'kalebmelaku97@hotmail.com', '123', 'ABAS ABDI ABAS', 3, 1, 1, 'undefined-1700668790359.jpg', ''),
('R/3362/13', 23, '', '', 'EMEBET ATSBAHA WELAY', 3, 0, NULL, '', ''),
('R/3569/13', 62, '', '', 'TEWOLDE MARIE AYENEW', 3, 0, NULL, '', ''),
('R/3755/13', 59, '', '', 'SUAD YASIN OMAR', 3, 0, NULL, '', ''),
('R/3779/13', 31, '', '', 'HABON YOUSUF HASSEN', 3, 0, NULL, '', ''),
('R/3880/13', 60, '', '', 'SUMAYA ISMAIL HASSAN', 3, 0, NULL, '', ''),
('R/4105/13', 58, '', '', 'SUAD AHMED ALI', 3, 0, NULL, '', ''),
('R/4205/13', 38, '', '', 'KALID MOHAMED ISMAIL', 3, 0, NULL, '', ''),
('R/4220/13', 52, '', '', 'OSMAN AHMED ROBLE', 3, 0, NULL, '', ''),
('R/4277/13', 49, '', '', 'NASRA AHMED ABDI', 3, 0, NULL, '', ''),
('R/4300/13', 37, '', '', 'KADER MAHAMUD MAHAMED', 3, 0, NULL, '', ''),
('R/4321/13', 16, '', '', 'AMIN ABDI HASSAN', 3, 0, NULL, '', ''),
('R/4736/13', 11, '', '', 'ADNAN SHUGRI ABIB', 3, 0, NULL, '', ''),
('R/5277/13', 6, '', '', 'ABDIRESAK MUSTAFE MAHAMED', 3, 0, NULL, '', ''),
('R/5327/13', 17, '', '', 'ASAD ABDIJALIL ISMAIL', 3, 0, NULL, '', ''),
('R/5334/13', 65, '', '', 'YASIN ADEN IBRAHIM', 3, 0, NULL, '', ''),
('R/5565/13', 14, '', '', 'AHMED MOHAMOUD ZIYAD', 3, 0, NULL, '', ''),
('R/5570/13', 15, '', '', 'ALI SULDAN HASSEN', 3, 0, NULL, '', ''),
('R/5799/13', 61, '', '', 'SUNDUS ABDIKERIM FARAH', 3, 0, NULL, '', ''),
('R/5806/13', 13, '', '', 'AHMED MOHAMED MAHAD', 3, 0, NULL, '', ''),
('R/5868/13', 5, '', '', 'ABDIKADIR AHMEDNUR ALI', 3, 0, NULL, '', ''),
('R/5937/13', 40, '', '', 'KEDIR TEMAM HUSSEN', 3, 0, NULL, '', ''),
('R/6923/13', 12, '', '', 'AFNEN SULEYMAN MOHAMED', 3, 0, NULL, '', ''),
('R/6924/13', 27, '', '', 'FILSAN MOHAMED ABDULAHI', 3, 0, NULL, '', ''),
('R/6999/13', 22, '', '', 'DEKA HUSSEIN KAWDAN', 3, 0, NULL, '', ''),
('R/7003/13', 19, '', '', 'DAGIM TESFATE ZEMENE', 3, 0, NULL, '', ''),
('R/7012/13', 42, '', '', 'LIDETU AGEGNEHU TIGABU', 3, 0, NULL, '', ''),
('R/7151/13', 26, '', '', 'FETI ZIYAD IBRAHIM', 3, 0, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `testresult`
--

CREATE TABLE `testresult` (
  `id` int(50) NOT NULL,
  `idNumber` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid` int(50) NOT NULL,
  `project` int(50) NOT NULL,
  `attendance` int(50) NOT NULL,
  `final` int(50) NOT NULL,
  `total` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testresult`
--

INSERT INTO `testresult` (`id`, `idNumber`, `name`, `mid`, `project`, `attendance`, `final`, `total`) VALUES
(1, 'R/5414/14', 'Abdihakim mohamed hassen ', 4, 16, 8, 5, 33),
(2, 'R/5450/14', 'Abdikadir Sakariye Mahamoud ', 7, 16, 7, 33, 63),
(3, 'R/3328/14', 'Abdiladif Ahmed Daud', 14, 18, 7, 22, 61),
(4, 'R/0168/14', 'Abdinasir bashir', 10, 15, 8, 20, 53),
(5, 'R/5049/14', 'Abdirizaq Mohamed Abdi', 11, 16, 7, 36, 70),
(6, 'R/0373/14', 'Abenezer ayalew tesfaye', 10, 17, 7, 16, 50),
(7, 'R/3544/14', 'Absalew Alamiraw Enyew', 4, 17, 8, 12, 41),
(8, 'R/4948/14', 'ABUBAKAR HASSAN MUHUMED ', 4, 15, 8, 15, 42),
(9, 'R/3557/14', 'ADNA ABDILAHI ', 12, 18, 7, 42, 79),
(10, 'R/5803/14', 'Ahmed Mahamed Somane', 13, 18, 8, 30, 69),
(11, 'R/3583/14', 'Ahmedshafi Mohamed Iman', 10, 15, 7, 15, 47),
(12, 'R/5710/14', 'Ali Abdi Muhumed', 10, 15, 8, 29, 62),
(13, 'R/0583/14', 'Ambiya  muhumed ahmed ', 15, 16, 7, 42, 80),
(14, 'R/0595/14', 'Amin Bashir Husein', 14, 15, 8, 24, 61),
(15, 'R/3607/14', 'AMIN DAHIR MOHAMED', 12, 15, 8, 10, 45),
(16, 'R/3651/14', 'Asma  mahamed olad', 12, 15, 7, 34, 68),
(17, 'R/4019/13', 'Asma Feti Abdi', 8, 15, 7, 5, 35),
(18, 'R/3676/14', 'Ayan muhumed ahmed', 15, 16, 7, 39, 77),
(19, 'R/4893/14', 'Aymen Mohammed Bekri ', 12, 18, 7, 21, 58),
(20, 'R/3695/14', 'Bereket gidi deco', 6, 17, 8, 7, 38),
(21, 'R/3425/14', 'Bilen Dejene Gisila', 8, 18, 8, 15, 49),
(22, 'R/7067/13', 'Biruk Kasahun Workineh', 14, 18, 7, 42, 81),
(23, 'R/3699/14', 'Biruk Tamirat Belayneh ', 5, 17, 7, 11, 40),
(24, 'R/0883/14', 'Biruk Wendesen', 6, 17, 8, 15, 46),
(25, 'R/5019/14', 'Dek keydsane hasan ', 11, 15, 8, 29, 63),
(26, 'R/1148/14', 'Esayas asfaw ', 11, 18, 8, 28, 65),
(27, 'R/1178/14', 'EYUEL ADISU AGITO', 20, 18, 10, 49, 97),
(28, 'R/3744/14', 'Eyuel wondeson Bekele', 6, 18, 7, 18, 49),
(29, 'R/4918/14', 'Firomsa Edris tesfay ', 11, 17, 7, 5, 40),
(30, 'R/4970/14', 'Halima Abdirahman Abdilahi ', 12, 16, 7, 11, 46),
(31, 'R/3869/14', 'Hanan yusuf ', 10, 17, 7, 21, 55),
(32, 'R/1675/14', 'Hussen ahmed ismail', 15, 15, 7, 20, 57),
(33, 'R/3307/14', 'Idil Abdi Osman', 14, 16, 8, 40, 78),
(34, 'R/4887/14', 'Kaleab endale afework', 13, 18, 8, 38, 77),
(35, 'R/4034/14', 'Mabruka abdinour abdullahi', 14, 18, 7, 18, 57),
(36, 'R/2028/14', 'Mahamed muktar sheikh', 17, 15, 8, 45, 85),
(37, 'R/2101/14', 'Mashud Mahamed idris ', 8, 18, 7, 22, 55),
(38, 'R/5235/14', 'Mikiyas Bahiru Gezahegn ', 3, 18, 8, 11, 40),
(39, 'R/2218/14', 'Mohamed Abdillahi Hassan ', 17, 15, 8, 15, 55),
(40, 'R/4088/14', 'Mohamed Abdulahi Ibrahim ', 16, 16, 8, 35, 75),
(41, 'R/2033/14', 'Mohamed osman buh', 9, 18, 9, 32, 68),
(42, 'R/4103/14', 'Mohammed Ferhan Hamza', 12, 17, 7, 32, 68),
(43, 'R/4135/14', 'MUSHTAK MAHAMED AHMED', 13, 18, 8, 44, 83),
(44, 'R/5030/14', 'Mustafe muhumed Dinbel', 12, 18, 8, 42, 80),
(45, 'R/4178/14', 'Nasri Mahamed kalif ', 10, 15, 8, 33, 66),
(46, 'R/4208/14', 'Nimo Abdirezak awale', 11, 18, 7, 25, 61),
(47, 'R/2557/14', 'Nura Abdirahman sharif', 9, 15, 8, 37, 69),
(48, 'R/4245/14', 'Rahma dayib kamil', 12, 16, 7, 35, 70),
(49, 'R/5420/14', 'Sad ahmed muhumed', 6, 15, 7, 7, 35),
(50, 'R/4304/14', 'Salah Abdi ismail', 6, 16, 8, 9, 39),
(51, 'R/4324/14', 'Seid Nurhussen ', 14, 18, 7, 33, 72),
(52, 'R/4983/14', 'Shueb Ahmed', 5, 18, 7, 20, 50),
(53, 'R/2881/14', 'SHUGRI ABDI KAFI HASSAN ', 12, 18, 7, 42, 79),
(54, 'R/4346/14', 'Suad Ahmed abdi', 8, 15, 7, 19, 49),
(55, 'R/5455/14', 'Sultan siraj mohamed', 13, 18, 8, 34, 73),
(56, 'R/4363/14', 'SUMAYA ABDIRAHMAN ABDIQANI', 12, 18, 8, 43, 81),
(57, 'R/4411/14', 'Yacqub Mohamed Abdi', 12, 16, 7, 11, 46),
(58, 'R/3177/14', 'Yasir  muhumed muse', 9, 16, 7, 14, 46);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assessment`
--
ALTER TABLE `assessment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseID` (`courseID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `docs`
--
ALTER TABLE `docs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newstudents`
--
ALTER TABLE `newstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idNumber` (`idNumber`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`rn`),
  ADD KEY `id_fk` (`id`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stdId_fk` (`idNumber`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stdId` (`stdId`),
  ADD KEY `assId` (`assId`),
  ADD KEY `crsId` (`crsId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testresult`
--
ALTER TABLE `testresult`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assessment`
--
ALTER TABLE `assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `docs`
--
ALTER TABLE `docs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `newstudents`
--
ALTER TABLE `newstudents`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `rn` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `personal_info`
--
ALTER TABLE `personal_info`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `testresult`
--
ALTER TABLE `testresult`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assessment`
--
ALTER TABLE `assessment`
  ADD CONSTRAINT `assessment_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `courses` (`id`);

--
-- Constraints for table `docs`
--
ALTER TABLE `docs`
  ADD CONSTRAINT `docs_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `otp`
--
ALTER TABLE `otp`
  ADD CONSTRAINT `id_fk` FOREIGN KEY (`id`) REFERENCES `newstudents` (`idNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `stdId_fk` FOREIGN KEY (`idNumber`) REFERENCES `newstudents` (`idNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`stdId`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`assId`) REFERENCES `assessment` (`id`),
  ADD CONSTRAINT `results_ibfk_3` FOREIGN KEY (`crsId`) REFERENCES `courses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
