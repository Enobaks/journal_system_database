-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 10:36 AM
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
-- Database: `journal_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `area_of_interest`
--

CREATE TABLE `area_of_interest` (
  `is_code` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `area_of_interest`
--

INSERT INTO `area_of_interest` (`is_code`, `description`) VALUES
('IS2020', 'Accounting'),
('IS2070', 'Health and Fitness'),
('IS2100', 'Software Development'),
('IS2367', 'Brain Psychology'),
('IS2378', 'Business Analysis'),
('IS2400', 'Molecular Biology'),
('IS2440', 'Database Development ');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `staff_id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mail_address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `affiliation` varchar(255) NOT NULL,
  `editor_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`staff_id`, `name`, `mail_address`, `email`, `affiliation`, `editor_id`) VALUES
(1, '\r\nNoah Jones\r\n\r\n', '17 Nechells Street, B723Y', 'noahjones@gmail.com', 'University of East London', 3),
(2, ' \r\nAva Brown\r\n\r\n', '20 High Street Newton, B19 2SS\r\n', 'ava.brown@gmail.com', 'Deloitte', 1),
(3, '\r\n Isabella Davis\r\n\r\n', '70 Rupert Street B93FE,Birmingham', 'isabella@gmail.com', 'Aston University', 1),
(4, '\r\nSophia Miller\r\n\r\n', '20 Parliament Street, Birmingham B6 4TS', 'sophia.miller@gmail.com', 'Edinburgh University', 4),
(5, '\r\nMia Wilson\r\n\r\n', ' 1 St Philips Place, Birmingham B3 2PP', 'mia.wilson@gmail.com', 'Schneider Electric', 7),
(6, '\r\nJackson Moore\r\n\r\n', '15 Bartholomew Row, B15 3TN, Birmingham', 'jacksonmoore@gmail.com', 'Birmingham City University', 6),
(7, '\r\nAiden Taylor\r\n\r\n', '62 Aton Lane B34 12T, Birmingham', 'aidentaylor@gmail.com', 'Citrix', 5),
(8, '\r\nLucas Anderson\r\n\r\n', '60 Priestley street sheffield S24Ft', 'lucas.anderson@gmail.com', 'Pipedrive', 8),
(9, '\r\nHarper Thomas\r\n\r\n', '77 Haming Street Sheffield S13Be ', 'harperthomas@gmail.com', 'Marketo', 8),
(10, '\r\nElijah Jackson\r\n\r\n', '13 Oldsbury S27GN Sheffield', 'elijah.jackson@gmail.com', 'Sheffield Hallam University', 5);

-- --------------------------------------------------------

--
-- Table structure for table `editors`
--

CREATE TABLE `editors` (
  `staff_id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `no_of_experience` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `editors`
--

INSERT INTO `editors` (`staff_id`, `name`, `phone_no`, `no_of_experience`) VALUES
(1, 'George Washington ', '09779927563', 6),
(2, 'Tyler Perry', '07809339907', 10),
(3, 'Andrew William', '07835306446', 9),
(4, 'Francisca Davis', '07768237187', 6),
(5, 'Chelsea Powell', '07136925787', 10),
(6, 'Brian Tracy', '+2348064101502', 11),
(7, 'Jet Li', '07950533779', 9),
(8, '\r\nOlivia Smith\r\n\r\n', '07025672211', 12),
(9, 'Liam Johnson\r\n', '+2348064103489', 11),
(10, ' \r\nEmma Williams\r\n\r\n', '07013672217', 16);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `pid` int(5) NOT NULL,
  `feedback_id` int(5) NOT NULL,
  `date` date NOT NULL,
  `recommendation` varchar(255) NOT NULL,
  `contribution_rating` int(5) NOT NULL,
  `methodology_rating` int(5) NOT NULL,
  `clarity_rating` int(5) NOT NULL,
  `appropriateness_rating` int(5) NOT NULL,
  `editor_id` int(5) NOT NULL,
  `reviewer_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`pid`, `feedback_id`, `date`, `recommendation`, `contribution_rating`, `methodology_rating`, `clarity_rating`, `appropriateness_rating`, `editor_id`, `reviewer_id`) VALUES
(1, 419, '2021-10-13', 'accept', 5, 7, 6, 7, 1, 3),
(2, 327, '2021-04-12', 'reject', 6, 5, 4, 5, 2, 6),
(3, 217, '2022-10-20', 'accept', 8, 7, 8, 6, 7, 6),
(4, 367, '2023-05-10', 'accept', 8, 9, 7, 7, 5, 2),
(5, 498, '2022-12-05', 'accept', 8, 7, 7, 8, 4, 5),
(6, 537, '2021-08-18', 'reject', 4, 3, 5, 4, 3, 2),
(7, 834, '2023-05-16', 'reject', 3, 6, 5, 4, 6, 1),
(8, 586, '2022-11-18', 'accept', 7, 9, 8, 9, 7, 2),
(9, 456, '2023-02-09', 'accept', 7, 8, 9, 8, 9, 10),
(10, 298, '2022-11-21', 'accept', 8, 7, 7, 8, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `format`
--

CREATE TABLE `format` (
  `font_style` varchar(255) NOT NULL,
  `period_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `format`
