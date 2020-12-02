-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.htmlmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2020 at 04:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it`
--

-- --------------------------------------------------------

--
-- Table structure for table `example`
--

CREATE TABLE `example` (
  `name` varchar(50) NOT NULL,
  `age` int(2) NOT NULL,
  `class` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE `hod` (
  `id` int(2) NOT NULL DEFAULT 1,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(40) NOT NULL,
  `des` varchar(20) NOT NULL DEFAULT 'Head Of Department',
  `phone` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hod`
--

INSERT INTO `hod` (`id`, `name`, `email`, `dob`, `password`, `des`, `phone`) VALUES
(1, 'R.K. Saini ', 'uday.kundan@gmail.com', '2020-05-27', '123456', 'Head Of Department', 7275491915);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `nid` bigint(10) NOT NULL,
  `pname` varchar(40) NOT NULL,
  `pid` varchar(50) NOT NULL,
  `notice` text NOT NULL,
  `image` varchar(200) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `des` varchar(20) NOT NULL DEFAULT 'Teacher'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`nid`, `pname`, `pid`, `notice`, `image`, `date`, `des`) VALUES
(16, 'R.K. Saini ', 'uday.kundan@gmail.com', 'BCA 6th sem PHP practical is held on 30 sep 2020.', '0', '2020-09-29', 'Head Of Department'),
(17, 'Kamal Kishor Gupta', 'kamalsir@gmail.com', 'Major project of BSC cs is held on 07 oct 2020 at 11:30am', '0', '2020-09-29', 'Teacher'),
(18, 'Kamal Kishor Gupta', 'kamalsir@gmail.com', 'This is to inform the final year student that your result will be announce\r\nupto 22nd oct 2020\r\nSo please check the GLA website regularly', '0', '2020-09-29', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `ques_id` int(10) NOT NULL,
  `name_of_person` varchar(30) NOT NULL,
  `post_of_person` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `ques` text NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `comment` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`ques_id`, `name_of_person`, `post_of_person`, `date`, `ques`, `person_id`, `comment`) VALUES
(3, 'Kapil Panchal', 'Student', '2020-05-25', 'What Is Computer Network.?', '', 0),
(4, 'R.K. Saini', 'Head Of Department', '2020-05-26', 'What Is Cryptography ?', 'uday.kundan@gmail.com', 0),
(5, 'R.K. Saini', 'Head Of Department', '2020-05-26', 'what is php and how it work ?', 'uday.kundan@gmail.com', 1),
(6, 'R.K. Saini ', 'Head Of Department', '2020-05-27', 'What Is CSS ?', 'uday.kundan@gmail.com', 0),
(7, 'R.K. Saini ', 'Head Of Department', '2020-05-27', 'What is Bootstrap..?', 'uday.kundan@gmail.com', 2),
(12, 'R.K. Saini ', 'Head Of Department', '2020-09-29', 'what is HTML', 'uday.kundan@gmail.com', 3),
(13, 'R.K. Saini ', 'Head Of Department', '2020-09-30', 'What is HTML ?', 'uday.kundan@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `rep_id` bigint(10) NOT NULL,
  `name_of_person` varchar(30) NOT NULL,
  `post_of_person` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `ques_id` int(10) NOT NULL,
  `person_id` varchar(50) NOT NULL,
  `reply` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`rep_id`, `name_of_person`, `post_of_person`, `date`, `ques_id`, `person_id`, `reply`) VALUES
