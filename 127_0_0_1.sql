-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 10:05 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cams`
--
CREATE DATABASE IF NOT EXISTS `cams` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cams`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_signup`
--

CREATE TABLE `admin_signup` (
  `user_id` varchar(20) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `other_name` varchar(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `insistution` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

CREATE TABLE `student_table` (
  `Red_No` varchar(20) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `instuitution` varchar(20) NOT NULL,
  `faculty` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Database: `hesfb database`
--
CREATE DATABASE IF NOT EXISTS `hesfb database` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `hesfb database`;

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ACCOUNT NO` varchar(15) NOT NULL,
  `ACCOUNT TYPE` varchar(15) NOT NULL,
  `BANK CODE` varchar(15) NOT NULL,
  `OTHER ACCOUNT DETAILS` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `account type`
--

CREATE TABLE `account type` (
  `AMOUNT TYPE CODE` varchar(15) NOT NULL,
  `ACOUNT DESCRIPTION` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guarantor address`
--

CREATE TABLE `guarantor address` (
  `ADDRESS ID` varchar(15) NOT NULL,
  `PARAMANNENT ADDRESS` varchar(15) NOT NULL,
  `OCCUATION` varchar(15) NOT NULL,
  `OCCUPATION ID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guarantor occupation`
--

CREATE TABLE `guarantor occupation` (
  `OCCUPATION ID` varchar(15) NOT NULL,
  `OCCUPATION LOCATION` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guarantors`
--

CREATE TABLE `guarantors` (
  `GUARANTOR ID` varchar(15) NOT NULL,
  `ADDRESS ID` varchar(15) NOT NULL,
  `GUARANTOR NAME` varchar(15) DEFAULT NULL,
  `E.MAIL` varchar(15) DEFAULT NULL,
  `PHONE` varchar(15) NOT NULL,
  `OTHER GUARANTOR DETAILS` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guarantor_address`
--

CREATE TABLE `guarantor_address` (
  `ADDRESS_ID` varchar(15) NOT NULL,
  `PARAMANNENT_ADDRESS` varchar(15) NOT NULL,
  `OCCUATION` varchar(15) NOT NULL,
  `OCCUPATION_ID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guarantor_occupation`
--

CREATE TABLE `guarantor_occupation` (
  `OCCUPATION_ID` varchar(15) NOT NULL,
  `OCCUPATION_LOCATION` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loan_details`
--

CREATE TABLE `loan_details` (
  `LOAN_ID` varchar(15) NOT NULL,
  `DEPARTMENTID` varchar(15) NOT NULL,
  `SEMISTER` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login table`
--

CREATE TABLE `login table` (
  `REG NO` varchar(15) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_table`
--

CREATE TABLE `login_table` (
  `USER_NAME` varchar(15) NOT NULL,
  `REG_NO` varchar(15) NOT NULL,
  `PASSWORD` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ref banks`
--

CREATE TABLE `ref banks` (
  `BANK CODE` varchar(15) NOT NULL,
  `BANK NAME` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ref loan status`
--

CREATE TABLE `ref loan status` (
  `LOAN STATUS CODE` varchar(15) NOT NULL,
  `LOAN STATUS DESCRIPTION E.g in progress,Repaid` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `standard loan`
--

CREATE TABLE `standard loan` (
  `STANDARD LOAN ID` varchar(10) NOT NULL,
  `STANDARD LOAN NAME` varchar(45) NOT NULL,
  `STANDARD LOAN_MIN AMOUNT` varchar(45) NOT NULL,
  `STANDARD LOAN_MAX` varchar(45) NOT NULL,
  `LOAN DESCRIPTION` varchar(45) NOT NULL,
  `LOAN DETAILS` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student address`
--

CREATE TABLE `student address` (
  `ADDRESS ID` varchar(15) NOT NULL,
  `REG.NO.` varchar(15) NOT NULL,
  `PARMANENT ADDRESS` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student course`
--

CREATE TABLE `student course` (
  `COURSE ID` varchar(15) NOT NULL,
  `COURSE NAME` varchar(15) NOT NULL,
  `DEPARTMENT ID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student data`
--

CREATE TABLE `student data` (
  `NAME` varchar(15) NOT NULL,
  `REG NO.` varchar(15) NOT NULL,
  `COURSE` varchar(15) NOT NULL,
  `YEAR OF STUDY` int(15) NOT NULL,
  `SEMESTER` int(15) NOT NULL,
  `E.MAIL` varchar(15) NOT NULL,
  `AMOUNT` int(15) NOT NULL,
  `FINANCIAL CARD NO.` varchar(15) NOT NULL,
  `PASSWARD` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student data`
--

INSERT INTO `student data` (`NAME`, `REG NO.`, `COURSE`, `YEAR OF STUDY`, `SEMESTER`, `E.MAIL`, `AMOUNT`, `FINANCIAL CARD NO.`, `PASSWARD`) VALUES
('Ruben', '3433', 'bse', 0, 0, 'r@email.com', 0, '333r', '324fwr');

-- --------------------------------------------------------

--
-- Table structure for table `student loan`
--

CREATE TABLE `student loan` (
  `STUDENT LOAN ID` varchar(10) NOT NULL,
  `GUARANTOR ID` varchar(10) NOT NULL,
  `STUDENT LOAN AMOUNT` varchar(30) NOT NULL,
  `STUDENT LOAN PERIOD` varchar(45) NOT NULL,
  `FIRST REPAYMENT DATE` varchar(45) NOT NULL,
  `LAST REPAYMENT DATE` varchar(45) NOT NULL,
  `STUDENT LOANcol` varchar(45) NOT NULL,
  `STUDENT LOAN_STUDENT LOAN ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_account_details`
--

CREATE TABLE `student_account_details` (
  `ACCOUNT_NO` varchar(15) NOT NULL,
  `ACCOUNT_TYPE` varchar(15) NOT NULL,
  `OTHER_ACCOUNT_DETAILS` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_address`
--

CREATE TABLE `student_address` (
  `ADDRESS_ID` varchar(15) NOT NULL,
  `REG_NO` varchar(15) NOT NULL,
  `PARMANENT_ADDRESS` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `NAME` varchar(15) NOT NULL,
  `REG_NO` varchar(15) NOT NULL,
  `COURSE` varchar(15) NOT NULL,
  `E.MAIL` varchar(15) NOT NULL,
  `FINANCIAL_CARD_NO.` varchar(15) NOT NULL,
  `PASSWARD` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `UNIVERSITY ID` varchar(15) NOT NULL,
  `UNIVERSITY NAME` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ACCOUNT NO`);

--
-- Indexes for table `account type`
--
ALTER TABLE `account type`
  ADD PRIMARY KEY (`AMOUNT TYPE CODE`);

--
-- Indexes for table `guarantor address`
--
ALTER TABLE `guarantor address`
  ADD PRIMARY KEY (`ADDRESS ID`);

--
-- Indexes for table `guarantor occupation`
--
ALTER TABLE `guarantor occupation`
  ADD PRIMARY KEY (`OCCUPATION ID`);

--
-- Indexes for table `guarantors`
--
ALTER TABLE `guarantors`
  ADD PRIMARY KEY (`GUARANTOR ID`);

--
-- Indexes for table `guarantor_address`
--
ALTER TABLE `guarantor_address`
  ADD PRIMARY KEY (`ADDRESS_ID`,`OCCUPATION_ID`);

--
-- Indexes for table `guarantor_occupation`
--
ALTER TABLE `guarantor_occupation`
  ADD PRIMARY KEY (`OCCUPATION_ID`);

--
-- Indexes for table `loan_details`
--
ALTER TABLE `loan_details`
  ADD PRIMARY KEY (`LOAN_ID`);

--
-- Indexes for table `login table`
--
ALTER TABLE `login table`
  ADD PRIMARY KEY (`REG NO`);

--
-- Indexes for table `login_table`
--
ALTER TABLE `login_table`
  ADD PRIMARY KEY (`REG_NO`);

--
-- Indexes for table `ref banks`
--
ALTER TABLE `ref banks`
  ADD PRIMARY KEY (`BANK CODE`);

--
-- Indexes for table `ref loan status`
--
ALTER TABLE `ref loan status`
  ADD PRIMARY KEY (`LOAN STATUS CODE`);

--
-- Indexes for table `standard loan`
--
ALTER TABLE `standard loan`
  ADD PRIMARY KEY (`STANDARD LOAN ID`);

--
-- Indexes for table `student address`
--
ALTER TABLE `student address`
  ADD PRIMARY KEY (`ADDRESS ID`);

--
-- Indexes for table `student course`
--
ALTER TABLE `student course`
  ADD PRIMARY KEY (`COURSE ID`);

--
-- Indexes for table `student data`
--
ALTER TABLE `student data`
  ADD PRIMARY KEY (`REG NO.`);

--
-- Indexes for table `student loan`
--
ALTER TABLE `student loan`
  ADD PRIMARY KEY (`STUDENT LOAN ID`,`STUDENT LOAN_STUDENT LOAN ID`);

--
-- Indexes for table `student_account_details`
--
ALTER TABLE `student_account_details`
  ADD PRIMARY KEY (`ACCOUNT_NO`);

--
-- Indexes for table `student_address`
--
ALTER TABLE `student_address`
  ADD PRIMARY KEY (`ADDRESS_ID`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`REG_NO`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`UNIVERSITY ID`);
--
-- Database: `hesfbdatabase`
--
CREATE DATABASE IF NOT EXISTS `hesfbdatabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hesfbdatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `hesfb`
--

CREATE TABLE `hesfb` (
  `FIRSTNAME` varchar(20) NOT NULL,
  `LASTNAME` varchar(20) NOT NULL,
  `REGNO` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hesfb`
--
ALTER TABLE `hesfb`
  ADD PRIMARY KEY (`REGNO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hesfb`
--
ALTER TABLE `hesfb`
  MODIFY `REGNO` int(20) NOT NULL AUTO_INCREMENT;
--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Table structure for table `choosedate`
--

CREATE TABLE `choosedate` (
  `id` int(11) NOT NULL,
  `Date` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `choosedate`
--

INSERT INTO `choosedate` (`id`, `Date`) VALUES
(1, 'MMM d, yyyy'),
(2, 'MMM d, yyyy');

-- --------------------------------------------------------

--
-- Table structure for table `date`
--

CREATE TABLE `date` (
  `dateid` int(11) NOT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `date`
--

INSERT INTO `date` (`dateid`, `Date`) VALUES
(1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `dateid` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hesfb_reports`
--

CREATE TABLE `hesfb_reports` (
  `Student_report` varchar(45) NOT NULL,
  `Loan_Report` varchar(45) NOT NULL,
  `HESFB_REPORTScol` varchar(45) NOT NULL,
  `Account_Report` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `personals`
--

CREATE TABLE `personals` (
  `Name` int(11) NOT NULL,
  `Sex` varchar(45) DEFAULT NULL,
  `Regno` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Course` varchar(45) DEFAULT NULL,
  `Financialcard` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personals`
--

INSERT INTO `personals` (`Name`, `Sex`, `Regno`, `Email`, `Course`, `Financialcard`, `Password`) VALUES
(0, 'Male', 'ueg', '.com', 'bse', '738hd', '1234'),
(1, 'Male', 'ueg', '.com', 'bse', '738hd', '1234'),
(2, NULL, 'ue5', 'namara@email', 'bse', '78378', 'elm.jent');

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `NAME` varchar(45) NOT NULL,
  `GENDER` varchar(45) NOT NULL,
  `REG_NO` varchar(45) NOT NULL,
  `EMAIL_ADDRESS` varchar(45) NOT NULL,
  `COURSE` varchar(45) NOT NULL,
  `NATIONAL_ID` varchar(45) NOT NULL,
  `BIRTH_DATE` varchar(45) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choosedate`
--
ALTER TABLE `choosedate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`dateid`);

--
-- Indexes for table `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`dateid`);

--
-- Indexes for table `hesfb_reports`
--
ALTER TABLE `hesfb_reports`
  ADD PRIMARY KEY (`Student_report`);

--
-- Indexes for table `personals`
--
ALTER TABLE `personals`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`REG_NO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choosedate`
--
ALTER TABLE `choosedate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `date`
--
ALTER TABLE `date`
  MODIFY `dateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dates`
--
ALTER TABLE `dates`
  MODIFY `dateid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `myhesfb`
--
CREATE DATABASE IF NOT EXISTS `myhesfb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `myhesfb`;

-- --------------------------------------------------------

--
-- Table structure for table `guarantors`
--

CREATE TABLE `guarantors` (
  `GUARANTOR_ID` varchar(15) NOT NULL,
  `ADDRESS_ID` varchar(15) NOT NULL,
  `GUARANTOR_NAME` varchar(15) DEFAULT NULL,
  `E.MAIL` varchar(15) DEFAULT NULL,
  `PHONE` varchar(15) NOT NULL,
  `OTHER_GUARANTOR_DETAILS` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guarantors_details`
--

CREATE TABLE `guarantors_details` (
  `GUARANTOR_ID` varchar(15) NOT NULL,
  `ADDRESS_ID` varchar(15) NOT NULL,
  `GUARANTOR_NAME` varchar(15) DEFAULT NULL,
  `PHONE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guarantor_address`
--

CREATE TABLE `guarantor_address` (
  `ADDRESS_ID` varchar(15) NOT NULL,
  `PARAMANNENT_ADDRESS` varchar(15) NOT NULL,
  `OCCUATION` varchar(15) NOT NULL,
  `OCCUPATION_ID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guarantor_occupation`
--

CREATE TABLE `guarantor_occupation` (
  `OCCUPATION_ID` varchar(15) NOT NULL,
  `OCCUPATION_LOCATION` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loan_details`
--

CREATE TABLE `loan_details` (
  `FINANCIAL_CARD_NO` varchar(15) NOT NULL,
  `LOAN_AMOUNT` varchar(15) NOT NULL,
  `SEMISTER` varchar(15) NOT NULL,
  `STUDY_YEAR` varchar(30) NOT NULL,
  `PROTECTION_FEE` varchar(30) NOT NULL,
  `TELPHONE` varchar(45) NOT NULL,
  `IMAGE_PATH` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loan_details`
--

INSERT INTO `loan_details` (`FINANCIAL_CARD_NO`, `LOAN_AMOUNT`, `SEMISTER`, `STUDY_YEAR`, `PROTECTION_FEE`, `TELPHONE`, `IMAGE_PATH`) VALUES
('', '234', 'One', 'Two', '45', '9876', ''),
('234', '2345', 'One', 'Two', '3454', '0762524627', 'E:PHOTOSIMG_0088.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `login_table`
--

CREATE TABLE `login_table` (
  `USER_NAME` varchar(15) NOT NULL,
  `REG_NO` varchar(15) NOT NULL,
  `PASSWORD` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_account_details`
--

CREATE TABLE `student_account_details` (
  `ACCOUNT_NO` varchar(15) NOT NULL,
  `ACCOUNT_TYPE` varchar(15) NOT NULL,
  `OTHER_ACCOUNT_DETAILS` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_account_details`
--

INSERT INTO `student_account_details` (`ACCOUNT_NO`, `ACCOUNT_TYPE`, `OTHER_ACCOUNT_DETAILS`) VALUES
('', '', ''),
('56565', '34665', '23456'),
('eertt', '2356', '123e4r5');

-- --------------------------------------------------------

--
-- Table structure for table `student_address`
--

CREATE TABLE `student_address` (
  `ADDRESS_ID` varchar(15) NOT NULL,
  `REG_NO` varchar(15) NOT NULL,
  `PARMANENT_ADDRESS` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `NAME` varchar(45) NOT NULL,
  `GENDER` varchar(45) NOT NULL,
  `REG_NO` varchar(45) NOT NULL,
  `EMAIL_ADDRESS` varchar(45) NOT NULL,
  `COURSE` varchar(45) NOT NULL,
  `NATIONAL_ID` varchar(45) NOT NULL,
  `BIRTH_DATE` varchar(45) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`NAME`, `GENDER`, `REG_NO`, `EMAIL_ADDRESS`, `COURSE`, `NATIONAL_ID`, `BIRTH_DATE`, `PASSWORD`) VALUES
('', '--Select--', '', '', '', '', 'null', ''),
('MATAYO', 'Male', '2010/BS/06/PS', 'xxx@gmail.com', 'BS', 'CM23456H567', 'Sat Mar 02 00:00:00 PST 2013', '6666'),
('ELASU JOSEPH', 'Male', '202/BSE/001/PS', 'elasu@gmail.com', 'BSE', 'CM1234567VE5', 'Wed Mar 10 23:11:09 PST 2004', '1111'),
('KATAIKE GLORIA', 'Female', '2020/BSE/002/PS', 'gloria@gmail.com', 'BSE', 'CF3456788N77', 'Thu Mar 04 23:12:44 PST 2004', '22222'),
('DAN KABAGAMBE', 'Male', '2020/BSE/003/PS', 'dan@gmail.com', 'BSE', 'CM23674567G8', 'Fri Mar 12 00:00:00 PST 1999', '5555'),
('MARY AKI', 'Female', '2020/BSE/04/PS', 'AKI@gmail.com', 'BSE', 'CF23456HU56', 'Fri Mar 07 23:24:54 PST 2003', '8888'),
('NAMARA RAUBEN', 'Male', '2020/BSE/046/PS', 'namararaubeb@gmail.com', 'BSE', 'CM13456G4567', 'Sat Mar 07 23:09:45 PST 1998', '123'),
('NAYIGA MAGGIE', 'Female', '2020/BSE/051/PS', 'maggiE00301zie@gmail.com', 'BSE', 'CF235G567Y', 'Thu Mar 06 00:28:25 PST 2003', '0000'),
('JOAN KELI', 'Female', 'BS/001/PS', 'kali@gmail.com', 'BS', 'CF23456GH56', 'Fri Mar 19 23:21:30 PDT 2010', '7777');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `UNIVERSITY ID` varchar(15) NOT NULL,
  `UNIVERSITY NAME` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `university_details`
--

CREATE TABLE `university_details` (
  `UNIVERSITY ID` varchar(15) NOT NULL,
  `NAME` varchar(15) NOT NULL,
  `FACULTY` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guarantors`
--
ALTER TABLE `guarantors`
  ADD PRIMARY KEY (`GUARANTOR_ID`);

--
-- Indexes for table `guarantors_details`
--
ALTER TABLE `guarantors_details`
  ADD PRIMARY KEY (`GUARANTOR_ID`);

--
-- Indexes for table `guarantor_address`
--
ALTER TABLE `guarantor_address`
  ADD PRIMARY KEY (`ADDRESS_ID`,`OCCUPATION_ID`);

--
-- Indexes for table `guarantor_occupation`
--
ALTER TABLE `guarantor_occupation`
  ADD PRIMARY KEY (`OCCUPATION_ID`);

--
-- Indexes for table `loan_details`
--
ALTER TABLE `loan_details`
  ADD PRIMARY KEY (`FINANCIAL_CARD_NO`);

--
-- Indexes for table `login_table`
--
ALTER TABLE `login_table`
  ADD PRIMARY KEY (`REG_NO`);

--
-- Indexes for table `student_account_details`
--
ALTER TABLE `student_account_details`
  ADD PRIMARY KEY (`ACCOUNT_NO`);

--
-- Indexes for table `student_address`
--
ALTER TABLE `student_address`
  ADD PRIMARY KEY (`ADDRESS_ID`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`REG_NO`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`UNIVERSITY ID`);

--
-- Indexes for table `university_details`
--
ALTER TABLE `university_details`
  ADD PRIMARY KEY (`UNIVERSITY ID`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"cams\",\"table\":\"admin_signup\"},{\"db\":\"hesfb database\",\"table\":\"guarantors\"},{\"db\":\"cams\",\"table\":\"student_table\"},{\"db\":\"myhesfb\",\"table\":\"student_data\"},{\"db\":\"myhesfb\",\"table\":\"guarantors_details\"},{\"db\":\"myhesfb\",\"table\":\"guarantors\"},{\"db\":\"myhesfb\",\"table\":\"login_table\"},{\"db\":\"hesfbdatabase\",\"table\":\"hesfb\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-04-08 08:03:06', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