--

INSERT INTO `format` (`font_style`, `period_id`) VALUES
('Calibri', 1),
('Arial\r\n', 10),
('Bahnschrift\r\n\r\n', 3),
('Berlin Sans FB\r\n', 4),
('Elephant\r\n', 5),
('Franklin Gothic Book\r\n', 7),
('Stencil\r\n', 8),
('Georgia', 3),
('Calibri', 10),
('Berlin Sans FB\r\n', 3);

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

CREATE TABLE `interest` (
  `is_code` varchar(20) NOT NULL,
  `staff_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interest`
--

INSERT INTO `interest` (`is_code`, `staff_id`) VALUES
('IS2100', 1),
('IS2070', 2),
('IS2020', 3),
('IS2100', 4),
('IS2367', 5),
('IS2378', 6),
('IS2400', 7),
('IS2440', 6),
('IS2020', 8),
('IS2070', 9),
('IS2100', 10);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `issue_no` int(5) NOT NULL,
  `pub_year` int(5) NOT NULL,
  `volume` int(5) NOT NULL,
  `pub_period` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`issue_no`, `pub_year`, `volume`, `pub_period`) VALUES
(1, 2023, 2, 'fall'),
(2, 2020, 1, 'winter'),
(3, 2021, 5, 'spring'),
(4, 2022, 4, 'summer');

-- --------------------------------------------------------

--
-- Table structure for table `manuscript`
--

