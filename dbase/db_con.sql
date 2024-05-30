-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 10:41 AM
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
-- Database: `db_con`
--

-- --------------------------------------------------------

--
-- Table structure for table `classsched`
--

CREATE TABLE `classsched` (
  `classid` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `time_start` varchar(255) NOT NULL,
  `time_end` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `course_year_section` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `sy` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `classsched`
--

INSERT INTO `classsched` (`classid`, `day`, `time_start`, `time_end`, `fname`, `subject_code`, `room_name`, `course_year_section`, `semester`, `sy`, `department`, `status`) VALUES
(137, 'Monday', '8:00am', '9:00am', 'Marcelo', 'M COL ALG', '410', 'BSISÂ 2A', '1ST', '2016-2017', '', 'unsaved'),
(151, ' Tuesday    ', '7:30am', '9:00am', 'JERMAINE GIRAY', 'GE 6116 SCIENCE, TECHNOLOGY & SOCIETY', '01', 'BSE 4A', '1ST', '2023-2024', 'CIT', 'unsaved'),
(152, ' Tuesday    ', '8:00am', '11:00am', 'JOHN PAUL MANUEL', 'ACTG 6153E FUNDAMENTALS OF ACCOUNTING THEORY & PRACTICE 1B', '02', 'BSE 4A', '2ND', '2023-2024', 'CIT', 'unsaved'),
(153, ' Tuesday    ', '7:30am', '8:00am', 'RIOLIE GUBA', 'ETHNS EUTHENICS 1', '02', 'BSE 4A', '1ST', '2023-2024', 'CIT', 'unsaved'),
(154, ' Tuesday    ', '8:00am', '7:30am', 'KIMBERLY BULAWAN', 'ENTR 6149 ENTREPRENEURIAL BEHAVIOR', '05', 'BSE 4A', '2ND', '2023-2024', 'CIT', 'unsaved');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `courseid` int(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year_section` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`courseid`, `course`, `year_section`, `department`, `major`) VALUES
(179, 'BSE', '1', 'College', ''),
(180, 'BSE', '2', 'College', ''),
(181, 'BSE', '3', 'College', ''),
(182, 'BSE', '4', 'College', ''),
(183, 'BSIS', '1', 'College', ''),
(184, 'BSIS', '2', 'College', ''),
(185, 'BSIS', '3', 'College', ''),
(186, 'BSIS', '4', 'College', ''),
(187, 'BSCS', '1', 'College', ''),
(188, 'BSCS', '2', 'College', ''),
(189, 'BSCS', '3', 'College', ''),
(190, 'BSCS', '4', 'College', ''),
(191, 'BSAIS', '1', 'College', ''),
(192, 'BSAIS', '2', 'College', ''),
(193, 'BSAIS', '3', 'College', ''),
(194, 'BSAIS', '4', 'College', '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `deptid` int(255) NOT NULL,
  `incharge` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`deptid`, `incharge`, `position`, `department`) VALUES
(1, 'Dr. Antonio L. Deraja', 'Dean', 'College of Industrial Technology');

-- --------------------------------------------------------

--
-- Table structure for table `examsched`
--

CREATE TABLE `examsched` (
  `examid` int(11) NOT NULL,
  `day` varchar(255) NOT NULL,
  `time_start` varchar(255) NOT NULL,
  `time_end` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `course_year_section` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `sy` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `examsched`
--

INSERT INTO `examsched` (`examid`, `day`, `time_start`, `time_end`, `fname`, `subject_code`, `room_name`, `course_year_section`, `semester`, `sy`, `department`, `status`) VALUES
(22, 'Monday', '7:30am', '11:00am', 'JERMAINE', 'GE 6100', '01', 'BSE 4A', '1ST', '2016-2017', 'CIT', 'checked');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomid` int(255) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomid`, `room_name`, `description`, `department`) VALUES
(75, '01', 'LAB', 'COED'),
(76, '02', '', 'COED'),
(77, '03', '', 'COED'),
(96, '04', '', ''),
(97, '05', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semesterid` int(255) NOT NULL,
  `semester` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semesterid`, `semester`) VALUES
(1, '1ST'),
(2, '2ND');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subjectid` int(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_title` varchar(255) NOT NULL,
  `subject_category` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year_section` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subjectid`, `subject_code`, `subject_title`, `subject_category`, `semester`, `department`, `course`, `year_section`) VALUES
(372, 'GE 6100', 'UNDERSTANDING THE SELF', '', '1st', 'College', 'BSE 1', ''),
(373, 'GE 6101', 'READINGS IN PHILIPPINE HISTORY', '', '1st', 'College', 'BSE 1', ''),
(374, 'GE 6102', 'THE CONTEMPORARY WORLD', '', '1st', 'College', 'BSE 1', ''),
(375, 'MGT 6140A', 'PRODUCTION OPERATIONS MANAGEMENT AND TQM', '', '1st', 'College', 'BSE 1', ''),
(376, 'ACTG 6153E', 'FUNDAMENTALS OF ACCOUNTING THEORY & PRACTICE 1B', '', '1st', 'College', 'BSE 1', ''),
(377, 'ETHNS 6101', 'EUTHENICS 1', '', '1st', 'College', 'BSE 1', ''),
(378, 'GE 6106', 'PURPOSIVE COMMUNICATION', '', '2nd', 'College', 'BSE 1', ''),
(379, 'GE 6114', 'MATHEMATICS IN THE MODERN WORLD', '', '2nd', 'College', 'BSE 1', ''),
(380, 'GE 6115', 'ART APPRECIATION', '', '2nd', 'College', 'BSE 1', ''),
(381, 'ENTR 6149', 'ENTREPRENEURIAL BEHAVIOR', '', '2nd', 'College', 'BSE 1', ''),
(382, 'LAW 6288', 'BUS.,LAW AND TAXATION(LAWS AFFECTING MICRO, SMALL MEDIUM ENTERPRISES)', '', '2nd', 'College', 'BSE 1', ''),
(383, 'FMGT 6252', 'FINANCIAL MGT.(FINANCIAL ANALYSIS FOR DECISION MAKING)', '', '2nd', 'College', 'BSE 1', ''),
(384, 'ETHNS 6102', 'EUTHENICS 2', '', '2nd', 'College', 'BSE 1', ''),
(385, 'GE 6107', 'ETHICS', '', '1st', 'College', 'BSE 2', ''),
(386, 'GE 6116', 'SCIENCE, TECHNOLOGY & SOCIETY', '', '1st', 'College', 'BSE 2', ''),
(387, 'ENTR 6152', 'ENTREPRENEURIAL LEADERSHIP IN AN ORGANIZATION', '', '1st', 'College', 'BSE 2', ''),
(388, 'MKTG 6151', 'BUSINESS OPPORTUNITY SEEKING', '', '1st', 'College', 'BSE 2', ''),
(389, 'ECON 6150', 'MICROECONOMICS', '', '1st', 'College', 'BSE 2', ''),
(390, 'ITE 6101', 'COMPUTING FUNDAMENTALS', '', '1st', 'College', 'BSE 2', ''),
(391, 'MKTG 6254', 'MARKET RESEARCH AND CONSUMER BEHAVIOR', '', '2nd', 'College', 'BSE 2', ''),
(392, 'MGT 6255', 'INNOVATION MANAGEMENT', '', '2nd', 'College', 'BSE 2', ''),
(393, 'ENTR 6260', 'ELECTIVE 1 - HOSPITALITY MANAGEMENT', '', '2nd', 'College', 'BSE 2', ''),
(394, 'ENTR 6391', 'PROGRAMS AND POLICIES ON ENTERPRISE DEVELOPMENT', '', '2nd', 'College', 'BSE 2', ''),
(395, 'FILI 6101', 'WIKA, LIPUNAN AT KULTURA', '', '2nd', 'College', 'BSE 2', ''),
(396, 'PHYED 6101', 'PHYSICAL FITNESS', '', '2nd', 'College', 'BSE 2', ''),
(397, 'NSTP 6101', 'NATIONAL SERVICE TRAINING PROGRAM 1', '', '2nd', 'College', 'BSE 2', ''),
(398, 'BAMM 6301', 'INTERNATIONAL BUSINESS AND TRADE', '', '1st', 'College', 'BSE 3', ''),
(399, 'MKTG 6256', 'PRICING AND COSTING', '', '1st', 'College', 'BSE 3', ''),
(400, 'OFAD 6301A', 'ELECTIVE 2 -EVENTS MANAGEMENT', '', '1st', 'College', 'BSE 3', ''),
(401, 'ENTR 6263', 'ELECTIVE 3 - WHOLESALE AND RETAIL SALES MGT.', '', '1st', 'College', 'BSE 3', ''),
(402, 'FILI 6201', 'KRITIKAL NA PAGBASA, PAGSULAT AT PAGSASALITA', '', '1st', 'College', 'BSE 3', ''),
(403, 'NSTP 6102', 'NATIONAL SERVICE TRAINING PROGRAM 2', '', '1st', 'College', 'BSE 3', ''),
(404, 'PHYED 6102', 'RHYTHMIC ACTIVITIES 2', '', '1st', 'College', 'BSE 3', ''),
(405, 'ENTR 6262', 'BUSINESS PLAN PREPARATION', '', '2nd', 'College', 'BSE 3', ''),
(406, 'MKTG 6392', 'ELECTIVE 4 - EXPORT MARKETING', '', '2nd', 'College', 'BSE 3', ''),
(407, 'MGT 6370A', 'STRATEGIC MANAGEMENT', '', '1st', 'College', 'BSE 3', ''),
(408, 'FILI 6301', 'PAGSASALING PAMPANITIKAN', '', '2nd', 'College', 'BSE 3', ''),
(409, 'PHYED 6300', 'LIFE AND WORK OF RIZAL (AS MANDATED BY LAW)', '', '1st', 'College', 'BSE 3', ''),
(410, 'PHYED 6103', 'INDIVIDUAL/DUAL SPORTS', '', '2nd', 'College', 'BSE 3', ''),
(411, 'MKTG 6390', 'ELECTIVE 5 - DIRECT MARKETING', '', '1st', 'College', 'BSE 4', ''),
(412, 'BAMM 6206', 'HUMAN RESOURCE MANAGEMENT', '', '1st', 'College', 'BSE 4', ''),
(413, 'MGT 6398', 'MANAGING A SERVICE ENTERPRISE', '', '1st', 'College', 'BSE 4', ''),
(414, 'ENTR 6396', 'BUSINESS PLAN IMPLEMENTATION 1 (PRODUCT PLANNING AND MARKET ANALYSIS)', '', '1st', 'College', 'BSE 4', ''),
(415, 'ENTR 6397', 'ELECTIVE 6 - MERGER AND ACQUISITION', '', '1st', 'College', 'BSE 4', ''),
(416, 'PHYED 6200', 'PE4 TEAM SPORTS', '', '1st', 'College', 'BSE 4', ''),
(417, 'ENTR 6393', 'SOCIAL ENTREPRENEURSHIP', '', '2nd', 'College', 'BSE 4', ''),
(418, 'ENTR 6321', 'BUSINESS PLAN IMPLEMENTATION 2', '', '2nd', 'College', 'BSE 4', ''),
(419, 'MATH 6100', 'Calculus 1', '', '1st', 'College', 'BSIS 1', ''),
(420, 'ITE 6101', 'Computing Fundamentals', '', '1st', 'College', 'BSIS 1', ''),
(421, 'GE 6100', 'Understanding the Self', '', '1st', 'College', 'BSIS 1', ''),
(422, 'GE 6106', 'Purposive Communication 1', '', '1st', 'College', 'BSIS 1', ''),
(423, 'FILI 6101', 'Wika, Lipunan at Kultura', '', '1st', 'College', 'BSIS 1', ''),
(424, 'ETHNS 6101', 'Euthenics 1', '', '1st', 'College', 'BSIS 1', ''),
(425, 'ITE 6102', 'Computer Programming 1', '', '2nd', 'College', 'BSIS 1', ''),
(426, 'ENGL 6100', 'Purposive Comminucation 2', '', '2nd', 'College', 'BSIS 1', ''),
(427, 'GE 6102', 'The Contemporary World', '', '2nd', 'College', 'BSIS 1', ''),
(428, 'GE 6107', 'Ethics', '', '2nd', 'College', 'BSIS 1', ''),
(429, 'FILI 6201', 'Kritikal na Pagbasa, Pagsulat at Pagsasalita', '', '2nd', 'College', 'BSIS 1', ''),
(430, 'IS 6124', 'Fundamental of Information Systems', '', '2nd', 'College', 'BSIS 1', ''),
(431, 'ETHNS 6102', 'Euthenics 2', '', '2nd', 'College', 'BSIS 1', ''),
(432, 'PHYED 6101', 'Physical Fitness', '', '2nd', 'College', 'BSIS 1', ''),
(433, 'NSTP 6101', 'National Service Training Program 1', '', '2nd', 'College', 'BSIS 1', ''),
(434, 'ITE 6104', 'Computer Programming 2', '', '1st', 'College', 'BSIS 2', ''),
(435, 'GE 6101', 'Readings in Philippine History', '', '1st', 'College', 'BSIS 2', ''),
(436, 'IT 6210A', 'Quantitative Methods', '', '1st', 'College', 'BSIS 2', ''),
(437, 'MATH 6210', 'Data Analysis', '', '1st', 'College', 'BSIS 2', ''),
(438, 'IS 6201', 'System Analysis and Design', '', '1st', 'College', 'BSIS 2', ''),
(439, 'FILI 6301', 'Pagsasaling Pampanitikan', '', '1st', 'College', 'BSIS 2', ''),
(440, 'PHYED 6225', 'Rhythmic Activities', '', '1st', 'College', 'BSIS 2', ''),
(441, 'NSTP 6102', 'National Service Training Program 2', '', '1st', 'College', 'BSIS 2', ''),
(442, 'IS 6203', 'Enterprise Architecture', '', '1st', 'College', 'BSIS 2', ''),
(443, 'IT 6201B', 'Data Communications and Networking 1', '', '2nd', 'College', 'BSIS 2', ''),
(444, 'ITE 6201', 'Data Structures and Algorithms', '', '2nd', 'College', 'BSIS 2', ''),
(445, 'ITE 6202', 'Information Management', '', '2nd', 'College', 'BSIS 2', ''),
(446, 'IT 6202', 'Database Management System 1', '', '2nd', 'College', 'BSIS 2', ''),
(447, 'MGT 6226', 'Business Process Management', '', '2nd', 'College', 'BSIS 2', ''),
(448, 'IS 6204', 'IS Strategy, Management and Acquisition', '', '2nd', 'College', 'BSIS 2', ''),
(449, 'PHYED 6103', 'Individual/Dual Sports', '', '2nd', 'College', 'BSIS 2', ''),
(450, 'IT 6223B', 'Data Communications and Networking 2', '', '1st', 'College', 'BSIS 3', ''),
(451, 'IS 6200', 'IS Project Management', '', '1st', 'College', 'BSIS 3', ''),
(452, 'CS 6202', 'Principles of Operating Systems and its Applications', '', '1st', 'College', 'BSIS 3', ''),
(453, 'ITE 6202', 'Social and Professional Issues', '', '1st', 'College', 'BSIS 3', ''),
(454, 'IT 6205A', 'Information Assurance and Security 1', '', '1st', 'College', 'BSIS 3', ''),
(455, 'COMP 6103', 'Current Trends and Issues', '', '1st', 'College', 'BSIS 3', ''),
(456, 'PHYED 6200', '', '', '1st', 'College', 'BSIS 3', ''),
(457, 'IS 6310', 'Evaluation of Business Performance', '', '2nd', 'College', 'BSIS 3', ''),
(458, 'BAFM 6101', 'Financial Management', '', '2nd', 'College', 'BSIS 3', ''),
(459, 'ITE 6300', 'Cloud Computing and the Internet of Things', '', '2nd', 'College', 'BSIS 3', ''),
(460, 'CS 6302', 'Application Lifecycle Management (HP)', '', '2nd', 'College', 'BSIS 3', ''),
(461, 'GE 6116', 'Science, Technology & Society', '', '2nd', 'College', 'BSIS 3', ''),
(462, 'ITE 6200', 'Application Development and Emerging Technology', '', '2nd', 'College', 'BSIS 3', ''),
(463, 'IS 6397', 'IS Practicum (minimum of 486 hours)', '', '1st', 'College', 'BSIS 4', ''),
(464, 'CS 6303', 'Load Testing (HP)', '', '1st', 'College', 'BSIS 4', ''),
(465, 'IS 6398', 'IS Design Project 1', '', '1st', 'College', 'BSIS 4', ''),
(466, 'GE 6115', 'Art Appreciation', '', '1st', 'College', 'BSIS 4', ''),
(467, 'ITE 6301', 'Technopreneurship', '', '2nd', 'College', 'BSIS 4', ''),
(468, 'GE 6300', 'Life and Work of Rizal', '', '2nd', 'College', 'BSIS 4', ''),
(469, 'CS 6306', 'Unified Functional Testing (HP)', '', '2nd', 'College', 'BSIS 4', ''),
(470, 'IS 6399', 'IS Design Project 2', '', '2nd', 'College', 'BSIS 4', ''),
(471, 'MATH 6100', 'Calculus 1', '', '1st', 'College', 'BSCS 1', ''),
(472, 'ITE 6102', 'Computing Fundamentals', '', '1st', 'College', 'BSCS 1', ''),
(473, 'GE 6100', 'Understanding the Self', '', '1st', 'College', 'BSCS 1', ''),
(474, 'GE 6106', 'Purposive Communication 1', '', '1st', 'College', 'BSCS 1', ''),
(475, 'ETHNS 6101', 'Euthenics 1', '', '1st', 'College', 'BSCS 1', ''),
(476, 'ENGL 6100', 'Purposive Communication 2', '', '2nd', 'College', 'BSCS 1', ''),
(477, 'GE 6102', 'The Contemporary World', '', '2nd', 'College', 'BSCS 1', ''),
(478, 'GE 6107', 'Ethics', '', '2nd', 'College', 'BSCS 1', ''),
(479, 'ITE 6104', 'Computer Programming 2', '', '2nd', 'College', 'BSCS 1', ''),
(480, 'CS 6100', 'Discrete Structures 1', '', '2nd', 'College', 'BSCS 1', ''),
(481, 'GE 6114', 'Mathematics in the Modern World', '', '2nd', 'College', 'BSCS 1', ''),
(482, 'ETHNS 6102', 'Euthenics 2', '', '2nd', 'College', 'BSCS 1', ''),
(483, 'PHYED 6101', 'Physical Fitness', '', '2nd', 'College', 'BSCS 1', ''),
(484, 'NSTP 6101', 'National Service Training Program 1', '', '2nd', 'College', 'BSCS 1', ''),
(485, 'CS 6200', 'Introduction to Human Computer Interaction', '', '2nd', 'College', 'BSCS 2', ''),
(486, 'IT 6200', 'Data Communications and Networking 1', '', '2nd', 'College', 'BSCS 2', ''),
(487, 'FILI 6201', 'Discrete Structures 2', '', '2nd', 'College', 'BSCS 2', ''),
(488, 'FILI 6101', 'Wika, Lipunan at Kultura', '', '2nd', 'College', 'BSCS 2', ''),
(489, 'ITE 6201', 'Data Structures and Algorithms', '', '2nd', 'College', 'BSCS 2', ''),
(490, 'NSCI 6100', 'Calculus-based Physics 1', '', '2nd', 'College', 'BSCS 2', ''),
(491, 'MATH 6200', 'Data Analysis', '', '1st', 'College', 'BSCS 2', ''),
(492, 'IT 6201', 'Database Management System 1', '', '1st', 'College', 'BSCS 2', ''),
(493, 'PHYED 6102', 'Rhythmic Activities', '', '1st', 'College', 'BSCS 2', ''),
(494, 'NSTP 6102', 'National Service Training Program 2', '', '1st', 'College', 'BSCS 2', ''),
(495, 'CS 6203', 'Object-oriented Programming', '', '1st', 'College', 'BSCS 2', ''),
(496, 'MATH 6103', 'Calculus 2', '', '2nd', 'College', 'BSCS 2', ''),
(497, 'ITE 6200', 'Application Development and Emerging Technology', '', '2nd', 'College', 'BSCS 2', ''),
(498, 'FILI 6201', 'Kritikal na Pagbasa, Pagsulat at Pagsasalita', '', '2nd', 'College', 'BSCS 2', ''),
(499, 'CS 6202', 'Algorithms and Complexity', '', '2nd', 'College', 'BSCS 2', ''),
(500, 'IT 6220', 'Data Communications and Networking 2', '', '2nd', 'College', 'BSCS 2', ''),
(501, 'CS 6208', 'Logic Design & Digital Computer Circuits', '', '2nd', 'College', 'BSCS 2', ''),
(502, 'ITE 6202', 'Information Management', '', '2nd', 'College', 'BSCS 2', ''),
(503, 'PHYED 6103', 'Individual/Dual Sports', '', '2nd', 'College', 'BSCS 2', ''),
(504, 'IT 6203', 'Information Assurance and Security 1', '', '1st', 'College', 'BSCS 3', ''),
(505, 'CS 6205', 'Automata Theory and Formal Language', '', '1st', 'College', 'BSCS 3', ''),
(506, 'CS 6204', 'Architecture and Organization', '', '1st', 'College', 'BSCS 3', ''),
(507, 'FILI 6301', 'Pagsasaling Pampanitikan', '', '1st', 'College', 'BSCS 3', ''),
(508, 'ITE 6202', 'Social and Professional Issues', '', '1st', 'College', 'BSCS 3', ''),
(509, 'CS 6209', 'Software Engineering 1', '', '1st', 'College', 'BSCS 3', ''),
(510, 'CS 6207', 'Program Languages with Compiler', '', '1st', 'College', 'BSCS 3', ''),
(511, 'CS 6300', 'Software Engineering 2', '', '2nd', 'College', 'BSCS 3', ''),
(512, 'CS 6306', 'Principles of Operating Systems and its Applications', '', '2nd', 'College', 'BSCS 3', ''),
(513, 'ITE 6300', 'Cloud Computing and the Internet of Things', '', '2nd', 'College', 'BSCS 3', ''),
(514, 'NSCI 6101', 'Calculus-based Physics 2', '', '2nd', 'College', 'BSCS 3', ''),
(515, 'CS 6302', 'Application Lifecycle Management', '', '2nd', 'College', 'BSCS 3', ''),
(516, 'GE 6105', 'Readings in Philippine History', '', '2nd', 'College', 'BSCS 3', ''),
(517, 'PHYED 6200', 'Team Sports', '', '2nd', 'College', 'BSCS 3', ''),
(518, 'CS 6303', 'Load Testing', '', '1st', 'College', 'BSCS 4', ''),
(519, 'GE 6300', 'Science, Technology & Society', '', '1st', 'College', 'BSCS 4', ''),
(520, 'COMP 6103', 'Current Trends and Issues', '', '1st', 'College', 'BSCS 4', ''),
(521, 'GE 6115', 'Art Appreciation', '', '1st', 'College', 'BSCS 4', ''),
(522, 'CS 6304', 'Modeling and Simulation', '', '1st', 'College', 'BSCS 4', ''),
(523, 'CS 6305', 'CS Practicum (162 hours)', '', '1st', 'College', 'BSCS 4', ''),
(524, 'CS 6398', 'CS Design Project 1', '', '1st', 'College', 'BSCS 4', ''),
(525, 'ITE 6300', 'Technopreneurship', '', '2nd', 'College', 'BSCS 4', ''),
(526, 'GE 6301', 'Life and Work of Rizal', '', '2nd', 'College', 'BSCS 4', ''),
(527, 'CS 6306', 'Unified Functional Testing', '', '2nd', 'College', 'BSCS 4', ''),
(528, 'CS 6399', 'CS Design Project 2', '', '2nd', 'College', 'BSCS 4', ''),
(529, 'GE 6100', 'Understanding the Self', '', '1st', 'College', 'BSAIS 1', ''),
(530, 'GE 6101', 'Readings in Philippine History', '', '1st', 'College', 'BSAIS 1', ''),
(531, 'GE 6102', 'The Contemporary World', '', '1st', 'College', 'BSAIS 1', ''),
(532, 'ECON 6152', 'Economic Development', '', '1st', 'College', 'BSAIS 1', ''),
(533, 'MGT 6140A', 'Production Operations Management and TQM', '', '1st', 'College', 'BSAIS 1', ''),
(534, 'ETHNS 6101', 'Euthenics 1', '', '1st', 'College', 'BSAIS 1', ''),
(535, 'GE 6106', 'Purposive Communication ', '', '2nd', 'College', 'BSAIS 1', ''),
(536, 'GE 6114', 'Mathematics in the Modern World', '', '2nd', 'College', 'BSAIS 1', ''),
(537, 'GE 6115', 'Art Appreciation', '', '2nd', 'College', 'BSAIS 1', ''),
(538, 'ACTG 6141', 'Financial Accounting and Reporting', '', '2nd', 'College', 'BSAIS 1', ''),
(539, 'MGT 6372', 'Project Management', '', '2nd', 'College', 'BSAIS 1', ''),
(540, 'BAFM 6102', 'Financial Management', '', '2nd', 'College', 'BSAIS 1', ''),
(541, 'BAMM 6201', 'Law on Obligation and Contracts', '', '2nd', 'College', 'BSAIS 1', ''),
(542, 'ETHNS 6102', 'Euthenics 2', '', '2nd', 'College', 'BSAIS 1', ''),
(543, 'GE 6107', 'Ethics', '', '1st', 'College', 'BSAIS 2', ''),
(544, 'GE 6116', 'Science, Technology & Society', '', '1st', 'College', 'BSAIS 2', ''),
(545, 'TAX 6148', 'Income Taxation', '', '1st', 'College', 'BSAIS 2', ''),
(546, 'ETHNS 6374', 'Business Ethics with Social Responsibility', '', '1st', 'College', 'BSAIS 2', ''),
(547, 'ACTG 6143', 'Conceptual Framework and Accounting Standards', '', '1st', 'College', 'BSAIS 2', ''),
(548, 'MGT 6267', 'Management Science', '', '1st', 'College', 'BSAIS 2', ''),
(549, 'LAW 6254', 'Regulatory Framework and Legal Issues in Business', '', '1st', 'College', 'BSAIS 2', ''),
(550, 'ACTG 6144', 'Cost Accounting and Control System', '', '1st', 'College', 'BSAIS 2', ''),
(551, 'ACTG 6250', 'Introduction to Accounting Information System', '', '2nd', 'College', 'BSAIS 2', ''),
(552, 'MGT 6147', 'Strategic Cost Management', '', '2nd', 'College', 'BSAIS 2', ''),
(553, 'LAW 6149', 'Business Laws and Regulation', '', '2nd', 'College', 'BSAIS 2', ''),
(554, 'ACTG 6146', 'Intermediate Accounting 1', '', '2nd', 'College', 'BSAIS 2', ''),
(555, 'FMGT 6259', 'Financial Markets', '', '2nd', 'College', 'BSAIS 2', ''),
(556, 'CS 6264', 'Statistical analysis with Software Application', '', '2nd', 'College', 'BSAIS 2', ''),
(557, 'FILI 6101', 'Wika, Lipunan at Kultura', '', '2nd', 'College', 'BSAIS 2', ''),
(558, 'PHYED 6101', 'Physical Fitness', '', '2nd', 'College', 'BSAIS 2', ''),
(559, 'NSTP 6101', 'National Service Training Program 1', '', '2nd', 'College', 'BSAIS 2', ''),
(560, 'BAMM 6301', 'International Business and Trade', '', '1st', 'College', 'BSAIS 3', ''),
(561, 'TAX 6253', 'Business Taxation', '', '1st', 'College', 'BSAIS 3', ''),
(562, 'IS 6255', 'Information Systems Analysis and Design', '', '1st', 'College', 'BSAIS 3', ''),
(563, 'RSCH 6258', 'Accounting Research Methods', '', '1st', 'College', 'BSAIS 3', ''),
(564, 'ACTG 6251', 'Intermediate Accounting 2', '', '1st', 'College', 'BSAIS 3', ''),
(565, 'MGT 6260', 'Strategic Business Analysis', '', '1st', 'College', 'BSAIS 3', ''),
(566, 'FILI 6201', 'Kritikal na Pagbasa, Pagsulat at Pagsasalita', '', '1st', 'College', 'BSAIS 3', ''),
(567, 'PHYED 6102', 'Rhythmic Activities', '', '1st', 'College', 'BSAIS 3', ''),
(568, 'NSTP 6102', 'National Service Training Program 2', '', '1st', 'College', 'BSAIS 3', ''),
(569, 'MIT 6261', 'Managing Information and Technology', '', '1st', 'College', 'BSAIS 3', ''),
(570, 'IT 6262', 'Information Security and Management', '', '2nd', 'College', 'BSAIS 3', ''),
(571, 'IS 6263', 'Information Systems Operations and Maintenance', '', '2nd', 'College', 'BSAIS 3', ''),
(572, 'ACTG 6257', 'Intermediate Accounting 3', '', '1st', 'College', 'BSAIS 3', ''),
(573, 'ECON 6142', 'Managerial Economics', '', '2nd', 'College', 'BSAIS 3', ''),
(574, 'IT 6256', 'IT Application Tools in Business', '', '2nd', 'College', 'BSAIS 3', ''),
(575, 'GE 6300', 'Life and Work of Rizal (as mandated by law)', '', '2nd', 'College', 'BSAIS 3', ''),
(576, 'FILI 6301', 'Pagsasaling Pampanitikan', '', '2nd', 'College', 'BSAIS 3', ''),
(577, 'PHYED 6103', 'Individual/Dual Sports', '', '2nd', 'College', 'BSAIS 3', ''),
(578, 'IT 6367', 'Data Warehousing and Management', '', '1st', 'College', 'BSAIS 4', ''),
(579, 'IS 6368', 'Management Information System', '', '1st', 'College', 'BSAIS 4', ''),
(580, 'MGT 6369', 'Enterprise Resource Planning System Implementation and Management', '', '1st', 'College', 'BSAIS 4', ''),
(581, 'IS 6371', 'Professional Elective 1-Updates in Information System 1', '', '1st', 'College', 'BSAIS 4', ''),
(582, 'MGT 6370', 'Strategic Management', '', '1st', 'College', 'BSAIS 4', ''),
(583, 'IS 6376', 'Professional Elective 2-Financial Modelling and Valuation', '', '1st', 'College', 'BSAIS 4', ''),
(584, 'MGT 6375', 'Professional Elective 3- Business Analytics', '', '1st', 'College', 'BSAIS 4', ''),
(585, 'MGT 6266', 'Professioanl Elective 4-Risk Management and Internal Control', '', '1st', 'College', 'BSAIS 4', ''),
(586, 'ECON 6254', 'Professional Elective 5-International Economics', '', '1st', 'College', 'BSAIS 4', ''),
(587, 'PHYED 6200', 'Team Sports', '', '1st', 'College', 'BSAIS 4', ''),
(588, 'PRACT 6300', 'Accounting Information System Internship (600HRS)', '', '2nd', 'College', 'BSAIS 4', ''),
(589, 'THESIS', '6328', '', '1st', 'College', 'BSAIS 4', '');

-- --------------------------------------------------------

--
-- Table structure for table `sy`
--

CREATE TABLE `sy` (
  `syid` int(11) NOT NULL,
  `sy` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sy`
--

INSERT INTO `sy` (`syid`, `sy`) VALUES
(5, '2023-2024');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teachid` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `arank` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teachid`, `fname`, `lname`, `arank`, `designation`, `department`) VALUES
(12, 'JERMAINE', 'GIRAY', '', '', 'CIT'),
(103, 'JOHN PAUL', 'MANUEL', '', '', ''),
(104, 'RIOLIE', 'GUBA', '', '', ''),
(105, 'KIMBERLY', 'BULAWAN', '', '', ''),
(106, 'NOE ', 'CORONEL', '', '', ''),
(107, 'CARLO', 'BAUTISTA', '', '', ''),
(108, 'ELDE', 'CELESTRA', '', '', ''),
(109, 'OLIVER', 'BARQUILLA', '', '', ''),
(110, 'VIRGINIA', 'GAJO', '', '', ''),
(111, 'LYDIA', 'TUPOS', '', '', ''),
(112, 'JEREMIE', 'JACINTO', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `name`, `department`, `username`, `password`) VALUES
(4, 'ching', 'Admin', 'admin', 'admin'),
(7, 'Virginia Gajo', 'COD', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classsched`
--
ALTER TABLE `classsched`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`deptid`);

--
-- Indexes for table `examsched`
--
ALTER TABLE `examsched`
  ADD PRIMARY KEY (`examid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomid`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semesterid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subjectid`);

--
-- Indexes for table `sy`
--
ALTER TABLE `sy`
  ADD PRIMARY KEY (`syid`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teachid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classsched`
--
ALTER TABLE `classsched`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `courseid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `deptid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `examsched`
--
ALTER TABLE `examsched`
  MODIFY `examid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `roomid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `semesterid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subjectid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=590;

--
-- AUTO_INCREMENT for table `sy`
--
ALTER TABLE `sy`
  MODIFY `syid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teachid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
