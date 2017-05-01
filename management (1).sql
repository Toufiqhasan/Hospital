-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2015 at 04:30 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE IF NOT EXISTS `blood` (
  `BloodGroup` varchar(20) NOT NULL,
  `Amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`BloodGroup`, `Amount`) VALUES
('A+', '0'),
('A-', '0'),
('B+', '3'),
('O+', '0'),
('B-', '0'),
('O-', '0'),
('AB+', '0'),
('AB-', '0');

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE IF NOT EXISTS `blood_bank` (
  `Blood_Group` varchar(20) NOT NULL,
  `Amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`Blood_Group`, `Amount`) VALUES
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('A+', '0'),
('A-', '0'),
('B+', '0'),
('B-', '0');

-- --------------------------------------------------------

--
-- Table structure for table `b_doner`
--

CREATE TABLE IF NOT EXISTS `b_doner` (
  `Doner_Name` varchar(50) NOT NULL,
  `Blood_Group` varchar(20) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `Amount` varchar(50) NOT NULL,
  `Date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `b_doner`
--

INSERT INTO `b_doner` (`Doner_Name`, `Blood_Group`, `Contact`, `Amount`, `Date`) VALUES
('shawon', 'A+', '125478', '1', '6-7-2015'),
('hasib', 'B+', '5646546', '2', '29-6-2015'),
('faysal', 'B+', '456242', '2', '29-6-2015'),
('rany', 'O+', '124`324`324', '2', '1-7-2015'),
('dgg', 'O+', '54343', '2', '234345'),
('rafiq', 'O+', '643563658', '2', '123123123');

-- --------------------------------------------------------

--
-- Table structure for table `cabin`
--

CREATE TABLE IF NOT EXISTS `cabin` (
  `floor` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabin`
--

INSERT INTO `cabin` (`floor`, `status`, `price`) VALUES
('', '', ''),
('', '', ''),
('', '', ''),
('', '', ''),
('Ground,First', 'low', '300/day'),
('second , third', 'High', '1000/day'),
('fourth , fitth', 'medium', '500/day');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `Doctor_Id` varchar(50) NOT NULL,
  `Doctor_Name` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `Salary` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doctor_Id`, `Doctor_Name`, `Department`, `Contact`, `Salary`) VALUES
('1', 'mishuk', 'Cardiology', '564154152', '60000'),
('4', 'moinul', 'Sexual health', '5465456456', '50000'),
('3', 'bany', 'Accident and emergency', '3241444', '50000');

-- --------------------------------------------------------

--
-- Table structure for table `passbox`
--

CREATE TABLE IF NOT EXISTS `passbox` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbox`
--

INSERT INTO `passbox` (`username`, `password`) VALUES
('toufiq', 'toufiq.sec');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `Patient_Id` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Guardian_Name` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `Room_No` varchar(50) NOT NULL,
  `Admission_Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_Id`, `Name`, `Guardian_Name`, `Department`, `Contact`, `Room_No`, `Admission_Date`) VALUES
('1', 'shawon', 'iqbal', 'cardiology', '0125487851', '103', '2-5-2015'),
('3', 'bigboss', 'hasib', 'Sexual health', '1245789', '101', '29-6-2015');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