CREATE TABLE `manuscript` (
  `pid` int(5) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `manuscript_no` int(5) NOT NULL,
  `issue_no` int(5) NOT NULL,
  `editor_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manuscript`
--

INSERT INTO `manuscript` (`pid`, `title`, `date`, `status`, `manuscript_no`, `issue_no`, `editor_id`) VALUES
(1, 'Management Reporting & Analysis\r\n', '2020-01-16', 'received', 15267, 2, 1),
(2, 'Healthy eating habits you want to teach your kids\r\n', '2021-04-06', 'under review', 17289, 3, 7),
(3, 'The evolution of software development orchestration: current state and an agenda for future research\r\n', '2020-07-20', 'accepted', 13893, 2, 5),
(4, 'The Role of Genetics in Mental Health\r\n', '2020-11-16', 'accepted', 16745, 2, 2),
(5, 'Exploring the Role of Technology in Modern-Day Crime \r\n', '2022-03-23', 'scheduled', 24595, 4, 8),
(6, 'Data Analytics Management Capability and Strategies for Inter-organizational Collaborations\r\n', '2023-05-08', 'published', 23897, 1, 4),
(7, 'Intelligent Agents and Agent-based Applications\r\n', '2022-09-14', 'rejected', 31267, 4, 3),
(8, 'Applications of Modern Molecular Biology in Vaccine Developments', '2023-02-06', 'published', 48967, 1, 3),
(9, 'Maternal Vaccination to Prevent Adverse Pregnancy Outcomes\r\n', '2022-09-14', 'published', 41278, 4, 7),
(10, 'Designing a Data Mining Process for the Financial Services Domain\r\n', '2020-08-20', 'received', 49237, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `staff_id` int(5) NOT NULL,
  `period_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`staff_id`, `period_id`) VALUES
(3, 1),
(4, 2),
(6, 3),
(7, 5),
(8, 6),
(9, 8),
(10, 1),
(1, 2),
(2, 3),
(3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `reviewers`
--

CREATE TABLE `reviewers` (
  `staff_id` int(5) NOT NULL,
  `reviewer_no` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `affiliation` varchar(255) NOT NULL,
  `editor_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviewers`
--

INSERT INTO `reviewers` (`staff_id`, `reviewer_no`, `name`, `email`, `affiliation`, `editor_id`) VALUES
(1, 101, '\r\nCharlotte White\r\n\r\n', 'charlottewhite@gmail.com', 'University of East London', 3),
(2, 102, 'James Harris\r\n', 'harris.james@gmail.com', 'RingLead', 5),
(3, 103, 'Benjamin Martin\r\n', 'benjamin.martin@gmail.com', 'Delcam plc', 8),
(4, 104, 'Amelia Thompson\r\n', 'ameliathompson@gmail.com', 'Kalexiko ltd', 6),
(5, 105, 'Oliver Garcia\r\n', 'oliver.garcia@gmail.com', 'Delcam plc', 7),
(6, 106, 'Evelyn Martinez\r\n', 'martinezeve@gmail.com', 'Barclays', 3),
(7, 107, 'William Robinson\r\n', 'william.robinson@gmail.com', 'Aston University', 6),
(8, 108, 'Abigail Clark\r\n', 'abigail.clark@gmail.com', 'Compass Group', 1),
(9, 109, 'Michael Rodriguez\r\n', 'michaelrodriguez@gmail.com', 'Unilever', 4),
(10, 120, 'Emily Lewis\r\n', 'emilylewis@gmail.com', 'Birmingham City University', 4);

-- --------------------------------------------------------

--
-- Table structure for table `submit`
--

CREATE TABLE `submit` (
  `staff_id` int(5) NOT NULL,
  `period_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submit`
--

INSERT INTO `submit` (`staff_id`, `period_id`) VALUES
(7, 1),
(2, 3),
(7, 5),
(2, 4),
(3, 4),
(4, 5),
(6, 7),
(8, 8),
(1, 9),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `type_setting`
--

CREATE TABLE `type_setting` (
  `font_style` varchar(255) NOT NULL,
  `line_spacing` varchar(255) NOT NULL,
  `font_size` int(5) NOT NULL,
  `justification` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type_setting`
--

INSERT INTO `type_setting` (`font_style`, `line_spacing`, `font_size`, `justification`) VALUES
('Agency FB\r\n', 'Tight', 18, 'Right'),
('Arial\r\n', 'Open', 24, 'Left'),
('Bahnschrift\r\n\r\n', 'Open', 32, 'Center'),
('Berlin Sans FB\r\n', 'Relaxed', 30, 'Left'),
('Calibri', 'No paragraph space', 14, 'Left'),
('Elephant\r\n', 'No paragraph space', 14, 'Left'),
('Franklin Gothic Book\r\n', 'Compact', 12, 'Center'),
('Georgia', 'Relaxed', 26, 'Center'),
('Stencil\r\n', 'Double', 28, 'Right'),
('Times New Roman', 'Compact', 20, 'Center');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area_of_interest`
--
ALTER TABLE `area_of_interest`
  ADD PRIMARY KEY (`is_code`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `editor_id` (`editor_id`);

--
-- Indexes for table `editors`
--
ALTER TABLE `editors`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `editor_id` (`editor_id`),
  ADD KEY `reviewer_id` (`reviewer_id`);

--
-- Indexes for table `format`
--
ALTER TABLE `format`
  ADD KEY `period_id` (`period_id`),
  ADD KEY `style` (`font_style`);

--
-- Indexes for table `interest`
--
ALTER TABLE `interest`
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `is_code` (`is_code`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`issue_no`);

--
-- Indexes for table `manuscript`
--
ALTER TABLE `manuscript`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `issue_no` (`issue_no`),
  ADD KEY `editor_id` (`editor_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD KEY `period_id` (`period_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `reviewers`
--
ALTER TABLE `reviewers`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `editor_id` (`editor_id`);

--
-- Indexes for table `submit`
--
ALTER TABLE `submit`
  ADD KEY `period_id` (`period_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `type_setting`
--
ALTER TABLE `type_setting`
  ADD PRIMARY KEY (`font_style`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `staff_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `editors`
--
ALTER TABLE `editors`
  MODIFY `staff_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `issue_no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `manuscript`
--
ALTER TABLE `manuscript`
  MODIFY `pid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviewers`
--
ALTER TABLE `reviewers`
  MODIFY `staff_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_ibfk_1` FOREIGN KEY (`editor_id`) REFERENCES `editors` (`staff_id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`editor_id`) REFERENCES `editors` (`staff_id`),
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`reviewer_id`) REFERENCES `reviewers` (`staff_id`);

--
-- Constraints for table `format`
--
ALTER TABLE `format`
  ADD CONSTRAINT `format_ibfk_2` FOREIGN KEY (`period_id`) REFERENCES `manuscript` (`pid`),
  ADD CONSTRAINT `format_ibfk_3` FOREIGN KEY (`font_style`) REFERENCES `type_setting` (`font_style`);

--
-- Constraints for table `interest`
--
ALTER TABLE `interest`
  ADD CONSTRAINT `interest_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `reviewers` (`staff_id`),
  ADD CONSTRAINT `interest_ibfk_3` FOREIGN KEY (`is_code`) REFERENCES `area_of_interest` (`is_code`);

--
-- Constraints for table `manuscript`
--
ALTER TABLE `manuscript`
  ADD CONSTRAINT `manuscript_ibfk_1` FOREIGN KEY (`issue_no`) REFERENCES `issue` (`issue_no`),
  ADD CONSTRAINT `manuscript_ibfk_2` FOREIGN KEY (`editor_id`) REFERENCES `editors` (`staff_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`period_id`) REFERENCES `manuscript` (`pid`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `reviewers` (`staff_id`);

--
-- Constraints for table `reviewers`
--
ALTER TABLE `reviewers`
  ADD CONSTRAINT `reviewers_ibfk_1` FOREIGN KEY (`editor_id`) REFERENCES `editors` (`staff_id`);

--
-- Constraints for table `submit`
--
ALTER TABLE `submit`
  ADD CONSTRAINT `submit_ibfk_1` FOREIGN KEY (`period_id`) REFERENCES `manuscript` (`pid`),
  ADD CONSTRAINT `submit_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `authors` (`staff_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
