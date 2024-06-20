-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 04:15 PM
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
(1, 'Kaleb Melaku', 'R/1234/56', 'WhatsApp', '+251953565269', 'kalebmelaku97@outlook.com');

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
(2, 'R/1234/56', '65664'),
(3, 'R/1234/56', '92858'),
(4, 'R/1234/56', '89991'),
(5, 'R/1234/56', '40720'),
(6, 'R/1234/56', '72203'),
(7, 'R/1234/56', '51889'),
(8, 'R/1234/56', '25058'),
(9, 'R/1234/56', '83281'),
(10, 'R/1234/56', '63181'),
(11, 'R/1234/56', '61335'),
(12, 'R/1234/56', '58340'),
(13, 'R/1234/56', '12979'),
(14, 'R/1234/56', '40619'),
(15, 'R/1234/56', '34402'),
(16, 'R/1234/56', '24259'),
(17, 'R/1234/56', '30852'),
(18, 'R/1234/56', '72707'),
(19, 'R/1234/56', '45682');

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
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `rn` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_info`
--
ALTER TABLE `personal_info`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