(17, 'Kamal Kishor Gupta', 'Teacher', '2020-09-29', 12, 'kamalsir@gmail.com', 'HTML stand for hyper text markup language. '),
(18, 'Kamal Kishor Gupta', 'Teacher', '2020-09-29', 7, 'kamalsir@gmail.com', 'its is same like CSS. which is used to do some styling on your web page.'),
(19, 'Kapil Panchal', 'Student', '2020-09-29', 7, 'kapil@gmail.com', 'used to create your page more attractive.'),
(20, 'Kapil Panchal', 'Student', '2020-09-29', 5, 'kapil@gmail.com', 'PHP is a back end programming language. php stand for hypertext pre-proccessor.  '),
(21, 'Kapil ', 'Student', '2020-09-29', 12, 'kapil123@gmail.com', 'HTML is a hypertext markup language. '),
(22, 'R.K. Saini ', 'Head Of Department', '2020-09-30', 12, 'uday.kundan@gmail.com', 'ryghm gu');

-- --------------------------------------------------------

--
-- Table structure for table `smstudent`
--

CREATE TABLE `smstudent` (
  `id` bigint(10) NOT NULL,
  `sid` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `s1` varchar(5) NOT NULL DEFAULT 'none',
  `s2` varchar(5) NOT NULL DEFAULT 'none',
  `s3` varchar(5) NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smstudent`
--

INSERT INTO `smstudent` (`id`, `sid`, `course`, `semester`, `subject`, `s1`, `s2`, `s3`) VALUES
(1, 'abhi@gmail.com', 'mca', 1, 'Artificial Intelligence', '26', '30', 'none'),
(2, 'divi@gmail.com', 'mca', 1, 'Artificial Intelligence', '26', '29', 'none'),
(3, 'harshu@gmail.com', 'mca', 1, 'Artificial Intelligence', '25', '25', 'none'),
(4, 'himmu@gmail.com', 'mca', 1, 'Artificial Intelligence', '21', '30', 'none'),
(5, 'kapil123@gmail.com', 'mca', 1, 'Artificial Intelligence', '26', '14', 'none'),
(6, 'rasgulla@gmail.com', 'mca', 1, 'Artificial Intelligence', '21', '16', 'none'),
(7, 'juli@gmail.com', 'mca', 1, 'Artificial Intelligence', '23', '30', 'none'),
(8, 'uday@gmail.com', 'mca', 1, 'Artificial Intelligence', '22', '10', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `smteacher`
--

CREATE TABLE `smteacher` (
  `id` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `semester` int(2) NOT NULL,
  `subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `smteacher`
--

INSERT INTO `smteacher` (`id`, `email`, `course`, `semester`, `subject`) VALUES
(1, 'kamalsir@gmail.com', 'mca', 1, 'Artificial Intelligence');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` bigint(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `semester` int(2) NOT NULL,
  `dob` date NOT NULL,
  `des` varchar(20) NOT NULL DEFAULT 'Student',
  `Roll_no` bigint(13) NOT NULL,
  `course` varchar(10) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `t_attend` int(3) NOT NULL DEFAULT 0,
  `g_attend` int(3) NOT NULL DEFAULT 0,
  `phone` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `email`, `password`, `semester`, `dob`, `des`, `Roll_no`, `course`, `gender`, `t_attend`, `g_attend`, `phone`) VALUES
(12, 'Kapil Panchal', 'kapil@gmail.com', 'kapil', 4, '2020-05-18', 'Student', 171341133028, 'bca', 'male', 0, 0, 732489978432),
(13, 'gunjan', 'gunjan@gmail.com', 'a9u6gj', 6, '2002-12-04', 'Student', 1101, 'mca', 'female', 0, 0, 3366559256),
(14, 'kartik', 'kartik@gmail.com', 'i2a8kt', 6, '1997-05-30', 'Student', 102, 'mca', 'male', 0, 0, 757815253),
(15, 'rahul', 'rahul@gmail.com', 'l2a1ru', 6, '1999-06-05', 'Student', 103, 'mca', 'male', 0, 0, 9001232305),
(16, 'akanksha gupta', 'akanksha@gmail.com', 'k2k8an', 6, '1995-06-17', 'Student', 106, 'mca', 'female', 0, 0, 7878582621),
(17, 'kallui singh', 'kalluaas@gmail.com', 'u4a5kl', 6, '1996-07-25', 'Student', 107, 'mca', 'male', 0, 0, 7575484865),
(18, 'sonam seth', 'sonam@gmail.com', 'm8o5sa', 6, '2002-12-31', 'Student', 108, 'mca', 'female', 0, 0, 1515468696),
(19, 'varsh agarwal', 'varshu@gmail.com', 'varsha', 6, '1990-07-20', 'Student', 109, 'mca', 'female', 0, 0, 8585659585),
(20, 'Sandeep Gupta Harshjeet', 'kk@gmail.com', 'm0a8kd', 6, '2020-07-09', 'Student', 171341133056, 'mca', 'male', 0, 0, 918090756399),
(21, 'Uday ', 'romeojais143@gmail.com', 'o2d4ry', 1, '2020-06-19', 'Student', 171341133056, 'bsc', 'male', 70, 45, 11445623655),
(22, 'Kapil ', 'kapil123@gmail.com', 'kapil', 1, '1997-09-23', 'Student', 24, 'mca', 'male', 30, 26, 1515151515),
(23, 'uday', 'uday@gmail.com', '@1d5uy', 1, '1997-09-17', 'Student', 56, 'mca', 'male', 30, 30, 7275491915),
(24, 'Himanshu', 'himmu@gmail.com', '123456', 1, '1998-04-14', 'Student', 21, 'mca', 'male', 30, 29, 8090151044),
(25, 'Abhishek', 'abhi@gmail.com', '@4b6ai', 1, '1998-10-14', 'Student', 1, 'mca', 'male', 30, 5, 5656564848),
(26, 'harshita', 'harshu@gmail.com', 'h2a5hs', 1, '1999-10-16', 'Student', 25, 'mca', 'female', 30, 26, 7575152535),
(27, 'rishika', 'rasgulla@gmail.com', 'u5i8rh', 1, '1999-06-17', 'Student', 47, 'mca', 'female', 30, 2, 7848585865),
(28, 'Srashti', 'juli@gmail.com', '@5r0js', 1, '2000-09-21', 'Student', 51, 'mca', 'female', 30, 26, 8020545465),
(29, 'Divya', 'divi@gmail.com', '@2i8dy', 1, '2000-09-21', 'Student', 14, 'mca', 'female', 30, 22, 7878252526);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Tid` int(8) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phno` bigint(12) DEFAULT NULL,
  `dob` date NOT NULL,
  `des` varchar(20) NOT NULL DEFAULT 'Teacher'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`Tid`, `email`, `password`, `name`, `phno`, `dob`, `des`) VALUES
(8, 'kamalsir@gmail.com', 'kamal', 'Kamal Kishor Gupta', 8899445566, '1990-10-01', 'Teacher'),
(9, 'varshamam@gmail.com', 'h6a4vs', 'Varsha Agarwal', 7824246209, '1991-07-20', 'Teacher'),
(10, 'prajapatisir@gmail.com', 'a6h2pr', 'Dharam das Prajapati', 7212356565, '1987-06-14', 'Teacher'),
(11, 'sonam@gmail.com', 'm7o8sa', 'Sonam Seth', 7578787878, '1992-04-14', 'Teacher'),
(12, 'sachinsir@gmail.com', 'i3a5sh', 'Sachin Upadhyay', 7815153515, '1987-06-25', 'Teacher'),
(13, 'ry@gmail.com', 'm0o8ra', 'Sonam Mam', 918090756399, '0000-00-00', 'Teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `example`
--
ALTER TABLE `example`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ques_id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`rep_id`);

--
-- Indexes for table `smstudent`
--
ALTER TABLE `smstudent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smteacher`
--
ALTER TABLE `smteacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Tid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `nid` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `ques_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `rep_id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `smstudent`
--
ALTER TABLE `smstudent`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `smteacher`
--
ALTER TABLE `smteacher`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `Tid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
